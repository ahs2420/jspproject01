package com.krahs123.wathis.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.MailVO;
import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.service.article.ArticleService;
import com.krahs123.wathis.service.mail.MailService;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.service.siteConfig.SiteConfigService;
import com.krahs123.wathis.util.MailSend;
import com.krahs123.wathis.util.ShaEncrypt;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	MenuService menuService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	SiteConfigService siteService;
	
	@Autowired
	ArticleService articleService;
	
	
	final String DIR ="/login/";
	//회원가입 화면
	@RequestMapping("/login-page2")
	public ModelAndView viewLoginpage2(HttpServletRequest request) {
		Cookie[] myCookies = request.getCookies();
		String uid = "";
	    for(int i = 0; i < myCookies.length; i++) {
	    	if(myCookies[i].getName().equals("uid")) {
	    		uid=myCookies[i].getValue();
	    		break;
	    	}
	    }
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.setViewName(DIR+"login-page-headerOn");
		mav.addObject("menuList", menuList);
		mav.addObject("uid", uid);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		return mav;
	}
	@RequestMapping("/register")
	public ModelAndView viewRegister(@ModelAttribute MemberVO mvo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mvo.setUpassword(ShaEncrypt.sha256(mvo.getUpassword()));
		boolean isChk = memberService.setMember(mvo)>0;
		if(isChk) {
			memberService.getlogin(mvo.getUid(), mvo.getUpassword(),session);
			mav.setViewName("redirect:/");
		
		}else {
			mav.setViewName("redirect:/login-page2");
		}
		return mav;
	}
	
	@RequestMapping("/logindo")
	@ResponseBody
	public String logindo(@RequestParam String uid , @RequestParam String upassword, @RequestParam(defaultValue = "0") int uidSave, HttpSession session, 
			HttpServletResponse response) {
		String inp = ShaEncrypt.sha256(upassword);
		MemberVO mvo = memberService.getlogin(uid, inp,session);
		//비밀번호 암호화 하는 부분
		StringBuilder sb = new StringBuilder();
		if( mvo != null ) {
			Cookie coo = new Cookie("uid", uid);
			coo.setPath("/");
			if(uidSave==1) {
				coo.setMaxAge(60*60*24*365);
			}else {
				coo.setMaxAge(0);
			}
			response.addCookie(coo);
			try {
				response.sendRedirect("/");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			sb.append("<script>");
//			sb.append("alert(\"됨"+uidSave+"\");");
//			sb.append("location.replace(\"/\");");
//			sb.append("</script>");
	
		}else {
			sb.append("<script>");
			sb.append("alert(\"아이디 또는 비밀번호가 일치하지 않습니다.\");");
			sb.append("location.replace(\"/login/login-page2\");");
			sb.append("</script>");
		}
		
		return sb.toString();
	}
//	@RequestMapping(value="/getMemberID")
//	@ResponseBody
//	public int getMemberID(MemberVO mvo) throws Exception {
//		int result = memberService.getMemberID(uid);
//		
//	}
	
	
	//로그아웃
	@RequestMapping("/logout")
	public ModelAndView logOutDo(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		memberService.getlogOut(session);
		mav.setViewName("redirect:/");
		return mav;
	}
	//비밀번호/아이디 찾기 화면
	@RequestMapping("/findAccount")
	public ModelAndView findAccount(@RequestParam(defaultValue = "findID") String template) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(DIR+"/findMain");
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.addObject("template", template);
		mav.addObject("menuList", menuList);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		return mav;
	}
	//아이디 찾기
	@RequestMapping("/findID")
	@ResponseBody
	public String findIDDO(@RequestParam String uname,@RequestParam String uemail,HttpServletRequest request) {
		String siteName = siteService.getSiteConfigContent("head", "siteName");
		StringBuilder sb = new StringBuilder();
		String uid = memberService.getMemberFindID(uname, uemail);
		String msg = "아이디를 찾을 수 없습니다.";
		String url = "/login/findAccount";
		if(uid!=null&&!uid.equals("")) {
			msg = "아이디를 가입하신 메일로 전송 했습니다.";
			MailVO mvo = new MailVO();
			mvo.setMailto(uemail);
			mvo.setTitle(siteName+" - 아이디 찾기 서비스입니다.");
			mvo.setContent("고객님의 아이디는 '"+uid+"'입니다.<br><a href='http://localhost:8888/login/login-page2'>"+siteName+" 바로가기</a>");
			MailSend mailSend = new MailSend();
			try {
				mailSend.mailSender(request, mvo);
				url="/login/login-page2";
			} catch (UnsupportedEncodingException | MessagingException | GeneralSecurityException e) {
				msg = "시스템 오류 입니다.\n 관리자에게 문의해 주세요.";
			}
			mailService.setMail(mvo);
		}
		sb.append("<script>");
		sb.append("alert('"+msg+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}

	//비밀번호 찾기
	@RequestMapping("/findPWD")
	@ResponseBody
	public String findPWDDO(@RequestParam String uid,@RequestParam String uemail,HttpServletRequest request) {
		String siteName = siteService.getSiteConfigContent("head", "siteName");
		StringBuilder sb = new StringBuilder();
		int id = memberService.getMemberFindPWD(uid, uemail);
		String msg = "가입 정보를 찾을 수 없습니다.";
		String url = "/login/findAccount?template=findPWD";
		if(id>0) {
			msg = "비밀번호를 가입하신 메일로 전송 했습니다.";
			String modPWD = (int)(Math.random()*1000)+RandomStringUtils.randomAlphanumeric(5);
			memberService.updatePwdMember(id, ShaEncrypt.sha256(modPWD));
			MailVO mvo = new MailVO();
			mvo.setMailto(uemail);
			mvo.setTitle(siteName+" - 비밀번호 찾기 서비스입니다.");
			mvo.setContent("고객님의 비밀번호는 '"+modPWD+"'입니다.<br><a href='http://localhost:8888/login/login-page2'>"+siteName+" 바로가기</a>");
			MailSend mailSend = new MailSend();
			try {
				mailSend.mailSender(request, mvo);
				url="/login/login-page2";
			} catch (UnsupportedEncodingException | MessagingException | GeneralSecurityException e) {
				msg = "시스템 오류 입니다.\n 관리자에게 문의해 주세요.";
			}
			mvo.setContent("고객님의 비밀번호는 '"+ShaEncrypt.sha256(modPWD)+"'입니다.<br><a href='http://localhost:8888/login/login-page2'>와디스 바로가기</a>");
			mailService.setMail(mvo);
		}
		sb.append("<script>");
		sb.append("alert('"+msg+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
		
	}
	
	@RequestMapping("/getMemberID")
	@ResponseBody
	public Map<String ,Object> getMemberID(String id){
		Map<String,Object> map = new HashedMap();
		String msg = "중복된 아이디가 있습니다.";
		boolean status = false;
		int result = memberService.getMemberID(id);
		if(result==0) {
			msg = "사용가능한 아이디 입니다.";
			status = true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
		
	}
}

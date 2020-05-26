package com.krahs123.wathis.controller;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.util.ShaEncrypt;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	MemberService memberService;
	final String DIR ="/login/";
	//
	@RequestMapping("/login-page")
	public String viewLoginpage() {
		return DIR +"login-page";
	}
	@RequestMapping("/login-page2")
	public String viewLoginpage2() {
		return DIR +"login-page-headerOn";
	}
	@RequestMapping("/register")
	public ModelAndView viewRegister(@ModelAttribute MemberVO mvo) {
		ModelAndView mav = new ModelAndView();
		mvo.setUpassword(ShaEncrypt.sha256(mvo.getUpassword()));
		boolean isChk = memberService.setMember(mvo)>0;
		if(isChk) {
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("redirect:/login-page2");
		}
		return mav;
	}
	
	@RequestMapping("/logindo")
	@ResponseBody
	public String logindo(@RequestParam String uid , @RequestParam String upassword, @RequestParam(defaultValue = "no") String uidSave, HttpSession session,HttpServletResponse response) {
		String inp = ShaEncrypt.sha256(upassword);
		MemberVO mvo = memberService.getlogin(uid, inp,session);
		
		StringBuilder sb = new StringBuilder();
		if( mvo != null ) {
			Cookie coo = new Cookie("uid", uid);
			coo.setMaxAge(60*60*24*365);
			response.addCookie(coo);
			try {
				response.sendRedirect("/");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sb.append("<script>");
			sb.append("alert(\"됨\");");
			sb.append("location.replace(\"/\");");
			sb.append("</script>");
	
		}else {
			sb.append("<script>");
			sb.append("alert(\"안됨"+uid+" pss: "+inp+"\");");
			sb.append("</script>");
	
		}
		
		return sb.toString();
	}

	//로그아웃
	@RequestMapping("/logout")
	public ModelAndView logOutDo(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		memberService.getlogOut(session);
		mav.setViewName("redirect:/");
		return mav;
	}
}

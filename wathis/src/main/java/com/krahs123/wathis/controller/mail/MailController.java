package com.krahs123.wathis.controller.mail;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.config.DbStatus;
import com.krahs123.wathis.model.ArticleVO;
import com.krahs123.wathis.model.MailVO;
import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.service.mail.MailService;
import com.krahs123.wathis.util.MailSend;

@Controller
@RequestMapping("/mail")
public class MailController {
	@Autowired
	MailService mailService;
	@RequestMapping("")
	public ModelAndView viewMailList(
			@RequestParam(defaultValue = "title") String searchOpt,
			@RequestParam(defaultValue =  "") String words,
			@RequestParam(defaultValue = "1") int page) {
		ModelAndView mav = new ModelAndView();

		int resultCnt = mailService.getMailCount(searchOpt, words);
		
		//페이징 처리
		Map<String, Object> pageMap = new HashMap<>();//ModelAndView로 넘길 페이지 관련된 것들
		int pagePer = 10;//페이지당 게시물수
		int pageStart =(page-1)*pagePer;//페이시 시작 인덱스
		int pageCnt = (int)Math.ceil((double)resultCnt/pagePer);//전체 페이지의 수
		int disPaging = 5;//페이징할 갯수
		int endPage = (int)Math.ceil((double)page/disPaging)*disPaging;
		int startPage = endPage - disPaging +1;
		endPage =(endPage<pageCnt)?endPage:pageCnt;
		pageMap.put("page", page);
		pageMap.put("startPage", startPage);
		pageMap.put("endPage", endPage);
		pageMap.put("pageCnt", pageCnt);
		pageMap.put("pagePer", pagePer);

		List<MailVO> mvoList = mailService.getMailList(searchOpt, words, pageStart, pagePer);
		mav.addObject("searchOpt",searchOpt);
		mav.addObject("words",words);
		mav.addObject("ugroup",DbStatus.ugroup);
		mav.addObject("ustatus",DbStatus.ustatus);
		mav.addObject("mvoList",mvoList);
		mav.addObject("count",resultCnt);
		mav.addObject("pageStart",pageStart);
		mav.addObject("paging",pageMap);
		mav.addObject("template", "mail");
		mav.addObject("mypage", "list");
		mav.setViewName("/admin/admin");
		return mav;
	}
	@RequestMapping(value="/setMail" , method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView setMailView() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "mail");
		mav.addObject("mypage", "insert");
		mav.setViewName("/admin/admin");
		return mav;
	}
	@RequestMapping(value="/setMail" , method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView setMailDo(HttpServletRequest request,@ModelAttribute MailVO mvo) {
		ModelAndView mav = new ModelAndView();
		MailSend ms = new MailSend();
		try {
			ms.mailSender(request,mvo);
			int result = mailService.setMail(mvo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		mav.setViewName("redirect:/mail");
		return mav;
	}
	@RequestMapping("/deleteMail")
	@ResponseBody
	public Map<String,Object> deleteMail(@RequestParam int id){
		Map<String,Object> map = new HashMap<>();
		int result = mailService.deleteMail(id);
		String msg="메일 삭제에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		
		if(result>0) {
			msg="메일이 삭제되었습니다.";
			status=true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	@RequestMapping("/deleteSelMail")
	@ResponseBody
	public Map<String,Object> deleteSelMail(@RequestParam(value = "uid[]") List<Integer> idList){
		Map<String,Object> map = new HashMap<>();
		int result = 0;
		String msg="메일 삭제에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		for(int id : idList) {
			result+=mailService.deleteMail(id);
		}
		if(result>0) {
			msg="메일이 삭제되었습니다.";
			status=true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	@RequestMapping("/getMailDetail")
	public ModelAndView getMailDetail(int id) {
		ModelAndView mav = new ModelAndView();
		MailVO mvo = mailService.getMailDetail(id);

		mav.addObject("mvo", mvo);
		mav.addObject("template", "mail");
		mav.addObject("mypage", "view");
		mav.setViewName("/admin/admin");
		return mav;
	}
}

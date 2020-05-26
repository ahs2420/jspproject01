package com.krahs123.wathis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/page")
public class MyPageConroller {
	final String DIR ="/mypage/";
	
	@RequestMapping("/mypage")
	public ModelAndView viewMypageList(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "prepare");
		
		mav.setViewName(DIR+"mypagePrepare");
		return mav;
	}

	@RequestMapping("/mypage-one")
	public ModelAndView viewMypageInfo(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "Information");
		
		mav.setViewName(DIR+"mypageInfo");
		return mav;
	}

	@RequestMapping("/mypage-two")
	public String viewMypagetwo(){
		return DIR+"mypage-two";
	}

	@RequestMapping("/mypage-three")
	public String viewMypagethree(){
		return DIR+"mypage-three";
	}


	@RequestMapping("/mypage-four")
	public String viewMypagefour(){
		return DIR+"mypage-four";
	}


	@RequestMapping("/mypage-five")
	public String viewMypagefive(){
		return DIR+"mypage-five";
	}
	//회원 마이페이지
	@RequestMapping("/userMypage")
	public ModelAndView viewSettings(@RequestParam(defaultValue = "setting") String template,@RequestParam(defaultValue = "list") String page){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template",template);
		mav.addObject("page",page);
		mav.setViewName(DIR+"userMypage");
		return mav;
	}


}

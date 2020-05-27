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
		
		mav.setViewName(DIR+"mypage");
		return mav;
	}

	@RequestMapping("/mypage-one")
	public ModelAndView viewMypageOne(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "information");
		
		mav.setViewName(DIR+"mypage");
		return mav;
	}

	@RequestMapping("/mypage-two")
	public ModelAndView viewMypageTwo(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "maker");
		
		mav.setViewName(DIR+"mypage");
		
		return mav;
	}

	@RequestMapping("/mypage-three")
	public ModelAndView viewMypageThree(){
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("mypage", "story");
			
			mav.setViewName(DIR+"mypage");
			
			return mav;
		}
	

	@RequestMapping("/mypage-four")
		public ModelAndView viewMypageFour(){
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("mypage", "design");
			
			mav.setViewName(DIR+"mypage");
			
			return mav;
		}


	@RequestMapping("/mypage-five")
	public ModelAndView viewMypageFive(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "riskFactors");
		
		mav.setViewName(DIR+"mypage");
		
		return mav;
		
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

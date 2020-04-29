package com.krahs123.wathis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class MyPageConroller {
	final String DIR ="/mypage/";
	
	@RequestMapping("/mypage")
	public String viewMypage(){
		return DIR+"mypage";
	}

	@RequestMapping("/mypage-one")
	public String viewMypageone(){
		return DIR+"mypage-one";
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


}

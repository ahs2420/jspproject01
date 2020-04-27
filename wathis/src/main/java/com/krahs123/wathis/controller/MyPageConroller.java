package com.krahs123.wathis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class MyPageConroller {
	final String DIR ="/page/";
	@RequestMapping("/mypage")
	public String viewMypage(){
		return DIR+"mypage";
	}
}

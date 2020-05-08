package com.krahs123.wathis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	final String BASEDIR="/main/";
	//메인페이지
	@RequestMapping("")
	public String viewMain() {
		return BASEDIR+"main";
	}
	//회사소개 + 크라우드 펀딩 소개
		@RequestMapping("/introduce")
		public String viewIntroduce() {
			return BASEDIR+"introduce";
		}
	//약관
	@RequestMapping("/term")
	public String viewTerm() {
		return BASEDIR+"term";
	}
	//약관 ajax
	@RequestMapping("/termAjax")
	public String viewTermAjax(@RequestParam(defaultValue = "register") String item) {
		return BASEDIR+item;
	}
}

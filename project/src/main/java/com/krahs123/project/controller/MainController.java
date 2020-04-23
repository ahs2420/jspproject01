package com.krahs123.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	final String BASEDIR="/main/";
	@RequestMapping("/")
	public String viewMain() {
		return BASEDIR+"main";
	}
	//test132
}

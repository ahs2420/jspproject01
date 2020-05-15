package com.krahs123.wathis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {
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
}

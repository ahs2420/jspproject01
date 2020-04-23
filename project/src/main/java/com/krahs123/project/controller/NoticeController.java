package com.krahs123.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	final String DIR ="/notice/";
	@RequestMapping("/list")
	public String viewList() {
		return DIR+"notice-list";
	}
	@RequestMapping("/content")

	public String viewContent() {
		return DIR+"notice-content";
	}
}

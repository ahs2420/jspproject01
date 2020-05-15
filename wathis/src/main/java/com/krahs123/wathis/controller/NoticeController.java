package com.krahs123.wathis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")//사이트 큰 주소
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
	@RequestMapping("/write")//사이트 작은 주소
	public String viewWrite() {
		return DIR+"notice-write";//jsp파일 이름
	}
	@RequestMapping("/news")//사이트 작은 주소
	public String viewnews() {
		return DIR+"notice-news";//jsp파일 이름
	}
	
}

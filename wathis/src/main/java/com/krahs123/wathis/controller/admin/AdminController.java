package com.krahs123.wathis.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("")
	public ModelAndView viewAdminMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/admin");
		mav.addObject("template", "users");
		mav.addObject("mypage", "list");
		return mav;
	}
}

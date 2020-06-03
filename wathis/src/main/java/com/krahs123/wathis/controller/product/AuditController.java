package com.krahs123.wathis.controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/audit")
public class AuditController {
	@RequestMapping("")
	public ModelAndView auditListView() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "audit");
		mav.addObject("mypage", "list");
		mav.setViewName("/admin/admin");
		return mav;
	}
}

package com.krahs123.wathis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.service.menu.MenuService;

@Controller
public class MainController {
	@Autowired
	MenuService menuService;
	final String BASEDIR="/main/";
	//메인페이지
	@RequestMapping("")
	public ModelAndView viewMain() {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		mav.setViewName(BASEDIR+"main");
		mav.addObject("menuList", menuList);
		return mav;
	}
	//회사소개 + 크라우드 펀딩 소개
		@RequestMapping("/introduce")
		public ModelAndView viewIntroduce() {
			ModelAndView mav = new ModelAndView();
			List<MenuVO> menuList = menuService.getMenuList();
			mav.setViewName(BASEDIR+"introduce");
			mav.addObject("menuList", menuList);
			return mav;
		}
		
	//약관
	@RequestMapping("/term")
	public ModelAndView viewTerm() {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		mav.setViewName(BASEDIR+"term");
		mav.addObject("menuList", menuList);
		return mav;
	}
	//약관 ajax
	@RequestMapping("/termAjax")
	public ModelAndView viewTermAjax(@RequestParam(defaultValue = "register") String item) {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		mav.setViewName(BASEDIR+"item");
		mav.addObject("menuList", menuList);
		return mav;
	}
}

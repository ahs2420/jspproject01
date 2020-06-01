package com.krahs123.wathis.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.model.PopupVO;
import com.krahs123.wathis.model.SiteConfigVO;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.service.popup.PopupService;
import com.krahs123.wathis.service.siteConfig.SiteConfigService;

@Controller
public class MainController {
	@Autowired
	MenuService menuService;
	@Autowired
	PopupService popupService;
	@Autowired
	SiteConfigService siteService;
	final String BASEDIR="/main/";
	//메인페이지
	@RequestMapping("")
	@ResponseBody
	public ModelAndView viewMain() {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		List<PopupVO> popupList =popupService .getDisplayList("main");
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.setViewName(BASEDIR+"main");
		mav.addObject("menuList", menuList);
		mav.addObject("popupList", popupList);
		return mav;
	}
	//회사소개 + 크라우드 펀딩 소개
		@RequestMapping("/introduce")
		public ModelAndView viewIntroduce() {
			ModelAndView mav = new ModelAndView();
			List<MenuVO> menuList = menuService.getMenuList();
			mav.setViewName(BASEDIR+"introduce");
			Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
			Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
			mav.addObject("headConfig", headConfig);
			mav.addObject("footConfig", footConfig);
			mav.addObject("menuList", menuList);
			return mav;
		}
		
	//약관
	@RequestMapping("/term")
	public ModelAndView viewTerm() {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		mav.setViewName(BASEDIR+"term");
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
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

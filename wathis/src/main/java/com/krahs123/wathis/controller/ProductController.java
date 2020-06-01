package com.krahs123.wathis.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.model.PopupVO;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.service.popup.PopupService;
import com.krahs123.wathis.service.siteConfig.SiteConfigService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	MenuService menuService;
	@Autowired
	PopupService popupService;
	@Autowired
	SiteConfigService siteService;
	final String BASEDIR="/product/";
	//상품 페이지
	@RequestMapping("/product")
	public ModelAndView viewProduct() {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.setViewName(BASEDIR+"product");
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		return mav;
	}
	//상품 옵션 선택 페이지
	@RequestMapping("/product-select")
	public ModelAndView viewProductSelect() {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.setViewName(BASEDIR+"product-select");
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		return mav;
	}
	// 상품 결제 페이지
	@RequestMapping("/product-payment")
	public ModelAndView viewProductPayment() {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.setViewName(BASEDIR+"product-payment");
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		return mav;
	}
	//상품리스트 페이지
	@RequestMapping("/product-list")
	public ModelAndView viewProductList() {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		List<PopupVO> popupList =popupService .getDisplayList("product");
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.setViewName(BASEDIR+"product-list");
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		mav.addObject("popupList", popupList);
		return mav;
	}
	//상품리스트 ajax 페이지
	@RequestMapping("/product-ajax")
	public String viewProductAjax() {
		return BASEDIR+"product-ajax";
	}
	
}

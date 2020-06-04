package com.krahs123.wathis.controller.product;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.BoardVO;
import com.krahs123.wathis.model.CategoryVO;
import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.model.PopupVO;
import com.krahs123.wathis.service.category.CategoryService;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.service.popup.PopupService;
import com.krahs123.wathis.service.product.ProductService;
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
	@Autowired
	CategoryService cateService;
	@Autowired
	ProductService proService;
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
	public ModelAndView viewProductList(@RequestParam(defaultValue = "") String words,@RequestParam(defaultValue = "") String category_id) {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		List<PopupVO> popupList =popupService .getDisplayList("product");
		List<CategoryVO> cateList = cateService.getCateList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.setViewName(BASEDIR+"product-list");
		mav.addObject("words", words);
		mav.addObject("category_id", category_id);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		mav.addObject("popupList", popupList);
		mav.addObject("cateList", cateList);
		return mav;
	}
	//상품리스트 ajax 페이지
	@RequestMapping("/product-ajax")
	@ResponseBody
	public Map<String,Object> viewProductAjax(@RequestParam(defaultValue = "") String words,@RequestParam(defaultValue = "1") int page,@RequestParam(defaultValue = "") String category_id) {
		Map<String,Object> map = new HashedMap();

		int resultCnt = proService.getProductCount(category_id,words);
		
		int pagePer = 6;//페이지당 게시물수
		int pageStart =(page-1)*pagePer;//페이시 시작 인덱스
		int pageCnt = (int)Math.ceil((double)resultCnt/pagePer);//전체 페이지의 수
		
		String msg ="검색에 실패하였습니다.";
		boolean status =false;
		
		List<Map<String, Object>> pvoList = proService.getProductList(category_id,words, pageStart, pagePer);
		
		if(pvoList.size()>0) {
			msg ="검색된 결과는 "+resultCnt+"건 입니다.";
			status =true;
			map.put("resultCnt", resultCnt);
			map.put("nextPage", page+1);
			map.put("pageCnt", pageCnt);
			map.put("pvoList", pvoList);
		}else {
			msg ="검색된 결과가 없습니다.";
			status =true;
			map.put("resultCnt", 0);
			
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	
	//관리자 리스트
	@RequestMapping("")
	public ModelAndView viewProductAdminList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "product");
		mav.addObject("mypage", "list");
		mav.setViewName("/admin/admin");
		return mav;
	}
	
	
}

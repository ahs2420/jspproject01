package com.krahs123.wathis.controller.product;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.model.ProductNoticeVO;
import com.krahs123.wathis.model.ProductVO;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.service.product.ProductNoticeService;
import com.krahs123.wathis.service.product.ProductService;
import com.krahs123.wathis.service.siteConfig.SiteConfigService;

@Controller
@RequestMapping("/proNotice")
public class ProductNoticeController {
	@Autowired
	ProductNoticeService proNotService;
	@Autowired
	ProductService proService;
	@Autowired
	MenuService menuService;
	@Autowired
	SiteConfigService siteService;
	final String DIR = "/product/";
	//새소식 작성 화면
	@RequestMapping(value = "/write" , method = RequestMethod.GET)
	public ModelAndView setNoticeView(@RequestParam int product_id,@RequestParam(defaultValue = "page") String link) {
		ModelAndView mav = new ModelAndView();
		ProductVO pvo = proService.getProductDetail(product_id);
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		mav.addObject("pvo", pvo);
		mav.addObject("product_id", product_id);
		mav.addObject("link", link);
		mav.addObject("menuList", menuList);
		
		mav.setViewName(DIR+"product-notice-write");
		return mav;
	}
	//새소식 작성 동작
	@RequestMapping(value = "/write" , method = RequestMethod.POST)
	public ModelAndView setNoticeDo(@ModelAttribute ProductNoticeVO pvo,@RequestParam(defaultValue = "page") String link) {
		ModelAndView mav = new ModelAndView();
		ProductVO pro = proService.getProductDetail(pvo.getProduct_id());
		int result = proNotService.setProNotice(pvo);
		String url = (link.equals("product"))?"/product/product?id="+pvo.getProduct_id():"/page/mypageListModify?template=Reward&mypage=information&id="+pro.getAudit_id();
		mav.setViewName("redirect:"+url);
		return mav;
	}
	//새소식 작성 삭제
	@RequestMapping("/deleteNotice")
	@ResponseBody
	public String deleteNotice(@RequestParam int id,@RequestParam int product_id,@RequestParam(defaultValue = "page") String link) {
		StringBuilder sb = new StringBuilder();
		ProductVO pro = proService.getProductDetail(product_id);
		int result = proNotService.deleteProNotice(id);
		String url = (link.equals("product"))?"/product/product?id="+product_id:"/page/mypageListModify?template=Reward&mypage=information&id="+pro.getAudit_id();
		sb.append("<script>");
		sb.append("alert('새소식이 삭제되었습니다');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}
}

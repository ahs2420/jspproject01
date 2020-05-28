package com.krahs123.wathis.controller.admin.menu;

import java.util.HashMap;
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
import com.krahs123.wathis.service.menu.MenuService;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@Autowired
	MenuService menuService;
	final String DIR = "/admin/menu/";
	//메뉴 리스트
	@RequestMapping("")
	public ModelAndView menuView() {
		ModelAndView mav= new ModelAndView();
		List<MenuVO> mvo = menuService.getMenuList();
		mav.addObject("mvo",mvo);
		mav.addObject("template","menu");
		mav.addObject("mypage","list");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//메뉴 작성 화면
	@RequestMapping(value="/setMenu" , method = RequestMethod.GET)
	public ModelAndView setMenuView(@RequestParam(defaultValue = "0") int id) {
		ModelAndView mav= new ModelAndView();
		MenuVO mvo = new MenuVO();
		if(id>0) {
			mvo = menuService.getMenuDetail(id); 
			mvo.setDept(mvo.getDept()+1);
		}else {
			mvo.setDept(1);
		}
		int morder = menuService.getGroupMax(mvo);
		mav.addObject("mvo",mvo);
		mav.addObject("morder",morder);
		mav.addObject("template","menu");
		mav.addObject("mypage","insert");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//메뉴 작성 동작
	@RequestMapping(value="/setMenu" , method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView setMenuDo(@ModelAttribute MenuVO mvo) {
		ModelAndView mav= new ModelAndView();
		int result = menuService.setMenu(mvo);
		mav.setViewName("redirect:/menu");
		
		return mav;
		
	}
	
	//메뉴 삭제 ajax
	@RequestMapping("/setMenuDeleteAjax")
	@ResponseBody
	public Map<String,Object> setMenuDeleteAjax(int id){
		Map<String, Object> map = new HashMap<>();
		int result = menuService.deleteMenu(id);
		
		String msg="메뉴 삭제가 실패하였습니다. 관리자에게 문의해 주세요.";
		Boolean status = false;
		if(result>0) {
			msg="메뉴가 삭제되었습니다.";
			status=true;
		}
		map.put("status", status);
		map.put("msg", msg);
		return map;
	}
	//메뉴 선택 삭제 ajax
	@RequestMapping("/deleteSelMenu")
	@ResponseBody
	public Map<String,Object> deleteSelMenu(@RequestParam(value = "uid[]") List<Integer> idList){

		Map<String, Object> map = new HashMap<>();
		String msg="메뉴 삭제가 실패하였습니다. 관리자에게 문의해 주세요.";
		Boolean status = false;
		int result=0;
		for(int id : idList) {
			result+= menuService.deleteMenu(id);
		}
		if(result>0) {
			msg="메뉴가 삭제되었습니다.";
			status=true;
		}
		map.put("status", status);
		map.put("msg", msg);
		return map;
	}
	//메뉴 수정
	@RequestMapping("/getMenuModify")
	public ModelAndView getMenuModify(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		MenuVO mvo = menuService.getMenuDetail(id);
		mav.addObject("mvo",mvo);
		mav.addObject("template","menu");
		mav.addObject("mypage","modify");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//메뉴 수정 동작
	@RequestMapping("/setMenuModify")
	public ModelAndView setMenuModify(@ModelAttribute MenuVO mvo) {
		ModelAndView mav = new ModelAndView();
		int result = menuService.setMenuModify(mvo);
		mav.setViewName("redirect:/menu");
		
		return mav;
		
	}
	//메뉴 리스트 ajax
	@RequestMapping("/getMenuListAjax")
	@ResponseBody
	public Map<String,Object> getMenuListAjax(){
		Map<String, Object> map = new HashMap<>();
		String msg="메뉴 리스트 출력에 실패하였습니다. 관리자에게 문의해 주세요.";
		Boolean status = false;
		List<MenuVO> menuList = menuService.getMenuList();
		if(menuList.size()>0) {
			msg="메뉴가 출력되었습니다.";
			status=true;
			map.put("menuList",menuList);
		}
		map.put("status", status);
		map.put("msg", msg);
		return map;
	}
}

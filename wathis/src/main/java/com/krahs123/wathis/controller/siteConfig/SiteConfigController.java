package com.krahs123.wathis.controller.siteConfig;

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

import com.krahs123.wathis.model.SiteConfigVO;
import com.krahs123.wathis.service.siteConfig.SiteConfigService;

@Controller
@RequestMapping("/siteConfig")
public class SiteConfigController {
	@Autowired
	SiteConfigService siteService;
	@RequestMapping("")
	public ModelAndView siteConfigView() {

		ModelAndView mav = new ModelAndView();
		List<SiteConfigVO> svoList = siteService.getSiteConfigList();
		mav.addObject("svoList", svoList);
		mav.addObject("template", "siteConfig");
		mav.addObject("mypage", "list");
		mav.setViewName("/admin/admin");
		return mav;
	}
	@RequestMapping("/setSiteConfig")
	public ModelAndView setSiteConfig(@ModelAttribute SiteConfigVO svo) {

		ModelAndView mav = new ModelAndView();
		int result = siteService.setSiteConfig(svo);
		mav.setViewName("redirect:/siteConfig");
		return mav;
	}
	@RequestMapping("/getSiteConfigGroupList")
	@ResponseBody
	public Map<String,Object> getSiteConfigGroupList(){
		Map<String,Object> map = new HashMap<>();
		List<String> groupList = siteService.getSiteConfigGroupList();
		String msg = "시스템 오류입니다. 관리자에게 문의 해 주세요";
		boolean status = false;
		if(groupList!=null) {
			msg = "정상 출력 되었습니다.";
			status = true;
			map.put("groupList", groupList);
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	@RequestMapping("/setSiteConfigDeleteAjax")
	@ResponseBody
	public Map<String,Object> setSiteConfigDeleteAjax(@RequestParam int id){
		Map<String,Object> map = new HashMap<>();
		int result = siteService.deleteSiteConfig(id);
		String msg = "시스템 오류입니다. 관리자에게 문의 해 주세요";
		boolean status = false;
		if(result>0) {
			msg = "삭제 되었습니다.";
			status = true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	@RequestMapping("/deleteSelSiteConfig")
	@ResponseBody
	public Map<String,Object> deleteSelSiteConfig(@RequestParam(value="uid[]") List<Integer> idList){
		Map<String,Object> map = new HashMap<>();
		int result = 0;
		for(int id: idList) {
			result+=siteService.deleteSiteConfig(id);
		}
		String msg = "시스템 오류입니다. 관리자에게 문의 해 주세요";
		boolean status = false;
		if(result>0) {
			msg = "삭제 되었습니다.";
			status = true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	@RequestMapping("/siteConfigTitleChk")
	@ResponseBody
	public Map<String,Object> deleteSelSiteConfig(@RequestParam String group_id,@RequestParam String title){
		int result = siteService.getSiteConfigTitleChk(group_id, title);
		Map<String,Object> map = new HashMap<>();
		String msg = "시스템 오류입니다. 관리자에게 문의 해 주세요";
		boolean status = false;
		if(result>0) {
			msg = "중복된 코드가 있습니다.";
			status = false;
		}else {
			msg = "사용가능한 코드입니다.";
			status = true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	@RequestMapping(value="/getSiteConfigModify",method = RequestMethod.GET)
	public ModelAndView getSiteConfigModify(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		SiteConfigVO svo = siteService.getSiteConfigDetail(id);
		List<String> groupList = siteService.getSiteConfigGroupList();
		mav.addObject("groupList", groupList);
		mav.addObject("svo", svo);
		mav.addObject("template", "siteConfig");
		mav.addObject("mypage", "modify");
		mav.setViewName("/admin/admin");
		return mav;
	}
	@RequestMapping(value = "/getSiteConfigModify",method = RequestMethod.POST)
	public ModelAndView getSiteConfigModifyDo(@ModelAttribute SiteConfigVO svo) {
		ModelAndView mav = new ModelAndView();
		int result = siteService.updateSiteConfig(svo);
		mav.setViewName("redirect:/siteConfig");
		return mav;
	}
	
}

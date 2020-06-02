package com.krahs123.wathis.controller.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.SchedulerVO;
import com.krahs123.wathis.service.scheduler.SchedulerService;
import com.krahs123.wathis.util.JSONResult;


@Controller
@RequestMapping("/scheduler")
public class SchedulerController {
	@Autowired
	SchedulerService schedulerService;
	
	@RequestMapping("")
	public ModelAndView viewScheduler() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/admin");
		mav.addObject("template", "scheduler");
		mav.addObject("mypage", "list");
		return mav;
	}
	@RequestMapping("/setScheduler")
	@ResponseBody
	public JSONResult setSchedulerDO(@ModelAttribute SchedulerVO svo) {
		
		int result = schedulerService.setSchduler(svo);
		return JSONResult.success(result);
	}
	@RequestMapping("/getScheduler")
	@ResponseBody
	public JSONResult getSchedulerAjax(@ModelAttribute SchedulerVO svo) {
		List<SchedulerVO> svoList = schedulerService.getSchduler(svo);
		
		return JSONResult.success(svoList);
	}
}

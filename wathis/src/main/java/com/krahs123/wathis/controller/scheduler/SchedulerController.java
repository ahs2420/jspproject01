package com.krahs123.wathis.controller.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.JSONResult;
import com.krahs123.wathis.model.ScheduleVO;
import com.krahs123.wathis.service.scheduler.SchedulerService;



@Controller
public class SchedulerController {
	
	@Autowired
	SchedulerService sService;
	
	@RequestMapping("/scheduler")
	public ModelAndView scheduler(){
		
		ModelAndView mav= new ModelAndView();
		mav.addObject("template", "scheduler");
		mav.addObject("mypage", "view");
		mav.setViewName("admin/admin");
		return mav;
	}
	@RequestMapping("/scheduler/setScheduler")
	@ResponseBody
		public JSONResult setScheduler(@ModelAttribute ScheduleVO svo) {//public출력 메소드(입력)
		
		int result = 0;
		if( svo != null) {
			sService.setScheduler(svo);
			result = 1;
		}
		
		return JSONResult.success(result);
	}
	@RequestMapping("/scheduler/getScheduler")
	@ResponseBody
		public JSONResult getScheduler(@ModelAttribute ScheduleVO svo) {
			List<ScheduleVO> list = sService.getScheduler();
		
			return JSONResult.success(list);
	}

}

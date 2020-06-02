package com.krahs123.wathis.service.scheduler;

import java.util.List;

import com.krahs123.wathis.model.ScheduleVO;


public interface SchedulerService {

	public void setScheduler(ScheduleVO svo);
	
	public List<ScheduleVO> getScheduler();
}

package com.krahs123.wathis.repository.scheduler;

import java.util.List;

import com.krahs123.wathis.model.ScheduleVO;


public interface SchedulerDao {
	
		public void setScheduler(ScheduleVO svo);
		
		public List<ScheduleVO> getScheduler();
		
}

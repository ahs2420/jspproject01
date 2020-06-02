package com.krahs123.wathis.service.scheduler;

import java.util.List;

import com.krahs123.wathis.model.SchedulerVO;



public interface SchedulerService {
	//스케쥴 입력
	public int setSchduler(SchedulerVO svo);
	//스케쥴 출력
	public List<SchedulerVO> getSchduler(SchedulerVO svo);

}


package com.krahs123.wathis.service.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.ScheduleVO;
import com.krahs123.wathis.repository.scheduler.SchedulerDao;



@Service
public class SchedulerServiceImpl implements SchedulerService{

	@Autowired
	SchedulerDao sDao;
	
	@Override
	public void setScheduler(ScheduleVO svo) {
		sDao.setScheduler(svo);
	}

	@Override
	public List<ScheduleVO> getScheduler() {
		return sDao.getScheduler();
	}

}

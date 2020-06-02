package com.krahs123.wathis.service.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.SchedulerVO;
import com.krahs123.wathis.repository.scheduler.SchedulerDAO;




@Service
public class SchedulerServiceImpl implements SchedulerService{


	@Autowired
	SchedulerDAO scheduleDAO;
	@Override
	public int setSchduler(SchedulerVO svo) {
		// TODO Auto-generated method stub
		return scheduleDAO.setSchduler(svo);
	}

	@Override
	public List<SchedulerVO> getSchduler(SchedulerVO svo) {
		// TODO Auto-generated method stub
		return scheduleDAO.getSchduler(svo);
	}

}

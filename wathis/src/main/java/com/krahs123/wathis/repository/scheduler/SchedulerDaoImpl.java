package com.krahs123.wathis.repository.scheduler;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.ScheduleVO;


@Repository
public class SchedulerDaoImpl implements SchedulerDao{

	@Autowired
	SqlSession sql;
	
	@Override
	public void setScheduler(ScheduleVO svo) {
		sql.insert("mappers.ScheduleMapper.setScheduler",svo);
	}

	@Override
	public List<ScheduleVO> getScheduler() {
		return sql.selectList("mappers.ScheduleMapper.getScheduler");
	}

	
}

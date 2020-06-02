package com.krahs123.wathis.repository.scheduler;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.SchedulerVO;


@Repository
public class SchedulerDAOImpl implements SchedulerDAO{
	final String NAMESPACE ="mappers.SchedulerMapper";
	@Autowired
	SqlSession sql;
	@Override
	public int setSchduler(SchedulerVO svo) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACE+".setSchduler",svo);
	}
	@Override
	public List<SchedulerVO> getSchduler(SchedulerVO svo) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE+".getSchduler",svo);
	}
	
}

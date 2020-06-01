package com.krahs123.wathis.repository.product;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.MakerInfoVO;

@Repository
public class MarkerInfoDAOImpl implements MarkerInfoDAO{
	
	final String NAMESPACE = "mappers.MarkerInfoMapper";
	
	@Autowired
	SqlSession sql;
	
	@Override
	public int setMaker(MakerInfoVO mfvo) {
		return sql.insert(NAMESPACE+ ".setMaker", mfvo);
	}
	
}

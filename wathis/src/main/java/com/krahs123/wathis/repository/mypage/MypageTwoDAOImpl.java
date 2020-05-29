package com.krahs123.wathis.repository.mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.MaketInfoVO;

@Repository
public class MypageTwoDAOImpl implements MypageTwoDAO{

	
	@Autowired SqlSession sql;
	
	final static String NAMESPACE = "mappers.MarketInfoMapper";

	@Override
	public int setMaker(MaketInfoVO mfvo) {
		
		return sql.insert(NAMESPACE + ".setMaker" ,mfvo);
	}
}

package com.krahs123.wathis.repository.product;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MarketInfoDAOImpl implements MarketInfoDAO{
	final String NAMESPACE = "mappers.MarketInfoMapper";
	@Autowired
	SqlSession sql;

}
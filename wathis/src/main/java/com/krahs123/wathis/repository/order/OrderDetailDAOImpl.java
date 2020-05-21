package com.krahs123.wathis.repository.order;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDetailDAOImpl implements OrderDetailDAO{
	final String namespace ="mappers.OrderDetailMapper";
	@Autowired
	SqlSession sql;

}

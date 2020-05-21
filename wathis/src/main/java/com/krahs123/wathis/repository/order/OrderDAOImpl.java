package com.krahs123.wathis.repository.order;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAOImpl implements OrderDAO{

	final String namespace ="mappers.OrderMapper";
	@Autowired
	SqlSession sql;
}

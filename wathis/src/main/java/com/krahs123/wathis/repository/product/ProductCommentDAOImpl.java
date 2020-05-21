package com.krahs123.wathis.repository.product;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductCommentDAOImpl implements ProductCommentDAO{
	final String namespace ="mappers.ProductCommentMapper";
	@Autowired
	SqlSession sql;

}

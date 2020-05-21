package com.krahs123.wathis.repository.category;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDAOImpl implements CategoryDAO{
	final String namespace ="mappers.CategoryMapper";
	@Autowired
	SqlSession sql;
}

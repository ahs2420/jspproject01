package com.krahs123.wathis.repository.menu;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDAOImpl implements MenuDAO{

	final String namespace ="mappers.MenuMapper";
	@Autowired
	SqlSession sql;
}

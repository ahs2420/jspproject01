package com.krahs123.wathis.repository.popup;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PopupDAOImpl implements PopupDAO{
	final String NAMESPACE ="mappers.PopupMapper";
	@Autowired
	SqlSession sql;
}

package com.krahs123.wathis.repository.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ArticleDAOImpl implements ArticleDAO{
	final String namespace = "mappers.ArticleMapper";
	@Autowired
	SqlSession sql;
	
	
}

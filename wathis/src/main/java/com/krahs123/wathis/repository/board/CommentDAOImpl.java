package com.krahs123.wathis.repository.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDAOImpl implements CommentDAO{
	final String NAMESPACE = "mappers.CommentMapper";
	@Autowired
	SqlSession sql;
}

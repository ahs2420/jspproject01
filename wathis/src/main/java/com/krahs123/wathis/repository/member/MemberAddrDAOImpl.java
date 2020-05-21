package com.krahs123.wathis.repository.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberAddrDAOImpl implements MemberAddrDAO{

	final String namespace ="mappers.MemberAddrMapper";
	@Autowired
	SqlSession sql;
}

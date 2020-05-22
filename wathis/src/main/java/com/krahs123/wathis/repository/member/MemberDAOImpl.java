package com.krahs123.wathis.repository.member;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	final String namespace ="mappers.Member";
	@Autowired
	SqlSession sql;
	@Override
	public int setMember(MemberVO mvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setItem",mvo);
	}
	@Override
	public MemberVO getlogin(String uid, String upassword) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("uid",uid);
		map.put("upassword",upassword);
	
			return sql.selectOne(namespace +".getlogin", map);
	}
}

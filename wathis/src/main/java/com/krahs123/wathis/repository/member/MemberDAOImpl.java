package com.krahs123.wathis.repository.member;

import java.util.HashMap;
import java.util.List;
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
	@Override
	public List<MemberVO> getMemberList(String searchOpt, String words, int pageStart, int pagePer) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("pageStart", pageStart);
		map.put("pagePer", pagePer);
		return sql.selectList(namespace+".getMemberList",map);
	}
	@Override
	public int getMemberCount(String searchOpt, String words) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne(namespace+".getMemberCount", map);
	}
	@Override
	public MemberVO getMemberDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getMemberDetail", id);
	}
	@Override
	public int updateMember(MemberVO mvo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateMember",mvo);
	}
	@Override
	public int updateAuthMember(int id, int ugroup) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("ugroup", ugroup);
		return sql.update(namespace+".updateAuthMember",map);
	}
	@Override
	public int deleteMember(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteMember",id);
	}
}

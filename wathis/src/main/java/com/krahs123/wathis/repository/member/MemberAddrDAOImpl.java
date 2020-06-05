package com.krahs123.wathis.repository.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.MemberAddrVO;

@Repository
public class MemberAddrDAOImpl implements MemberAddrDAO{

	final String namespace ="mappers.MemberAddrMapper";
	@Autowired
	SqlSession sql;
	@Override
	public List<MemberAddrVO> getAddrList(int member_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getAddrList",member_id);
	}
	@Override
	public int getAddrCount(int member_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getAddrCount",member_id);
	}
	@Override
	public MemberAddrVO getAddrDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getAddrDetail",id);
	}
	@Override
	public MemberAddrVO getAddrFirst(int member_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getAddrFirst",member_id);
	}
	@Override
	public int setAddr(MemberAddrVO mvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setAddr",mvo);
	}
	@Override
	public int updateAddr(MemberAddrVO mvo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateAddr",mvo);
	}
	@Override
	public int deleteAddr(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteAddr",id);
	}
}

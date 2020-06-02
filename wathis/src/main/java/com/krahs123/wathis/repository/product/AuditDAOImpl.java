package com.krahs123.wathis.repository.product;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.AuditVO;

@Repository
public class AuditDAOImpl implements AuditDAO{


	@Autowired SqlSession sql;
	
	final String NAMESPACE ="mappers.AuditMapper";

	@Override
	public int setItem(AuditVO auvo) {
		
		return sql.insert(NAMESPACE + ".setItem", auvo);
	}

	@Override
	public AuditVO getList(int id) {
	
		return sql.selectOne(NAMESPACE + ".getList",id);
	}	

	
//	리스트 수정 페이지
	
	@Override
	public int updateItem(AuditVO auvo) {
		
		return sql.update(NAMESPACE + ".updateItem", auvo);
	}

	@Override
	public int getAuditLastID(int member_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE+".getAuditLastID",member_id);
	}

	@Override
	public List<Map<String, Object>> getAuditMyList(String member_id) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE+".getAuditMyList", member_id);
	}



	
}

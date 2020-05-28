package com.krahs123.wathis.repository.mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.repository.product.AuditDAO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired SqlSession sql;
	
	final static String NAMESPACE = "mappers.AuditMapper";
	
	@Override
	public int setItem(AuditVO auvo) {
		
		return sql.insert(NAMESPACE + ".setItem", auvo);
	}

	

}

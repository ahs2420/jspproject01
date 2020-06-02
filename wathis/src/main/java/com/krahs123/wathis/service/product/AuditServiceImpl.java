package com.krahs123.wathis.service.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.repository.product.AuditDAO;

@Service
public class AuditServiceImpl implements AuditService{
	
	@Autowired	AuditDAO auditDao;

	@Override
	public int setItem(AuditVO auvo) {
		
		return auditDao.setItem(auvo);
	}
	
	@Override
	public AuditVO getList(int id) {
	
		return auditDao.getList(id);
	}
	

	@Override
	public int updateItem(AuditVO auvo) {
		
		return auditDao.updateItem(auvo);
	}

	@Override
	public int getAuditLastID(int member_id) {
		// TODO Auto-generated method stub
		return auditDao.getAuditLastID(member_id);
	}



}

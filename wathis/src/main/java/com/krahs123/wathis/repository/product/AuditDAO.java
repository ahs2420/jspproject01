package com.krahs123.wathis.repository.product;

import java.util.List;

import com.krahs123.wathis.model.AuditVO;

public interface AuditDAO {

	
//	기본요건 insert
	public int setItem(AuditVO auvo);

// 기본요건 보여주는 부분
	public AuditVO getList(int id);
	
// 기본 요건 update	
	public int updateItem(AuditVO auvo);
}

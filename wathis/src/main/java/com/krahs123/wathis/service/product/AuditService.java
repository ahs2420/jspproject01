package com.krahs123.wathis.service.product;

import java.util.List;
import java.util.Map;

import com.krahs123.wathis.model.AuditVO;

public interface AuditService {

	
	public int setItem(AuditVO auvo);

	
	// 기본요건 보여주는 부분
		public AuditVO getList(int id);
	
	// 기본 요건 update	
	public int updateItem(AuditVO auvo);
	// 최근 id 
		public int getAuditLastID(int member_id);
		// 내 프로젝트 리스트
		public List<Map<String,Object>> getAuditMyList(String member_id);
}

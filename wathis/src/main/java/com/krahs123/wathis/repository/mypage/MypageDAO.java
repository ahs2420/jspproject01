package com.krahs123.wathis.repository.mypage;

import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.repository.product.AuditDAO;

public interface MypageDAO {
	
//	마이페이지 insert
	public int setItem(AuditVO avo);
}

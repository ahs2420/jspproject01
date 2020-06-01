
package com.krahs123.wathis.service.mypage;

import com.krahs123.wathis.model.AuditVO;

public interface MypageService {
	
	public int setItem(AuditVO auvo);

	public AuditVO getList(int id);
}

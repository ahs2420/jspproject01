package com.krahs123.wathis.service.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.repository.mypage.MypageDAO;

@Service
public class MypageServiceImpl  implements MypageService{

	@Autowired MypageDAO mypageDao;
	
	
	@Override
	public int setItem(AuditVO auvo) {

		return mypageDao.setItem(auvo);
	}


	@Override
	public AuditVO getList(int id) {
	return mypageDao.getList(id);
		
		
	}

}

package com.krahs123.wathis.service.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.MaketInfoVO;
import com.krahs123.wathis.repository.mypage.MypageDAO;
import com.krahs123.wathis.repository.mypage.MypageTwoDAO;

@Service
public class MypageTwoServiceImpl implements  MypageTwoService{

	@Autowired MypageTwoDAO mpTwoDao;
	
	@Override
	public int setMaker(MaketInfoVO mfvo) {
		
		return mpTwoDao.setMaker(mfvo);
	}
	
		
}

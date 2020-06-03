package com.krahs123.wathis.service.product;

import com.krahs123.wathis.model.MakerInfoVO;

public interface MakerInfoService {

	public int setMaker(MakerInfoVO mfvo);
	
	//작성 후에 보여지는 부분
	public MakerInfoVO getMarkerList(int id);
	
	//메이커 수정 부분
	public int updateMaker(MakerInfoVO mfvo);

	public int getMakerID(int audit_id);
	
	

}

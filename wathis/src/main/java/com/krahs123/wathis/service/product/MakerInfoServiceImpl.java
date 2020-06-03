package com.krahs123.wathis.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.MakerInfoVO;
import com.krahs123.wathis.repository.product.MarkerInfoDAO;

@Service
public class MakerInfoServiceImpl implements MakerInfoService{

	@Autowired MarkerInfoDAO markerinfodao;

	@Override
	public int setMaker(MakerInfoVO mfvo) {
		
		return markerinfodao.setMaker(mfvo);
	}
	//보여 지는 부분
	@Override
	public MakerInfoVO getMarkerList(int id) {
		
		return markerinfodao.getMarkerList(id);
	}
	
	@Override
	public int updateMaker(MakerInfoVO mfvo) {
	
		return markerinfodao.updateMaker(mfvo);
	}
	@Override
	public int getMakerID(int audit_id) {
		
		return markerinfodao.getMakerID(audit_id);
	}
	@Override
	public MakerInfoVO getMakerDetail(int id) {
		// TODO Auto-generated method stub
		return markerinfodao.getMakerDetail(id);
	}
	@Override
	public MakerInfoVO getMakerDetailAudit(int audit_id) {
		// TODO Auto-generated method stub
		return markerinfodao.getMakerDetailAudit(audit_id);
	}



	
}

package com.krahs123.wathis.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.MakerInfoVO;
import com.krahs123.wathis.repository.product.MarkerInfoDAO;

@Service
public class MakerInfoServiceImpl implements MakerInfoService{
	@Autowired
	MarkerInfoDAO markerinfodao;

	@Override
	public int setMaker(MakerInfoVO mfvo) {
		
		return markerinfodao.setMaker(mfvo);
	}
	
}

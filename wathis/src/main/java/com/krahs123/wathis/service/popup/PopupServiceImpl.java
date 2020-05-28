package com.krahs123.wathis.service.popup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.PopupVO;
import com.krahs123.wathis.repository.popup.PopupDAO;

@Service
public class PopupServiceImpl implements PopupService{
	@Autowired
	PopupDAO popupdao;

	@Override
	public int setPopup(PopupVO pvo) {
		// TODO Auto-generated method stub
		return popupdao.setPopup(pvo);
	}

	@Override
	public List<PopupVO> getPopupList(String searchOpt, String words, int pageStart, int pagePer) {
		// TODO Auto-generated method stub
		return popupdao.getPopupList(searchOpt, words, pageStart, pagePer);
	}

	@Override
	public int getPopupCount(String searchOpt, String words) {
		// TODO Auto-generated method stub
		return popupdao.getPopupCount(searchOpt, words);
	}
}

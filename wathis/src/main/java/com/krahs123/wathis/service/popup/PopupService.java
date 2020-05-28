package com.krahs123.wathis.service.popup;

import java.util.List;

import com.krahs123.wathis.model.PopupVO;

public interface PopupService {
	//팝업 등록
	public int setPopup(PopupVO pvo);
	//팝업 리스트
	public List<PopupVO> getPopupList(String searchOpt,String words,int pageStart,int pagePer);
	//팝업 갯수
	public int getPopupCount(String searchOpt,String words);

}

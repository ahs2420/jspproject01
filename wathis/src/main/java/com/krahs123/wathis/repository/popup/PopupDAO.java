package com.krahs123.wathis.repository.popup;

import java.util.List;

import com.krahs123.wathis.model.PopupVO;

public interface PopupDAO {
	//팝업 등록
	public int setPopup(PopupVO pvo);
	//팝업 리스트
	public List<PopupVO> getPopupList(String searchOpt,String words,int pageStart,int pagePer);
	//팝업 갯수
	public int getPopupCount(String searchOpt,String words);
	//팝업 상세
	public PopupVO getPopupDetail(int id);
	//팝업 삭제
	public int deletePopup(int id);
	//팝업 수정
	public int getPopupModify(PopupVO pvo);
}

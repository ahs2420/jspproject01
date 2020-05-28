package com.krahs123.wathis.repository.popup;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.PopupVO;

@Repository
public class PopupDAOImpl implements PopupDAO{
	final String NAMESPACE ="mappers.PopupMapper";
	@Autowired
	SqlSession sql;
	@Override
	public int setPopup(PopupVO pvo) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACE+".setPopup",pvo);
	}
	@Override
	public List<PopupVO> getPopupList(String searchOpt, String words, int pageStart, int pagePer) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("pageStart", pageStart);
		map.put("pagePer", pagePer);
		return sql.selectList(NAMESPACE+".getPopupList",map);
	}
	@Override
	public int getPopupCount(String searchOpt, String words) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne(NAMESPACE+".getPopupCount",map);
	}
}

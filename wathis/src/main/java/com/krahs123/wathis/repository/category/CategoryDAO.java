package com.krahs123.wathis.repository.category;

import java.util.List;

import com.krahs123.wathis.model.CategoryVO;

public interface CategoryDAO {

	//카테고리 리스트
	public List<CategoryVO> getCateList();
	//카테고리 체크
	public int getCateChk(String title);
	//카테고리 등록
	public int setCate(CategoryVO cvo);
	//카테고리 수정
	public int updateCate(CategoryVO cvo);
	//카테고리 삭제
	public int deleteCate(int id);
	//카테고리 이름
	public String getCateTitle(int id);
}

package com.krahs123.wathis.service.category;

import java.util.List;

import com.krahs123.wathis.model.CategoryVO;

public interface CategoryService {
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
}

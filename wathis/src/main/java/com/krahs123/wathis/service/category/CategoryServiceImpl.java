package com.krahs123.wathis.service.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.CategoryVO;
import com.krahs123.wathis.repository.category.CategoryDAO;

@Service
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	CategoryDAO categorydao;

	@Override
	public List<CategoryVO> getCateList() {
		// TODO Auto-generated method stub
		return categorydao.getCateList();
	}

	@Override
	public int getCateChk(String title) {
		// TODO Auto-generated method stub
		return categorydao.getCateChk(title);
	}

	@Override
	public int setCate(CategoryVO cvo) {
		// TODO Auto-generated method stub
		return categorydao.setCate(cvo);
	}

	@Override
	public int updateCate(CategoryVO cvo) {
		// TODO Auto-generated method stub
		return categorydao.updateCate(cvo);
	}

	@Override
	public int deleteCate(int id) {
		// TODO Auto-generated method stub
		return categorydao.deleteCate(id);
	}
}

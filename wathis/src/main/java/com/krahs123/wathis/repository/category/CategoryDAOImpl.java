package com.krahs123.wathis.repository.category;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.CategoryVO;

@Repository
public class CategoryDAOImpl implements CategoryDAO{
	final String namespace ="mappers.CategoryMapper";
	@Autowired
	SqlSession sql;
	@Override
	public List<CategoryVO> getCateList() {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getCateList");
	}
	@Override
	public int getCateChk(String title) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getCateChk",title);
	}
	@Override
	public int setCate(CategoryVO cvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setCate",cvo);
	}
	@Override
	public int updateCate(CategoryVO cvo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateCate",cvo);
	}
	@Override
	public int deleteCate(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteCate",id);
	}
}

package com.krahs123.wathis.repository.menu;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.MenuVO;

@Repository
public class MenuDAOImpl implements MenuDAO{

	final String namespace ="mappers.MenuMapper";
	@Autowired
	SqlSession sql;
	@Override
	public int getGroupMax(MenuVO mvo) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getGroupMax",mvo);
	}
	@Override
	public MenuVO getMenuDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getMenuDetail", id);
	}
	@Override
	public int setMenu(MenuVO mvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setMenu",mvo);
	}
	@Override
	public List<MenuVO> getMenuList() {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getMenuList");
	}
	@Override
	public int deleteMenu(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteMenu",id);
	}
	@Override
	public int setMenuModify(MenuVO mvo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".setMenuModify",mvo);
	}
}

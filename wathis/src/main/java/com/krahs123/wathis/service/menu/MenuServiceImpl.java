package com.krahs123.wathis.service.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.repository.menu.MenuDAO;

@Service
public class MenuServiceImpl implements MenuService{
	@Autowired
	MenuDAO menuDAO;

	@Override
	public int getGroupMax(MenuVO mvo) {
		// TODO Auto-generated method stub
		return menuDAO.getGroupMax(mvo);
	}

	@Override
	public MenuVO getMenuDetail(int id) {
		// TODO Auto-generated method stub
		return menuDAO.getMenuDetail(id);
	}

	@Override
	public int setMenu(MenuVO mvo) {
		// TODO Auto-generated method stub
		return menuDAO.setMenu(mvo);
	}

	@Override
	public List<MenuVO> getMenuList() {
		// TODO Auto-generated method stub
		return menuDAO.getMenuList();
	}

	@Override
	public int deleteMenu(int id) {
		// TODO Auto-generated method stub
		return menuDAO.deleteMenu(id);
	}

	@Override
	public int setMenuModify(MenuVO mvo) {
		// TODO Auto-generated method stub
		return menuDAO.setMenuModify(mvo);
	}
}

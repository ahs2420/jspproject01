package com.krahs123.wathis.repository.menu;

import java.util.List;

import com.krahs123.wathis.model.MenuVO;

public interface MenuDAO {
	//메뉴 순서 자동 등록
	public int getGroupMax(MenuVO mvo);
	//메뉴 상세
	public MenuVO getMenuDetail(int id);
	//메뉴 등록
	public int setMenu(MenuVO mvo);
	//메뉴 리스트 테스트
	public List<MenuVO> getMenuList();
	//메뉴 삭제
	public int deleteMenu(int id);
	//메뉴 수정
	public int setMenuModify(MenuVO mvo);
}

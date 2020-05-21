package com.krahs123.wathis.service.menu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.menu.MenuDAO;

@Service
public class MenuServiceImpl implements MenuService{
	@Autowired
	MenuDAO menuDAO;
}

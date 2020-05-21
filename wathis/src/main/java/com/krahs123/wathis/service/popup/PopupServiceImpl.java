package com.krahs123.wathis.service.popup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.popup.PopupDAO;

@Service
public class PopupServiceImpl implements PopupService{
	@Autowired
	PopupDAO popupdao;
}

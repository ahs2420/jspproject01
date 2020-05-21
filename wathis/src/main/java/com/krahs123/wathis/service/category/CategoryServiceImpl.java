package com.krahs123.wathis.service.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.category.CategoryDAO;

@Service
public class CategoryServiceImpl implements CategoryDAO{
	@Autowired
	CategoryDAO categorydao;
}

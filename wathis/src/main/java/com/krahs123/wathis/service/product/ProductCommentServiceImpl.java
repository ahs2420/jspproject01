package com.krahs123.wathis.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.product.ProductCommentDAO;

@Service
public class ProductCommentServiceImpl implements ProductCommentService{
	@Autowired
	ProductCommentDAO productcommentDAO;
}

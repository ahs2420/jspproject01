package com.krahs123.wathis.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.product.ProductNoticeDAO;

@Service
public class ProductNoticeServiceImpl implements ProductNoticeService{
	@Autowired
	ProductNoticeDAO productNoticeDAO;
}

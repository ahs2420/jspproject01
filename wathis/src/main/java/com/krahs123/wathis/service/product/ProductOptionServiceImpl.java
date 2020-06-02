package com.krahs123.wathis.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.ProductOptionVO;
import com.krahs123.wathis.repository.product.ProductOptionDAO;

@Service
public class ProductOptionServiceImpl implements ProductOptionService{
	@Autowired
	ProductOptionDAO productOptionDAO;

	@Override
	public int setProOption(ProductOptionVO otpvo) {
		// TODO Auto-generated method stub
		return productOptionDAO.setProOption(otpvo);
	}
	
}

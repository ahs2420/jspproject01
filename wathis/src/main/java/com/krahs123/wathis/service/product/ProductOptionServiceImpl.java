package com.krahs123.wathis.service.product;

import java.util.List;

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

	@Override
	public ProductOptionVO getOptionDetail(int id) {
		// TODO Auto-generated method stub
		return productOptionDAO.getOptionDetail(id);
	}

	@Override
	public List<ProductOptionVO> getOptionProductList(int product_id) {
		// TODO Auto-generated method stub
		return productOptionDAO.getOptionProductList(product_id);
	}
	
}

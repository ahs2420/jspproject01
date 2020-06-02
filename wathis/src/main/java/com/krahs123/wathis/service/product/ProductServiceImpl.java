package com.krahs123.wathis.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.ProductVO;
import com.krahs123.wathis.repository.product.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductDAO productDAO;

	@Override
	public int setProduct(ProductVO provo) {
		// TODO Auto-generated method stub
		return productDAO.setProduct(provo);
	}

	@Override
	public int getProductId(int audit_id) {
		// TODO Auto-generated method stub
		return productDAO.getProductId(audit_id);
	}
	
	
}

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
	//아이디 검색
	@Override
	public int getProductId(int audit_id) {
		// TODO Auto-generated method stub
		return productDAO.getProductId(audit_id);
	}
	//작성후에 보여지는 부분
	@Override
	public ProductVO getProList(int id) {
		// TODO Auto-generated method stub
		return productDAO.getProList(id);
	}
	//수정 부분
	@Override
	public int updateItem(ProductVO provo) {
		// TODO Auto-generated method stub
		return productDAO.updateItem(provo);
	}
	@Override
	public ProductVO getProductDetail(int id) {
		// TODO Auto-generated method stub
		return productDAO.getProductDetail(id);
	}
	@Override
	public ProductVO getProductDetailAudit(int audit_id) {
		// TODO Auto-generated method stub
		return productDAO.getProductDetailAudit(audit_id);
	}
	
	
}

package com.krahs123.wathis.service.product;

import java.util.List;
import java.util.Map;

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
	public ProductVO getProList( int category_id) {
		// TODO Auto-generated method stub
		return productDAO.getProList(category_id);
	}
	//수정 부분
	@Override
	public int updatePro(ProductVO provo) {
		// TODO Auto-generated method stub
		return productDAO.updatePro(provo);
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
	@Override
	public List<Map<String, Object>> getProductList(String category_id,String words,int pageStart,int pagePer,String status_chk) {
		// TODO Auto-generated method stub
		return productDAO.getProductList(category_id, words, pageStart, pagePer,status_chk);
	}
	@Override
	public int getProductCount(String category_id,String words) {
		// TODO Auto-generated method stub
		return productDAO.getProductCount(category_id, words);
	}
	@Override
	public int updateProAutoStatusIng() {
		// TODO Auto-generated method stub
		return productDAO.updateProAutoStatusIng();
	}
	@Override
	public List<ProductVO> getProAutoStatusSuccessList() {
		// TODO Auto-generated method stub
		return productDAO.getProAutoStatusSuccessList();
	}
	@Override
	public List<ProductVO> getProAutoStatusFailList() {
		// TODO Auto-generated method stub
		return productDAO.getProAutoStatusFailList();
	}
	@Override
	public int updateProAutoStatus(int id, int status) {
		// TODO Auto-generated method stub
		return productDAO.updateProAutoStatus(id, status);
	}

	
}

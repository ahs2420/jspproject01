package com.krahs123.wathis.repository.product;

import com.krahs123.wathis.model.ProductVO;

public interface ProductDAO {

	// 상품등록
	public int setProduct(ProductVO provo);
	
	//상품 보여지는 부분
	public ProductVO getProList(int id);
	
	//상품 아이디 구하기
	public int getProductId(int audit_id);
	
	//업데이트 부분	
	public int updateItem(ProductVO provo);
	//상품 상세
	public ProductVO getProductDetail(int id);
	//상품 상세- 심사번호로
	public ProductVO getProductDetailAudit(int audit_id);
	
}

package com.krahs123.wathis.service.product;

import com.krahs123.wathis.model.ProductVO;

public interface ProductService {


	// 상품등록
	public int setProduct(ProductVO provo);
	//상품 아이디 구하기
	public int getProductId(int audit_id);

}

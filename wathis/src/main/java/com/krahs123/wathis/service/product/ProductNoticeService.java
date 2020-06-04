package com.krahs123.wathis.service.product;

import java.util.List;

import com.krahs123.wathis.model.ProductNoticeVO;

public interface ProductNoticeService {
	//상품 새소식 리스트 - 상품 아이디로 검색
	public List<ProductNoticeVO> getProNoticeList(int product_id);
	//상품 새소식 갯수 - 상품 아이디로 검색
	public int getProNoticeCount(int product_id);

}

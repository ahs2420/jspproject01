package com.krahs123.wathis.repository.product;

import java.util.List;

import com.krahs123.wathis.model.ProductNoticeVO;

public interface ProductNoticeDAO {

	//상품 새소식 리스트 - 상품 아이디로 검색
	public List<ProductNoticeVO> getProNoticeList(int product_id);
	//상품 새소식 갯수 - 상품 아이디로 검색
	public int getProNoticeCount(int product_id);
	//상품 새소식 등록
	public int setProNotice(ProductNoticeVO pvo);
	//상품 새소식 삭제
	public int deleteProNotice(int id);
}

package com.krahs123.wathis.repository.product;

import java.util.List;

import com.krahs123.wathis.model.ProductOptionVO;

public interface ProductOptionDAO {
	//상품 옵션 입력
	public int setProOption(ProductOptionVO otpvo);
	//상품 옵션 상세
	public ProductOptionVO getOptionDetail(int id);
	//상품 옵션 리스트- 상품 아이디로 검색
	public List<ProductOptionVO> getOptionProductList(int product_id);
	//상품 옵션 갯수 - 상품 아이디로 검색
	public int getProIdCount(int product_id);
	//상품 옵션 수정
	public int updateProOption(ProductOptionVO pvo);
	//상품 옵션 삭제
	public int deleteProOption(int id);
}

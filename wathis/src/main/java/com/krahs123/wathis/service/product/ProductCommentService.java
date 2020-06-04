package com.krahs123.wathis.service.product;

import java.util.List;

import com.krahs123.wathis.model.ProductCommentVO;
import com.krahs123.wathis.model.ProductNoticeVO;

public interface ProductCommentService {
	//상품 댓글 달기
	public int setProComment(ProductCommentVO pvo);
	//상품 댓글 삭제
	public int deleteProComment(int id);
	//상품 댓글 수정
	public int updateProComment(ProductCommentVO pvo);
	//상품 댓글 리스트
	public List<ProductCommentVO> getProCommentList(int product_id);
	//상품 댓글 갯수 - 상품 아이디로 검색
	public int getProCommentCount(int product_id);
}

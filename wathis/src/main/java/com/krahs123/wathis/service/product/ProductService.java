package com.krahs123.wathis.service.product;

import java.util.List;
import java.util.Map;

import com.krahs123.wathis.model.ProductOptionVO;
import com.krahs123.wathis.model.ProductVO;

public interface ProductService {


	// 상품등록
	public int setProduct(ProductVO provo);
	
	//상품 보여지는 부분
	public ProductVO getProList(int category_id);
	
	//상품 아이디 구하기
	public int getProductId(int audit_id);
	
	//업데이트 부분	
	public int updatePro(ProductVO provo);
	//상품 상세
	public ProductVO getProductDetail(int id);
	//상품 상세- 심사번호로
	public ProductVO getProductDetailAudit(int audit_id);
	//상품 리스트
	public List<Map<String, Object>> getProductList(String category_id,String words,int pageStart,int pagePer,String status_chk);
	//상품 갯수
	public int getProductCount(String category_id,String words);
	//상품 자동으로 펀딩중으로 변경
	public int updateProAutoStatusIng();
	//상품 성공리스트
	public List<ProductVO> getProAutoStatusSuccessList();
	//상품 실패리스트
	public List<ProductVO> getProAutoStatusFailList();
	//상품 상태 변경
	public int updateProAutoStatus(int id,int status);
	
}

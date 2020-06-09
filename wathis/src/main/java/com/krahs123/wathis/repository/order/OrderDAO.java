package com.krahs123.wathis.repository.order;

import java.util.List;
import java.util.Map;

import com.krahs123.wathis.model.OrderVO;

public interface OrderDAO {
	//주문 리스트 - 회원으로 검색
	public List<OrderVO> getOrderList(int member_id);
	//주문 갯수 - 회원으로 검색
	public int getOrderCount(int member_id);

	//주문 상세
	public OrderVO getOrderDetail(int id);
	
	//주문 등록
	public int setOrder(OrderVO ovo);
	
	//주문 삭제
	public int deleteOrder(int id);
	
	//주문 배송지 등록
	public int updateOrder(OrderVO ovo);
	
	//주문 상태 변경
	public int updateOrderStatus(OrderVO ovo);
	
	//주문 통합 - 상품 아이디로
	public Map<String,Object> getOrderTotal(int product_id);
	
	//주문리스트 - 마이페이지용, 회원번호로 검색
	public List<Map<String,Object>> getOrderMyList(int member_id);
	
	//주문 상태 변경 - 상품 상태 변경시 변경되게 내용 추가
	public int updateOrderStatusAuto(int state,int product_id);
	
	//주문정보 - 상품별
	public List<Map<String,Object>> getOrderProList(int product_id);
	//주문 상세정보 리스트- 상품별
	public List<Map<String,Object>> getOrderProDetailList(int product_id);
	//주문 배송 대량등록
	public int updateOrderDelevery(OrderVO ovo);
}

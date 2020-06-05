package com.krahs123.wathis.repository.order;

import java.util.List;

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
}

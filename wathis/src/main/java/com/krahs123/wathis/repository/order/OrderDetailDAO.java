package com.krahs123.wathis.repository.order;

import java.util.List;

import com.krahs123.wathis.model.OrderDetailVO;

public interface OrderDetailDAO {
	//주문 상세 리스트 - 주문 일련번호로 검색
	public List<OrderDetailVO> getOrderDetailList(int order_id);
	
	//주문 상세 등록
	public int setOrderDetail(OrderDetailVO odvo);
	
	//주문 상세 삭제 - 주문 일련번호로
	public int deleteOrderDetailL(int order_id);
}

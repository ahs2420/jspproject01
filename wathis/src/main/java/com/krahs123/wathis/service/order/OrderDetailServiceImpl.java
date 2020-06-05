package com.krahs123.wathis.service.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.OrderDetailVO;
import com.krahs123.wathis.model.OrderVO;
import com.krahs123.wathis.repository.order.OrderDetailDAO;

@Service
public class OrderDetailServiceImpl implements OrderDetailService{
	@Autowired
	OrderDetailDAO orderdetaildao;

	@Override
	public List<OrderDetailVO> getOrderDetailList(int order_id) {
		// TODO Auto-generated method stub
		return orderdetaildao.getOrderDetailList(order_id);
	}

	@Override
	public int setOrderDetail(OrderDetailVO odvo) {
		// TODO Auto-generated method stub
		return orderdetaildao.setOrderDetail(odvo);
	}

	@Override
	public int deleteOrderDetailL(int order_id) {
		// TODO Auto-generated method stub
		return orderdetaildao.deleteOrderDetailL(order_id);
	}
}

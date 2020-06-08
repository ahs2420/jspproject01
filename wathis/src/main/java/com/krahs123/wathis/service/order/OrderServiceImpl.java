package com.krahs123.wathis.service.order;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.OrderVO;
import com.krahs123.wathis.repository.order.OrderDAO;
import com.krahs123.wathis.repository.order.OrderDetailDAO;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderDAO orderDAO;

	@Override
	public List<OrderVO> getOrderList(int member_id) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderList(member_id);
	}

	@Override
	public int getOrderCount(int member_id) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderCount(member_id);
	}

	@Override
	public OrderVO getOrderDetail(int id) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderDetail(id);
	}

	@Override
	public int setOrder(OrderVO ovo) {
		// TODO Auto-generated method stub
		return orderDAO.setOrder(ovo);
	}

	@Override
	public int deleteOrder(int id) {
		// TODO Auto-generated method stub
		return orderDAO.deleteOrder(id);
	}

	@Override
	public int updateOrder(OrderVO ovo) {
		// TODO Auto-generated method stub
		return orderDAO.updateOrder(ovo);
	}

	@Override
	public int updateOrderStatus(OrderVO ovo) {
		// TODO Auto-generated method stub
		return orderDAO.updateOrderStatus(ovo);
	}

	@Override
	public Map<String, Object> getOrderTotal(int product_id) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderTotal(product_id);
	}

	@Override
	public List<Map<String, Object>> getOrderMyList(int member_id) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderMyList(member_id);
	}
}

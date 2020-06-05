package com.krahs123.wathis.repository.order;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO{

	final String namespace ="mappers.OrderMapper";
	@Autowired
	SqlSession sql;
	@Override
	public List<OrderVO> getOrderList(int member_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getOrderList",member_id);
	}
	@Override
	public int getOrderCount(int member_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getOrderCount",member_id);
	}
	@Override
	public OrderVO getOrderDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getOrderDetail",id);
	}
	@Override
	public int setOrder(OrderVO ovo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setOrder",ovo);
	}
	@Override
	public int deleteOrder(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteOrder",id);
	}
	@Override
	public int updateOrder(OrderVO ovo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateOrder",ovo);
	}
	@Override
	public int updateOrderStatus(OrderVO ovo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateOrderStatus",ovo);
	}
}

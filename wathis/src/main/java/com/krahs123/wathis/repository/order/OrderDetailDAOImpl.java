package com.krahs123.wathis.repository.order;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.OrderDetailVO;

@Repository
public class OrderDetailDAOImpl implements OrderDetailDAO{
	final String namespace ="mappers.OrderDetailMapper";
	@Autowired
	SqlSession sql;
	@Override
	public List<OrderDetailVO> getOrderDetailList(int order_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getOrderDetailList",order_id);
	}
	@Override
	public int setOrderDetail(OrderDetailVO odvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setOrderDetail",odvo);
	}
	@Override
	public int deleteOrderDetailL(int order_id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteOrderDetailL",order_id);
	}

}

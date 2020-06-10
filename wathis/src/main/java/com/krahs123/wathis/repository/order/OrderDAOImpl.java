package com.krahs123.wathis.repository.order;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
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
		sql.insert(namespace+".setOrder",ovo);
		return ovo.getId();
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
	@Override
	public Map<String, Object> getOrderTotal(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getOrderTotal", product_id);
	}
	@Override
	public List<Map<String, Object>> getOrderMyList(int member_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getOrderMyList",member_id);
	}
	@Override
	public int updateOrderStatusAuto(int state, int product_id) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashedMap();
		map.put("state", state);
		map.put("product_id", product_id);
		return sql.update(namespace+".updateOrderStatusAuto",map);
	}
	@Override
	public List<Map<String, Object>> getOrderProList(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getOrderProList",product_id);
	}
	@Override
	public List<Map<String, Object>> getOrderProDetailList(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getOrderProDetailList",product_id);
	}
}

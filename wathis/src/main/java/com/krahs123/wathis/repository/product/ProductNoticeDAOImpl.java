package com.krahs123.wathis.repository.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.ProductNoticeVO;

@Repository
public class ProductNoticeDAOImpl implements ProductNoticeDAO{
	final String namespace ="mappers.ProductNoticeMapper";
	@Autowired
	SqlSession sql;
	@Override
	public List<ProductNoticeVO> getProNoticeList(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getProNoticeList",product_id);
	}
	@Override
	public int getProNoticeCount(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getProNoticeCount",product_id);
	}

}

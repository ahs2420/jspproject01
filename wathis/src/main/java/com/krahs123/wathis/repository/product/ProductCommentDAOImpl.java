package com.krahs123.wathis.repository.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.ProductCommentVO;

@Repository
public class ProductCommentDAOImpl implements ProductCommentDAO{
	final String namespace ="mappers.ProductCommentMapper";
	@Autowired
	SqlSession sql;
	@Override
	public int setProComment(ProductCommentVO pvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setProComment",pvo);
	}
	@Override
	public int deleteProComment(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteProComment",id);
	}
	@Override
	public int updateProComment(ProductCommentVO pvo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateProComment",pvo);
	}
	@Override
	public List<ProductCommentVO> getProCommentList(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getProCommentList",product_id);
	}
	@Override
	public int getProCommentCount(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getProCommentCount", product_id);
	}

}

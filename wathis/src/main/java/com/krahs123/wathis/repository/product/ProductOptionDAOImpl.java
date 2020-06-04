package com.krahs123.wathis.repository.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.ProductOptionVO;

@Repository
public class ProductOptionDAOImpl implements ProductOptionDAO{
	final String namespace ="mappers.ProductOptionMapper";
	@Autowired
	SqlSession sql;
	@Override
	public int setProOption(ProductOptionVO otpvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setProOption",otpvo);
	}
	@Override
	public ProductOptionVO getOptionDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getOptionDetail", id);
	}
	@Override
	public List<ProductOptionVO> getOptionProductList(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getOptionProductList", product_id);
	}
	@Override
	public int getProIdCount(int product_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getProIdCount",product_id);
	}
	@Override
	public int updateProOption(ProductOptionVO pvo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateProOption",pvo);
	}
	@Override
	public int deleteProOption(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteProOption",id);
	}

	
	
	
}

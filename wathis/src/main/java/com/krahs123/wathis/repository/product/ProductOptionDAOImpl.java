package com.krahs123.wathis.repository.product;

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

	
}

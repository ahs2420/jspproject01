package com.krahs123.wathis.repository.product;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	final String namespace ="mappers.ProductMapper";
	@Autowired
	SqlSession sql;
	
	@Override
	public int setProduct(ProductVO provo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace +".setProduct" ,provo);
	}
	
	//작성후에 보는 부분
	@Override
	public ProductVO getProList(int id) {
	
		return sql.selectOne(namespace + ".getProList", id);
	}
	// 이름 검색
	@Override
	public int getProductId(int audit_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getProductId",audit_id);
	}
	//수정 부분
	@Override
	public int updateItem(ProductVO provo) {
	
		return sql.update(namespace + ".updateItem", provo);
	}

	@Override
	public ProductVO getProductDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getProductDetail", id);
	}

	@Override
	public ProductVO getProductDetailAudit(int audit_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getProductDetailAudit", audit_id);
	}

	
	
	
	
}
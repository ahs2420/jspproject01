package com.krahs123.wathis.repository.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.w3c.dom.NameList;

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
	public ProductVO getProList(int category_id) {
	
		return sql.selectOne(namespace + ".getProList", category_id);
	}
	// 이름 검색
	@Override
	public int getProductId(int audit_id) {
		// TODO Auto-generated method stub
		int result = -1;
		try {
			result = sql.selectOne(namespace+".getProductId",audit_id);
		} catch (Exception e) {
			result = -1;
		}
		return result;
	}
	//수정 부분
	@Override
	public int updateIPro(ProductVO provo) {
	
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

	@Override
	public List<Map<String, Object>> getProductList(String category_id,String words,int pageStart,int pagePer) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("category_id", category_id);
		map.put("words", words);
		map.put("pageStart", pageStart);
		map.put("pagePer", pagePer);
		return sql.selectList(namespace+".getProductList",map);
	}

	@Override
	public int getProductCount(String category_id,String words) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("category_id", category_id);
		map.put("words", words);
		return sql.selectOne(namespace+".getProductCount",map);
	}

	
	
	
	
}
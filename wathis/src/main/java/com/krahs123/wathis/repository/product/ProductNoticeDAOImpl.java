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
	@Override
	public int setProNotice(ProductNoticeVO pvo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setProNotice",pvo);
	}
	@Override
	public int deleteProNotice(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteProNotice",id);
	}
	@Override
	public ProductNoticeVO getProNoticeDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getProNoticeDetail", id);
	}
	@Override
	public int updateProNotice(ProductNoticeVO pvo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateProNotice", pvo);
	}

}

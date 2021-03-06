package com.krahs123.wathis.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.ProductNoticeVO;
import com.krahs123.wathis.repository.product.ProductNoticeDAO;

@Service
public class ProductNoticeServiceImpl implements ProductNoticeService{
	@Autowired
	ProductNoticeDAO productNoticeDAO;

	@Override
	public List<ProductNoticeVO> getProNoticeList(int product_id) {
		// TODO Auto-generated method stub
		return productNoticeDAO.getProNoticeList(product_id);
	}

	@Override
	public int getProNoticeCount(int product_id) {
		// TODO Auto-generated method stub
		return productNoticeDAO.getProNoticeCount(product_id);
	}

	@Override
	public int setProNotice(ProductNoticeVO pvo) {
		// TODO Auto-generated method stub
		return productNoticeDAO.setProNotice(pvo);
	}

	@Override
	public int deleteProNotice(int id) {
		// TODO Auto-generated method stub
		return productNoticeDAO.deleteProNotice(id);
	}

	@Override
	public ProductNoticeVO getProNoticeDetail(int id) {
		// TODO Auto-generated method stub
		return productNoticeDAO.getProNoticeDetail(id);
	}

	@Override
	public int updateProNotice(ProductNoticeVO pvo) {
		// TODO Auto-generated method stub
		return productNoticeDAO.updateProNotice(pvo);
	}
}

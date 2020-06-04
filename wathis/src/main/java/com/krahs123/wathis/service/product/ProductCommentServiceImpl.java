package com.krahs123.wathis.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.ProductCommentVO;
import com.krahs123.wathis.model.ProductNoticeVO;
import com.krahs123.wathis.repository.product.ProductCommentDAO;

@Service
public class ProductCommentServiceImpl implements ProductCommentService{
	@Autowired
	ProductCommentDAO productcommentDAO;

	@Override
	public int setProComment(ProductCommentVO pvo) {
		// TODO Auto-generated method stub
		return productcommentDAO.setProComment(pvo);
	}

	@Override
	public int deleteProComment(int id) {
		// TODO Auto-generated method stub
		return productcommentDAO.deleteProComment(id);
	}

	@Override
	public int updateProComment(ProductCommentVO pvo) {
		// TODO Auto-generated method stub
		return productcommentDAO.updateProComment(pvo);
	}

	@Override
	public List<ProductCommentVO> getProCommentList(int product_id) {
		// TODO Auto-generated method stub
		return productcommentDAO.getProCommentList(product_id);
	}

	@Override
	public int getProCommentCount(int product_id) {
		// TODO Auto-generated method stub
		return productcommentDAO.getProCommentCount(product_id);
	}
}

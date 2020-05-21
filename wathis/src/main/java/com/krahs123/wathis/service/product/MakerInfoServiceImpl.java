package com.krahs123.wathis.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.product.MarketInfoDAO;

@Service
public class MakerInfoServiceImpl implements MakerInfoService{
	@Autowired
	MarketInfoDAO marketinfodao;
}

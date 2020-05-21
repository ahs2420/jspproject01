package com.krahs123.wathis.service.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.order.OrderDetailDAO;

@Service
public class OrderDetailServiceImpl implements OrderDetailService{
	@Autowired
	OrderDetailDAO orderdetaildao;
}

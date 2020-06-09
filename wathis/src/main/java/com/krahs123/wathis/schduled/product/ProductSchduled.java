package com.krahs123.wathis.schduled.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import com.krahs123.wathis.model.ProductVO;
import com.krahs123.wathis.service.order.OrderService;
import com.krahs123.wathis.service.product.ProductService;
@EnableScheduling
@SpringBootApplication
public class ProductSchduled {
	@Autowired
	ProductService proSer;
	@Autowired
	OrderService orderService;
	@Scheduled(fixedDelay = 1*1000*60*60)
	public void updateProductStatus() {
		proSer.updateProAutoStatusIng();
		List<ProductVO> sucList = proSer.getProAutoStatusSuccessList();
		List<ProductVO> failList = proSer.getProAutoStatusFailList();
		for(ProductVO pvo:sucList) {
			//펀딩 성공 리스트
			proSer.updateProAutoStatus(pvo.getId(), 3);// 펀딩 성공 처리
			orderService.updateOrderStatusAuto(3, pvo.getId());//결제 성공으로 넘김
		}
		for(ProductVO pvo:failList) {
			//펀딩 실패 리스트
			proSer.updateProAutoStatus(pvo.getId(), 4);// 펀딩 실패 처리
			orderService.updateOrderStatusAuto(0, pvo.getId());//결제 실패로 넘김
		}
		
	}
}

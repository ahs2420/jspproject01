package com.krahs123.wathis.schduled.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import com.krahs123.wathis.model.ProductVO;
import com.krahs123.wathis.service.product.ProductService;
@EnableScheduling
@SpringBootApplication
public class ProductSchduled {
	@Autowired
	ProductService proSer;
	@Scheduled(fixedDelay = 1*1000*60*60)
	public void updateProductStatus() {
		proSer.updateProAutoStatusIng();
		List<ProductVO> sucList = proSer.getProAutoStatusSuccessList();
		List<ProductVO> failList = proSer.getProAutoStatusFailList();
		for(ProductVO pvo:sucList) {
			proSer.updateProAutoStatus(pvo.getId(), 3);
		}
		for(ProductVO pvo:failList) {
			proSer.updateProAutoStatus(pvo.getId(), 4);
		}
		
	}
}

package com.krahs123.wathis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	final String BASEDIR="/product/";
	//상품 페이지
	@RequestMapping("/product")
	public String viewProduct() {
		return BASEDIR+"product";
	}
	//상품 옵션 선택 페이지
	@RequestMapping("/product-select")
	public String viewProductSelect() {
		return BASEDIR+"product-select";
	}
	// 상품 결제 페이지
	@RequestMapping("/product-payment")
	public String viewProductPayment() {
		return BASEDIR+"product-payment";
	}
	//상품리스트 페이지
	@RequestMapping("/product-list")
	public String viewProductList() {
		return BASEDIR+"product-list";
	}
	//상품리스트 ajax 페이지
	@RequestMapping("/product-ajax")
	public String viewProductAjax() {
		return BASEDIR+"product-ajax";
	}
	
}

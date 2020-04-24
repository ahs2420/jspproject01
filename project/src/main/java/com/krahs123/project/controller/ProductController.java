package com.krahs123.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	final String BASEDIR="/product/";
	@RequestMapping("/product")
	public String viewProduct() {
		return BASEDIR+"product";
	}
	@RequestMapping("/product-select")
	public String viewProductSelect() {
		return BASEDIR+"product-select";
	}
	@RequestMapping("/product-payment")
	public String viewProductPayment() {
		return BASEDIR+"product-payment";
	}
	@RequestMapping("/product-list")
	public String viewProductList() {
		return BASEDIR+"product-list";
	}
}

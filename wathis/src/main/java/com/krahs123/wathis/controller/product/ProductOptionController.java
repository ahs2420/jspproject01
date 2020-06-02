package com.krahs123.wathis.controller.product;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.krahs123.wathis.model.ProductOptionVO;
import com.krahs123.wathis.service.product.ProductOptionService;

import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping("/option")
public class ProductOptionController {
	@Autowired
	ProductOptionService proOptSer;
	@RequestMapping("/setOption")
	@ResponseBody
	public Map<String,Object> setOption(@ModelAttribute ProductOptionVO otpvo){
		Map<String,Object> map = new HashedMap();
		String msg ="옵션 등록에 실해하였습니다.";
		boolean status =false;
		int result = proOptSer.setProOption(otpvo);
		if(result>0) {
			msg ="옵션이 등록되었습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	
}

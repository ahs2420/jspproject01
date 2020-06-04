package com.krahs123.wathis.controller.product;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.krahs123.wathis.model.ProductOptionVO;
import com.krahs123.wathis.service.product.ProductOptionService;

import java.util.List;
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
	public Map<String,Object> setOption(@ModelAttribute ProductOptionVO otpvo,@RequestParam String price_format){
		//Integer.parseInt-> Stirng 을 int 로 변환
		//.replaceAll(",", "") -> ,를 공백으로 바꿈
		otpvo.setPrice(Integer.parseInt(price_format.replaceAll(",", "")));
		Map<String,Object> map = new HashedMap();
		String msg ="옵션 등록에 실패하였습니다.";
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
	@RequestMapping("/getOptionList")
	@ResponseBody
	public Map<String,Object> getOptionList(@RequestParam int product_id){
		Map<String,Object> map = new HashedMap();
		String msg ="옵션을 불러오는 데 실패하였습니다.";
		boolean status =false;
		List<ProductOptionVO> optionList = proOptSer.getOptionProductList(product_id);
		if(optionList.size()>0) {
			msg ="옵션을 정상적으로 불어 왔습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		map.put("optionList", optionList);
		return map;
	}
	@RequestMapping("/getOptionDetail")
	@ResponseBody
	public Map<String,Object> getOptionDetail(@RequestParam int id){
		Map<String,Object> map = new HashedMap();
		String msg ="옵션을 불러오는 데 실패하였습니다.";
		boolean status =false;
		ProductOptionVO pvo = proOptSer.getOptionDetail(id);
		if(pvo!=null) {
			msg ="옵션을 정상적으로 불어 왔습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		map.put("pvo", pvo);
		return map;
	}
	@RequestMapping("/updateOption")
	@ResponseBody
	public Map<String,Object> updateOption(@ModelAttribute ProductOptionVO pvo,@RequestParam String price_format){
		pvo.setPrice(Integer.parseInt(price_format.replaceAll(",", "")));
		Map<String,Object> map = new HashedMap();
		String msg ="옵션 수정에 실패하였습니다.";
		boolean status =false;
		int result = proOptSer.updateProOption(pvo);
		if(result>0) {
			msg ="옵션이 정상적으로 수정되었습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		map.put("pvo", pvo);
		return map;
	}
	@RequestMapping("/deleteOption")
	@ResponseBody
	public Map<String,Object> deleteOption(@RequestParam int id){
		Map<String,Object> map = new HashedMap();
		String msg ="옵션 삭제에 실패하였습니다.";
		boolean status =false;
		int result = proOptSer.deleteProOption(id);
		if(result>0) {
			msg ="옵션이 정상적으로 삭제되었습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	
}

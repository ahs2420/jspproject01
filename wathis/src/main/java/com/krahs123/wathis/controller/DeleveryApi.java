package com.krahs123.wathis.controller;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.krahs123.wathis.util.ApiUseSample;

@Controller
@RequestMapping("/delveryAPI")
public class DeleveryApi {

	@RequestMapping("parseCompany")
	@ResponseBody
	public String companyView() {
		Map<String, Object> map = new HashMap<>();
		ApiUseSample aus = new ApiUseSample();
		String result = aus.getApi("https://apis.tracker.delivery/carriers", null, null, false);
		return result;
	}

	@RequestMapping("parseDelivery")
	@ResponseBody
	public String deleveryHTML(@RequestParam String carriers,@RequestParam String tracks) throws ParseException {
		Map<String, Object> map = new HashMap<>();
		ApiUseSample aus = new ApiUseSample();
		//String result = aus.getApi("https://tracker.delivery/#/"+carriers+"/"+tracks, null, null, false);
		String result = aus.getApi(" https://apis.tracker.delivery/carriers/"+carriers+"/tracks/"+tracks, null, null, false);
		return result;
	}
}

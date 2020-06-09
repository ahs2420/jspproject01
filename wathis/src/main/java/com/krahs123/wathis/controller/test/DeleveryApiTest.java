package com.krahs123.wathis.controller.test;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.krahs123.wathis.util.ApiUseSample;


@Controller
@RequestMapping("/deleveryTest/")
public class DeleveryApiTest {
	@RequestMapping("parseCompany")
	@ResponseBody
	public Map<String, Object> companyView() throws ParseException {
		Map<String, Object> map = new HashMap<>();
		ApiUseSample aus = new ApiUseSample();
		String result = aus.getApi("https://apis.tracker.delivery/carriers", null, null, false);
		JSONParser jps = new JSONParser();
		StringBuilder sb = new StringBuilder();
		
		/*JSON 파싱*/
		JSONObject job = (JSONObject) jps.parse("{\"item\":"+result+"}");
        JSONArray jarr = (JSONArray)job.get("item");
        for(int i=0;i<jarr.size();i++) {
        	JSONObject jobItem = (JSONObject) jarr.get(i);
        	map.put(jobItem.get("id").toString(), jobItem.get("name"));
        }
		/*JSON 파싱끝*/

    	map.put("result", result);
		return map;
	}
	@RequestMapping("parseDelivery")
	@ResponseBody
	public String deleveryView(@RequestParam String carriers,@RequestParam String tracks) throws ParseException {
		Map<String, Object> map = new HashMap<>();
		ApiUseSample aus = new ApiUseSample();
		String result = aus.getApi(" https://apis.tracker.delivery/carriers/"+carriers+"/tracks/"+tracks, null, null, false);
		//test URL = http://localhost:8888/deleveryTest/parseDelivery?carriers=kr.hanjin&tracks=417472558775
		JSONParser jps = new JSONParser();
		StringBuilder sb = new StringBuilder();
		
		/*JSON 파싱*/
//		JSONObject job = (JSONObject) jps.parse(result);
//        JSONArray jarr = (JSONArray)job.get("progress");
//        for(int i=0;i<jarr.size();i++) {
//        	JSONObject jobItem = (JSONObject) jarr.get(i);
//        	sb.append("아이디:"+jobItem.get("id")+"\n");
//        	sb.append("이름:"+jobItem.get("name")+"\n");
//        	sb.append("전화번호:"+jobItem.get("tel")+"<br>");
//        }
		//{"from":{"name":"PA**PA**","time":"2018-05-18T15:53:00+09:00"},"to":{"name":"박**","time":null},"state":{"id":"in_transit","text":"이동중"},"progresses":[{"time":"2018-05-18T15:53:00+09:00","location":{"name":"종암(대)"},"status":{"id":"in_transit","text":"이동중"},"description":"고객님 상품을 접수하였습니다."}],"carrier":{"id":"kr.hanjin","name":"한진택배","tel":"+8215880011"}}
		//실패 : {"message":"~~~~~~~~~~~~"}
		/*JSON 파싱끝*/
        
		return result;
	}
	@RequestMapping("test")
	@ResponseBody
	public String postTest() {
		Map<String, Object> map = new HashMap<>();
		ApiUseSample aus = new ApiUseSample();
		map.put("boardCode", "picture");
		map.put("aid", 16);
		String result = aus.postApi("http://localhost:9999/comment/commentList", null, map, false);
		//test URL = http://localhost:8888/deleveryTest/parseDelivery?carriers=kr.hanjin&tracks=417472558775
		JSONParser jps = new JSONParser();
		StringBuilder sb = new StringBuilder();
		
		return result;
	}
	
}

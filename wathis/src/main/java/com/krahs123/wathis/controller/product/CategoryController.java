package com.krahs123.wathis.controller.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.CategoryVO;
import com.krahs123.wathis.service.category.CategoryService;
import com.krahs123.wathis.util.FileControl;

@Controller
@RequestMapping("/cate")
public class CategoryController {
	@Autowired
	CategoryService cateService;
	//카테고리 등록 화면
	@RequestMapping("/getCategory")
	public ModelAndView getCategory() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "cate");
		mav.addObject("mypage", "list");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//카테고리 등록 동작
	@RequestMapping("/setCate")
	@ResponseBody
	public Map<String,Object> setCateDo(@RequestParam String title,@RequestPart MultipartFile files){
		Map<String , Object> map = new HashMap<>();

		String msg="카테고리 등록에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		CategoryVO cvo = new CategoryVO();
		cvo.setTitle(title);
		if(!files.isEmpty()) {
			FileControl fc= new FileControl();
			Map<String,Object> fileMap = fc.fileUpload(files, "img", null);
			cvo.setCate_img(fileMap.get("uploadDIR").toString()+fileMap.get("fileName").toString());
		}
		int result = cateService.setCate(cvo);
		if(result>0) {
			msg="카테고리가 등록 되었습니다.";
			status=true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	//카테고리 리스트 출력
	@RequestMapping("/getCateList")
	@ResponseBody
	public Map<String,Object> getCateList(){
		Map<String,Object> map = new HashMap<>();
		List<CategoryVO> cvoList = cateService.getCateList();
		map.put("cvoList", cvoList);
		map.put("msg", "카테고리를 불러왔습니다.");
		map.put("status", true);
		return map;
	}
}

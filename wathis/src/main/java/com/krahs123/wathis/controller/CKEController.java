package com.krahs123.wathis.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.krahs123.wathis.model.CKEFileUpload;
import com.krahs123.wathis.util.FileControl;

@Controller
@RequestMapping("/cke")
public class CKEController {
	//cke fileUpload
	@RequestMapping("/imageUpload")
	@ResponseBody
	public Map<String, Object> ckeImageUpload(@ModelAttribute("fileUploadVO") CKEFileUpload fileUploadVO,HttpServletRequest request,@RequestParam(defaultValue = "false") String isHost) {
		//fileUploadVO -> 앞서 만든 모델에 파일이나 설정을 저장함
		//request root경로를 알기 위해  사용(static경로 아님)
		String hostName =(Boolean.parseBoolean(isHost))?request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort():"";

		//날짜 생성(폴더이름 + 파일이름에 사용)
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		long timeStamp = today.getTime();
		
		//파일 이름 만들기
		DefaultResourceLoader drl = new DefaultResourceLoader();
		Resource resource=drl.getResource("classpath:/static");
		String attachPath="CKEupload/"+sdf.format(today);//파일 업로드 할 경로
		MultipartFile upload = fileUploadVO.getUpload();//업로드할 파일을 모델에서 가져옴
		
		
		Map<String, Object> map = new HashMap<>();// JSON으로 보내줄 데이터
		Map<String, Object> errorMap = new HashMap<>();//JSON으로 보내줄 데이터중 에러는 MAP을 따로 해서 처림함
		Map<String, Object> option = new HashMap<>();//JSON으로 보내줄 데이터중 에러는 MAP을 따로 해서 처림함
		try {
			String rootPath = resource.getFile().getAbsolutePath();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			errorMap.put("message", "시스템 에러 입니다. 관리자에게 문의해 주세요.");
			map.put("uploaded", 0);
			map.put("error", errorMap);
			return map;
		}//루트 경로
		option.put("uploadDIR", attachPath);

		FileControl fileAdd = new FileControl();
		Map<String,Object> resultMap= fileAdd.fileUpload(upload, "img",option);
		
		if (!(boolean)resultMap.get("status")) {
			errorMap.put("message", resultMap.get("msg"));
			map.put("uploaded", 0);
			map.put("error", errorMap);
		}else {
			map.put("filename", resultMap.get("fileName"));
			map.put("uploaded", 1);
			map.put("url", hostName+resultMap.get("uploadDIR").toString() + resultMap.get("fileName").toString());
		}
		
		return map;
	}
	//테스트 페이지
	@RequestMapping("/")
	public String ckeTestView() {
		return "/ckeTest";
	}
	@RequestMapping(value="/imgUpload",method = RequestMethod.GET)
	public String ckeImgUploadView() {
		return "/ckeImgUpload";
	}
	@RequestMapping(value="/imgUpload",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> ckeImgUploadDo(@RequestPart MultipartFile files, HttpServletRequest hsr) {
		FileControl fileAdd = new FileControl();
		Map<String,Object> map= fileAdd.fileUpload(files, "img",null);
		return map;
	}
}

package com.krahs123.wathis.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public Map<String, Object> ckeImageUpload(@ModelAttribute("fileUploadVO") CKEFileUpload fileUploadVO,HttpServletRequest request) {
		//fileUploadVO -> 앞서 만든 모델에 파일이나 설정을 저장함
		//request root경로를 알기 위해  사용(static경로 아님)
		//날짜 생성(폴더이름 + 파일이름에 사용)
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		long timeStamp = today.getTime();
		
		//파일 이름 만들기
		HttpSession session = request.getSession();
		String rootPath = session.getServletContext().getRealPath("/");//루트 경로
		String attachPath="CKEupload/"+sdf.format(today)+"/";//파일 업로드 할 경로
		MultipartFile upload = fileUploadVO.getUpload();//업로드할 파일을 모델에서 가져옴
		
		String filename;
		String fileExt;
		
		Map<String, Object> map = new HashMap<>();// JSON으로 보내줄 데이터
		Map<String, Object> errorMap = new HashMap<>();//JSON으로 보내줄 데이터중 에러는 MAP을 따로 해서 처림함
		if(upload!=null) {
			filename = upload.getOriginalFilename();//원본 파일이름을 가져옴
			fileExt = FilenameUtils.getExtension(filename).toLowerCase();//파일 확장자를 가져옴
			if(fileExt.trim().equals("jpg")||fileExt.trim().equals("jpeg")||fileExt.trim().equals("png")||fileExt.trim().equals("gif")) {
				//파일 확장자를 비교함
				filename = timeStamp+(int)(Math.random()*1000)+"."+fileExt;
				//timeStamp를 활용하서 파일 생성
				fileUploadVO.setFilename(filename);//파일이름을 모델에 넣어줌
				try {
					File file = new File(rootPath+attachPath+filename);
					//업로드할 위치에 바뀐파일이름으로 파일이 올라갈수 있게 파일을 만듬
					if(!file.getParentFile().exists()) {
						//만약에 파일을 넣을 폴더가 없으면 생성함
						file.getParentFile().mkdirs();
					}
					upload.transferTo(file);
					//업로드한 파일을 우리가 만들어줄 파일위칭에 바꾼파일이름으로 옮김
					map.put("filename", filename);
					map.put("uploaded", 1);
					map.put("url", "/"+attachPath + filename);
				}catch(Exception e) {
					// 파일 생성실패시
					errorMap.put("message", "첨부 파일을 업로드 할수 없습니다.\\n 파일을 확인해 주세요.(err:02)");
					map.put("uploaded", 0);
					map.put("error", errorMap);
				}
			}else {
				//확장자가 안맞으면
				errorMap.put("message", "jpg, png, gif파일만 업로드 가능합니다.\\n 파일을 확인해 주세요.(err:03)");
				map.put("uploaded", 0);
				map.put("error", errorMap);
			}
		}else{
			//파일을 못받아왔을때
			errorMap.put("message", "첨부 파일을 업로드 할수 없습니다.\\n 파일을 확인해 주세요.(err:01)");
			map.put("uploaded", 0);
			map.put("error", errorMap);
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
		Map<String,Object> map= fileAdd.fileUpload(files, hsr, "img");
		return map;
	}
}

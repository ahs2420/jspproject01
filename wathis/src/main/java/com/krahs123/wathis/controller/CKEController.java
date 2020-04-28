package com.krahs123.wathis.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.krahs123.wathis.model.CKEFileUpload;

@Controller
@RequestMapping("/cke")
public class CKEController {
	//cke fileUpload
	@RequestMapping("/imageUpload")
	@ResponseBody
	public String ckeImageUpload(@ModelAttribute("fileUploadVO") CKEFileUpload fileUploadVO,HttpServletRequest request,Model model) {
		//날짜 생성(폴더이름 + 파일이름에 사용)
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		long timeStamp = today.getTime();
		//파일 이름 만들기
		HttpSession session = request.getSession();
		String rootPath = session.getServletContext().getRealPath("/");
		String attachPath="CKEupload/"+sdf.format(today)+"/";
		MultipartFile upload = fileUploadVO.getUpload();
		String filename;
		String fileExt;
		
		StringBuilder sb = new StringBuilder();
		if(upload!=null) {
			filename = upload.getOriginalFilename();
			fileExt = FilenameUtils.getExtension(filename).toLowerCase();
			if(fileExt.trim().equals("jpg")||fileExt.trim().equals("jpeg")||fileExt.trim().equals("png")||fileExt.trim().equals("gif")) {
				filename = timeStamp+(int)(Math.random()+1)*100+"."+fileExt;
				fileUploadVO.setFilename(filename);
				try {
					File file = new File(rootPath+attachPath+filename);
					if(!file.getParentFile().exists()) {
						file.getParentFile().mkdirs();
					}
					upload.transferTo(file);
	                sb.append("{\"filename\" : \""+filename+"\", \"uploaded\" : 1, \"url\":\"/"+attachPath + filename+"\"}");
				}catch(Exception e) {
		        	sb.append("{\"uploaded\" : 0, \"error\" : { \"message\" : \"첨부 파일을 업로드 할수 없습니다.\\n 파일을 확인해 주세요.(err:02)\" } }");
				}
			}else {
            	sb.append("{\"uploaded\" : 0, \"error\" : { \"message\" : \"jpg, png, gif파일만 업로드 가능합니다.\\n 파일을 확인해 주세요.(err:03)\" } }");
			}
		}else{
        	sb.append("{\"uploaded\" : 0, \"error\" : { \"message\" : \"첨부 파일을 업로드 할수 없습니다.\\n 파일을 확인해 주세요.(err:01)\" } }");
		}
		return sb.toString();
	}
	//테스트 페이지
	@RequestMapping("/")
	public String ckeTestView() {
		return "/ckeTest";
	}
}

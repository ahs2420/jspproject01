package com.krahs123.wathis.controller;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.service.mypage.MypageService;

@Controller
@RequestMapping("/page")
public class MyPageConroller {
	
	@Autowired MypageService mypageService;
	
	final String DIR ="/mypage/";
	
	@RequestMapping("/mypage")
	public ModelAndView viewMypageList(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "prepare");
		
		mav.setViewName(DIR+"mypage");
		return mav;
	}

	//	기본 요건 부분
	@RequestMapping("/mypage-one")
	public ModelAndView viewMypageOne(){
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "information");
		
		mav.setViewName(DIR+"mypage");
		return mav;
	}

	// 기본 요건 파일 작업하는 부분
	@RequestMapping("/mypageOne")
	@ResponseBody
	public String setItem(@ModelAttribute AuditVO auvo, @RequestPart MultipartFile files) throws IllegalStateException, IOException{
		
		if( files.isEmpty() ) {
			mypageService.setItem(auvo); //파일이 있는지 확인
			
		}else {
			//파일 저장할 주소
			DefaultResourceLoader drl = new DefaultResourceLoader();
			Resource resource = drl.getResource("classpath:/static");//파일경로 설정을 할때 이렇게 설정 해야지 다른 컴퓨터 작업 할때 경로가 안 바뀐다. 저절로 찾아 간다.
			String rootPath = resource.getFile().getAbsolutePath();
			String Required_documents_url ="/hongimages/mypageOneImg/";
			
			String Required_documents_orgName = files.getOriginalFilename();
			String RequiredDocumentsName = FilenameUtils.getExtension(Required_documents_orgName).toLowerCase();
	
			File destinationFile  = null;
			String destinationFileName;
			
			do{
				destinationFileName = RandomStringUtils.randomAlphanumeric(32)+ "."+ RequiredDocumentsName;
				destinationFile = new File(rootPath+Required_documents_url + destinationFileName);
			
			
			}while(destinationFile.exists());
				
			destinationFile.getParentFile().mkdirs();
			files.transferTo(destinationFile);
			
			auvo.setRequired_documents_Name(destinationFileName);
			auvo.setRequired_documents_orgName(Required_documents_orgName);
			auvo.setRequired_documents_url(Required_documents_url);
				
				
				
			mypageService.setItem(auvo);
			
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "information");
		
		mav.setViewName(DIR+"mypage");
		return "";
	}

	
	
	
	@RequestMapping("/mypage-two")
	public ModelAndView viewMypageTwo(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "maker");
		
		mav.setViewName(DIR+"mypage");
		
		return mav;
	}

	@RequestMapping("/mypage-three")
	public ModelAndView viewMypageThree(){
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("mypage", "story");
			
			mav.setViewName(DIR+"mypage");
			
			return mav;
		}
	

	@RequestMapping("/mypage-four")
		public ModelAndView viewMypageFour(){
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("mypage", "design");
			
			mav.setViewName(DIR+"mypage");
			
			return mav;
		}


	@RequestMapping("/mypage-five")
	public ModelAndView viewMypageFive(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "riskFactors");
		
		mav.setViewName(DIR+"mypage");
		
		return mav;
		
	}
	
	
	//회원 마이페이지
	@RequestMapping("/userMypage")
	public ModelAndView viewSettings(@RequestParam(defaultValue = "setting") String template,@RequestParam(defaultValue = "list") String page){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template",template);
		mav.addObject("page",page);
		mav.setViewName(DIR+"userMypage");
		return mav;
	}


}
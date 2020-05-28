package com.krahs123.wathis.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	@RequestMapping(value = "/mypageOne" , method = RequestMethod.POST)
	@ResponseBody
	public String setItem(@ModelAttribute AuditVO auvo, @RequestPart MultipartFile files) throws IllegalStateException, IOException{
		
		if( files.isEmpty() ) {
			mypageService.setItem(auvo); //파일이 있는지 확인
			
		}else {
			//파일 저장할 주소
			String Required_documents_url ="C:\\Users\\user\\git\\jspproject012\\wathis\\src\\main\\resources\\static\\hongimages\\mypageOneImg";
			
			String Required_documents_orgName = files.getOriginalFilename();
			String RequiredDocumentsName = FilenameUtils.getExtension(Required_documents_orgName).toLowerCase();
	
			File destinationFile  = null;
			String destinationFileName;
			
			do{
				destinationFileName = RandomStringUtils.randomAlphanumeric(32)+ "."+ RequiredDocumentsName;
				destinationFile = new File(Required_documents_url + destinationFileName);
			
			
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
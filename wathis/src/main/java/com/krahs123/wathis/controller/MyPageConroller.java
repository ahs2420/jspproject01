package com.krahs123.wathis.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;


import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.model.CategoryVO;
import com.krahs123.wathis.model.MakerInfoVO;
import com.krahs123.wathis.service.category.CategoryService;

import com.krahs123.wathis.service.product.AuditService;
import com.krahs123.wathis.service.product.MakerInfoService;

@Controller
@RequestMapping("/page")
public class MyPageConroller {
	
//	@Autowired MypageService mypageService;
	
	@Autowired AuditService auditService;
	
	@Autowired MakerInfoService makerSer;
	
	@Autowired CategoryService cateSer;
	
	final String DIR ="/mypage/";
	
	@RequestMapping("/mypage")
	public ModelAndView viewMypageList(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "prepare");

		
		mav.setViewName(DIR+"mypage");
		return mav;
	}


// 마이페이지 리스트 수정 및 보여지는 페이지
	@RequestMapping("/mypageListModify")
	public ModelAndView getListModify(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();

		
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "modify");
		mav.addObject("id", id);
		
		mav.setViewName(DIR+"mypage");
		return mav;
	}
	

	
	//	기본 요건 부분 보여지는 부분
	@RequestMapping("/mypage-one")
	public ModelAndView viewMypageOne(){
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "information");
		
		mav.setViewName(DIR+"mypage");
		return mav;
	}
	
	// 기본요건 보여주는 부분
	@RequestMapping("/mypageOneView")
	@ResponseBody
	public ModelAndView getmypageOneView(@RequestParam int id){
		AuditVO auditvo = auditService.getList(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "oneModi");
		mav.addObject("oneModi", auditvo);
		
		mav.setViewName(DIR+"mypage");
		return mav;
	}
	
	
//	 기본요건부분 수정 부분
		@RequestMapping("/mypageOneModify")
		public ModelAndView getList(@ModelAttribute AuditVO auvo ){
			
		int result = auditService.updateItem(auvo);
			
				ModelAndView mav = new ModelAndView();
				mav.addObject("template", "Reward");
				mav.addObject("mypage", "oneModi");
				
				mav.setViewName(DIR+"mypageOneModify");
				return mav;
		}
	// 기본 요건 파일 작업하는 부분
	@RequestMapping("/mypageOne")
	@ResponseBody
	public ModelAndView setItem(@ModelAttribute AuditVO auvo, @RequestPart MultipartFile files) throws IllegalStateException, IOException{
		
		if( files.isEmpty() ) {
			auditService.setItem(auvo); //파일이 있는지 확인
			
		}else {
			//파일 저장할 주소
			DefaultResourceLoader drl = new DefaultResourceLoader();		
			Resource resource=drl.getResource("file:src/main/resources/static");//파일 경로가 안보이는 곳으로 가서 임시로 변경..

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
				
				
				
			auditService.setItem(auvo);
			
		}
		
		ModelAndView mav = new ModelAndView();
		int id = auditService.getAuditLastID(auvo.getMember_id());
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "information");
		mav.addObject("id", id);
		
		mav.setViewName("redirect:/page/mypageListModify");
		return mav;
	}
	

	//메이커 보여지ㅏ는 부분
	@RequestMapping("/mypage-two")
	public ModelAndView viewMypageTwo(@ModelAttribute AuditVO auvo) {

		int id = auditService.getAuditLastID(auvo.getMember_id()); 
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "maker");
		mav.addObject("mypage", "maker");
		
			
		
		mav.setViewName(DIR+"mypage");
		
		return mav;
	}
	
	@RequestMapping("/mypageTwo")
	@ResponseBody
	public String setMaker(@ModelAttribute MakerInfoVO mkvo , @RequestPart MultipartFile img_didi,@RequestPart MultipartFile bank_img,
			@RequestParam(value ="marker_home_pageTwo_url[]") List<String> homepage) throws IllegalStateException, IOException {

		StringBuilder sb = new StringBuilder();
		StringBuilder st = new StringBuilder();
		
		DefaultResourceLoader drl = new DefaultResourceLoader();
		Resource resource=drl.getResource("file:src/main/resources/static");//파일 경로가 안보이는 곳으로 가서 임시로 변경..
		String rootPath = resource.getFile().getAbsolutePath();
		String Required_documents_url ="/hongimages/mypageOneImg/";
		
		for( int i = 0; i < homepage.size(); i++ ) {
			st.append(homepage.get(i)+"|");
			
		}
		mkvo.setMarker_home_page_url(st.toString());
		
		if( !img_didi.isEmpty() ) {

			//파일 저장할 주소
		
			
			String Required_documents_orgName = img_didi.getOriginalFilename();
			String RequiredDocumentsName = FilenameUtils.getExtension(Required_documents_orgName).toLowerCase();
	
			File destinationFile  = null;
			String destinationFileName;
			
			do{
				destinationFileName = RandomStringUtils.randomAlphanumeric(32)+ "."+ RequiredDocumentsName;
				destinationFile = new File(rootPath+Required_documents_url + destinationFileName);
			
			
			}while(destinationFile.exists());
				
			destinationFile.getParentFile().mkdirs();
			img_didi.transferTo(destinationFile);
			
			mkvo.setMarker_img(Required_documents_url +destinationFileName );
			
		}else {
			sb.append("<scrip>");
			sb.append("alert(\"사진을넣어주세요.\");");
			sb.append("window.history.back();");
			sb.append("</scrip>");
			
			return sb.toString();
		}
		
		if( !bank_img.isEmpty() ) {
			
	//파일 저장할 주소
		
			
			String Required_documents_orgName = bank_img.getOriginalFilename();
			String RequiredDocumentsName = FilenameUtils.getExtension(Required_documents_orgName).toLowerCase();
	
			File destinationFile  = null;
			String destinationFileName;
			
			do{
				destinationFileName = RandomStringUtils.randomAlphanumeric(32)+ "."+ RequiredDocumentsName;
				destinationFile = new File(rootPath+Required_documents_url + destinationFileName);
			
			
			}while(destinationFile.exists());
				
			destinationFile.getParentFile().mkdirs();
			bank_img.transferTo(destinationFile);
			
			mkvo.setBankbook_img(Required_documents_url +destinationFileName );
		}else {
			sb.append("<scrip>");
			sb.append("alert(\"사진을넣어주세요.\");");
			sb.append("window.history.back();");
			sb.append("</scrip>");

			
			return sb.toString();
			
		}
		
		int result = makerSer.setMaker(mkvo);

		sb.append("<scrip>");
		sb.append("alert(\"등록 되었습니다.\");");
		sb.append("location.replace('/page/mypageListModify');");
		sb.append("</scrip>");

		
		return sb.toString();
		
	}
	
	
	//메이커 수정 부분
	@RequestMapping("/mypage-two2")
	public ModelAndView viewMypageTwo(@RequestParam int audit_id) {

		int auditId = makerSer.getMakerID(audit_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "maker");
		mav.addObject("auditId", auditId);
			
		
		mav.setViewName(DIR+"mypage");
		
		return mav;
	}
	
	

	@RequestMapping("/mypage-three")
	public ModelAndView viewMypageThree(){
			ModelAndView mav = new ModelAndView();
			List<CategoryVO> cate = cateSer.getCateList();
			
			mav.addObject("template", "Reward");
			mav.addObject("cate", cate);
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
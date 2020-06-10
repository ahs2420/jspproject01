package com.krahs123.wathis.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.text.DateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.config.DbStatus;
import com.krahs123.wathis.controller.test.DeleveryApiTest;
import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.model.CategoryVO;
import com.krahs123.wathis.model.MakerInfoVO;
import com.krahs123.wathis.model.MemberAddrVO;
import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.model.OrderDetailVO;
import com.krahs123.wathis.model.OrderVO;
import com.krahs123.wathis.model.ProductVO;
import com.krahs123.wathis.service.category.CategoryService;
import com.krahs123.wathis.service.member.MemberAddrService;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.service.order.OrderDetailService;
import com.krahs123.wathis.service.order.OrderService;
import com.krahs123.wathis.service.popup.PopupService;
import com.krahs123.wathis.service.product.AuditService;
import com.krahs123.wathis.service.product.MakerInfoService;
import com.krahs123.wathis.service.product.ProductOptionService;
import com.krahs123.wathis.service.product.ProductService;
import com.krahs123.wathis.service.siteConfig.SiteConfigService;
import com.krahs123.wathis.util.AES256;
import com.krahs123.wathis.util.FileControl;
import com.krahs123.wathis.util.HtmlSpecialChar;

@Controller
@RequestMapping("/page")
public class MyPageConroller {
	
//	@Autowired MypageService mypageService;
	
	@Autowired AuditService auditService;
	
	@Autowired MakerInfoService makerSer;
	
	@Autowired CategoryService cateSer;

	@Autowired ProductService proSer;

	@Autowired ProductOptionService proOptSer;
	
	@Autowired MemberService memService;

	@Autowired MemberAddrService memAddService;
	
	@Autowired MenuService menuService;
	
	@Autowired PopupService popupService;
	
	@Autowired SiteConfigService siteService;

	@Autowired OrderService orderService;
	@Autowired OrderDetailService orderDetailService;
	final String DIR ="/mypage/";
	
	@RequestMapping("/mypage")
	public ModelAndView viewMypageList(HttpSession session,int product_id){
		int member_id = (int)session.getValue("id");
		int auditID = auditService.getAuditLastID(member_id); 
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "prepare");
		mav.addObject("auditID", auditID);
		

		
		mav.setViewName(DIR+"mypage");
		return mav;
	}

//여기다가 받아 준다.
// 마이페이지 리스트 수정 및 보여지는 페이지
	@RequestMapping("/mypageListModify")
	public ModelAndView getListModify(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		AuditVO audiVo = auditService.getAuditDetail(id);
		int maker_id = makerSer.getMakerID(id);
		int product_id = proSer.getProductId(id);
		int optCount = proOptSer.getProIdCount(product_id);
		
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "modify");
		mav.addObject("id", id);
		mav.addObject("maker_id", maker_id);
		mav.addObject("product_id", product_id);
		mav.addObject("optCount", optCount);
		mav.addObject("audiVo", audiVo);
		mav.addObject("auditStatus", DbStatus.auditStatus);
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
	
	// 기본요건 작성후에 보여주는 부분
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
				mav.addObject("id", auvo.getId());
				mav.addObject("template", "Reward");
				mav.addObject("mypage", "oneModi");
				mav.addObject("id", auvo.getId());
			
				mav.setViewName("redirect:/page/mypageListModify");
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
	

	//메이커 보여지는 부분
	@RequestMapping("/mypage-two")
	public ModelAndView viewMypageTwo(@RequestParam int audit_id) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "maker");
		mav.addObject("auditId", audit_id);
		
		
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
			sb.append("<script>");
			sb.append("alert(\"사진을넣어주세요.\");");
			sb.append("window.history.back();");
			sb.append("</script>");
			
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
			sb.append("<script>");
			sb.append("alert(\"사진을넣어주세요.\");");
			sb.append("window.history.back();");
			sb.append("</script>");

			
			return sb.toString();
			
		}
		
		int result = makerSer.setMaker(mkvo);

		sb.append("<script>");
		sb.append("alert(\"등록 되었습니다.\");");
		sb.append("location.replace('/page/mypageListModify?id="+mkvo.getAudit_id()+"');");
		sb.append("</script>");

		
		return sb.toString();
		
	}
	
	// 메이커 작성후에 보여주는 부분
		@RequestMapping("/mypageTwoView")
		@ResponseBody
		public ModelAndView getmypageTwoView(@RequestParam int id){
			
			MakerInfoVO makervo = makerSer.getMarkerList(id);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("mypage", "twoModi");
			mav.addObject("makervo", makervo);
			mav.addObject("audit_id", makervo.getAudit_id());
			mav.addObject("makerType", DbStatus.makerType);
			
			mav.setViewName(DIR+"mypage");
			return mav;
		}
	
	//메이커 수정  보이는 부분
	@RequestMapping("/mypageTwoModify")
	public ModelAndView MypageTwoView(@ModelAttribute MakerInfoVO maVo, @RequestPart MultipartFile file1, @RequestPart MultipartFile file2,@RequestParam(value ="marker_home_pageTwo_url[]") List<String> homepage) {

		StringBuilder st = new StringBuilder();
		if( !file1.isEmpty()) {
			FileControl fc = new FileControl();
			Map<String,Object> imgMap = fc.fileUpload(file1, "img", null);
			maVo.setMarker_img(imgMap.get("uploadDIR").toString()+imgMap.get("fileName").toString());
		}
		
		if( !file2.isEmpty()) {
			FileControl fc = new FileControl();
			Map<String,Object> imgMap = fc.fileUpload(file2, "img", null);
			maVo.setBankbook_img(imgMap.get("uploadDIR").toString()+imgMap.get("fileName").toString());
		}

		for( int i = 0; i < homepage.size(); i++ ) {
			st.append(homepage.get(i)+"|");
			
		}
		maVo.setMarker_home_page_url(st.toString());
		int result = makerSer.updateMaker(maVo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "information");
		mav.addObject("id", maVo.getAudit_id());
			
		
		mav.setViewName("redirect:/page/mypageListModify");
		
		return mav;
	}

	
	//스토리 작성 보여지는 부분
	@RequestMapping("/mypage-three")
	public ModelAndView viewMypageThree(@RequestParam int audit_id){
			
		 	
			List<CategoryVO> cate = cateSer.getCateList();
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("cate", cate);
			mav.addObject("mypage", "story");
			

			mav.addObject("audit_id", audit_id);
			mav.setViewName(DIR+"mypage");
			
			return mav;
		}
	

	//파일 업로드 부분
	@RequestMapping("/mypageThree")
	@ResponseBody
	public String getpageThree(@ModelAttribute ProductVO provo, 
								@RequestPart List<MultipartFile> img_didi,
								@RequestPart MultipartFile main_file, 
								@RequestParam String video_chkTwo) {
		FileControl fc = new FileControl();
		StringBuilder sb = new StringBuilder();
		if(!main_file.isEmpty()) {
			Map<String,Object> fileMap=fc.fileUpload(main_file, "", null);
			provo.setImg_upload_dir(fileMap.get("uploadDIR").toString());;
			provo.setMain_img(fileMap.get("fileName").toString());
		}
		if(provo.getVideo_chk()==1) {
			provo.setImg(video_chkTwo);
		}else {
			if( img_didi.size() > 0 ) {
				StringBuilder img_file=new StringBuilder();
				for( MultipartFile threefile:img_didi) {
					if(!threefile.isEmpty()) {
						Map<String,Object> fileMap=fc.fileUpload(threefile, "", null);
						img_file.append(fileMap.get("fileName")+"|");
					}
				}
				provo.setImg(img_file.toString());
			}
		}
			
		
		
		int result = proSer.setProduct(provo);
		 if( result > 0) {
			
				sb.append("<script>");
				sb.append("alert(\"등록 되었습니다.\");");
				sb.append("location.replace('/page/mypageListModify?id="+provo.getAudit_id()+"');");
				sb.append("</script>");
		 }else {
				sb.append("<script>");
				sb.append("alert(\"이미지 등록이 실패 하였습니다.\");");
				sb.append("window.history.back();");
				sb.append("</script>");
			 
		 }
		
		
		return sb.toString();
		
	}
	
		//스토리 작성 보여지는 부분
		@RequestMapping("/mypageThreeView")
		public ModelAndView MypageThreeView(@RequestParam int id){

			ProductVO productvo = proSer.getProductDetail(id);
			
			List<CategoryVO> cate = cateSer.getCateList();
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("mypage", "threeModi");
			mav.addObject("cate", cate);
			mav.addObject("productvo",productvo);

			
			mav.addObject("audit_id",productvo.getAudit_id());
			mav.addObject("productStatus", DbStatus.productStatus);
			
			mav.setViewName(DIR+"mypage");
			return mav;
		}
		
		//메이커 수정  보이는 부분
		@RequestMapping("/mypageThreeModify")
		public ModelAndView MypagethreeView(@ModelAttribute ProductVO provo,
				@RequestPart List<MultipartFile> file1,
				@RequestPart MultipartFile main_file, 
				@RequestParam String video_chkTwo,
				@RequestParam String audit_id){
				
			StringBuilder st = new StringBuilder();
			FileControl fc = new FileControl();
			StringBuilder sb = new StringBuilder();
			if(!main_file.isEmpty()) {
				Map<String,Object> fileMap=fc.fileUpload(main_file, "", null);
				provo.setImg_upload_dir(fileMap.get("uploadDIR").toString());;
				provo.setMain_img(fileMap.get("fileName").toString());
			}
			if(provo.getVideo_chk()==1) {
				provo.setImg(video_chkTwo);
			}else {
				if( file1.size() > 0 ) {
					StringBuilder img_file=new StringBuilder();
					for( MultipartFile threefile:file1) {
						if(!threefile.isEmpty()) {
							Map<String,Object> fileMap=fc.fileUpload(threefile, "", null);
							img_file.append(fileMap.get("fileName")+"|");
						}
					}
					provo.setImg(img_file.toString());
				}
			}
			int result = proSer.updatePro(provo);
			//심사 아이디를 가지고 와야 한다.
			

			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("mypage", "information");
			mav.addObject("id", provo.getAudit_id());
			
				
			
			mav.setViewName("redirect:/page/mypageListModify");
			
			return mav;
		}

		
	
	
	
	
	@RequestMapping("/mypage-four")
		public ModelAndView viewMypageFour(@RequestParam int audit_id,@RequestParam int product_id){
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("template", "Reward");
			mav.addObject("mypage", "design");
			mav.addObject("product_id", product_id);
			mav.addObject("audit_id", audit_id);
			mav.addObject("optionType", DbStatus.optionType);
			
			mav.setViewName(DIR+"mypage");
			
			return mav;
		}


//	@RequestMapping("/mypage-five")
//	public ModelAndView viewMypageFive(){
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("template", "Reward");
//		mav.addObject("mypage", "riskFactors");
//		
//		mav.setViewName(DIR+"mypage");
//		
//		return mav;
		
//	}
	@RequestMapping("/submitAudit")
	public ModelAndView submitAudit(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		auditService.updateAuditSubmit(id);
		mav.addObject("template", "Reward");
		mav.addObject("mypage", "information");
		mav.addObject("id", id);
		
		mav.setViewName("redirect:/page/mypageListModify");
		
		return mav;
	}
	//결제 현황 리스트
	@RequestMapping("/paymentStatus")
	public ModelAndView paymentStatusView(@RequestParam int id) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		ModelAndView mav = new ModelAndView();
		int product_id = proSer.getProductId(id);
		ProductVO pvo = proSer.getProductDetail(product_id);
		Map<String, Object> orderTotal = orderService.getOrderTotal(product_id);
		List<Map<String, Object>> ovoList = orderService.getOrderProList(product_id);
		AES256 aes = new AES256();
		for(int i=0;i<ovoList.size();i++) {
			ovoList.get(i).replace("utel", aes.decrypt(ovoList.get(i).get("utel").toString()));
			ovoList.get(i).replace("receiver_tel", aes.decrypt(ovoList.get(i).get("receiver_tel").toString()));
		}
		
		mav.addObject("template", "payment");
		mav.addObject("mypage", "status");
		mav.addObject("id", id);
		mav.addObject("pvo", pvo);
		mav.addObject("orderTotal", orderTotal);
		mav.addObject("ovoList", ovoList);
		mav.addObject("productStatus",DbStatus.productStatus);
		mav.addObject("orderState",DbStatus.orderState);
		mav.setViewName(DIR+"mypage");
		
		return mav;
		
	}
	//주문상세 엑셀 다운
	@RequestMapping("/orderCsvDetail")
	public ModelAndView orderCsvDetail(@RequestParam int product_id) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		ModelAndView mav = new ModelAndView();
		List<Map<String,Object>> ovoList = orderService.getOrderProDetailList(product_id);
		AES256 aes = new AES256();
		HtmlSpecialChar hsc = new HtmlSpecialChar();
		for(int i=0;i<ovoList.size();i++) {
			ovoList.get(i).replace("utel", aes.decrypt(ovoList.get(i).get("utel").toString()));
			ovoList.get(i).replace("receiver_tel", aes.decrypt(ovoList.get(i).get("receiver_tel").toString()));
			ovoList.get(i).replace("option_name", hsc.encodeEnter(ovoList.get(i).get("option_name").toString()));
		}
		mav.addObject("ovoList",ovoList);
		mav.addObject("orderState",DbStatus.orderState);
		mav.setViewName(DIR+"csv/orderCsvDetail");
		return mav;
	}
	//주문엑셀등록 양식
	@RequestMapping("/orderCsvTemplate")
	public ModelAndView orderCsvTemplate(@RequestParam int product_id) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		ModelAndView mav = new ModelAndView();
		List<Map<String,Object>> ovoList = orderService.getOrderProList(product_id);
		AES256 aes = new AES256();
		HtmlSpecialChar hsc = new HtmlSpecialChar();
		for(int i=0;i<ovoList.size();i++) {
			ovoList.get(i).replace("utel", aes.decrypt(ovoList.get(i).get("utel").toString()));
		}
		mav.addObject("ovoList",ovoList);
		mav.addObject("orderState",DbStatus.orderState);
		mav.setViewName(DIR+"csv/orderCsvTemplate");
		return mav;
	}
	//주문 택배사코드 다운
	@RequestMapping("/orderCsvCompany")
	public ModelAndView orderCsvCompany() throws ParseException{
		ModelAndView mav = new ModelAndView();
		DeleveryApiTest da = new DeleveryApiTest();
		List<Map<String,Object>> comList = da.companyView();
		mav.addObject("comList",comList);
		mav.setViewName(DIR+"csv/orderCsvCompany");
		return mav;
	}
	//배송코드 엑셀업로드
	@RequestMapping(value="/setOrderDeleveryCsv",method = RequestMethod.POST)
	@ResponseBody
	public String setOrderDeleveryCsv(@RequestPart MultipartFile files) {
		StringBuilder sb = new StringBuilder();
		File convFile = new File("temp.csv");
		String line = null;
		int total=0;
		int result=0;
		try {
		    convFile.createNewFile(); 
		    FileOutputStream fos = new FileOutputStream(convFile); 
		    fos.write(files.getBytes());
		    fos.close();
		    BufferedReader br = new BufferedReader(new FileReader(convFile));
			while ((line=br.readLine())!=null) {
				//sb.append(line+"<br>");//확인용
				if(total==0) {
					//첫줄은 설명줄이므로 거른다
					++total;
					continue;
				}else {
					OrderVO ovo = new OrderVO();
					String[] arr = line.split(",");
					if(arr.length>0) {
						ovo.setId(Integer.parseInt(arr[0]));
						ovo.setDelivery_number(arr[2]);
						ovo.setDelivery_id(arr[3]);
						ovo.setState("4");
						result+=orderService.updateOrder(ovo);
						//++result;
						++total;
					}
				}
			}
			br.close();
		} catch (Exception e) {
			sb.append(e);
		}finally {
			convFile.delete();
		}
		sb.append("등록되었습니다.(요청 : "+(total-1)+" , 처리 :"+result+")");
		return sb.toString();
	}


	//회원 마이페이지
	@RequestMapping("/userMypage")
	public ModelAndView viewSettings(@RequestParam(defaultValue = "setting") String template,@RequestParam(defaultValue = "list") String page){
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		

		mav.addObject("menuList", menuList);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("template",template);
		mav.addObject("page",page);
		mav.setViewName(DIR+"userMypage");
		return mav;
	}
	//회원 설정
	@RequestMapping("/userSetting")
	public ModelAndView userSetting(
			@RequestParam(defaultValue = "setting") String template,
			@RequestParam(defaultValue = "list") String page,
			HttpSession session){
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		MemberVO mvo = memService.getMemberDetail(Integer.parseInt(session.getValue("id").toString()));
		MemberAddrVO mavo = memAddService.getAddrFirst(mvo.getId());
		
		AES256 aes = new AES256();
		try {
			mvo.setUtel(aes.decrypt(mvo.getUtel()));
		}catch(Exception e){
			
		}
		mav.addObject("menuList", menuList);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("template",template);
		mav.addObject("page",page);
		mav.addObject("mvo",mvo);
		mav.addObject("mavo",mavo);
		mav.setViewName(DIR+"userMypage");
		return mav;
	}
	//제작한 프로젝트 리스트
	@RequestMapping("/makeProject")
	public ModelAndView viewMakeProject(HttpSession session){
	//public List<Map<String,Object>> viewMakeProject(HttpSession session){
		ModelAndView mav = new ModelAndView();
		List<Map<String,Object>> myList = auditService.getAuditMyList(session.getAttribute("id").toString());
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		

		mav.addObject("myList",myList);
		mav.addObject("menuList", menuList);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("productStatus",DbStatus.productStatus);
		mav.addObject("auditStatus",DbStatus.auditStatus);
		mav.addObject("template","makeList");
		mav.addObject("page","list");
		mav.setViewName(DIR+"userMypage");
		return mav;
	}
	//펀딩리스트
	@RequestMapping("/fundingList")
	public ModelAndView myFundingList(HttpSession session){
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		List<Map<String,Object>> orderList = orderService.getOrderMyList(Integer.parseInt(session.getValue("id").toString()));

		mav.addObject("menuList", menuList);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("template","fundingList");
		mav.addObject("page","list");
		mav.addObject("orderList",orderList);
		mav.addObject("productStatus",DbStatus.productStatus);
		mav.addObject("orderState",DbStatus.orderState);
		mav.setViewName(DIR+"userMypage");
		return mav;
	}
	//펀딩리스트
	@RequestMapping("/fundingDetail")
	public ModelAndView myFundingDetail(HttpSession session,@RequestParam int id) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException{
		ModelAndView mav = new ModelAndView();
		AES256 aes = new AES256();
		
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		OrderVO ovo = orderService.getOrderDetail(id);
		ovo.setReceiver_tel(aes.decrypt(ovo.getReceiver_tel()));
		List<OrderDetailVO> odvoList = orderDetailService.getOrderDetailList(id);
		ProductVO pvo = proSer.getProductDetail(ovo.getProduct_id());
		String cate = cateSer.getCateTitle(id);
		MakerInfoVO mavo = makerSer.getMakerDetailAudit(pvo.getAudit_id());
		mav.addObject("menuList", menuList);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("template","fundingList");
		mav.addObject("page","detail");
		mav.addObject("ovo",ovo);
		mav.addObject("odvoList",odvoList);
		mav.addObject("pvo",pvo);
		mav.addObject("mavo",mavo);
		mav.addObject("cate",cate);
		mav.addObject("productStatus",DbStatus.productStatus);
		mav.addObject("orderState",DbStatus.orderState);
		mav.setViewName(DIR+"userMypage");
		return mav;
	}
	//구메확정
	@RequestMapping("/orderEnd")
	@ResponseBody
	public Map<String,Object> orderEnd(@RequestParam int id){
		Map<String,Object> map = new HashMap<>();
		String msg ="배송완료 처리가 실패하였습니다.";
		boolean status =false;
		OrderVO ovo = new OrderVO();
		ovo.setId(id);
		ovo.setState("5");
		int result = orderService.updateOrderStatus(ovo);
		if(result>0) {
			msg ="배송완료 처리되었습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		
		return map;
	}
}
package com.krahs123.wathis.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public class FileControl {
	private Map<String, List<String>> ext;
	private List<String> extImgList;
	private List<String> extList;
	public FileControl() {
		ext = new HashMap<>();
		extList=new ArrayList<>();
		extImgList = new ArrayList<>();
		//이미지 확장자 리스트
		extImgList.add("jpg");
		extImgList.add("jpeg");
		extImgList.add("png");
		extImgList.add("gif");
		ext.put("img", extImgList);
		//일반 확장자 리스트
		extList.clear();
		extList.add("jpg");
		extList.add("jpeg");
		extList.add("png");
		extList.add("gif");
		extList.add("xls");
		extList.add("doc");
		extList.add("pptx");
		extList.add("xlsx");
		extList.add("docx");
		extList.add("zip");
		extList.add("txt");
		extList.add("pdf");
		ext.put("nomal", extList);
		
	}
	//file => 파일 가져옴
	//request => 루트 경로 구할라고 씀
	//fileType => 파일 확장자 비교를 위해 씀(img,nomal)
	//option => 파일이름(filename),업로드 폴더이름(uploadDIR) 설정(없으면 날짜기준으로 입력)
	public Map<String,Object> fileUpload(MultipartFile file,String fileType,Map<String,Object> option){
		//날짜 구하기(파일이름 넣게)
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");//폴더이름
		//파일이름

		String fileName =System.currentTimeMillis()+""+(int)(Math.random()*1000);//파일이름, 확장자는 나중에
		String uploadDIR  ="/upload/"+sdf.format(date)+"/";//업로드할 폴더 경로
		if(option!=null) {
			//옵션이 있을때 파일이름 , 폴더이름 체크함
			fileName =(option.get("filename")!=null&&option.get("filename").equals(""))?option.get("filename").toString(): fileName;//파일이름, 확장자는 나중에
			uploadDIR =(option.get("uploadDIR")!=null&&!option.get("uploadDIR").equals(""))?"/"+option.get("uploadDIR").toString()+"/":uploadDIR;//업로드할 폴더 경로
		}
		String fileExt;//파일 확장자에 쓸꺼임
		List<String> extListType = this.ext.get(fileType);//파일 확장자 비교를 위해 씀
		
		//static 경로를 구하기 위해 사용함
		DefaultResourceLoader drl = new DefaultResourceLoader();
		Resource resource=drl.getResource("classpath:/static");
		//Resource resource=drl.getResource("file:src/main/resources/static");//파일 경로가 안보이는 곳으로 가서 임시로 변경..
		String rootPath="";

		Map<String,Object> result = new HashMap<>();// return으로 넘겨줄거
		if(!file.isEmpty()) {
			//파일이 있을때
			String fileOrgName = file.getOriginalFilename();//파일 원본이름
			fileExt = FilenameUtils.getExtension(fileOrgName).toLowerCase();
			if(extList.indexOf(fileExt)<0) {
				//허용되지 않은 확장자일때
				result.put("status",false);
				result.put("msg","허용되지 않은 파일 확장자가 등록 되었습니다.\\n(허용된 확장자 : "+String.join(" , ",extListType)+" )");
			}else {
				//허용된 확장자일때
				fileName+="."+fileExt;
				try {
					rootPath = resource.getFile().getAbsolutePath();
					File uploadFile = new File(rootPath+uploadDIR+fileName);//저장할경로에 수정된 파일이름으로 파일을 만듬
					if(!uploadFile.getParentFile().exists()) {
						//저장할 폴더가 없을 경우 폴더 생성함
						uploadFile.getParentFile().mkdirs();
					}
					file.transferTo(uploadFile);//받은 파일을 업로드 할 파일에 올려줌
					result.put("status",true);
					result.put("msg","파일이 정상적으로 업로드 되었습니다.");
					result.put("fileOrgName",fileOrgName);//파일 원본이름
					result.put("uploadDIR",uploadDIR);// 파일 저장된 폴더 경로
					result.put("fileName",fileName);// 저장된 파일의 이름
					
				} catch (Exception e) {
					// 파일 처리시 에러났을때 처리
					result.put("status",false);
					result.put("msg","시스템 오류 입니다. 관리자에게 문의해 주세요.(err03 : fileErr)");
				}
				
			}
			
		}else {
			//파일이 없을때
			result.put("status",false);
			result.put("msg", "업로드된 파일이 없습니다.");
		}
		
		return result;
		/*
		 status -> 파일 등록 되면 true
		 msg -> 파일 오류 생성
		 fileOrgName -> 파일 원본이름
		 uploadDIR -> 파일이 저장된 폴더 경로
		 fileName -> 저장된 파일 이름
		 */
	}
	public Map<String,Object> fileDelete(String dirUrl,String fileName,Map<String,Object> option){
		//dirUrl => 파일경로를 가져옴
		//fileName => 파일 이름을 가져옴
		//request => 루트 경로 구할라고 씀
		//option => 파일삭제 옵션(dirDel)
		Map<String,Object> map = new HashMap<>();
		DefaultResourceLoader drl = new DefaultResourceLoader();
		Resource resource=drl.getResource("classpath:/static");
		//Resource resource=drl.getResource("file:src/main/resources/static");//파일 경로가 안보이는 곳으로 가서 임시로 변경..
		String rootPath="";
		String msg="파일 삭제에 실패하였습니다.";
		boolean status=false;
		try {
			rootPath = resource.getFile().getAbsolutePath();
			File file = new File(rootPath+"/"+dirUrl+fileName);
			if(file.exists()) {
				if(file.delete()) {
					msg="파일이 삭제되었습니다";
					status=true;
				}
			}else {
				msg="존재하지 않는 파일입니다. 파일경로를 확인해 주세요";
				
			}
			if(option!=null) {
				//옵션이 있을때
				if(option.get("dirDel")!=null&&(boolean)option.get("dirDel")) {
					// 폴더 삭제가 같이되야 할경우
					File dir = new File(rootPath+"/"+dirUrl);
					if(dir.exists()) {
						dir.delete();
					}
				}
				
			}
		}catch (Exception e) {
			// TODO: handle exception
			msg="시스템 오류 입니다. 관리자에게 문의해 주세요.(err03 : fileErr)";
			status=false;
		}
		map.put("msg",msg);
		map.put("status",status);
		return map;
		/*
		 status -> 파일 삭제 되면 true
		 msg -> 파일 오류 생성
		*/
	}
	
	public List<String> fileList(String dirPath) {
		File path = new File(dirPath);
		File[] fileList = path.listFiles();
		List<String> fileString=new ArrayList<>();
		if(fileList!=null&&fileList.length > 0){
		    for(int i=0; i < fileList.length; i++){
		    	fileString.add(fileList[i].getName()) ;
		    }
		}
		return fileString;
	}
}

package com.krahs123.wathis.controller.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/test/")
public class CsvTestController {
	
	final String DIR = "/test/";

	
	//csv 다운로드 테스트(화면
	@RequestMapping(value="csvDownTest",method = RequestMethod.GET)
	public String csvDownTestView() {
		return DIR+"csvDownTest";
	}
	//csv 업로드 테스트(화면
	@RequestMapping(value="csvTest",method = RequestMethod.GET)
	public String csvTestView() {
		return DIR+"csvUploadTest";
	}
	//csv 업로드 테스트(동작
	@RequestMapping(value = "csvTest",method = RequestMethod.POST)
	@ResponseBody
	public String csvTestUpload(@RequestPart MultipartFile files,HttpServletRequest request){
		
		StringBuilder sb = new StringBuilder();// 출력할 거
		String line = null;// csv 파일을 한줄씩 받아 처리하기위한것
		File convFile = new File("temp.csv");// 파일을 임시저장하고 불러와서 사용할라고 씀
		List<String> titleList = new ArrayList<>();
		try {
			//파일을 임시 저장하고 불러옴
		    convFile.createNewFile(); 
		    FileOutputStream fos = new FileOutputStream(convFile); 
		    fos.write(files.getBytes());
		    fos.close();
			//파일을 임시 저장하고 불러옴 끝
		    BufferedReader br = new BufferedReader(new FileReader(convFile));
		    int cnt = 0;
			while((line=br.readLine())!=null) {
				String[] arr = line.split(",");//파일 한줄을 ,를 기준으로 배열로 자름
				if(cnt==0) {
					cnt++;
					for(String title:arr) {
						titleList.add(title);
					}
					continue;
				}
				for(int i=0;i<arr.length;i++) {
					sb.append(titleList.get(i)+" : "+arr[i]+"<br/>");
				}
				sb.append("---------------------------------<br>");
				
			}
			br.close();
		} catch (Exception e) {
			//파일업로드등 실패하면 에러메시지 불러옴
			sb.append(e);
		} finally {
			//사용한 파일을 삭제
			convFile.delete();
		}
		
		
		return sb.toString();
	}
}

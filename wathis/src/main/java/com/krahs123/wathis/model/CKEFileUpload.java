package com.krahs123.wathis.model;

import org.springframework.web.multipart.MultipartFile;

public class CKEFileUpload {
	//cke 파일 업로드용 건들지 마요.....
	private String attachPath;
	private String Filename;
	private MultipartFile upload;
	private String CKEditorFuncNum;
	public String getAttachPath() {
		return attachPath;
	}
	public void setAttachPath(String attachPath) {
		this.attachPath = attachPath;
	}
	public String getFilename() {
		return Filename;
	}
	public void setFilename(String filename) {
		Filename = filename;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	public String getCKEditorFuncNum() {
		return CKEditorFuncNum;
	}
	public void setCKEditorFuncNum(String cKEditorFuncNum) {
		CKEditorFuncNum = cKEditorFuncNum;
	}
}

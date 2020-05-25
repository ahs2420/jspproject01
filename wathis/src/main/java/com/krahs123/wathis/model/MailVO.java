package com.krahs123.wathis.model;

public class MailVO {
	 
	private String username; //네이버 아이디 
	private String password; //네이버 비밀번호
	
	private String recipient; //받는 사람의 메일주소를 입력해주세요. 
	private String subject; //메일 제목 입력해주세요. 
	private String content; //메일 내용 입력해주세요. 
	
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}

package com.krahs123.wathis.model;

public class JSONResult {

	//멤버변수
	private String result; //success, fail
	private String message; //alert 메세지
	private Object data;
	
	//생성자 1. 클래스 이름과 동일 2. return 3. 반환형x 4.default 생성자 - 매개변수 x -생략가능
	public JSONResult(String result,String message, Object data) {
		this.result = result;
		this.message = message;
		this.data = data;
	}
	
	public static JSONResult success(Object data) {
		return new JSONResult("success", null , data); //생성자 사용
	}
	//get

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	
	
	
	
}

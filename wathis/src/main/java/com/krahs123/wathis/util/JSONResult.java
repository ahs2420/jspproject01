package com.krahs123.wathis.util;


public class JSONResult {//멤버변수
	private String result;//success,fail
	private String message;//alert메시지
	private Object data;
	//생성자
	public JSONResult(String result,String message,Object data) {
		this.result = result;
		this.message = message;
		this.data = data;
	}
	//getter

	public String getResult() {
		return result;
	}

	public String getMessage() {
		return message;
	}

	public Object getData() {
		return data;
	}
	
	//method
	public static JSONResult success(Object data) {
		return new JSONResult("success",null,data);
	}

}

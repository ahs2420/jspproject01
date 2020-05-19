package com.krahs123.wathis.util;

public class CutString {
	//문자열 자르기 위한 JAVA
	/*
	 	str -> 자를 글자
	 	length-> 자를 글자수
	 	sizePerLetter -> 몇바이트로 자를 건가
	 	ex) 2byte(한글),1byte(숫자,영문) 
	 */
	public String strCutByte(String str,int length,int sizePerLetter) {
		
		int asc=0;
		int tempSize=0;
		int returnLength=0;
		
		if(str==null||str.equals("")||str.equals("null")) {
			str="";
		}else {
			str=str.replaceAll("(&nbsp|\n|\r|\t)", " ");//공백문자 제거
			str=str.replaceAll("&amp;", "&");//공백문자 제거
			int orgLength = str.length();// 원본 문자 길이
			for (int i = 0; i < orgLength; i++) {
				asc=(int)str.charAt(i);
				if(asc>127) {
					//아스키 코드 크기보다 크면
					if(length>=tempSize+sizePerLetter) {
						tempSize+=sizePerLetter;
						returnLength++;
					}else {
						//우리가 적은 길이 만큼 잘렸으면 ...붙여서 return 보내줌
						return str.substring(0,returnLength)+"....";
					}
				}else {
					//아스키 코드이면
					if(length>tempSize) {
						tempSize++;
						returnLength++;
					}
				}
			}
		}
		return str.substring(0,returnLength);
	}
}

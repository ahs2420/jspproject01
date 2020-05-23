package com.krahs123.wathis.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class ShaEncrypt {
	public static String sha256(String str){
		//sha256 암호화
		StringBuffer sb = new StringBuffer(); 
		try{
			MessageDigest sh = MessageDigest.getInstance("SHA-256"); 
			sh.update(str.getBytes()); 
			byte byteData[] = sh.digest();
			for(int i = 0 ; i < byteData.length ; i++){
				sb.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
			}
			sb.toString();
		}catch(NoSuchAlgorithmException e){
			e.printStackTrace(); 
			sb = null; 
		}
		return sb.toString();
	}
	

}

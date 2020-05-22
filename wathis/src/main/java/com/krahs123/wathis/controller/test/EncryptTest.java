package com.krahs123.wathis.controller.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.krahs123.wathis.util.AES256;
import com.krahs123.wathis.util.ShaEncrypt;

@Controller
@RequestMapping("/encrypt")
public class EncryptTest {

	@RequestMapping("")
	@ResponseBody
	public String showEncrypt(@RequestParam String str) {
		String result="원문 : "+str+"<br/>";
		try {
			AES256 aes = new AES256();
			String aesTest = aes.encrypt(str);
			String aesDecrypt = aes.decrypt(aesTest);
			String shaTest = ShaEncrypt.sha256(str);	
			result += "aesTest:"+aesTest+"<br/>";	
			result += "shaTest:"+shaTest+"<br/>";
			result += "aesTest복호화:"+aesDecrypt+"<br/>";	
		}catch(Exception e) {
			result=e.toString();
		}
		return result;
	}

}

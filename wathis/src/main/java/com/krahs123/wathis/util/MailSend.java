package com.krahs123.wathis.util;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import com.krahs123.wathis.model.MailVO;


public class MailSend {

	public void mailSender(HttpServletRequest request, MailVO mvo) throws AddressException, MessagingException, NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException { 
		// 네이버일 경우 smtp.naver.com 을 입력합니다. 
		// Google일 경우 smtp.gmail.com 을 입력합니다. 
		//String host = "smtp.naver.com";
		AES256 aes = new AES256();
		String host = "smtp.gmail.com";
		String username = "krahs213@gmail.com"; //네이버 아이디를 입력해주세요. @nave.com은 입력하지 마시구요. 
		String password = aes.decrypt("mZsx/oq1Hj6GqJaQEBv4A4L2t6tAg3+U3lo4ZkMkuds="); //네이버 이메일 비밀번호를 입력해주세요. 
		int port=465; //포트번호 
		
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 
		// SMTP 서버 정보 설정
		props.put("mail.smtp.host", host); 
		props.put("mail.smtp.port", port); 
		props.put("mail.smtp.auth", "true"); 
		props.put("mail.smtp.ssl.enable", "true"); 
		props.put("mail.smtp.ssl.trust", host); 
		//Session 생성 
		Authenticator auth = new Authenticator() {
			String un=username; 
			String pw=password; 
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
				return new javax.mail.PasswordAuthentication(un, pw); 
			} 
		};
		Session session = Session.getInstance(props,auth); 
		session.setDebug(true); 
		//for debug 
		Message mimeMessage = new MimeMessage(session); //MimeMessage 생성
		mimeMessage.setFrom(new InternetAddress(username)); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(mvo.getRecipient())); //수신자셋팅 
		//.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음 
		mimeMessage.setSubject(mvo.getSubject()); //제목셋팅 
		mimeMessage.setContent(mvo.getContent(), "text/html;charset=UTF-8");//내용셋팅 (HTML 로 보냄 + utf-8컨버팅)
		Transport.send(mimeMessage); //javax.mail.Transport.send() 이용 
	}
}

package com.krahs123.wathis.controller.test;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.krahs123.wathis.model.MailVO;
import com.krahs123.wathis.util.MailSend;


@Controller
@RequestMapping("/mail")
public class MailTest {
	@RequestMapping(value="/mailSend" , method = RequestMethod.GET)
	public String sendMailView() {
		return "/test/mailTest";
	}
	

	@RequestMapping(value="/mailSend" , method = RequestMethod.POST)
	@ResponseBody
	public String sendMailDo(HttpServletRequest request,@ModelAttribute MailVO mvo) {
		MailSend ms = new MailSend();
		try {
			ms.mailSender(request,mvo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return mvo.getContent()+mvo.getRecipient()+mvo.getSubject();
	}
}

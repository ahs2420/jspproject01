package com.krahs123.wathis.service.mail;

import java.util.List;

import com.krahs123.wathis.model.MailVO;

public interface MailService {

	//메일 리스트
	public List<MailVO> getMailList(String searchOpt,String words,int pageStart,int pagePer);
	//메일 갯수
	public int getMailCount(String searchOpt,String words);
	
	//메일 상세
	public MailVO getMailDetail(int id);
	
	//메일 등록
	public int setMail(MailVO mvo);
	
	//메일 삭제
	public int deleteMail(int id);
}

package com.krahs123.wathis.service.mail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.MailVO;
import com.krahs123.wathis.repository.mail.MailDAO;
@Service
public class MailServiceImpl implements MailService{
	@Autowired
	MailDAO mailDAO;
	@Override
	public List<MailVO> getMailList(String searchOpt, String words, int pageStart, int pagePer) {
		// TODO Auto-generated method stub
		return mailDAO.getMailList(searchOpt, words, pageStart, pagePer);
	}

	@Override
	public int getMailCount(String searchOpt, String words) {
		// TODO Auto-generated method stub
		return mailDAO.getMailCount(searchOpt, words);
	}

	@Override
	public MailVO getMailDetail(int id) {
		// TODO Auto-generated method stub
		return mailDAO.getMailDetail(id);
	}

	@Override
	public int setMail(MailVO mvo) {
		// TODO Auto-generated method stub
		return mailDAO.setMail(mvo);
	}

	@Override
	public int deleteMail(int id) {
		// TODO Auto-generated method stub
		return mailDAO.deleteMail(id);
	}

}

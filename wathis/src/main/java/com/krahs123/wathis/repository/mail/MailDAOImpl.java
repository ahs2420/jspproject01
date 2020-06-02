package com.krahs123.wathis.repository.mail;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.MailVO;

@Repository
public class MailDAOImpl implements MailDAO {
	final String NAMESPACE = "mappers.MailMapper";
	@Autowired
	SqlSession sql;
	@Override
	public List<MailVO> getMailList(String searchOpt, String words, int pageStart, int pagePer) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("pageStart", pageStart);
		map.put("pagePer", pagePer);
		return sql.selectList(NAMESPACE+".getMailList",map);
	}

	@Override
	public int getMailCount( String searchOpt, String words) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne(NAMESPACE+".getMailCount",map);
	}

	@Override
	public MailVO getMailDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE+".getMailDetail",id);
	}

	@Override
	public int setMail(MailVO mvo) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACE+".setMail",mvo);
	}

	@Override
	public int deleteMail(int id) {
		// TODO Auto-generated method stub
		return sql.delete(NAMESPACE+".deleteMail",id);
	}

}

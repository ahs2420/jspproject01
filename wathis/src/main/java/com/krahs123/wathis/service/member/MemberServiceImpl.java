package com.krahs123.wathis.service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.repository.member.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDAO memberdao;

	@Override
	public int setMember(MemberVO mvo) {
		// TODO Auto-generated method stub
		return memberdao.setMember(mvo);
	}

	@Override
	public MemberVO getlogin(String uid, String upassword, HttpSession session) {
		MemberVO result = memberdao.getlogin(uid,upassword);
		
		if( result != null) {
			session.setAttribute("id", result.getId());
			session.setAttribute("uid", result.getUid());
			session.setAttribute("uname", result.getUname());
			session.setAttribute("uimg", 
					(result.getUimg()!=null&&result.getUimg().equals(""))?result.getUimg():"/images/icon/file-upload-icon.png"
			);
			session.setAttribute("ugroup", result.getUgroup());
		}
		return result;
	}

	@Override
	public void getlogOut(HttpSession session) {
		// TODO Auto-generated method stub
		session.invalidate();
	}
}

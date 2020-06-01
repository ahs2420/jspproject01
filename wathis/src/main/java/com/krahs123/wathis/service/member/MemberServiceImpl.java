package com.krahs123.wathis.service.member;

import java.util.List;

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
		MemberVO result = memberdao.getlogin( uid, upassword);
		
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

	@Override
	public List<MemberVO> getMemberList(String searchOpt, String words, int pageStart, int pagePer) {
		// TODO Auto-generated method stub
		return memberdao.getMemberList(searchOpt, words, pageStart, pagePer);
	}

	@Override
	public int getMemberCount(String searchOpt, String words) {
		// TODO Auto-generated method stub
		return memberdao.getMemberCount(searchOpt, words);
	}

	@Override
	public MemberVO getMemberDetail(int id) {
		// TODO Auto-generated method stub
		return memberdao.getMemberDetail(id);
	}

	@Override
	public int updateMember(MemberVO mvo) {
		// TODO Auto-generated method stub
		return memberdao.updateMember(mvo);
	}

	@Override
	public int updateAuthMember(int id, int ugroup) {
		// TODO Auto-generated method stub
		return memberdao.updateAuthMember(id, ugroup);
	}

	@Override
	public int deleteMember(int id) {
		// TODO Auto-generated method stub
		return memberdao.deleteMember(id);
	}
}

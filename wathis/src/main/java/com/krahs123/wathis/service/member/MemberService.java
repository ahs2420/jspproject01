package com.krahs123.wathis.service.member;

import javax.servlet.http.HttpSession;

import com.krahs123.wathis.model.MemberVO;

public interface MemberService {
	//회원가입
	public int setMember(MemberVO mvo);
	
	//회원 로그인
	public MemberVO getlogin(String uid, String upassword,HttpSession session);

}

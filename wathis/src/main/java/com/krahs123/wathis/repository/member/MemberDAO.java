package com.krahs123.wathis.repository.member;

import com.krahs123.wathis.model.MemberVO;

public interface MemberDAO {
	//회원가입
	public int setMember(MemberVO mvo);
	
	//회원 로그인
	public MemberVO getlogin(String uid, String upassword);
}

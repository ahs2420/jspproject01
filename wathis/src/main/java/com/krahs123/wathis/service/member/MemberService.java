package com.krahs123.wathis.service.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.krahs123.wathis.model.MemberVO;

public interface MemberService {
	//회원가입
	public int setMember(MemberVO mvo);

	//회원 로그인
	public MemberVO getlogin(String uid, String upassword,HttpSession session);
	
	//회원 로그아웃
	public void getlogOut(HttpSession session);
	//회원리스트
	public List<MemberVO> getMemberList(String searchOpt,String words,int pageStart,int pagePer);
	//회원수
	public int getMemberCount(String searchOpt,String words);
	//회원 상세
	public MemberVO getMemberDetail(int id);
	//회원 수정
	public int updateMember(MemberVO mvo);
	//회원권한 수정
	public int updateAuthMember(int id,int ugroup);
	//회원삭제
	public int deleteMember(int id);
	//아이디 찾기
	public String getMemberFindID(String uname,String uemail);
	//비밀번호 찾기
	public int getMemberFindPWD(String uid,String uemail);
	//비밀번호 수정
	public int updatePwdMember(int id,String upassword);
	//회원 아이디 확인
	public int getIdPwdChk(String uid,String upassword);
	
	//화원수정 아이디 중복 체크
	public int updateNameMember(int uid);

	//회원 수정 전화번호
	public int updateMemberTel(int id , String utel);

}

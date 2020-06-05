package com.krahs123.wathis.service.member;

import java.util.List;

import com.krahs123.wathis.model.MemberAddrVO;

public interface MemberAddrService {
	//주소 리스트 - 멤버 아이디로 검색
	public List<MemberAddrVO> getAddrList(int member_id);
	//주소 갯수 - 멤버 아이디로 검색
	public int getAddrCount(int member_id);
	//주소 상세
	public MemberAddrVO getAddrDetail(int id);
	
	//기본 주소 상세 - 멤버 아이디로 검색
	public MemberAddrVO getAddrFirst(int member_id);
	
	//주소 등록
	public int setAddr(MemberAddrVO mvo);
	
	//주소 수정
	public int updateAddr(MemberAddrVO mvo);
	
	//주소 삭제
	public int deleteAddr(int id);
}

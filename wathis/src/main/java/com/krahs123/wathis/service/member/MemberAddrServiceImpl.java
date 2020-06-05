package com.krahs123.wathis.service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.MemberAddrVO;
import com.krahs123.wathis.repository.member.MemberAddrDAO;

@Service
public class MemberAddrServiceImpl implements MemberAddrService{
	@Autowired
	MemberAddrDAO memberaddrdao;

	@Override
	public List<MemberAddrVO> getAddrList(int member_id) {
		// TODO Auto-generated method stub
		return memberaddrdao.getAddrList(member_id);
	}

	@Override
	public int getAddrCount(int member_id) {
		// TODO Auto-generated method stub
		return memberaddrdao.getAddrCount(member_id);
	}

	@Override
	public MemberAddrVO getAddrDetail(int id) {
		// TODO Auto-generated method stub
		return memberaddrdao.getAddrDetail(id);
	}

	@Override
	public MemberAddrVO getAddrFirst(int member_id) {
		// TODO Auto-generated method stub
		return memberaddrdao.getAddrFirst(member_id);
	}

	@Override
	public int setAddr(MemberAddrVO mvo) {
		// TODO Auto-generated method stub
		return memberaddrdao.setAddr(mvo);
	}

	@Override
	public int updateAddr(MemberAddrVO mvo) {
		// TODO Auto-generated method stub
		return memberaddrdao.updateAddr(mvo);
	}

	@Override
	public int deleteAddr(int id) {
		// TODO Auto-generated method stub
		return memberaddrdao.deleteAddr(id);
	}
	
}

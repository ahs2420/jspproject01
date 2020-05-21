package com.krahs123.wathis.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.member.MemberAddrDAO;

@Service
public class MemberAddrServiceImpl implements MemberAddrService{
	@Autowired
	MemberAddrDAO memberaddrdao;
	
}

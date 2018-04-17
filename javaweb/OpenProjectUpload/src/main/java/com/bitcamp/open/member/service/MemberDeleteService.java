package com.bitcamp.open.member.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bitcamp.open.member.dao.LoginDao;
import com.bitcamp.open.member.model.Member;

public class MemberDeleteService {

	// @Autowired
	// private MemberMyBatisDao dao;
	// private MemberDao dao;

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private LoginDao dao;

	public int memberDelete(String member_id) {
		
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		
		int resultCnt = dao.memberDelete(member_id);
		
		return resultCnt;
	}	

}

package com.dogshop.dog.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.dogshop.dog.vo.MemberVO;

public class MemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	// 로그인
	public int getLogin(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.login", mVO);
	}
	
	
}

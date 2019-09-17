package com.decolab.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.decolab.domain.AccountVO;
import com.decolab.domain.Member2VO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace="com.decolab.mapper.adminMapper";
	
	@Override
	public List<Member2VO> manage() throws Exception{
		return session.selectList(namespace+".manage");
	}
}

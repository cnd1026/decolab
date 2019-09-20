package com.decolab.persistence;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.decolab.domain.GoodsVO;
import com.decolab.domain.Member2VO;

@Repository
public class Member2DAOImpl implements Member2DAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.decolab.mapper.Member2Mapper";
	
	//일반회원가입
	@Override
	public void insertMember(Member2VO vo2) throws Exception {
		sqlSession.insert(namespace+".insertMember", vo2);
	}
	//판매자회원가입
	@Override
	public void insertSMember(Member2VO vo2) throws Exception {
		sqlSession.insert(namespace+".insertSMember", vo2);
	}	
	//로그인
	@Override
	public boolean login2(Member2VO vo2) throws Exception {
		String name = sqlSession.selectOne(namespace+".login2",vo2);
		return (name == null) ? false : true;
	}
	//정보
	@Override
	public Member2VO viewMember2(Member2VO vo2) throws Exception {
		return sqlSession.selectOne(namespace+".viewMember2",vo2);
	}
	//로그아웃
	public void logout(HttpSession session) {
	}
	//정보
	@Override
	public void modifyMember(Member2VO vo2) throws Exception {
		 sqlSession.update(namespace+".modifyMember",vo2);
	}
	//프로필사진
	@Override
	public void addAttach(String fullName) throws Exception {
		sqlSession.insert(namespace+".addAttach",fullName);		
	}
	@Override
	public void updateSMember(String fullName) throws Exception{
		 sqlSession.update(namespace+".updateSMember",fullName);
	}
	@Override
	public void updateaddAttach(Member2VO vo2) throws Exception{
		 sqlSession.update(namespace+".updateaddAttach",vo2);
	}
	//프사조회
	@Override
	public List<String> getAttach(String mem_id) throws Exception {
		return sqlSession.selectList(namespace+".getAttach", mem_id);
	}
	@Override
	public Member2VO read(String mem_id) throws Exception {
		return sqlSession.selectOne(namespace+".read", mem_id);
	}
	@Override
	public List<GoodsVO> dog(String mem_name) throws Exception {
		return sqlSession.selectList(namespace+".dog", mem_name);
	}
}

package com.decolab.persistence;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.decolab.domain.Member2VO;

public interface Member2DAO {
	//일반가입
	public void insertMember(Member2VO vo2) throws Exception;
	//판매자가입
	public void insertSMember(Member2VO vo2) throws Exception;
	//로그인
	public boolean login2(Member2VO vo2) throws Exception;
	//정보
	public Member2VO viewMember2(Member2VO vo2) throws Exception;
	//로그아웃
	public void logout(HttpSession session);	
	
	//수정
	public void modifyMember(Member2VO vo2) throws Exception;
	//프로필사진
	public void addAttach(String fullName) throws Exception;
	public void updateSMember(String fullName) throws Exception;
	public void updateaddAttach(Member2VO vo2) throws Exception;
	//정보조회
	public List<String> getAttach(String mem_id) throws Exception;
	public Member2VO read(String mem_id) throws Exception;
}

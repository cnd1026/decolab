package com.decolab.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.decolab.domain.GoodsVO;
import com.decolab.domain.Member2VO;
import com.decolab.persistence.Member2DAO;

@Repository
public class Member2ServiceImpl implements Member2Service {
	@Inject
	private Member2DAO dao;
	
	//일반회원
	@Override
	public void insertMember(Member2VO vo2) throws Exception{
		dao.insertMember(vo2);
	}
	//판매자회원
		@Transactional
		@Override
		public void insertSMember(Member2VO vo2) throws Exception{
			dao.insertSMember(vo2);
			
			String[] files = vo2.getFiles();

			if(files == null) { return; }

			for(String fullName : files) {
				dao.addAttach(fullName);
				dao.updateSMember(fullName);
			}
			dao.updateaddAttach(vo2);
		}
	//로그인
	@Override
	public boolean login2(Member2VO vo2, HttpSession session) throws Exception {
		boolean result = dao.login2(vo2);
		if(result) {
			Member2VO vo3 = viewMember2(vo2);
			session.setAttribute("mem_id", vo3.getMem_id());
			session.setAttribute("mem_name", vo3.getMem_name());
			session.setAttribute("mem_level", vo3.getMem_level());
		}
		return result;
	}
	//회원정보
	@Override
	public Member2VO viewMember2(Member2VO vo2) throws Exception {
		return dao.viewMember2(vo2);
	}
	//로그아웃
	@Override
	public void logout(HttpSession session) {
		
		session.invalidate();
	}
	//수정
	public void modifyMember(Member2VO vo2) throws Exception {
		dao.modifyMember(vo2);
	}
	//프사조회
	@Override
	public List<String> getAttach(String mem_id) throws Exception {
		return dao.getAttach(mem_id);
	}
	@Override
	public Member2VO read(String mem_id) throws Exception {
		return dao.read(mem_id);
	}
	
	//견적
	@Override
	public List<GoodsVO> dog(String mem_name) throws Exception {
		return dao.dog(mem_name);
	}
}


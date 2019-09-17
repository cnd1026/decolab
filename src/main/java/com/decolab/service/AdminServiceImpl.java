package com.decolab.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.decolab.domain.Member2VO;
import com.decolab.persistence.AdminDAO;

@Service("AdminService")
public class AdminServiceImpl implements AdminService{
	@Inject
	private AdminDAO dao;
	
	@Override
	public List<Member2VO> manage() throws Exception{
		return dao.manage();
	}
}

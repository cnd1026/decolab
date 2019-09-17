package com.decolab.persistence;

import java.util.List;

import com.decolab.domain.Member2VO;

public interface AdminDAO {
	//회원조회
	public List<Member2VO> manage() throws Exception;
}

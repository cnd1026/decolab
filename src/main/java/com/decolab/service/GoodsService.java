package com.decolab.service;

import java.util.List;

import com.decolab.domain.Criteria;
import com.decolab.domain.GoodsVO;
import com.decolab.domain.SearchCriteria;

public interface GoodsService {

	public void regist(GoodsVO goods) throws Exception;
	public GoodsVO read(Integer goods_no) throws Exception;
	public void modify(GoodsVO goods) throws Exception;
	public void remove(Integer goods_no) throws Exception;
	public List<GoodsVO> listAll() throws Exception;
	public List<GoodsVO> listAll2() throws Exception;
	public List<GoodsVO> listAll3() throws Exception;
	public List<GoodsVO> listAll4() throws Exception;
	public List<GoodsVO> listAll5() throws Exception;
	public List<GoodsVO> myList(String mem_name) throws Exception;
	public List<GoodsVO> listCriteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
	public List<GoodsVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	
	
}

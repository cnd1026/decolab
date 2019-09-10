package com.decolab.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.decolab.domain.Criteria;
import com.decolab.domain.GoodsVO;
import com.decolab.domain.SearchCriteria;

public interface GoodsDAO {

	public void create(GoodsVO vo) throws Exception;
	public GoodsVO read(Integer goods_no) throws Exception;
	public void update(GoodsVO vo) throws Exception;
	public void delete(Integer goods_no) throws Exception;
	public List<GoodsVO> listAll() throws Exception;
	public List<GoodsVO> listAll2() throws Exception;
	public List<GoodsVO> listAll3() throws Exception;
	public List<GoodsVO> listAll4() throws Exception;
	public List<GoodsVO> listAll5() throws Exception;
	public List<GoodsVO> myList(String mem_name) throws Exception;
	public List<GoodsVO> listPage(int page) throws Exception;
	public List<GoodsVO> listCriteria(Criteria cri) throws Exception;
	public int countPaging(Criteria cri) throws Exception;
	public List<GoodsVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public void addAttach(String fullName) throws Exception;
	
    
 

	
	
}

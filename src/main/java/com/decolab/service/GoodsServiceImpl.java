package com.decolab.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.decolab.domain.Criteria;
import com.decolab.domain.GoodsVO;
import com.decolab.domain.SearchCriteria;
import com.decolab.persistence.GoodsDAO;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Inject
	private GoodsDAO dao;
	
	@Transactional
	@Override
	public void regist(GoodsVO goods) throws Exception	{
		dao.create(goods);
		
		String[] files = goods.getFiles();
		if(files == null)	{ return; }
		for(String fullName : files)	{
			dao.addAttach(fullName);
			dao.updateGoods(fullName);
		}
		dao.updategoodsAttach(goods);
	}

	//트랜젝션의 격리 수준을 활용한다.
	//다른 연결이 커밋하지 않은 데이트는 볼 수 없도록 한다.
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public GoodsVO read(Integer goods_no) throws Exception {
	//	dao.updateViewCnt(goods_no);
		return dao.read(goods_no);
	}

	@Override
	public void modify(GoodsVO goods) throws Exception {
		dao.update(goods);		
	}

	@Transactional
	@Override
	public void remove(Integer goods_no) throws Exception {
		dao.delete(goods_no);
	}

	@Override
	public List<GoodsVO> listAll() throws Exception {
		return dao.listAll();
	}
	//진행상황용
	@Override
	public List<GoodsVO> listAll2() throws Exception {
		return dao.listAll2();
	}
	
	@Override
	public List<GoodsVO> listAll3() throws Exception {
		return dao.listAll3();
	}
	
	@Override
	public List<GoodsVO> listAll4() throws Exception {
		return dao.listAll4();
	}
	
	@Override
	public List<GoodsVO> listAll5() throws Exception {
		return dao.listAll5();
	}
	
	@Override
	public List<GoodsVO> myList(String mem_name) throws Exception {
		//System.out.println("아이디 점검");
		//System.out.println(mem_id);
		return dao.myList(mem_name);
		
	}
	
	@Override
	public List<GoodsVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}
	
	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}
	
	@Override
	public List<GoodsVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}
	
	@Override
	public List<String> getAttach(Integer goods_no) throws Exception {
		return dao.getAttach(goods_no);
	}
	
	
		
}

package com.decolab.persistence;

import java.util.List;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.decolab.domain.Criteria;
import com.decolab.domain.GoodsVO;
import com.decolab.domain.SearchCriteria;

@Repository // GoodsDAO 를 스프링 구조에 인식 시키겠다라고 선언
public class GoodsDAOImpl implements GoodsDAO{

	@Autowired
	private SqlSession session;

	private Object vo;
	
	private static String namespace="com.decolab.mapper.GoodsMapper";

	@Override
	public void create(GoodsVO vo) throws Exception {
		session.insert(namespace+".create",vo);		
	}

	@Override
	public GoodsVO read(Integer goods_no) throws Exception {
		return session.selectOne(namespace+".readPage",goods_no);
	}

	@Override
	public void update(GoodsVO vo) throws Exception {
		session.update(namespace+".update",vo);		
	}

	@Override
	public void delete(Integer goods_no) throws Exception {
		session.delete(namespace+".delete",goods_no);		
	}

	@Override
	public List<GoodsVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}
	
	@Override
	public List<GoodsVO> listAll2() throws Exception {
		return session.selectList(namespace+".listAll2");
	}
	
	@Override
	public List<GoodsVO> listAll3() throws Exception {
		return session.selectList(namespace+".listAll3");
	}
	
	@Override
	public List<GoodsVO> listAll4() throws Exception {
		return session.selectList(namespace+".listAll4");
	}
	
	@Override
	public List<GoodsVO> listAll5() throws Exception {
		return session.selectList(namespace+".listAll5");
	}
	
	@Override
	public List<GoodsVO> myList(String mem_id) throws Exception {
		//System.out.println("여기는 다오 여기는 다오");
		//System.out.println(mem_id);
		return session.selectList(namespace+".listAll5", mem_id);
	}
	
	@Override
	public List<GoodsVO> listPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		return session.selectList(namespace+".listPage",page);
	}

	@Override
	public List<GoodsVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace+".listCriteria", cri);
	}
	
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}
	
	@Override
	public List<GoodsVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}
	
	@Override
	public void addAttach(String fullName) throws Exception {
		session.insert(namespace+".addAttach",fullName);		
	}
	

	

}

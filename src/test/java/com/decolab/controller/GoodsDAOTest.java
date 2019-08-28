package com.decolab.controller;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.decolab.domain.GoodsVO;
import com.decolab.persistence.GoodsDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class GoodsDAOTest {

	@Inject
	private GoodsDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(GoodsDAOTest.class);
	
	@Test
	public void testCreate() throws Exception {

		GoodsVO goods = new GoodsVO();		

		goods.setWriter("김덕배");
		goods.setSubject("거실장");
		goods.setSize("60*80*160");
		goods.setMaterial("원목_참나무");
		goods.setColor("기본");
		goods.setDesign_file("good.jpg");
		goods.setWantday("190930");
		goods.setComment("시간은 넉넉해도 좋으니 이쁘게 해주세요");
		goods.setService("배송 및 설치");
		goods.setZip_code("123123");
		goods.setAddr1("울산");
		goods.setAddr2("울주군");
		goods.setAddr3("온산읍");
		goods.setAddr4("대신리");
		
		dao.create(goods);
	}
	
	@Test //읽기
	public void testRead() throws Exception {
		logger.info(dao.read(2).toString());
	}
	
	@Test //수정
	public void testUpdate() throws Exception{	

		GoodsVO goods = new GoodsVO();		

		goods.setGoods_no(2);
		goods.setWriter("장거한");
		goods.setSubject("책상");
		goods.setSize("60*60*60");
		goods.setMaterial("대리석");
		goods.setColor("천연색");
		goods.setDesign_file("chair.jpg");
		goods.setWantday("191212");
		goods.setComment("기깔나게 해주세요");
		goods.setService("설치 및 배송");
		goods.setZip_code("123");
		goods.setAddr1("123");
		goods.setAddr2("222");
		goods.setAddr3("333");
		goods.setAddr4("333");
		dao.update(goods);
	}
	
	@Test //삭제
	public void testDelete() throws Exception{
		dao.delete(2);
	}
	
	@Test
	public void testListPage() throws Exception {
		int page = 1;

		List<GoodsVO> list = dao.listPage(page);

		for (GoodsVO goodsVO : list) {
			logger.info(goodsVO.getGoods_no() + ":" + goodsVO.getSubject());
		}
	}
}
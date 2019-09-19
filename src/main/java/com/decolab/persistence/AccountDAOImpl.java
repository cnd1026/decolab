package com.decolab.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDAOImpl implements AccountDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace="com.decolab.mapper.accountMapper";
	
	@Override
	public String sales() throws Exception{
		return session.selectOne(namespace+".sales");
	}
	@Override
	public int budget() throws Exception{
		return session.selectOne(namespace+".budget");
	}
	@Override
	//선택날짜매출
	public String choicesales(String datepicker) throws Exception{
		return session.selectOne(namespace+".choicesales",datepicker);
	}
	//선택년월별매출
	@Override
	public String Jan(String year) throws Exception {
	
		return session.selectOne(namespace+".Jan",year);
	}
	@Override
	public String Feb(String year) throws Exception {
		
		return session.selectOne(namespace+".Feb",year);
	}
	@Override
	public String Mar(String year) throws Exception {
		
		return session.selectOne(namespace+".Mar",year);
	}
	@Override
	public String Apr(String year) throws Exception {
		
		return session.selectOne(namespace+".Apr",year);
	}
	@Override
	public String May(String year) throws Exception {
		
		return session.selectOne(namespace+".May",year);
	}
	@Override
	public String Jun(String year) throws Exception {
		
		return session.selectOne(namespace+".Jun",year);
	}
	@Override
	public String Jul(String year) throws Exception {
		
		return session.selectOne(namespace+".Jul",year);
	}
	@Override
	public String Aug(String year) throws Exception {
		
		return session.selectOne(namespace+".Aug",year);
	}
	@Override
	public String Sep(String year) throws Exception {
		
		return session.selectOne(namespace+".Sep",year);
	}
	@Override
	public String Oct(String year) throws Exception {
		
		return session.selectOne(namespace+".Oct",year);
	}
	@Override
	public String Nov(String year) throws Exception {
		
		return session.selectOne(namespace+".Nov",year);
	}
	@Override
	public String Dec(String year) throws Exception {
		
		return session.selectOne(namespace+".Dec",year);
	}
}

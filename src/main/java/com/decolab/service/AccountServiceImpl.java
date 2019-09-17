package com.decolab.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.decolab.persistence.AccountDAO;

@Service("AccountService")
public class AccountServiceImpl implements AccountService{
	@Inject
	private AccountDAO dao;
	
	@Override
	public String sales() throws Exception{
		return dao.sales();
	}
	@Override
	public int budget() throws Exception{
		return dao.budget();
	}
	@Override
	//월별날짜매출
	public String monthsales(String datepicker) throws Exception{
		return dao.monthsales(datepicker);
	}
	@Override
	//선택날짜매출
	public String choicesales(String datepicker) throws Exception{
		return dao.choicesales(datepicker);
	}
	
	//선택년월별매출
	@Override
	public String Jan(String year) throws Exception {
		
		return dao.Jan(year);
	}
	@Override
	public String Feb(String year) throws Exception {
		
		return dao.Feb(year);
	}
	@Override
	public String Mar(String year) throws Exception {
		
		return dao.Mar(year);
	}
	@Override
	public String Apr(String year) throws Exception {
		
		return dao.Apr(year);
	}
	@Override
	public String May(String year) throws Exception {
		
		return dao.May(year);
	}
	@Override
	public String Jun(String year) throws Exception {
		
		return dao.Jun(year);
	}
	@Override
	public String Jul(String year) throws Exception {
		
		return dao.Jul(year);
	}
	@Override
	public String Aug(String year) throws Exception {
		
		return dao.Aug(year);
	}
	@Override
	public String Sep(String year) throws Exception {
		
		return dao.Sep(year);
	}
	@Override
	public String Oct(String year) throws Exception {
		
		return dao.Oct(year);
	}
	@Override
	public String Nov(String year) throws Exception {
		
		return dao.Nov(year);
	}
	@Override
	public String Dec(String year) throws Exception {
	
		return dao.Dec(year);
	}
}

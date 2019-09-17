package com.decolab.persistence;

public interface AccountDAO {
	//매출
	public String sales() throws Exception;
	//이익
	public int budget() throws Exception;
	//월별매출
	public String monthsales(String datepicker) throws Exception;
	//선택날짜매출
	public String choicesales(String datepicker) throws Exception;
	//선택년월별매출
	public String Jan(String year) throws Exception;
	public String Feb(String year) throws Exception;
	public String Mar(String year) throws Exception;
	public String Apr(String year) throws Exception;
	public String May(String year) throws Exception;
	public String Jun(String year) throws Exception;
	public String Jul(String year) throws Exception;
	public String Aug(String year) throws Exception;
	public String Sep(String year) throws Exception;
	public String Oct(String year) throws Exception;
	public String Nov(String year) throws Exception;
	public String Dec(String year) throws Exception;
}

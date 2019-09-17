package com.decolab.domain;

import java.util.Date;

public class AccountVO {

	private int account_no;
	private String account_name;
	private int account_price;
	private Date account_date;
	private String writer;
	
	public int getAccount_no() {
		return account_no;
	}
	public void setAccount_no(int account_no) {
		this.account_no = account_no;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	
	public int getAccount_price() {
		return account_price;
	}
	public void setAccount_price(int account_price) {
		this.account_price = account_price;
	}
	public Date getAccount_date() {
		return account_date;
	}
	public void setAccount_date(Date account_date) {
		this.account_date = account_date;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
}

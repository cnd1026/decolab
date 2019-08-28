package com.decolab.domain;

import java.util.Date;

public class CommentVO {

	private int comment_no;
	private int goods_no;
	private String comment_id;
	private String writer;
	private String comment_name;
	private String comment_price;
	private String comment_content;
	private Date comment_date;
	//private long commentCount;
	
	public int getComment_no() {
		return comment_no;
	}
	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getComment_name() {
		return comment_name;
	}
	public void setComment_name(String comment_name) {
		this.comment_name = comment_name;
	}
	public String getComment_price() {
		return comment_price;
	}
	public void setComment_price(String comment_price) {
		this.comment_price = comment_price;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Date getComment_date() {
		return comment_date;
	}
	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}	
	public int getGoods_no() {
		return goods_no;
	}
	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}
	@Override
	public String toString() {
		return "CommentVO [comment_no=" + comment_no + ", goods_no=" + goods_no + ", comment_id=" + comment_id
				+ ", writer=" +writer + ", comment_name=" + comment_name + ", comment_price=" + comment_price + ", comment_content="
				+ comment_content + ", comment_date=" + comment_date + "]";
	}	

	/*
	 * public long getCommentCount() { return commentCount; } public void
	 * setCommentCount(long commentCount) { this.commentCount = commentCount; }
	 */
	
	
	
}

package com.decolab.domain;

import java.util.Arrays;
import java.util.Date;

public class GoodsVO {

	private int goods_no;
	private String writer;
	private String subject;
	private String size;
	private String material;
	private String color;
	private String design_file;
	private Date date;
	private String wantday;
	private String comment;
	private String service;
	private String zip_code;
	private String addr1;
	private String addr2;
	private String addr3;
	private String addr4;
	private String processing;
	private String comment_name;
	private String[] files;
	
	public int getGoods_no() {
		return goods_no;
	}
	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getDesign_file() {
		return design_file;
	}
	public void setDesign_file(String design_file) {
		this.design_file = design_file;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getWantday() {
		return wantday;
	}
	public void setWantday(String wantday) {
		this.wantday = wantday;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	public String getAddr4() {
		return addr4;
	}
	public void setAddr4(String addr4) {
		this.addr4 = addr4;
	}	
	
	public String getProcessing() {
		return processing;
	}
	public void setProcessing(String processing) {
		this.processing = processing;
	}
	
	public String getComment_name() {
		return comment_name;
	}
	public void setComment_name(String comment_name) {
		this.comment_name = comment_name;
	}
	
	
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
	}
	@Override
	public String toString() {
		return "GoodsVO [goods_no=" + goods_no + ", writer=" + writer + ", subject=" + subject + ", size=" + size + ", material="
				+ material + ", color=" + color + ", design_file=" + design_file + ", date=" + date + ", wantday=" + wantday + ", comment="
				+ comment + ", service=" + service +", zip_code=" + zip_code +", addr1=" + addr1 +", addr2=" + addr2 +", addr3=" + addr3 +","
				+ "addr4=" + addr4 + ", processing=" + processing

				+ "]";
	}	
}

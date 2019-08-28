package com.decolab.domain;

public class Member2VO {

	private String mem_id;
	private String mem_password;
	private String mem_name;
	private String mem_mail;
	private String mem_code; //사업자등록번호
	private String mem_zip_code; //집주소
	private String mem_addr1;
	private String mem_addr2;
	private String mem_addr3;
	private String mem_addr4;
	private String mem_level;
	private String mem_date; //생일
	private String mem_photo; //프로필사진
	private String mem_comment;//경력
	private String[] files;
	private String fileName;
	private String regdate;

	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_password() {
		return mem_password;
	}
	public void setMem_password(String mem_password) {
		this.mem_password = mem_password;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_mail() {
		return mem_mail;
	}
	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}
	public String getMem_code() {
		return mem_code;
	}
	public void setMem_code(String mem_code) {
		this.mem_code = mem_code;
	}
	public String getMem_zip_code() {
		return mem_zip_code;
	}
	public void setMem_zip_code(String mem_zip_code) {
		this.mem_zip_code = mem_zip_code;
	}
	public String getMem_addr1() {
		return mem_addr1;
	}
	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}
	public String getMem_addr2() {
		return mem_addr2;
	}
	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}
	public String getMem_addr3() {
		return mem_addr3;
	}
	public void setMem_addr3(String mem_addr3) {
		this.mem_addr3 = mem_addr3;
	}
	public String getMem_addr4() {
		return mem_addr4;
	}
	public void setMem_addr4(String mem_addr4) {
		this.mem_addr4 = mem_addr4;
	}
	public String getMem_level() {
		return mem_level;
	}
	public void setMem_level(String mem_level) {
		this.mem_level = mem_level;
	}
	public String getMem_date() {
		return mem_date;
	}
	public void setMem_date(String mem_date) {
		this.mem_date = mem_date;
	}
	public String getMem_photo() {
		return mem_photo;
	}
	public void setMem_photo(String mem_photo) {
		this.mem_photo = mem_photo;
	}
	public String getMem_comment() {
		return mem_comment;
	}
	public void setMem_comment(String mem_comment) {
		this.mem_comment = mem_comment;
	}
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
	}
	public static String mem_id() {
		// TODO 자동 생성된 메소드 스텁
		return null;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	
}

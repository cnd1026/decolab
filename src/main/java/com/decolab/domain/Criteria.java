package com.decolab.domain;

public class Criteria {

	private int page;
	private int perPageNum;
	
	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
	}
	
	public void setPage(int page) {
		//추가
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public int getPage() {
		return page;
	}
	
	public void setPerPageNum(int perPageNum) {
		//추가
		if(perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPerPageNum() {
		return perPageNum;
	}
	
	//sql 구문에서 limit 시작 위치 지정
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}

	@Override
	public String toString() {
		return "[page = "+page+" , perPageNum = "+perPageNum+"]";
	}
	
}

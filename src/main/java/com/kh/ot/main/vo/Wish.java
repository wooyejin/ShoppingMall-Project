package com.kh.ot.main.vo;

public class Wish {

	private String prdtNo;
	private int memNo;
	
	public Wish() {
		super();
	}

	public Wish(String prdtNo, int memNo) {
		super();
		this.prdtNo = prdtNo;
		this.memNo = memNo;
	}

	public String getPrdtNo() {
		return prdtNo;
	}

	public void setPrdtNo(String prdtNo) {
		this.prdtNo = prdtNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
}

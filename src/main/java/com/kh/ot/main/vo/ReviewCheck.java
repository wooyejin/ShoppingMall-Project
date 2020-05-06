package com.kh.ot.main.vo;

public class ReviewCheck {

	private int memNo;
	private int prdtNo;
	
	public ReviewCheck() {
		super();
	}

	public ReviewCheck(int memNo, int prdtNo) {
		super();
		this.memNo = memNo;
		this.prdtNo = prdtNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getPrdtNo() {
		return prdtNo;
	}

	public void setPrdtNo(int prdtNo) {
		this.prdtNo = prdtNo;
	}

	@Override
	public String toString() {
		return "ReviewCheck [memNo=" + memNo + ", prdtNo=" + prdtNo + "]";
	}
	
	
}

package com.kh.ot.review.vo;

public class Review_count {
	private int prdt_code; // 상품코드
	private int count; // 상품코드별 갯수
	
	public Review_count() {}

	public Review_count(int prdt_code, int count) {
		super();
		this.prdt_code = prdt_code;
		this.count = count;
	}

	public int getPrdt_code() {
		return prdt_code;
	}

	public void setPrdt_code(int prdt_code) {
		this.prdt_code = prdt_code;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Review_count [prdt_code=" + prdt_code + ", count=" + count + "]";
	}
	
	
}

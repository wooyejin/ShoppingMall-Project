package com.kh.ot.cart.vo;

import java.sql.Date;

public class Pay {

	private int ord_no; //주문번호
	private int memNo; //회원번호
	private int sumprice; //결제금액
	private String pay_category; //결제수단
	private Date pay_date; //결제일
	private int pay_usedcp; //사용쿠폰번호
	private int pay_point; //사용적립금
	private String pay_yn; // 결제완료여부
	private int prdt_no; // 상품번호(문자열)
	private String week;//최근 일주일
	private String month;//최근 달
	public Pay() {
	}

	
	public Pay(int ord_no, int memNo, int sumprice, String pay_category, Date pay_date, int pay_usedcp, int pay_point,
			String pay_yn, int prdt_no) {
		super();
		this.ord_no = ord_no;
		this.memNo = memNo;
		this.sumprice = sumprice;
		this.pay_category = pay_category;
		this.pay_date = pay_date;
		this.pay_usedcp = pay_usedcp;
		this.pay_point = pay_point;
		this.pay_yn = pay_yn;
		this.prdt_no = prdt_no;
	}
	
	
	public String getMonth() {
		return month;
	}


	public void setMonth(String month) {
		this.month = month;
	}


	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public int getOrd_no() {
		return ord_no;
	}


	public void setOrd_no(int ord_no) {
		this.ord_no = ord_no;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public int getSumprice() {
		return sumprice;
	}


	public void setSumprice(int sumprice) {
		this.sumprice = sumprice;
	}


	public String getPay_category() {
		return pay_category;
	}


	public void setPay_category(String pay_category) {
		this.pay_category = pay_category;
	}


	public Date getPay_date() {
		return pay_date;
	}


	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}


	public int getPay_usedcp() {
		return pay_usedcp;
	}


	public void setPay_usedcp(int pay_usedcp) {
		this.pay_usedcp = pay_usedcp;
	}


	public int getPay_point() {
		return pay_point;
	}


	public void setPay_point(int pay_point) {
		this.pay_point = pay_point;
	}


	public String getPay_yn() {
		return pay_yn;
	}


	public void setPay_yn(String pay_yn) {
		this.pay_yn = pay_yn;
	}


	public int getPrdt_no() {
		return prdt_no;
	}


	public void setPrdt_no(int prdt_no) {
		this.prdt_no = prdt_no;
	}


	@Override
	public String toString() {
		return "Pay [ord_no=" + ord_no + ", memNo=" + memNo + ", sumprice=" + sumprice + ", pay_category="
				+ pay_category + ", pay_date=" + pay_date + ", pay_usedcp=" + pay_usedcp + ", pay_point=" + pay_point
				+ ", pay_yn=" + pay_yn + ", prdt_no=" + prdt_no + ", week=" + week + "]";
	}


	
}

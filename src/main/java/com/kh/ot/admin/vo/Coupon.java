package com.kh.ot.admin.vo;

import java.sql.Date;

public class Coupon {

	private int cpNo;
	private String cpName;
	private int cpDiscount;
	private Date cpDate;
	private int cpmem_no;
	
	public Coupon() {
	}

	public Coupon(int cpNo, String cpName, int cpDiscount, Date cpDate) {
		super();
		this.cpNo = cpNo;
		this.cpName = cpName;
		this.cpDiscount = cpDiscount;
		this.cpDate = cpDate;
	}

	public int getCpNo() {
		return cpNo;
	}

	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}

	public String getCpName() {
		return cpName;
	}

	public void setCpName(String cpName) {
		this.cpName = cpName;
	}

	public int getCpDiscount() {
		return cpDiscount;
	}

	public void setCpDiscount(int cpDiscount) {
		this.cpDiscount = cpDiscount;
	}

	public Date getCpDate() {
		return cpDate;
	}

	public void setCpDate(Date cpDate) {
		this.cpDate = cpDate;
	}
	
	

	public int getCpmem_no() {
		return cpmem_no;
	}

	public void setCpmem_no(int cpmem_no) {
		this.cpmem_no = cpmem_no;
	}

	@Override
	public String toString() {
		return "Coupon [cpNo=" + cpNo + ", cpName=" + cpName + ", cpDiscount=" + cpDiscount + ", cpDate=" + cpDate
				+ ", cpmem_no=" + cpmem_no + "]";
	}

	
	


	

	

	
}

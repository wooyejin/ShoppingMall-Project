package com.kh.ot.admin.vo;

import java.sql.Date;

public class Point {
	private int ptno;
	private int memno;
	private int ordno;
	private Date pt_date;
	private int pt_price;			// 적립금
	private String pt_content;		// 내용
	private Date pt_duedate;		// 사용가능한 예정일
	private String pt_part;			// 구분
	
	public Point() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Point(int ptno, int memno, int ordno, Date pt_date, int pt_price, String pt_content, Date pt_duedate,
			String pt_part) {
		super();
		this.ptno = ptno;
		this.memno = memno;
		this.ordno = ordno;
		this.pt_date = pt_date;
		this.pt_price = pt_price;
		this.pt_content = pt_content;
		this.pt_duedate = pt_duedate;
		this.pt_part = pt_part;
	}

	public int getPtno() {
		return ptno;
	}

	public void setPtno(int ptno) {
		this.ptno = ptno;
	}

	public int getMemno() {
		return memno;
	}

	public void setMemno(int memno) {
		this.memno = memno;
	}

	public int getOrdno() {
		return ordno;
	}

	public void setOrdno(int ordno) {
		this.ordno = ordno;
	}

	public Date getPt_date() {
		return pt_date;
	}

	public void setPt_date(Date pt_date) {
		this.pt_date = pt_date;
	}

	public int getPt_price() {
		return pt_price;
	}

	public void setPt_price(int pt_price) {
		this.pt_price = pt_price;
	}

	public String getPt_content() {
		return pt_content;
	}

	public void setPt_content(String pt_content) {
		this.pt_content = pt_content;
	}

	public Date getPt_duedate() {
		return pt_duedate;
	}

	public void setPt_duedate(Date pt_duedate) {
		this.pt_duedate = pt_duedate;
	}

	public String getPt_part() {
		return pt_part;
	}

	public void setPt_part(String pt_part) {
		this.pt_part = pt_part;
	}

	@Override
	public String toString() {
		return "Point [ptno=" + ptno + ", memno=" + memno + ", ordno=" + ordno + ", pt_date=" + pt_date + ", pt_price="
				+ pt_price + ", pt_content=" + pt_content + ", pt_duedate=" + pt_duedate + ", pt_part=" + pt_part + "]";
	}

	
	
	
}

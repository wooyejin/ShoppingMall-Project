package com.kh.ot.mypage.vo;

import java.sql.Date;

import com.kh.ot.common.Pagination;

public class OrdSearch extends Pagination {

	private int memno;
	private Date start_date;
	private Date end_date;
	private String ord_status;

	public OrdSearch() { }

	public OrdSearch(int memno, Date start_date, Date end_date, String ord_status) {
		super();
		this.memno = memno;
		this.start_date = start_date;
		this.end_date = end_date;
		this.ord_status = ord_status;
	}

	public int getMemno() {
		return memno;
	}

	public void setMemno(int memno) {
		this.memno = memno;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getOrd_status() {
		return ord_status;
	}

	public void setOrd_status(String ord_status) {
		this.ord_status = ord_status;
	}

	@Override
	public String toString() {
		return "OrdSearch [memno=" + memno + ", start_date=" + start_date + ", end_date=" + end_date + ", ord_status="
				+ ord_status + "]";
	}



}

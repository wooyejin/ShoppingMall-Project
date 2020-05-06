package com.kh.ot.mypage.vo;

import com.kh.ot.common.Pagination;

public class ReviewSearch extends Pagination{
	private int memno;
	private int memCode;
	private String rvInfo;
	private String search;
	
	public ReviewSearch() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReviewSearch(int memno, int memCode, String rvInfo, String search) {
		super();
		this.memno = memno;
		this.memCode = memCode;
		this.rvInfo = rvInfo;
		this.search = search;
	}

	public int getMemno() {
		return memno;
	}

	public void setMemno(int memno) {
		this.memno = memno;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public String getRvInfo() {
		return rvInfo;
	}

	public void setRvInfo(String rvInfo) {
		this.rvInfo = rvInfo;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	@Override
	public String toString() {
		return "ReviewSearch [memno=" + memno + ", memCode=" + memCode + ", rvInfo=" + rvInfo + ", search=" + search
				+ "]";
	}

}

	
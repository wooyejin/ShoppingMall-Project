package com.kh.ot.main.vo;

public class MainupCategory {

	private int upNo;
	private String upName;
	private String upUsing;
	
	public MainupCategory() {
	}

	public MainupCategory(int upNo, String upName, String upUsing) {
		super();
		this.upNo = upNo;
		this.upName = upName;
		this.upUsing = upUsing;
	}

	public int getUpNo() {
		return upNo;
	}

	public void setUpNo(int upNo) {
		this.upNo = upNo;
	}

	public String getUpName() {
		return upName;
	}

	public void setUpName(String upName) {
		this.upName = upName;
	}

	public String getUpUsing() {
		return upUsing;
	}

	public void setUpUsing(String upUsing) {
		this.upUsing = upUsing;
	}

	@Override
	public String toString() {
		return "upCategory [upNo=" + upNo + ", upName=" + upName + ", upUsing=" + upUsing + "]";
	}
	
	
	
	
}

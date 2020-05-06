package com.kh.ot.admin.vo;

public class PrdtConnect {
	
	private int selectNo;
	private int connect_no1;
	private int connect_no2;
	private int connect_no3;
	private int connect_no4;
	private int connect_no5;
	private int connect_no6;
	private int connect_no7;
	private int connect_no8;
	public PrdtConnect() {}
	public PrdtConnect(int selectNo, int connect_no1, int connect_no2, int connect_no3, int connect_no4, int connect_no5,
			int connect_no6, int connect_no7, int connect_no8) {
		super();
		this.selectNo = selectNo;
		this.connect_no1 = connect_no1;
		this.connect_no2 = connect_no2;
		this.connect_no3 = connect_no3;
		this.connect_no4 = connect_no4;
		this.connect_no5 = connect_no5;
		this.connect_no6 = connect_no6;
		this.connect_no7 = connect_no7;
		this.connect_no8 = connect_no8;
	}
	
	
	@Override
	public String toString() {
		return "PrdtConnect [selectNo=" + selectNo + ", connect_no1=" + connect_no1 + ", connect_no2=" + connect_no2
				+ ", connect_no3=" + connect_no3 + ", connect_no4=" + connect_no4 + ", connect_no5=" + connect_no5
				+ ", connect_no6=" + connect_no6 + ", connect_no7=" + connect_no7 + ", connect_no8=" + connect_no8
				+ "]";
	}
	public int getSelectNo() {
		return selectNo;
	}
	public void setSelectNo(int selectNo) {
		this.selectNo = selectNo;
	}
	public int getConnect_no1() {
		return connect_no1;
	}
	public void setConnect_no1(int connect_no1) {
		this.connect_no1 = connect_no1;
	}
	public int getConnect_no2() {
		return connect_no2;
	}
	public void setConnect_no2(int connect_no2) {
		this.connect_no2 = connect_no2;
	}
	public int getConnect_no3() {
		return connect_no3;
	}
	public void setConnect_no3(int connect_no3) {
		this.connect_no3 = connect_no3;
	}
	public int getConnect_no4() {
		return connect_no4;
	}
	public void setConnect_no4(int connect_no4) {
		this.connect_no4 = connect_no4;
	}
	public int getConnect_no5() {
		return connect_no5;
	}
	public void setConnect_no5(int connect_no5) {
		this.connect_no5 = connect_no5;
	}
	public int getConnect_no6() {
		return connect_no6;
	}
	public void setConnect_no6(int connect_no6) {
		this.connect_no6 = connect_no6;
	}
	public int getConnect_no7() {
		return connect_no7;
	}
	public void setConnect_no7(int connect_no7) {
		this.connect_no7 = connect_no7;
	}
	public int getConnect_no8() {
		return connect_no8;
	}
	public void setConnect_no8(int connect_no8) {
		this.connect_no8 = connect_no8;
	}
	
	
	
}

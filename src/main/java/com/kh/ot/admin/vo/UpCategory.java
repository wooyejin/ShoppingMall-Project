package com.kh.ot.admin.vo;

public class UpCategory {

	private int up_no;			//대분류 카테고리번호
	private String up_name;		//대분류 카테고리명
	private String up_using;	//사용여부
	private String up_date;		//등록일자
	public UpCategory() {}

	public UpCategory(int up_no, String up_name, String up_using, String up_date) {
		super();
		this.up_no = up_no;
		this.up_name = up_name;
		this.up_using = up_using;
		this.up_date = up_date;
	}

	public int getUp_no() {
		return up_no;
	}

	public void setUp_no(int up_no) {
		this.up_no = up_no;
	}

	public String getUp_name() {
		return up_name;
	}

	public void setUp_name(String up_name) {
		this.up_name = up_name;
	}

	public String getUp_using() {
		return up_using;
	}

	public void setUp_using(String up_using) {
		this.up_using = up_using;
	}

	public String getUp_date() {
		return up_date;
	}

	public void setUp_date(String up_date) {
		this.up_date = up_date;
	}

	@Override
	public String toString() {
		return "UpCategory [up_no=" + up_no + ", up_name=" + up_name + ", up_using=" + up_using + ", up_date=" + up_date
				+ "]";
	}
	
	
}

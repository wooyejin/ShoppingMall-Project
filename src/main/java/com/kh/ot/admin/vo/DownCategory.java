package com.kh.ot.admin.vo;

public class DownCategory {
	
	private int down_no;		//중분류 카테고리번호
	private int up_no;			//대분류 카테고리번호
	private String down_name;	//중분류 카테고리명
	private String down_using;	//사용여부
	private String down_date;	//등록일자
	public DownCategory() {}
	public DownCategory(int down_no, int up_no, String down_name, String down_using, String down_date,
			UpCategory sendata) {
		super();
		this.down_no = down_no;
		this.up_no = up_no;
		this.down_name = down_name;
		this.down_using = down_using;
		this.down_date = down_date;
	}
	public int getDown_no() {
		return down_no;
	}
	public void setDown_no(int down_no) {
		this.down_no = down_no;
	}
	public int getUp_no() {
		return up_no;
	}
	public void setUp_no(int up_no) {
		this.up_no = up_no;
	}
	public String getDown_name() {
		return down_name;
	}
	public void setDown_name(String down_name) {
		this.down_name = down_name;
	}
	public String getDown_using() {
		return down_using;
	}
	public void setDown_using(String down_using) {
		this.down_using = down_using;
	}
	public String getDown_date() {
		return down_date;
	}
	public void setDown_date(String down_date) {
		this.down_date = down_date;
	}
	
	@Override
	public String toString() {
		return "DownCategory [down_no=" + down_no + ", up_no=" + up_no + ", down_name=" + down_name + ", down_using="
				+ down_using + ", down_date=" + down_date + ", sendata=";
	}
	
	
	
}

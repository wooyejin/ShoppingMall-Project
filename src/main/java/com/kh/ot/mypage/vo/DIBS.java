package com.kh.ot.mypage.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class DIBS {
	private int dibsno;
	private int memno;
	private int prdt_no;
	private int dibs_count;				// 수량
	private String dibs_size;			// 사이즈
	private String dibs_color;			// 색상
	private String prdt_name;			// 제품명
	private int prdt_price;				// 가격
	private int dibs_price;				// 가격
	private int dibs_sumprice;			// 총합계
	private String path; 				// 이미지 경로
	private String image; 				// 이미지
	private Date dibs_date;
	private String prdt_size;
	private String prdt_color;	
	
	
	public DIBS() {
		super();
		// TODO Auto-generated constructor stub
	}


	public DIBS(int dibsno, int memno, int prdt_no, int dibs_count, String dibs_size, String dibs_color,
			String prdt_name, int prdt_price, int dibs_price, int dibs_sumprice, String path, String image,
			Date dibs_date, String prdt_size, String prdt_color) {
		super();
		this.dibsno = dibsno;
		this.memno = memno;
		this.prdt_no = prdt_no;
		this.dibs_count = dibs_count;
		this.dibs_size = dibs_size;
		this.dibs_color = dibs_color;
		this.prdt_name = prdt_name;
		this.prdt_price = prdt_price;
		this.dibs_price = dibs_price;
		this.dibs_sumprice = dibs_sumprice;
		this.path = path;
		this.image = image;
		this.dibs_date = dibs_date;
		this.prdt_size = prdt_size;
		this.prdt_color = prdt_color;
	}


	public int getDibsno() {
		return dibsno;
	}


	public void setDibsno(int dibsno) {
		this.dibsno = dibsno;
	}


	public int getMemno() {
		return memno;
	}


	public void setMemno(int memno) {
		this.memno = memno;
	}


	public int getPrdt_no() {
		return prdt_no;
	}


	public void setPrdt_no(int prdt_no) {
		this.prdt_no = prdt_no;
	}


	public int getDibs_count() {
		return dibs_count;
	}


	public void setDibs_count(int dibs_count) {
		this.dibs_count = dibs_count;
	}


	public String getDibs_size() {
		return dibs_size;
	}


	public void setDibs_size(String dibs_size) {
		this.dibs_size = dibs_size;
	}


	public String getDibs_color() {
		return dibs_color;
	}


	public void setDibs_color(String dibs_color) {
		this.dibs_color = dibs_color;
	}


	public String getPrdt_name() {
		return prdt_name;
	}


	public void setPrdt_name(String prdt_name) {
		this.prdt_name = prdt_name;
	}


	public int getPrdt_price() {
		return prdt_price;
	}


	public void setPrdt_price(int prdt_price) {
		this.prdt_price = prdt_price;
	}


	public int getDibs_price() {
		return dibs_price;
	}


	public void setDibs_price(int dibs_price) {
		this.dibs_price = dibs_price;
	}


	public int getDibs_sumprice() {
		return dibs_sumprice;
	}


	public void setDibs_sumprice(int dibs_sumprice) {
		this.dibs_sumprice = dibs_sumprice;
	}


	public String getPath() {
		return path;
	}


	public void setPath(String path) {
		this.path = path;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public Date getDibs_date() {
		return dibs_date;
	}


	public void setDibs_date(Date dibs_date) {
		this.dibs_date = dibs_date;
	}


	public String getPrdt_size() {
		return prdt_size;
	}


	public void setPrdt_size(String prdt_size) {
		this.prdt_size = prdt_size;
	}


	public String getPrdt_color() {
		return prdt_color;
	}


	public void setPrdt_color(String prdt_color) {
		this.prdt_color = prdt_color;
	}


	@Override
	public String toString() {
		return "DIBS [dibsno=" + dibsno + ", memno=" + memno + ", prdt_no=" + prdt_no + ", dibs_count=" + dibs_count
				+ ", dibs_size=" + dibs_size + ", dibs_color=" + dibs_color + ", prdt_name=" + prdt_name
				+ ", prdt_price=" + prdt_price + ", dibs_price=" + dibs_price + ", dibs_sumprice=" + dibs_sumprice
				+ ", path=" + path + ", image=" + image + ", dibs_date=" + dibs_date + ", prdt_size=" + prdt_size
				+ ", prdt_color=" + prdt_color + "]";
	}
	
}
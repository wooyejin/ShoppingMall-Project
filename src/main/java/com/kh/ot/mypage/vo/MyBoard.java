package com.kh.ot.mypage.vo;

import java.sql.Date;

public class MyBoard {
	private int memno;				// 회원번호
	private int qna_no;				// 게시글의 글번호
	private int b_cate_no;			// 카테고리 번호
	private String b_cate_name;		// 카테고리 종류
	private Date qna_date; 			// 작성일자
	private String qna_writer;		// 글쓴이
	private String qna_title;		// 글제목
	private String qna_secure;		// 비밀공개여부
	private String qna_chk; 		// 답변여부
	private String prdt_name;		// 상품이름
	
	
	public MyBoard() {}


	public MyBoard(int memno, int qna_no, int b_cate_no, String b_cate_name, Date qna_date, String qna_writer,
			String qna_title, String qna_secure, String qna_chk, String prdt_name) {
		super();
		this.memno = memno;
		this.qna_no = qna_no;
		this.b_cate_no = b_cate_no;
		this.b_cate_name = b_cate_name;
		this.qna_date = qna_date;
		this.qna_writer = qna_writer;
		this.qna_title = qna_title;
		this.qna_secure = qna_secure;
		this.qna_chk = qna_chk;
		this.prdt_name = prdt_name;
	}


	public int getMemno() {
		return memno;
	}


	public void setMemno(int memno) {
		this.memno = memno;
	}


	public int getQna_no() {
		return qna_no;
	}


	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}


	public int getB_cate_no() {
		return b_cate_no;
	}


	public void setB_cate_no(int b_cate_no) {
		this.b_cate_no = b_cate_no;
	}


	public String getB_cate_name() {
		return b_cate_name;
	}


	public void setB_cate_name(String b_cate_name) {
		this.b_cate_name = b_cate_name;
	}


	public Date getQna_date() {
		return qna_date;
	}


	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}


	public String getQna_writer() {
		return qna_writer;
	}


	public void setQna_writer(String qna_writer) {
		this.qna_writer = qna_writer;
	}


	public String getQna_title() {
		return qna_title;
	}


	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}


	public String getQna_secure() {
		return qna_secure;
	}


	public void setQna_secure(String qna_secure) {
		this.qna_secure = qna_secure;
	}


	public String getQna_chk() {
		return qna_chk;
	}


	public void setQna_chk(String qna_chk) {
		this.qna_chk = qna_chk;
	}


	public String getPrdt_name() {
		return prdt_name;
	}


	public void setPrdt_name(String prdt_name) {
		this.prdt_name = prdt_name;
	}


	@Override
	public String toString() {
		return "MyBoard [memno=" + memno + ", qna_no=" + qna_no + ", b_cate_no=" + b_cate_no + ", b_cate_name="
				+ b_cate_name + ", qna_date=" + qna_date + ", qna_writer=" + qna_writer + ", qna_title=" + qna_title
				+ ", qna_secure=" + qna_secure + ", qna_chk=" + qna_chk + ", prdt_name=" + prdt_name + "]";
	}

	

	


	
	
	
}

package com.kh.ot.board.vo;

import java.sql.Date;

public class Board {
	
	private int qna_no; // qna번호
	private int b_cate_no; // 보드테이블번호
	private int mem_no; // 회원번호
	private String content; // 내용
	private String qna_chk; // 답변여부
	private Date qna_date; // 등록일
	private String qna_writer; // 작성자
	private String qna_title; // 글제목
	private String originalFileName; // 첨부파일원래이름
	private String renameFileName; // 첨부파일변경이름
	private Date qna_modify_date; // 수정날짜
	private String qna_password; // 게시판 비밀번호
	private String qna_secure; // 비밀공개여부
	private int prdt_code; //상품코드
	private String prdt_name;//상품이름
	private String prdt_path; // 섬네일경로
	private String prdt_img; //상품 이미지
	
	
	
	public Board() {}


	
	public Board(int qna_no, int b_cate_no, int mem_no, String content, String qna_chk, Date qna_date,
			String qna_writer, String qna_title, String originalFileName, String renameFileName, Date qna_modify_date,
			String qna_password, String qna_secure, int prdt_code, String prdt_name, String prdt_path,
			String prdt_img) {
		this.qna_no = qna_no;
		this.b_cate_no = b_cate_no;
		this.mem_no = mem_no;
		this.content = content;
		this.qna_chk = qna_chk;
		this.qna_date = qna_date;
		this.qna_writer = qna_writer;
		this.qna_title = qna_title;
		this.originalFileName = originalFileName;
		this.renameFileName = renameFileName;
		this.qna_modify_date = qna_modify_date;
		this.qna_password = qna_password;
		this.qna_secure = qna_secure;
		this.prdt_code = prdt_code;
		this.prdt_name = prdt_name;
		this.prdt_path = prdt_path;
		this.prdt_img = prdt_img;
	}



	public String getPrdt_name() {
		return prdt_name;
	}

	public void setPrdt_name(String prdt_name) {
		this.prdt_name = prdt_name;
	}

	public String getPrdt_path() {
		return prdt_path;
	}

	public void setPrdt_path(String prdt_path) {
		this.prdt_path = prdt_path;
	}

	public String getPrdt_img() {
		return prdt_img;
	}

	public void setPrdt_img(String prdt_img) {
		this.prdt_img = prdt_img;
	}

	public int getPrdt_code() {
		return prdt_code;
	}

	public void setPrdt_code(int prdt_code) {
		this.prdt_code = prdt_code;
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

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getQna_chk() {
		return qna_chk;
	}

	public void setQna_chk(String qna_chk) {
		this.qna_chk = qna_chk;
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

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getRenameFileName() {
		return renameFileName;
	}

	public void setRenameFileName(String renameFileName) {
		this.renameFileName = renameFileName;
	}

	public Date getQna_modify_date() {
		return qna_modify_date;
	}

	public void setQna_modify_date(Date qna_modify_date) {
		this.qna_modify_date = qna_modify_date;
	}

	public String getQna_password() {
		return qna_password;
	}

	public void setQna_password(String qna_password) {
		this.qna_password = qna_password;
	}

	public String getQna_secure() {
		return qna_secure;
	}

	public void setQna_secure(String qna_secure) {
		this.qna_secure = qna_secure;
	}

	@Override
	public String toString() {
		return "Board [qna_no=" + qna_no + ", b_cate_no=" + b_cate_no + ", mem_no=" + mem_no + ", content=" + content
				+ ", qna_chk=" + qna_chk + ", qna_date=" + qna_date + ", qna_writer=" + qna_writer + ", qna_title="
				+ qna_title + ", originalFileName=" + originalFileName + ", renameFileName=" + renameFileName
				+ ", qna_modify_date=" + qna_modify_date + ", qna_password=" + qna_password + ", qna_secure="
				+ qna_secure + ", prdt_code=" + prdt_code + ", prdt_name=" + prdt_name + ", prdt_path=" + prdt_path
				+ ", prdt_img=" + prdt_img + "]";
	}

	

	


	

	

	
	
	
}

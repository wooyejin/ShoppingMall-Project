package com.kh.ot.review.vo;

import java.sql.Date;

public class ReviewReply {
	private int rvNo; // 리뷰번호
	private int memNo; // 회원번호
	private String rvComment; // 리뷰답글내용
	private Date rvDate; // 리뷰등록날짜
	private String rvReport; // 리뷰를 등록했는지여부
	private int rvcNo; // 리뷰 기본키
	private String memName; //멤버이름
	
	public ReviewReply() {}

	public ReviewReply(int rvNo, int memNo, String rvComment, Date rvDate, String rvReport) {
		super();
		this.rvNo = rvNo;
		this.memNo = memNo;
		this.rvComment = rvComment;
		this.rvDate = rvDate;
		this.rvReport = rvReport;
	}

	public int getRvNo() {
		return rvNo;
	}

	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getRvComment() {
		return rvComment;
	}

	public void setRvComment(String rvComment) {
		this.rvComment = rvComment;
	}

	public Date getRvDate() {
		return rvDate;
	}

	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}

	public String getRvReport() {
		return rvReport;
	}

	public void setRvReport(String rvReport) {
		this.rvReport = rvReport;
	}
	
	

	public int getRvcNo() {
		return rvcNo;
	}

	public void setRvcNo(int rvcNo) {
		this.rvcNo = rvcNo;
	}
	
	

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	@Override
	public String toString() {
		return "ReviewReply [rvNo=" + rvNo + ", memNo=" + memNo + ", rvComment=" + rvComment + ", rvDate=" + rvDate
				+ ", rvReport=" + rvReport + "]";
	}
	
	
}

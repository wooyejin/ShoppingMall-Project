package com.kh.ot.review.vo;

import java.sql.Date;

public class Review {
	private int rvNo; // 리뷰번호
	private int prdtCode; // 상품코드
	private int memCode; // 회원코드
	private int rvHeight; // 키
	private int rvWeight; // 몸무게
	private int ordDetailNo; // 주문 상세내역
	private String rvInfo; // 리뷰내용
	private String rvImage; // 리뷰이미지
	private int rvLike; // 좋아요
	private Date rvDate; // 리뷰등록날짜
	private String rvColor; // 선택한 컬러
	private String rvSize; // 선택한 사이즈 
	private String memName; // 회원이름
	private String prdtName; // 상품이름
	private String rvDate2; // 리뷰등록날짜2
	private String prdtImg; // 상품이미지
	private String prdtPath; // 상품경로 
	private int rvPoint; //리뷰평점
	private int memno;
	
	public Review() {}

	

	public Review(int rvNo, int prdtCode, int memCode, int rvHeight, int rvWeight, int ordDetailNo, String rvInfo,
			String rvImage, int rvLike, Date rvDate, String rvColor, String rvSize, String memName, String prdtName,
			String rvDate2, String prdtImg, String prdtPath, int rvPoint, int memno) {
		super();
		this.rvNo = rvNo;
		this.prdtCode = prdtCode;
		this.memCode = memCode;
		this.rvHeight = rvHeight;
		this.rvWeight = rvWeight;
		this.ordDetailNo = ordDetailNo;
		this.rvInfo = rvInfo;
		this.rvImage = rvImage;
		this.rvLike = rvLike;
		this.rvDate = rvDate;
		this.rvColor = rvColor;
		this.rvSize = rvSize;
		this.memName = memName;
		this.prdtName = prdtName;
		this.rvDate2 = rvDate2;
		this.prdtImg = prdtImg;
		this.prdtPath = prdtPath;
		this.rvPoint = rvPoint;
		this.memno = memno;
	}



	public int getRvPoint() {
		return rvPoint;
	}



	public void setRvPoint(int rvPoint) {
		this.rvPoint = rvPoint;
	}



	public int getRvNo() {
		return rvNo;
	}

	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}

	public int getPrdtCode() {
		return prdtCode;
	}

	public void setPrdtCode(int prdtCode) {
		this.prdtCode = prdtCode;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public int getRvHeight() {
		return rvHeight;
	}

	public void setRvHeight(int rvHeight) {
		this.rvHeight = rvHeight;
	}

	public int getRvWeight() {
		return rvWeight;
	}

	public void setRvWeight(int rvWeight) {
		this.rvWeight = rvWeight;
	}

	public int getOrdDetailNo() {
		return ordDetailNo;
	}

	public void setOrdDetailNo(int ordDetailNo) {
		this.ordDetailNo = ordDetailNo;
	}

	public String getRvInfo() {
		return rvInfo;
	}

	public void setRvInfo(String rvInfo) {
		this.rvInfo = rvInfo;
	}

	public String getRvImage() {
		return rvImage;
	}

	public void setRvImage(String rvImage) {
		this.rvImage = rvImage;
	}

	public int getRvLike() {
		return rvLike;
	}

	public void setRvLike(int rvLike) {
		this.rvLike = rvLike;
	}

	public Date getRvDate() {
		return rvDate;
	}

	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	

	public String getRvColor() {
		return rvColor;
	}

	public void setRvColor(String rvColor) {
		this.rvColor = rvColor;
	}

	public String getRvSize() {
		return rvSize;
	}

	public void setRvSize(String rvSize) {
		this.rvSize = rvSize;
	}
	
	

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}
	

	public String getPrdtName() {
		return prdtName;
	}

	public void setPrdtName(String prdtName) {
		this.prdtName = prdtName;
	}
	
	

	public String getRvDate2() {
		return rvDate2;
	}

	public void setRvDate2(String rvDate2) {
		this.rvDate2 = rvDate2;
	}
	
	
	

	public String getPrdtImg() {
		return prdtImg;
	}

	public void setPrdtImg(String prdtImg) {
		this.prdtImg = prdtImg;
	}
	
	

	public String getPrdtPath() {
		return prdtPath;
	}

	public void setPrdtPath(String prdtPath) {
		this.prdtPath = prdtPath;
	}

	public int getMemno() {
		return memno;
	}

	public void setMemno(int memno) {
		this.memno = memno;
	}



	@Override
	public String toString() {
		return "Review [rvNo=" + rvNo + ", prdtCode=" + prdtCode + ", memCode=" + memCode + ", rvHeight=" + rvHeight
				+ ", rvWeight=" + rvWeight + ", ordDetailNo=" + ordDetailNo + ", rvInfo=" + rvInfo + ", rvImage="
				+ rvImage + ", rvLike=" + rvLike + ", rvDate=" + rvDate + ", rvColor=" + rvColor + ", rvSize=" + rvSize
				+ ", memName=" + memName + ", prdtName=" + prdtName + ", rvDate2=" + rvDate2 + ", prdtImg=" + prdtImg
				+ ", prdtPath=" + prdtPath + ", rvPoint=" + rvPoint + ", memno=" + memno + "]";
	}
	
}
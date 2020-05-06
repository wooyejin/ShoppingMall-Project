package com.kh.ot.review.vo;

public class Review_Photo {
	private int rpNo; // 리뷰포토번호
	private int rvNo; // 리뷰번호
	private String rpPhoto; // 리뷰포토
	
	public Review_Photo() {}

	public Review_Photo(int rpNo, int rvNo, String rpPhoto) {
		super();
		this.rpNo = rpNo;
		this.rvNo = rvNo;
		this.rpPhoto = rpPhoto;
	}

	
	

	public int getRpNo() {
		return rpNo;
	}

	public void setRpNo(int rpNo) {
		this.rpNo = rpNo;
	}

	public int getRvNo() {
		return rvNo;
	}

	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}

	

	public String getRpPhoto() {
		return rpPhoto;
	}

	public void setRpPhoto(String rpPhoto) {
		this.rpPhoto = rpPhoto;
	}

	@Override
	public String toString() {
		return "Review_Photo [rpNo=" + rpNo + ", rvNo=" + rvNo + ", rpPhoto=" + rpPhoto + "]";
	}
	
	
}

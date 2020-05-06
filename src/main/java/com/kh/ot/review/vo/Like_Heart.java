package com.kh.ot.review.vo;

public class Like_Heart {
	private int likeNo; // 좋아요 번호
	private int rvNo; // 리뷰번호
	private int memNo; // 회원번호
	private String likeCheck; // 좋아요 눌렀는지 안눌렀는지 상태값
	
	public Like_Heart() {}

	public Like_Heart(int likeNo, int rvNo, int memNo, String likeCheck) {
		super();
		this.likeNo = likeNo;
		this.rvNo = rvNo;
		this.memNo = memNo;
		this.likeCheck = likeCheck;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
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

	public String getLikeCheck() {
		return likeCheck;
	}

	public void setLikeCheck(String likeCheck) {
		this.likeCheck = likeCheck;
	}

	@Override
	public String toString() {
		return "Like_Heart [likeNo=" + likeNo + ", rvNo=" + rvNo + ", memNo=" + memNo + ", likeCheck=" + likeCheck
				+ "]";
	}
	
	
}

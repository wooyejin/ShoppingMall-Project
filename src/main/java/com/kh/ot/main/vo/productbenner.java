package com.kh.ot.main.vo;

public class productbenner {

	private String pbImg;
	private String pbImgPath;
	private String pbComment;
	
	public String getPbComment() {
		return pbComment;
	}
	public void setPbComment(String pbComment) {
		this.pbComment = pbComment;
	}
	public productbenner() {
		super();
	}
	public productbenner(String pbImg, String pbImgPath, String pbComment) {
		super();
		this.pbImg = pbImg;
		this.pbImgPath = pbImgPath;
		this.pbComment = pbComment;
	}
	public String getPbImg() {
		return pbImg;
	}
	public void setPbImg(String pbImg) {
		this.pbImg = pbImg;
	}
	public String getPbImgPath() {
		return pbImgPath;
	}
	public void setPbImgPath(String pbImgPath) {
		this.pbImgPath = pbImgPath;
	}
	
	
}

package com.kh.ot.main.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class DetailReview {
	private String rvInfo;
	private int rvHeight;
	private int rvWeight;
	private int rvPoint;
	private String rvColor;
	private String rvSize;
	private int prdtNo;
	private List<MultipartFile> file;
	private String fileName;
	private String fileName2;
	private int rvNo;
	public int getRvNo() {
		return rvNo;
	}




	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}




	public String getFileName2() {
		return fileName2;
	}




	public void setFileName2(String fileName2) {
		this.fileName2 = fileName2;
	}
	private int ordNo;
	
	public int getOrdNo() {
		return ordNo;
	}




	public void setOrdNo(int ordNo) {
		this.ordNo = ordNo;
	}








	public DetailReview(String rvInfo, int rvHeight, int rvWeight, int rvPoint, String rvColor, String rvSize,
			int prdtNo, List<MultipartFile> file, String fileName, int ordNo, int memNo) {
		super();
		this.rvInfo = rvInfo;
		this.rvHeight = rvHeight;
		this.rvWeight = rvWeight;
		this.rvPoint = rvPoint;
		this.rvColor = rvColor;
		this.rvSize = rvSize;
		this.prdtNo = prdtNo;
		this.file = file;
		this.fileName = fileName;
		this.ordNo = ordNo;
		this.memNo = memNo;
	}




	public String getFileName() {
		return fileName;
	}




	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	private int memNo;
	
	
	public int getMemNo() {
		return memNo;
	}




	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}







	


	@Override
	public String toString() {
		return "DetailReview [rvInfo=" + rvInfo + ", rvHeight=" + rvHeight + ", rvWeight=" + rvWeight + ", rvPoint="
				+ rvPoint + ", rvColor=" + rvColor + ", rvSize=" + rvSize + ", prdtNo=" + prdtNo + ", file=" + file
				+ ", fileName=" + fileName + ", ordNo=" + ordNo + ", memNo=" + memNo + "]";
	}




	public DetailReview() {
		super();
	}

	
	

	public int getPrdtNo() {
		return prdtNo;
	}
	
	
	public void setPrdtNo(int prdtNo) {
		this.prdtNo = prdtNo;
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


	public int getRvPoint() {
		return rvPoint;
	}


	public void setRvPoint(int rvPoint) {
		this.rvPoint = rvPoint;
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


	public String getRvInfo() {
		return rvInfo;
	}
	public void setRvInfo(String rvInfo) {
		this.rvInfo = rvInfo;
	}
	public List<MultipartFile> getFile() {
		return file;
	}
	public void setFile(List<MultipartFile> file) {
		this.file = file;
	}
	
}

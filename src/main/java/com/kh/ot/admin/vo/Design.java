package com.kh.ot.admin.vo;

public class Design {

	private int deNo;
	private String mainComment;
	private String oriFile;
	private String reFile;
	private String mainLink;
	public Design() {
		super();
	}
	public Design(int deNo, String mainComment, String oriFile, String reFile, String mainLink) {
		super();
		this.deNo = deNo;
		this.mainComment = mainComment;
		this.oriFile = oriFile;
		this.reFile = reFile;
		this.mainLink = mainLink;
	}
	public int getDeNo() {
		return deNo;
	}
	public void setDeNo(int deNo) {
		this.deNo = deNo;
	}
	public String getMainComment() {
		return mainComment;
	}
	public void setMainComment(String mainComment) {
		this.mainComment = mainComment;
	}
	public String getOriFile() {
		return oriFile;
	}
	public void setOriFile(String oriFile) {
		this.oriFile = oriFile;
	}
	public String getReFile() {
		return reFile;
	}
	public void setReFile(String reFile) {
		this.reFile = reFile;
	}
	public String getMainLink() {
		return mainLink;
	}
	public void setMainLink(String mainLink) {
		this.mainLink = mainLink;
	}
	@Override
	public String toString() {
		return "Design [deNo=" + deNo + ", mainComment=" + mainComment + ", oriFile=" + oriFile + ", reFile=" + reFile
				+ ", mainLink=" + mainLink + "]";
	}
	

}
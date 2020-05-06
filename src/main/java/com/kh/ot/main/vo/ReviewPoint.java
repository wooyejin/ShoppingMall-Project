package com.kh.ot.main.vo;

public class ReviewPoint {

	private int point1;
	private int point2;
	private int point3;
	private int point4;
	private int point5;
	private double pointAvg;
	private int per;
	private int reviewCount;
	private String userName;
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	public int getPer() {
		return per;
	}
	public void setPer(int per) {
		this.per = per;
	}
	public ReviewPoint() {
		super();
	}
	
	
	public ReviewPoint(int point1, int point2, int point3, int point4, int point5, double pointAvg, int per,
			int reviewCount, String userName) {
		super();
		this.point1 = point1;
		this.point2 = point2;
		this.point3 = point3;
		this.point4 = point4;
		this.point5 = point5;
		this.pointAvg = pointAvg;
		this.per = per;
		this.reviewCount = reviewCount;
		this.userName = userName;
	}
	public int getPoint1() {
		return point1;
	}
	public void setPoint1(int point1) {
		this.point1 = point1;
	}
	public int getPoint2() {
		return point2;
	}
	public void setPoint2(int point2) {
		this.point2 = point2;
	}
	public int getPoint3() {
		return point3;
	}
	public void setPoint3(int point3) {
		this.point3 = point3;
	}
	public int getPoint4() {
		return point4;
	}
	public void setPoint4(int point4) {
		this.point4 = point4;
	}
	public int getPoint5() {
		return point5;
	}
	public void setPoint5(int point5) {
		this.point5 = point5;
	}
	public double getPointAvg() {
		return pointAvg;
	}
	public void setPointAvg(double pointAvg) {
		this.pointAvg = pointAvg;
	}
	@Override
	public String toString() {
		return "ReviewPoint [point1=" + point1 + ", point2=" + point2 + ", point3=" + point3 + ", point4=" + point4
				+ ", point5=" + point5 + ", pointAvg=" + pointAvg + "]";
	}
	
	
	
}

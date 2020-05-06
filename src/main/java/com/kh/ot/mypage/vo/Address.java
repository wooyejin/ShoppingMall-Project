package com.kh.ot.mypage.vo;

public class Address {
	private int adNo; // 배송지번호
	private int memNo; // 회원번호
	private String adTitle; // 배송지명
	private String adReceiver; // 받는이
	private String adAddress; // 배송주소
	private String adPhone; // 휴대폰번호
	
	public Address() {}

	public Address(int adNo, int memNo, String adTitle, String adReceiver, String adAddress, String adPhone) {
		super();
		this.adNo = adNo;
		this.memNo = memNo;
		this.adTitle = adTitle;
		this.adReceiver = adReceiver;
		this.adAddress = adAddress;
		this.adPhone = adPhone;
	}

	public int getAdNo() {
		return adNo;
	}

	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getAdTitle() {
		return adTitle;
	}

	public void setAdTitle(String adTitle) {
		this.adTitle = adTitle;
	}

	public String getAdReceiver() {
		return adReceiver;
	}

	public void setAdReceiver(String adReceiver) {
		this.adReceiver = adReceiver;
	}

	public String getAdAddress() {
		return adAddress;
	}

	public void setAdAddress(String adAddress) {
		this.adAddress = adAddress;
	}

	public String getAdPhone() {
		return adPhone;
	}

	public void setAdPhone(String adPhone) {
		this.adPhone = adPhone;
	}

	@Override
	public String toString() {
		return "Address [adNo=" + adNo + ", memNo=" + memNo + ", adTitle=" + adTitle + ", adReceiver=" + adReceiver
				+ ", adAddress=" + adAddress + ", adPhone=" + adPhone + "]";
	}
	
	
	
}

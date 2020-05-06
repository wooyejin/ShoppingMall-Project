package com.kh.ot.member.vo;

import org.springframework.stereotype.Component;

@Component
public class Member {

	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memSsn; // 생년월일
	private String memAddress;
	private String memEmail;
	private String memPhone;
	private String tdDate; // 출석체크용 날짜데이트
	private int memSumMoney; // 적립금
	private String memOwner; // 예금주
	private String bank; // 은행명
	private String returnBank; // 환불게좌
	private String mem_status; // 회원탈퇴여부
	private int mem_point;  // 적립금
	private int countCounpon; //쿠폰 카운트


	public Member() {
		super();
	}


	public Member(int memNo, String memId, String memPwd, String memName, String memSsn, String memAddress,
			String memEmail, String memPhone, String tdDate, int memSumMoney, String memOwner, String bank,
			String returnBank, String mem_status, int mem_point) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memSsn = memSsn;
		this.memAddress = memAddress;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.tdDate = tdDate;
		this.memSumMoney = memSumMoney;
		this.memOwner = memOwner;
		this.bank = bank;
		this.returnBank = returnBank;
		this.mem_status = mem_status;
		this.mem_point = mem_point;
	}


	public int getCountCounpon() {
		return countCounpon;
	}


	public void setCountCounpon(int countCounpon) {
		this.countCounpon = countCounpon;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getMemPwd() {
		return memPwd;
	}


	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}


	public String getMemName() {
		return memName;
	}


	public void setMemName(String memName) {
		this.memName = memName;
	}


	public String getMemSsn() {
		return memSsn;
	}


	public void setMemSsn(String memSsn) {
		this.memSsn = memSsn;
	}


	public String getMemAddress() {
		return memAddress;
	}


	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}


	public String getMemEmail() {
		return memEmail;
	}


	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}


	public String getMemPhone() {
		return memPhone;
	}


	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}


	public String getTdDate() {
		return tdDate;
	}


	public void setTdDate(String tdDate) {
		this.tdDate = tdDate;
	}


	public int getMemSumMoney() {
		return memSumMoney;
	}


	public void setMemSumMoney(int memSumMoney) {
		this.memSumMoney = memSumMoney;
	}


	public String getMemOwner() {
		return memOwner;
	}


	public void setMemOwner(String memOwner) {
		this.memOwner = memOwner;
	}


	public String getBank() {
		return bank;
	}


	public void setBank(String bank) {
		this.bank = bank;
	}


	public String getReturnBank() {
		return returnBank;
	}


	public void setReturnBank(String returnBank) {
		this.returnBank = returnBank;
	}


	public String getMem_status() {
		return mem_status;
	}


	public void setMem_status(String mem_status) {
		this.mem_status = mem_status;
	}


	public int getMem_point() {
		return mem_point;
	}


	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}


	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memSsn=" + memSsn + ", memAddress=" + memAddress + ", memEmail=" + memEmail + ", memPhone="
				+ memPhone + ", tdDate=" + tdDate + ", memSumMoney=" + memSumMoney + ", memOwner=" + memOwner
				+ ", bank=" + bank + ", returnBank=" + returnBank + ", mem_status=" + mem_status + ", mem_point="
				+ mem_point + ", getMemNo()=" + getMemNo() + ", getMemId()=" + getMemId() + ", getMemPwd()="
				+ getMemPwd() + ", getMemName()=" + getMemName() + ", getMemSsn()=" + getMemSsn() + ", getMemAddress()="
				+ getMemAddress() + ", getMemEmail()=" + getMemEmail() + ", getMemPhone()=" + getMemPhone()
				+ ", getTdDate()=" + getTdDate() + ", getMemSumMoney()=" + getMemSumMoney() + ", getMemOwner()="
				+ getMemOwner() + ", getBank()=" + getBank() + ", getReturnBank()=" + getReturnBank()
				+ ", getMem_status()=" + getMem_status() + ", getMem_point()=" + getMem_point() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}


}

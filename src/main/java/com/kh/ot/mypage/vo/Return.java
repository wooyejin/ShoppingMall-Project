package com.kh.ot.mypage.vo;

import java.sql.Date;

public class Return {

	private int reNo; //교환번호
	private int memCode; //회원번호
	private int ordCode; //주문번호
	private Date qnaDate; //작성날짜
	private String reTitle; //작성제목
	private String reName;//작성자
	private String content; //작성내용
	private String reCheck; //수령여부
	private String reReason; //반품사유
	private String reReal; //실제상태
	private Date reDate; //반품신청날짜
	private String reMent; //반품메모
	private String reStatus; //반품여부
	private String memPhone; //주문자 번호
	private String memId; // 주문자 아아이디
	private String memEmail; // 주문자 이메일
	private String memAddress;// 주문자 주소
	private String memReceiver; //수령자
	private int prdtNo;//상품번호
	private String ordSize;// 상품 사이즈
	private String ordColor;// 상품 색상
	private Date  ordDate;//구매날짜
	private String prdtName;// 상품이름
	private String prdtPrice;//상품가격
	private int payPoint;//사용포인트
	private int payMoney; //실구매가격
	private String payCategory;// 구매수단
	private int cpDiscount;// 쿠폰가격
	private String cpName;//쿠폰이름
	private int cpmemNo;//쿠폰 고유번호
	private String payYn;// 결제완료여부
	
	
	public Return() {
	}

	public Return(int reNo, int memCode, int ordCode, Date qnaDate, String reTitle, String content, String reReason,
			String reCheck, String reReal, Date reDate, String reMent, String reStatus) {
		super();
		this.reNo = reNo;
		this.memCode = memCode;
		this.ordCode = ordCode;
		this.qnaDate = qnaDate;
		this.reTitle = reTitle;
		this.content = content;
		this.reReason = reReason;
		this.reCheck = reCheck;
		this.reReal = reReal;
		this.reDate = reDate;
		this.reMent = reMent;
		this.reStatus = reStatus;
	}
	
	
	
	public int getCpmemNo() {
		return cpmemNo;
	}

	public void setCpmemNo(int cpmemNo) {
		this.cpmemNo = cpmemNo;
	}

	public String getPayYn() {
		return payYn;
	}

	public void setPayYn(String payYn) {
		this.payYn = payYn;
	}

	public String getOrdSize() {
		return ordSize;
	}

	public void setOrdSize(String ordSize) {
		this.ordSize = ordSize;
	}

	public String getOrdColor() {
		return ordColor;
	}

	public void setOrdColor(String ordColor) {
		this.ordColor = ordColor;
	}

	public Date getOrdDate() {
		return ordDate;
	}

	public void setOrdDate(Date ordDate) {
		this.ordDate = ordDate;
	}

	public String getPrdtName() {
		return prdtName;
	}

	public void setPrdtName(String prdtName) {
		this.prdtName = prdtName;
	}

	public String getPrdtPrice() {
		return prdtPrice;
	}

	public void setPrdtPrice(String prdtPrice) {
		this.prdtPrice = prdtPrice;
	}

	public int getPayPoint() {
		return payPoint;
	}

	public void setPayPoint(int payPoint) {
		this.payPoint = payPoint;
	}

	public int getPayMoney() {
		return payMoney;
	}

	public void setPayMoney(int payMoney) {
		this.payMoney = payMoney;
	}

	public String getPayCategory() {
		return payCategory;
	}

	public void setPayCategory(String payCategory) {
		this.payCategory = payCategory;
	}

	public int getCpDiscount() {
		return cpDiscount;
	}

	public void setCpDiscount(int cpDiscount) {
		this.cpDiscount = cpDiscount;
	}

	public String getCpName() {
		return cpName;
	}

	public void setCpName(String cpName) {
		this.cpName = cpName;
	}

	public int getPrdtNo() {
		return prdtNo;
	}

	public void setPrdtNo(int prdtNo) {
		this.prdtNo = prdtNo;
	}

	public String getMemReceiver() {
		return memReceiver;
	}

	public void setMemReceiver(String memReceiver) {
		this.memReceiver = memReceiver;
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

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getReName() {
		return reName;
	}

	public void setReName(String reName) {
		this.reName = reName;
	}

	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public int getOrdCode() {
		return ordCode;
	}

	public void setOrdCode(int ordCode) {
		this.ordCode = ordCode;
	}

	public Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getReTitle() {
		return reTitle;
	}

	public void setReTitle(String reTitle) {
		this.reTitle = reTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReReason() {
		return reReason;
	}

	public void setReReason(String reReason) {
		this.reReason = reReason;
	}

	public String getReCheck() {
		return reCheck;
	}

	public void setReCheck(String reCheck) {
		this.reCheck = reCheck;
	}

	public String getReReal() {
		return reReal;
	}

	public void setReReal(String reReal) {
		this.reReal = reReal;
	}

	public Date getReDate() {
		return reDate;
	}

	public void setReDate(Date reDate) {
		this.reDate = reDate;
	}

	public String getReMent() {
		return reMent;
	}

	public void setReMent(String reMent) {
		this.reMent = reMent;
	}

	public String getReStatus() {
		return reStatus;
	}

	public void setReStatus(String reStatus) {
		this.reStatus = reStatus;
	}

	@Override
	public String toString() {
		return "Return [reNo=" + reNo + ", memCode=" + memCode + ", ordCode=" + ordCode + ", qnaDate=" + qnaDate
				+ ", reTitle=" + reTitle + ", reName=" + reName + ", content=" + content + ", reReason=" + reReason
				+ ", reCheck=" + reCheck + ", reReal=" + reReal + ", reDate=" + reDate + ", reMent=" + reMent
				+ ", reStatus=" + reStatus + ", memPhone=" + memPhone + ", memId=" + memId + ", memEmail=" + memEmail
				+ ", memAddress=" + memAddress + ", memReceiver=" + memReceiver + ", prdtNo=" + prdtNo + ", ordSize="
				+ ordSize + ", ordColor=" + ordColor + ", ordDate=" + ordDate + ", prdtName=" + prdtName
				+ ", prdtPrice=" + prdtPrice + ", payPoint=" + payPoint + ", payMoney=" + payMoney + ", payCategory="
				+ payCategory + ", cpDiscount=" + cpDiscount + ", cpName=" + cpName + "]";
	}


	
	
}

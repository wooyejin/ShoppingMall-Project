package com.kh.ot.mypage.vo;

import java.sql.Date;

public class CouponMem {
	private int cpmem_no;			// 쿠폰기본키
	private int memno;				// 회원테이블의 회원번호
	private int cpno;				// 조인용 -> cpname이랑 cpdiscount 값 가져옴
	private Date cpdate;			// 쿠폰 발급날짜 (sysdate)
	private String cpusing;			// 쿠폰 사용여부
	private Date cp_usedate;		// 쿠폰 사용날짜
	private String cpname;			// 쿠폰 이름
	private int cpdiscount;			// 쿠폰 할인율
	
	public CouponMem() {}

	public CouponMem(int cpmem_no, int memno, int cpno, Date cpdate, String cpusing, Date cp_usedate, String cpname,
			int cpdiscount) {
		super();
		this.cpmem_no = cpmem_no;
		this.memno = memno;
		this.cpno = cpno;
		this.cpdate = cpdate;
		this.cpusing = cpusing;
		this.cp_usedate = cp_usedate;
		this.cpname = cpname;
		this.cpdiscount = cpdiscount;
	}

	public int getcpmem_no() {
		return cpmem_no;
	}

	public void setcpmem_no(int cpmem_no) {
		this.cpmem_no = cpmem_no;
	}

	public int getMemno() {
		return memno;
	}

	public void setMemno(int memno) {
		this.memno = memno;
	}

	public int getCpno() {
		return cpno;
	}

	public void setCpno(int cpno) {
		this.cpno = cpno;
	}

	public Date getCpdate() {
		return cpdate;
	}

	public void setCpdate(Date cpdate) {
		this.cpdate = cpdate;
	}

	public String getCpusing() {
		return cpusing;
	}

	public void setCpusing(String cpusing) {
		this.cpusing = cpusing;
	}

	public Date getCp_usedate() {
		return cp_usedate;
	}

	public void setCp_usedate(Date cp_usedate) {
		this.cp_usedate = cp_usedate;
	}

	public String getCpname() {
		return cpname;
	}

	public void setCpname(String cpname) {
		this.cpname = cpname;
	}

	public int getCpdiscount() {
		return cpdiscount;
	}

	public void setCpdiscount(int cpdiscount) {
		this.cpdiscount = cpdiscount;
	}

	@Override
	public String toString() {
		return "CouponMem [cpmem_no=" + cpmem_no + ", memno=" + memno + ", cpno=" + cpno + ", cpdate=" + cpdate
				+ ", cpusing=" + cpusing + ", cp_usedate=" + cp_usedate + ", cpname=" + cpname + ", cpdiscount="
				+ cpdiscount + "]";
	}
}

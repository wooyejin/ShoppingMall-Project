package com.kh.ot.member.service;

import java.util.ArrayList;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kh.ot.member.dao.MemberDao;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.CouponMem;


@Service("mService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	SqlSessionTemplate sqlSession;

	@Autowired
	private MemberDao mDao; //MemberDao에 mDao 이름의 어노테이션을 부여

	@Override
	public Member loginMember(String id,String pwd) {
		return mDao.loginMember(id,pwd);
	}

	@Override
	public Member findId(String memName, String memSsn) {
		return mDao.findId(memName,memSsn);
	}

	@Override
	public Member findpassword(String memId, String memName) {
		return mDao.findpassword(memId,memName);
	}

	@Override
	public int updatePwd(String memId, String firstpwd) {
		return mDao.updatePwd(memId,firstpwd);
	}

	@Override
	public int dailyCheck(int memNo, String tdDate) {
		return mDao.dailyCheck(memNo,tdDate);
	}

	@Override
	public ArrayList<Member> dailyCheckList(Member m) {
		return mDao.dailyCheckList(m);
	}

	@Override
	public int couponInsert(Member m) {
		return mDao.couponInsert(m);
	}
	@Override
	public int idDuplicate(String userId) {
		return mDao.idDuplicate(userId);
	}

	@Override
	public int insertMember(Member m) {
		int result = mDao.insertMember(m);
		return result;

	}

	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}

	@Override
	public int updateAccount(Member m) {
		return mDao.updateAccount(m);
	}

	@Override
	public int deleteMember(Member m) {
		return mDao.deleteMember(m);
	}

	/*
	 * @Override public ArrayList<CouponMem> selectCmlist(Member m) { return
	 * mDao.selectCmlist(m); }
	 */

	@Override
	public int insertRateCp(CouponMem com) {
		return mDao.insertRateCp(com);
	}

	@Override
	public int cpCount1(Member m) {
		return mDao.cpCount1(m);
	}

	@Override
	public int cpCount2(Member m) {
		return mDao.cpCount2(m);

	}

	@Override
	public int cpCount3(Member m) {
		return mDao.cpCount3(m);

	}

	@Override
	public int cpCount4(Member m) {
		return mDao.cpCount4(m);

	}

	@Override
	public int dailyCheckCount(int memNo, String tdDate) {
		return mDao.dailyCheckCount(memNo,tdDate);
	}



}

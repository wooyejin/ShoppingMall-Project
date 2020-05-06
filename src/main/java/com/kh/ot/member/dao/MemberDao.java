package com.kh.ot.member.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.CouponMem;


@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 로그인 Dao
	 * @param id
	 * @param pwd
	 * @return
	 */
	public Member loginMember(String id,String pwd) {
		Member m = new Member();
		m.setMemId(id);
		m.setMemPwd(pwd);
		return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
	}

	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 아이디 찾기 Dao
	 * @param memName
	 * @param memSsn
	 * @return
	 */
	public Member findId(String memName, String memSsn) {
		Member m = new Member();
		m.setMemName(memName);
		m.setMemSsn(memSsn);
		return (Member)sqlSession.selectOne("memberMapper.findId",m);
	}

	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	:비밀번호 찾기 Dao
	 * @param memId
	 * @param memName
	 * @return
	 */
	public Member findpassword(String memId, String memName) {
		Member m = new Member();
		m.setMemName(memName);
		m.setMemId(memId);
		return (Member)sqlSession.selectOne("memberMapper.findpassword",m);
	}

	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 비밀번호 갱신 Dao
	 * @param memId
	 * @param firstpwd
	 * @return
	 */
	public int updatePwd(String memId, String firstpwd) {
		Member m = new Member();
		m.setMemPwd(firstpwd);
		m.setMemId(memId);
		return sqlSession.update("memberMapper.updatePwd",m);
	}

	/**
	 * @작성일  : 2020. 4. 3.
	 * @작성자  : 문태환
	 * @내용 	: 출석체크용 Dao
	 * @param memNo
	 * @param tdDate
	 * @return
	 */
	public int dailyCheck(int memNo, String tdDate) {
		Member m = new Member();
		m.setMemNo(memNo);
		m.setTdDate(tdDate);
		return sqlSession.insert("memberMapper.dailyCheck",m);
	}

	/**
	 * @작성일  : 2020. 4. 4.
	 * @작성자  :  문태환
	 * @내용 	:출석체크 리스트 Dao
	 * @param m
	 * @return
	 */
	public ArrayList<Member> dailyCheckList(Member m) {
		return (ArrayList)sqlSession.selectList("memberMapper.dailyCheckList",m);
	}

	/**
	 * @작성일  : 2020. 4. 5.
	 * @작성자  : 문태환
	 * @내용 	: 출석체크 쿠폰발급 Dao
	 * @param memNos
	 * @return
	 */
	public int couponInsert(Member m) {
		return sqlSession.insert("memberMapper.couponInsert",m);
	}
	
	
	public int idDuplicate(String userId) {
		return sqlSession.selectOne("memberMapper.idDuplicate",userId);
	}

	
	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}

	public int updateAccount(Member m) {
		return sqlSession.update("memberMapper.updateAccount",m);
	}

	public int deleteMember(Member m) {
		return sqlSession.update("memberMapper.deleteMember",m);
	}

	/*
	 * public ArrayList<CouponMem> selectCmlist(Member m) { return
	 * (ArrayList)sqlSession.selectList("memberMapper.selectCmlist",m); }
	 */

	public int insertRateCp(CouponMem com) {
		return sqlSession.insert("memberMapper.insertRateCp",com);
	}

	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 문태환
	 * @내용 	: 등급별 쿠폰발급 중복검사
	 * @param m
	 * @return
	 */
	public int cpCount1(Member m) {
		return sqlSession.selectOne("memberMapper.cpCount1",m);
	}
	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 문태환
	 * @내용 	: 등급별 쿠폰발급 중복검사
	 * @param m
	 * @return
	 */
	public int cpCount2(Member m) {
		return sqlSession.selectOne("memberMapper.cpCount2",m);
	}
	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 문태환
	 * @내용 	: 등급별 쿠폰발급 중복검사
	 * @param m
	 * @return
	 */
	public int cpCount3(Member m) {
		return sqlSession.selectOne("memberMapper.cpCount3",m);
	}
	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 문태환
	 * @내용 	: 등급별 쿠폰발급 중복검사
	 * @param m
	 * @return
	 */
	public int cpCount4(Member m) {
		return sqlSession.selectOne("memberMapper.cpCount4",m);
	}

	public int dailyCheckCount(int memNo, String tdDate) {
		Member m = new Member();
		m.setMemNo(memNo);
		m.setTdDate(tdDate);
		return sqlSession.selectOne("memberMapper.dailyCheckCount",m);
	}


}

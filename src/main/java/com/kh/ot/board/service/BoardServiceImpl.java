package com.kh.ot.board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.board.dao.BoardDao;
import com.kh.ot.board.vo.Board;
import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.board.vo.SearchCondition;

@Service("bService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao bDao;

	@Override
	public int getListCount(int b_cate_no) {
		return bDao.getListCount(b_cate_no);
	}

	@Override
	public ArrayList<Board> selectList(PageInfo pi,int b_cate_no) {
		return bDao.selectList(pi,b_cate_no);
	}

	@Override
	public int insertBoard(Board b) {
		return bDao.insertBoard(b);
	}
	
	@Override
	public int insertBoard1(Board b) {
		return bDao.insertBoard1(b);
	}

	@Override
	public Board selectBoard(int qna_no) {
		return bDao.selectBoard(qna_no);
	}

	@Override
	public int SearchListCount(SearchCondition sc) {
		return bDao.SearchListCount(sc);
	}

	@Override
	public ArrayList<Board> selectSearchList(PageInfo pi, SearchCondition sc) {
		return bDao.selectSearchList(pi,sc);
	}

	@Override
	public int UpdatePrBoard(Board b) {
		return bDao.UpdatePrBoard(b);
	}

	@Override
	public Board selectUpdateBoard(int qna_no) {
		return bDao.selectUpdateBoard(qna_no);
	}

	@Override
	public int deletePrBoard(int qna_no) {
		return bDao.deletePrBoard(qna_no);
	}

	@Override
	public Board passwordCheck(Board b) {
		return bDao.passwordCheck(b);
	}



	
	
}

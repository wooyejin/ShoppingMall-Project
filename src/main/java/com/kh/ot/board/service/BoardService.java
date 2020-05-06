package com.kh.ot.board.service;

import java.util.ArrayList;

import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.board.vo.Board;
import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.board.vo.SearchCondition;

public interface BoardService{

	
	// 1. 게시판 전체 리스트 조회
	/**
	 * 1_1. 게시판 총 갯수 조회
	 * @return
	 */
	int getListCount(int b_cate_no);
	
	
	/**
	 * 1_2. 게시판 리스트 조회
	 * @param pi
	 * @return
	 */

	ArrayList<Board> selectList(PageInfo pi,int b_cate_no);

	

	/**
	 * 2. 게시판 작성
	 * @param b
	 * @return
	 */

	int insertBoard(Board b);


	
	/**
	 * 3. 게시판 상세조회
	 * @param qna_no
	 * @return
	 */
	Board selectBoard(int qna_no);


	
	/**
	 * @작성일  : 2020. 4. 8.
	 * @작성자  : 우예진
	 * @내용    : 4.검색리스트카운트
	 * @param sc
	 * @return
	 */
	int SearchListCount(SearchCondition sc);


	/**
	 * @작성일  : 2020. 4. 8.
	 * @작성자  : 우예진
	 * @내용    : 5. 검색 리스트 뿌리기
	 * @param pi
	 * @param sc
	 * @return
	 */
	ArrayList<Board> selectSearchList(PageInfo pi, SearchCondition sc);


	/**
	 * @param qna_no 
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 우예진
	 * @내용    : 5. 게시물 수정 업데이트
	 * @param sc
	 * @return
	 */
	
	
	int UpdatePrBoard(Board b);


	
	
	/**
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 우예진
	 * @내용    : 6. 업데이트 뷰 뿌려주기
	 * @param qna_no
	 * @return
	 */
	Board selectUpdateBoard(int qna_no);


	/**
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 우예진
	 * @내용    : 7. 상품문의 게시판 삭제
	 * @param qna_no
	 * @return
	 */
	int deletePrBoard(int qna_no);


	/**
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 우예진
	 * @내용    : 비밀글 비밀번호 찾기
	 * @param b
	 * @return
	 */
	Board passwordCheck(Board b);


	/**
	 * @작성일 : 2020. 4. 22.
	 * @작성자 :이대윤
	 * @내용 :보드인서트 (상품번호포함일때)
	 * @param @param b
	 * @param @return
	 * @return int
	 */
	int insertBoard1(Board b);




	

	

}

package com.kh.ot.review.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.main.vo.MainPageInfo2;
import com.kh.ot.main.vo.MainupCategory;
import com.kh.ot.main.vo.Product;
import com.kh.ot.main.vo.Product_color;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.review.vo.Like_Heart;
import com.kh.ot.review.vo.Review;
import com.kh.ot.review.vo.ReviewReply;
import com.kh.ot.review.vo.Review_Photo;
import com.kh.ot.review.vo.Review_count;

@Repository("rDao")
public class ReviewDao {


	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 우예진
	 * @내용    : review 리스트 뿌려주기
	 * @return
	 */
	public ArrayList<Review> selectReviewList(MainPageInfo2 pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("reviewMapper.selectReviewList",null,rowBounds);
	}

	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 우예진
	 * @내용    : review 모달 디테일 리스트 뿌려주기
	 * @param rvNo
	 * @return
	 */
	public Review selectReviewDetail(int rv_no) {
		return sqlSession.selectOne("reviewMapper.selectReviewDetail",rv_no);
	}

	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 우예진
	 * @내용    : 제대로 값이 들어오는지 확인
	 * @param lh
	 * @return
	 */
	public int selectLikeCount(Like_Heart lh) {
		return sqlSession.selectOne("reviewMapper.selectLikeCount",lh);
	}

	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 우예진
	 * @내용    : 좋아요 insert
	 * @param lh
	 * @return
	 */
	public int insertLike(Like_Heart lh) {
		return sqlSession.insert("reviewMapper.insertLike",lh);
	}

	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 우예진
	 * @내용    : 좋아요 리스트
	 * @param lh
	 * @return
	 */
	public Like_Heart selectLike(Like_Heart lh) {
		return sqlSession.selectOne("reviewMapper.selectLike",lh);
	}

	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 우예진
	 * @내용    : 좋아요 업데이트
	 * @param lh
	 * @return
	 */
	public int updateLikeCheck(Like_Heart lh) {
		return sqlSession.update("reviewMapper.updateLikeCheck",lh);
	}

	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 우예진
	 * @내용    : 좋아요 카운트 업데이트
	 * @param rv_no
	 * @return
	 */
	public int updateLikeCount(int rv_no) {
		return sqlSession.update("reviewMapper.updateLikeCount",rv_no);
	}
	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 우예진
	 * @내용    : 좋아요 업데이트
	 * @param lh
	 * @return
	 */
	public int updateLikeCheck2(Like_Heart lh) {
		return sqlSession.update("reviewMapper.updateLikeCheck2",lh);
	}

	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 우예진
	 * @내용    : 좋아요 카운트 내리기
	 * @param rv_no
	 * @return
	 */
	public int updateLikeCount2(int rv_no) {
		return sqlSession.update("reviewMapper.updateLikeCount2",rv_no);
	}

	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 우예진
	 * @내용    : 리뷰 등록
	 * @param rp
	 * @return
	 */
	public int insertReply(ReviewReply rp) {
		return sqlSession.insert("reviewMapper.insertReply",rp);
	}

	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 우예진
	 * @내용    : 댓글 리스트 뿌려주기
	 * @param rv_no
	 * @return
	 */
	public ArrayList<ReviewReply> selectReplyList(int rv_no) {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectReplyList",rv_no);
	}

	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 우예진
	 * @내용    : 댓글삭제
	 * @param rp
	 * @return
	 */
	public int DeleteReply(ReviewReply rp) {
		return sqlSession.delete("reviewMapper.DeleteReply",rp);
	}

	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 우예진
	 * @내용    : 리뷰 신고
	 * @param rp
	 * @return
	 */
	public int WarningReply(ReviewReply rp) {
		return sqlSession.update("reviewMapper.WarningReply",rp);
	}

	/**
	 * @작성일  : 2020. 4. 23.
	 * @작성자  : 우예진
	 * @내용    : 리뷰 좋아요순 정렬
	 * @return
	 */
	public ArrayList<Review> LikeSort(MainPageInfo2 pi) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reviewMapper.LikeSort",null,rowBounds);
	}

	/**
	 * @작성일  : 2020. 4. 23.
	 * @작성자  : 우예진
	 * @내용    : 리뷰 최신순 정렬
	 * @return
	 */
	public ArrayList<Review> DateSort(MainPageInfo2 pi) {

		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reviewMapper.DateSort",null,rowBounds);
	}

	/**
	 * @작성일  : 2020. 4. 23.
	 * @작성자  : 우예진
	 * @내용    : 키 정렬
	 * @param optionHeight
	 * @return
	 */
	public ArrayList<Review> selectCheckSort(MainPageInfo2 pi,int optionHeight) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		if(optionHeight==1) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectCheckSort1",null,rowBounds);
		} else if(optionHeight==2) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectCheckSort2",null,rowBounds);			
		} else if(optionHeight==3) {			
			return (ArrayList)sqlSession.selectList("reviewMapper.selectCheckSort3",null,rowBounds);
		} else if(optionHeight==4) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectCheckSort4",null,rowBounds);			
		} else if(optionHeight==5) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectCheckSort5",null,rowBounds);			
		} else if(optionHeight==6){
			return (ArrayList)sqlSession.selectList("reviewMapper.selectCheckSort6",null,rowBounds);			
		}else {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectReviewList",null,rowBounds);
		}
	}

	/**
	 * @작성일  : 2020. 4. 24.
	 * @작성자  : 우예진
	 * @내용    : 몸무게 정렬
	 * @param optionWeight
	 * @return
	 */
	public ArrayList<Review> selectWeightSort(MainPageInfo2 pi,int optionWeight) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		
		if(optionWeight==7) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectWeightSort7",null,rowBounds);
		} else if(optionWeight==8) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectWeightSort8",null,rowBounds);			
		} else if(optionWeight==9) {			
			return (ArrayList)sqlSession.selectList("reviewMapper.selectWeightSort9",null,rowBounds);
		} else if(optionWeight==10) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectWeightSort10",null,rowBounds);			
		} else if(optionWeight==11) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectWeightSort11",null,rowBounds);			
		} else if(optionWeight==12){
			return (ArrayList)sqlSession.selectList("reviewMapper.selectWeightSort12",null,rowBounds);			
		}else {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectReviewList",null,rowBounds);
		}
	}

	/**
	 * @작성일  : 2020. 4. 24.
	 * @작성자  : 우예진
	 * @내용    : 사이즈 정렬
	 * @param optionSize
	 * @return
	 */
	public ArrayList<Review> selectSizeSort(MainPageInfo2 pi,int optionSize) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		
		if(optionSize==13) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectSizeSort13",null,rowBounds);
		} else if(optionSize==14) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectSizeSort14",null,rowBounds);			
		} else if(optionSize==15) {			
			return (ArrayList)sqlSession.selectList("reviewMapper.selectSizeSort15",null,rowBounds);
		} else if(optionSize==16) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectSizeSort16",null,rowBounds);			
		} else if(optionSize==17) {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectSizeSort17",null,rowBounds);			
		} else if(optionSize==18){
			return (ArrayList)sqlSession.selectList("reviewMapper.selectSizeSort18",null,rowBounds);			
		}else {
			return (ArrayList)sqlSession.selectList("reviewMapper.selectReviewList",null,rowBounds);
		}
	}


	public ArrayList<Product> getBestList() {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectBestList");
	}
	public ArrayList<Product_color> selectColorList1(){
		return (ArrayList)sqlSession.selectList("reviewMapper.selectProductColor1");
	}
	public ArrayList<Product_opt> selectOptionBestList() {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectOptionBestList");
	}

	/**
	 * @작성일  : 2020. 4. 24.
	 * @작성자  : 우예진
	 * @내용    : 셀렉트 박스 카테고리
	 * @return
	 */
	public ArrayList<MainupCategory> selectCategoryList() {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectCategoryList");
	}

	/**
	 * @작성일  : 2020. 4. 24.
	 * @작성자  : 우예진
	 * @내용    : 셀렉트박스 리뷰
	 * @param upNo
	 * @return
	 */
	public ArrayList<Review> selectCategoryReview(MainPageInfo2 pi,int upNo) {
		

		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("reviewMapper.selectCategoryReview",upNo,rowBounds);
	}

	/**
	 * @작성일  : 2020. 4. 26.
	 * @작성자  : 우예진
	 * @내용    : 모든 정렬
	 * @return
	 */
	public ArrayList<Review> selectAllSort(MainPageInfo2 pi) {
		

		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("reviewMapper.selectAllSort",null,rowBounds);
	}

	/**
	 * @작성일  : 2020. 4. 26.
	 * @작성자  : 우예진
	 * @내용    : 리뷰포토
	 * @param rv_no
	 * @return
	 */
	public ArrayList<Review_Photo> selectReviewPhoto(int rv_no) {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectReviewPhoto",rv_no);
	}

	/**
	 * @작성일  : 2020. 4. 26.
	 * @작성자  : 우예진
	 * @내용    : 리뷰갯수 카운트
	 * @return
	 */
	public ArrayList<Review_count> selectReviewCount() {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectReviewCount");
	}

	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  :  문태환
	 * @내용 	: 리뷰 신고 게시글 가져오기
	 * @return
	 */
	public ArrayList<Review> selectReviewReportList() {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectReviewReportList");
  }
	/*
	 * @작성자  : 우예진
	 * @내용    : 리스트 카운트
	 * @return
	 */

	public int selectListCount() {
		return sqlSession.selectOne("reviewMapper.selectListCount");
	}
}

package com.kh.ot.review.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.main.vo.MainPageInfo2;
import com.kh.ot.main.vo.MainupCategory;
import com.kh.ot.main.vo.Product;
import com.kh.ot.main.vo.Product_color;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.review.dao.ReviewDao;
import com.kh.ot.review.vo.Like_Heart;
import com.kh.ot.review.vo.Review;
import com.kh.ot.review.vo.ReviewReply;
import com.kh.ot.review.vo.Review_Photo;
import com.kh.ot.review.vo.Review_count;

@Service("rService")
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDao rDao;

	@Override
	public ArrayList<Review> selectReviewList(MainPageInfo2 pi) {
		return rDao.selectReviewList(pi);
	}

	@Override
	public Review selectReviewDetail(int rv_no) {
		return rDao.selectReviewDetail(rv_no);
	}

	@Override
	public int selectLikeCount(Like_Heart lh) {
		return rDao.selectLikeCount(lh);
	}

	@Override
	public int insertLike(Like_Heart lh) {
		return rDao.insertLike(lh);
	}

	@Override
	public Like_Heart selectLike(Like_Heart lh) {
		return rDao.selectLike(lh);
	}

	@Override
	public int updateLikeCheck(Like_Heart lh) {
		return rDao.updateLikeCheck(lh);
	}

	@Override
	public int updateLikeCount(int rv_no) {
		return rDao.updateLikeCount(rv_no);
	}

	@Override
	public int updateLikeCheck2(Like_Heart lh) {
		return rDao.updateLikeCheck2(lh);
	}

	@Override
	public int updateLikeCount2(int rv_no) {
		return rDao.updateLikeCount2(rv_no);
	}

	@Override
	public int insertReply(ReviewReply rp) {
		return rDao.insertReply(rp);
	}

	@Override
	public ArrayList<ReviewReply> selectReplyList(int rv_no) {
		return rDao.selectReplyList(rv_no);
	}

	@Override
	public int DeleteReply(ReviewReply rp) {
		return rDao.DeleteReply(rp);
	}

	@Override
	public int WarningReply(ReviewReply rp) {
		return rDao.WarningReply(rp);
	}

	@Override
	public ArrayList<Review> selectLikeSort(MainPageInfo2 pi) {
		return rDao.LikeSort(pi);
	}

	@Override
	public ArrayList<Review> selectDateSort(MainPageInfo2 pi) {
		return rDao.DateSort(pi);
	}

	@Override
	public ArrayList<Review> selectCheckSort(MainPageInfo2 pi,int optionHeight) {
		return rDao.selectCheckSort(pi,optionHeight);
	}

	@Override
	public ArrayList<Review> selectWeightSort(MainPageInfo2 pi,int optionWeight) {
		return rDao.selectWeightSort(pi,optionWeight);
	}

	@Override
	public ArrayList<Review> selectSizeSort(MainPageInfo2 pi,int optionSize) {
		return rDao.selectSizeSort(pi,optionSize);
	}

	@Override
	public ArrayList<Product> getBestList() {
		return rDao.getBestList();
	}

	@Override
	public ArrayList<Product_color> selectColorList1() {
		return rDao.selectColorList1();
	}

	@Override
	public ArrayList<Product_opt> selectOptionBestList() {
		return rDao.selectOptionBestList();
	}

	@Override
	public ArrayList<MainupCategory> selectCategoryList() {
		return rDao.selectCategoryList();
	}

	@Override
	public ArrayList<Review> selectCategoryReview(MainPageInfo2 pi,int upNo) {
		return rDao.selectCategoryReview(pi,upNo);
	}

	@Override
	public ArrayList<Review> selectAllSort(MainPageInfo2 pi) {
		return rDao.selectAllSort(pi);
	}

	@Override
	public ArrayList<Review_Photo> selectReviewPhoto(int rv_no) {
		return rDao.selectReviewPhoto(rv_no);
	}

	@Override
	public ArrayList<Review_count> selectReviewCount() {
		return rDao.selectReviewCount();
	}

	@Override
	public ArrayList<Review> selectReviewReportList() {
		return rDao.selectReviewReportList();
	}
	@Override
	public int selectListCount() {
		return rDao.selectListCount();
	}

}

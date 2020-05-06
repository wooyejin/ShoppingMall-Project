/**
 * 
 */
package com.kh.ot.main.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ot.board.vo.Board;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.main.dao.MainDao;
import com.kh.ot.main.vo.DetailReview;
import com.kh.ot.main.vo.MainPageInfo;
import com.kh.ot.main.vo.MainPageInfo2;
import com.kh.ot.main.vo.MainSearchCondition;
import com.kh.ot.main.vo.Product;
import com.kh.ot.main.vo.Product_color;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.main.vo.ReviewCheck;
import com.kh.ot.main.vo.Wish;
import com.kh.ot.main.vo.productWith;
import com.kh.ot.main.vo.productbenner;
import com.kh.ot.review.vo.Like_Heart;
import com.kh.ot.review.vo.Review;
import com.kh.ot.review.vo.ReviewReply;
import com.kh.ot.review.vo.Review_Photo;
import com.kh.ot.main.vo.MaindownCategory;
import com.kh.ot.main.vo.MainupCategory;

@Service("mainService")
public class MainServiceImpl implements MainService {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	private MainDao mainDao;
	
	@Override
	public int getListCount1(int product1) {
		return mainDao.getListCount1(product1);
	}
	@Override
	public int getListCount2(int product2) {
		return mainDao.getListCount2(product2);
	}
	
	@Override
	public ArrayList<Product> selectList1(MainPageInfo mainPi,int product1) {
		return mainDao.selectList1(mainPi,product1);
	}

	
	@Override
	public ArrayList<Product> selectList2(MainPageInfo mainPi,int product2) {
		return mainDao.selectList2(mainPi,product2);
	}
	@Override
	public ArrayList<Product_opt> selectOptionList1(int product1) {
		return mainDao.selectOptionList1(product1);
	}
	@Override
	public ArrayList<Product_opt> selectOptionList(int product_detail) {
		return mainDao.selectOptionList(product_detail);
	}
	@Override
	public ArrayList<Product_opt> selectOptionList22(int product_detail) {
		return mainDao.selectOptionList22(product_detail);
	}
	@Override
	public ArrayList<Product_opt> selectOptionList33(int product_detail) {
		return mainDao.selectOptionList33(product_detail);
	}
	@Override
	public ArrayList<Product_color> selectColorList1() {
		return mainDao.selectColorList1();
	}
	@Override
	public ArrayList<Product_opt> selectOptionList2(int product2) {
		return mainDao.selectOptionList2(product2);
	}
	@Override
	public ArrayList<Product_color> selectColorList2() {
		return mainDao.selectColorList2();
	}
	@Override
	public ArrayList<MaindownCategory> selectCategoryList1(int product1) {
		return mainDao.selectCategoryList1(product1);
	}
	@Override
	public ArrayList<MainupCategory> selectUpCategoryList1() {
		return mainDao.selectUpCategoryList1();
	}
	@Override
	public ArrayList<MaindownCategory> selectCategoryList2(int product2) {
		int product22 = product2/10;
		return mainDao.selectCategoryList2(product22);
	}
	@Override
	public ArrayList<MainupCategory> selectUpCategoryList2() {
		return mainDao.selectUpCategoryList2();
	}
	@Override
	public ArrayList<MaindownCategory> selectCategoryList3() {
		
		return mainDao.selectCategoryList3();
	}
	@Override
	public ArrayList<MainupCategory> selectUpCategoryList3() {
		return mainDao.selectUpCategoryList3();
	}
	@Override
	public ArrayList<Product> selectSortList1(MainPageInfo mainPi, MainSearchCondition msc) {
		return mainDao.selectSortList1(mainPi,msc);
	}
	@Override
	public ArrayList<Product> selectSortList2(MainPageInfo mainPi, MainSearchCondition msc) {
		return mainDao.selectSortList2(mainPi,msc);
	}
	@Override
	public int insertWish(Wish w) {
		return mainDao.insertWish(w);
	}
	@Override
	public ArrayList<Wish> selectWish(int memNo) {
		return mainDao.selectWish(memNo);
	}
	@Override
	public int getSearchListCount(String search) {
		return mainDao.getSearchListCount(search);
	}
	@Override
	public ArrayList<Product> selectSearchList(MainPageInfo mainPi, String search) {
		return mainDao.selectSearchList(mainPi,search);
	}
	@Override
	public ArrayList<Product_opt> selectOptionSearchList(String search) {
		return mainDao.selectOptionSearchList(search);
		}
	@Override
	public ArrayList<productbenner> selectPB() {
		return mainDao.selectPB();
	}
	@Override
	public ArrayList<Product> selectDetailList(int product_detail) {
		return mainDao.selectDetailList(product_detail);
	}
	@Override
	public ArrayList<Product_color> selectColorList3(int product_detail) {
		return mainDao.selectColorList3(product_detail);
	}
	@Override
	public int insertCart(Cart c) {
		return mainDao.insertCart(c);
	}
	@Override
	public int getQnaListCount(int product_detail) {
		return mainDao.getQnaListCount(product_detail);
	}
	@Override
	public ArrayList<Board> selectQnaList(MainPageInfo2 mainPi2, int product_detail) {
		return mainDao.selectQnaList(mainPi2,product_detail);
	}
	@Override
	public ArrayList<productWith> selectWithList(int product_detail) {
		return mainDao.selectWithList(product_detail);
	}
	@Override
	public Product selectDetailListp(int with) {
		return mainDao.selectDetailListp(with);
	}
	@Override
	public int detailReviewWriteCheck(ReviewCheck rc) {
		return mainDao.detailReviewWriteCheck(rc);
	}
	@Override
	public int getOrdNo(ReviewCheck rc) {
		return mainDao.getOrdNo(rc);
	}
	@Override
	public int detailReviewInsert(DetailReview dr) {
		return mainDao.detailReviewInsert(dr);
	}
	@Override
	public ArrayList<Integer> getRvNo(ReviewCheck rc) {
		return mainDao.getRvNo(rc);
	}
	@Override
	public int detailReviewPhotoInsert(DetailReview dr) {
		return mainDao.detailReviewPhotoInsert(dr);
	}
	@Override
	public int detailReviewPhotoInsert2(DetailReview dr) {
		return mainDao.detailReviewPhotoInsert2(dr);
	}
	@Override
	public int updateReviewCount(DetailReview dr) {
		return mainDao.updateReviewCount(dr);
	}
	@Override
	public ArrayList<Review> selectPoint(int product_detail) {
		return mainDao.selectPoint(product_detail);
	}
	@Override
	public ArrayList<Review> selectPoint1(MainPageInfo mainPi, int product_detail) {
		return mainDao.selectPoint1(mainPi,product_detail);
	}
	@Override
	public ArrayList<Review> selectPoint2(MainPageInfo mainPi, int product_detail) {
		return mainDao.selectPoint2(mainPi,product_detail);
	}
	@Override
	public ArrayList<Review> selectPoint3(MainPageInfo mainPi, int product_detail) {
		return mainDao.selectPoint3(mainPi,product_detail);
	}
	@Override
	public String selectUserName(int memCode) {
		return mainDao.selectUserName(memCode);
	}
	@Override
	public ArrayList<Review> selectHeightSort(MainPageInfo mainPi, Product_opt op) {
		return mainDao.selectHeightSort(mainPi,op);
	}
	@Override
	public ArrayList<Review> selectWeightSort(MainPageInfo mainPi, Product_opt op) {
		return mainDao.selectWeightSort(mainPi,op);	
	}
	@Override
	public ArrayList<Review> selectSizeSort(MainPageInfo mainPi, Product_opt op) {
		return mainDao.selectSizeSort(mainPi,op);	
	}
	@Override
	public int getReviewListCount(int product_detail) {
		return mainDao.getReviewListCount(product_detail);
	}
	
	
	
	
	@Override
	public int selectLikeCount(Like_Heart lh) {
		return mainDao.selectLikeCount(lh);
	}
	@Override
	public Like_Heart selectLike(Like_Heart lh) {
		return mainDao.selectLike(lh);
	}
	@Override
	public int insertLike(Like_Heart lh) {
		return mainDao.insertLike(lh);
	}
	@Override
	public Review selectReviewDetail(int rvNo) {
		return mainDao.selectReviewDetail(rvNo);
	}
	@Override
	public ArrayList<Review_Photo> selectReviewPhoto(int rvNo) {
		return mainDao.selectReviewPhoto(rvNo);
	}
	@Override
	public int updateLikeCheck(Like_Heart lh) {
		return mainDao.updateLikeCheck(lh);
	}
	@Override
	public int updateLikeCount(int rvNo) {
		return mainDao.updateLikeCount(rvNo);
	}
	@Override
	public int updateLikeCheck2(Like_Heart lh) {
		return mainDao.updateLikeCheck2(lh);
	}
	@Override
	public int updateLikeCount2(int rvNo) {
		return mainDao.updateLikeCount2(rvNo);
	}
	@Override
	public int insertReply(ReviewReply rp) {
		return mainDao.insertReply(rp);
	}
	@Override
	public ArrayList<ReviewReply> selectReplyList(int rv_no) {
		return mainDao.selectReplyList(rv_no);
	}
	@Override
	public int DeleteReply(ReviewReply rp) {
		return mainDao.DeleteReply(rp);
	}
	@Override
	public int WarningReply(ReviewReply rp) {
		return mainDao.WarningReply(rp);
	}
	@Override
	public ArrayList<Product> selectListMain() {
		return mainDao.selectListMain();
	}
	@Override
	public ArrayList<Product_opt> selectOptionListMain() {
		return mainDao.selectOptionListMain();
	}
	@Override
	public ArrayList<Product_color> selectColorListMain() {
		return mainDao.selectColorListMain();
	}
	@Override
	public ArrayList<Product> selectListMain2() {
		return mainDao.selectListMain2();
	}
	@Override
	public ArrayList<Product> selectListMain3() {
		return mainDao.selectListMain3();
	}

	


	
	


}

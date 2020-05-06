/**
 * 
 */
package com.kh.ot.main.service;

import java.util.ArrayList;

import com.kh.ot.board.vo.Board;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.main.vo.DetailReview;
import com.kh.ot.main.vo.MainPageInfo;
import com.kh.ot.main.vo.MainPageInfo2;
import com.kh.ot.main.vo.MainSearchCondition;
import com.kh.ot.main.vo.MaindownCategory;
import com.kh.ot.main.vo.MainupCategory;
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

public interface MainService {
	
	int getListCount1(int product1);

	int getListCount2(int product2);

	/**
	 * @param product2 
	 * @작성일 : 2020. 4. 8.
	 * @작성자 :이대윤
	 * @내용 :프로덕트 리스트 불러오기
	 * @param @return
	 * @return product
	 */
	ArrayList<Product> selectList2(MainPageInfo mainPi, int product2);
	
	/**
	 * @param product1
	 * @작성일 : 2020. 4. 8.
	 * @작성자 :이대윤
	 * @내용 :프로덕트 리스트 불러오기
	 * @param @return
	 * @return product
	 */
	ArrayList<Product> selectList1(MainPageInfo mainPi, int product1);

	/**
	 * 이대윤
	 * 상품옵션 불러오기
	 * @param product1
	 * @return
	 */
	ArrayList<Product_opt> selectOptionList(int product_detail);
	ArrayList<Product_opt> selectOptionList22(int product_detail);
	ArrayList<Product_opt> selectOptionList33(int product_detail);
	ArrayList<Product_opt> selectOptionList1(int product1);
	ArrayList<Product_opt> selectOptionList2(int product2);

	/**
	 * 이대윤
	 * 상품 컬러 불러오기
	 * @param product1
	 * @return
	 */
	ArrayList<Product_color> selectColorList1();
	ArrayList<Product_color> selectColorList2();
	ArrayList<Product_color> selectColorList3(int product_detail);

	/**
	 * @작성일 : 2020. 4. 9.
	 * @작성자 :
	 * @내용 :카테고리 리스트 불러오기
	 * @param @param product1
	 * @param @return
	 * @return ArrayList<downCategory>
	 */
	ArrayList<MaindownCategory> selectCategoryList1(int product1);

	ArrayList<MainupCategory> selectUpCategoryList1();

	ArrayList<MaindownCategory> selectCategoryList2(int product2);

	ArrayList<MainupCategory> selectUpCategoryList2();

	ArrayList<MaindownCategory> selectCategoryList3();
	
	ArrayList<MainupCategory> selectUpCategoryList3();

	ArrayList<Product> selectSortList1(MainPageInfo mainPi, MainSearchCondition msc);

	ArrayList<Product> selectSortList2(MainPageInfo mainPi, MainSearchCondition msc);

	int insertWish(Wish w);

	ArrayList<Wish> selectWish(int memNo);

	int getSearchListCount(String search);

	ArrayList<Product> selectSearchList(MainPageInfo mainPi, String search);

	ArrayList<Product_opt> selectOptionSearchList(String search);

	ArrayList<productbenner> selectPB();

	ArrayList<Product> selectDetailList(int product_detail);

	int insertCart(Cart c);

	/**
	 * @작성일 : 2020. 4. 22.
	 * @작성자 :
	 * @내용 :
	 * @param @param product_detail
	 * @param @return
	 * @return ArrayList<Board>
	 */

	int getQnaListCount(int product_detail);

	ArrayList<Board> selectQnaList(MainPageInfo2 mainPi2, int product_detail);

	ArrayList<productWith> selectWithList(int product_detail);

	Product selectDetailListp(int with);

	int detailReviewWriteCheck(ReviewCheck rc);

	int detailReviewInsert(DetailReview dr);

	int getOrdNo(ReviewCheck rc);

	ArrayList<Integer> getRvNo(ReviewCheck rc);

	int detailReviewPhotoInsert(DetailReview dr);
	int detailReviewPhotoInsert2(DetailReview dr);

	int updateReviewCount(DetailReview dr);

	ArrayList<Review> selectPoint(int product_detail);
	ArrayList<Review> selectPoint1(MainPageInfo mainPi, int product_detail);
	ArrayList<Review> selectPoint2(MainPageInfo mainPi, int product_detail);
	ArrayList<Review> selectPoint3(MainPageInfo mainPi, int product_detail);

	String selectUserName(int memCode);
	
	/**
	 * @작성일  : 2020. 4. 25.
	 * @작성자  : 이대윤
	 * @내용    : 키 정렬
	 * @param optionHeight
	 * @return
	 */
	ArrayList<Review> selectHeightSort(MainPageInfo mainPi, Product_opt op);

	/**
	 * @작성일  : 2020. 4. 25.
	 * @작성자  : 이대윤
	 * @내용    : 몸무게 정렬
	 * @param optionWeight
	 * @return
	 */
	ArrayList<Review> selectWeightSort(MainPageInfo mainPi, Product_opt op);

	/**
	 * @작성일  : 2020. 4. 25.
	 * @작성자  : 이대윤
	 * @내용    : 사이즈 정렬
	 * @param optionSize
	 * @return
	 */
	ArrayList<Review> selectSizeSort(MainPageInfo mainPi, Product_opt op);

	int getReviewListCount(int product_detail);

	int selectLikeCount(Like_Heart lh);

	Like_Heart selectLike(Like_Heart lh);

	int insertLike(Like_Heart lh);

	Review selectReviewDetail(int rvNo);

	ArrayList<Review_Photo> selectReviewPhoto(int rvNo);

	int updateLikeCheck(Like_Heart lh);

	int updateLikeCount(int rv_no);

	int updateLikeCheck2(Like_Heart lh);

	int updateLikeCount2(int rv_no);

	int insertReply(ReviewReply rp);

	ArrayList<ReviewReply> selectReplyList(int rv_no);

	int DeleteReply(ReviewReply rp);

	int WarningReply(ReviewReply rp);

	/**
	 * @작성일  : 2020. 4. 28.
	 * @작성자  : 문태환
	 * @내용 	: 메인 상품 리스트 불러오기
	 * @return
	 */
	ArrayList<Product> selectListMain();

	/**
	 * @작성일  : 2020. 4. 28.
	 * @작성자  : 문태환
	 * @내용 	: 메인 상품 리스트 불러오기
	 * @return
	 */
	ArrayList<Product_opt> selectOptionListMain();

	/**
	 * @작성일  : 2020. 4. 28.
	 * @작성자  : 문태환
	 * @내용 	: 메인 상품 리스트 불러오기
	 * @return
	 */
	ArrayList<Product_color> selectColorListMain();

	/**
	 * @작성일  : 2020. 4. 28.
	 * @작성자  : 문태환
	 * @내용 	: 메인 상품 리스트 불러오기 2
	 * @return
	 */
	ArrayList<Product> selectListMain2();

	/**
	 * @작성일  : 2020. 4. 28.
	 * @작성자  : 문태환
	 * @내용 	: 메인 상품 리스트 불러오기 탑3
	 * @return
	 */
	ArrayList<Product> selectListMain3();


}

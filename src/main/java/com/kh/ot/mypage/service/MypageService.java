package com.kh.ot.mypage.service;

import java.util.ArrayList;

import com.kh.ot.admin.vo.Point;
import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.board.vo.SearchCondition;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.Address;
import com.kh.ot.mypage.vo.CouponMem;
import com.kh.ot.mypage.vo.DIBS;
import com.kh.ot.mypage.vo.MyBoard;
import com.kh.ot.mypage.vo.OrdSearch;
import com.kh.ot.mypage.vo.Return;
import com.kh.ot.mypage.vo.ReviewSearch;
import com.kh.ot.review.vo.Review;

public interface MypageService {

	/**
	 * @param memNo
	 * @작성일 : 2020. 4. 12.
	 * @작성자 : 신경섭
	 * @내용 : 사용가능한 적립금 조회
	 * @param @return
	 * @return int
	 */
	int PointListCount(int memNo);

	ArrayList<Point> PointSelectList(int memNo, PageInfo pi);

	/**
	 * @작성일 : 2020. 4. 13.
	 * @작성자 : 신경섭
	 * @내용 : 미가용 적립금 조회
	 * @param @return
	 * @return int
	 */

	int PointUnavailListCount(int memNo);

	ArrayList<Point> PointselectUnavailList(int memNo, PageInfo pi);


	/**
	 * @param memNo
	 * @작성일 : 2020. 4. 13.
	 * @작성자 : 신경섭
	 * @내용 : 사용가능한 쿠폰 조회
	 * @param @return
	 * @return int
	 */

	int CouponListCount(Member m);

	ArrayList<CouponMem> CouponSelectList(int memNo, PageInfo pi);

	/**
	 * @작성일 : 2020. 4. 13.
	 * @작성자 : 신경섭
	 * @내용 : 사용완료한 쿠폰 조회
	 * @param @return
	 * @return int
	 */

	int CompleteCouponListCount(Member m);

	ArrayList<CouponMem> CompleteCouponSelectList(int memNo, PageInfo pi);



	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 신경섭
	 * @내용 : 적립금 계산
	 * @param @param m
	 * @param @return
	 * @return int
	 */
	int PointPrice(Member m);



	/**
	 * @작성일 : 2020. 4. 16.
	 * @작성자 : 신경섭
	 * @내용 : 내가 쓴 게시판 조회
	 * @param @param memNo
	 * @param @param b_cate_no
	 * @param @return
	 * @return int
	 */
	int getListCount(int memNo);

	ArrayList<MyBoard> selectList(PageInfo pi, int memNo);




	/**
	 * @작성일 : 2020. 4. 16.
	 * @작성자 : 신경섭
	 * @내용 : 게시판 검색 기능
	 * @param @param sc
	 * @param @return
	 * @return int
	 */
	int SearchListCount(SearchCondition sc);

	ArrayList<MyBoard> selectSearchList(PageInfo pi, SearchCondition sc);

	/**
	 * @작성일 : 2020. 4. 17.
	 * @작성자 : 신경섭
	 * @내용 : 주문정보
	 * @param @param memNo
	 * @param @return
	 * @return int
	 */
	int getOrderListCount(int memNo);

	ArrayList<Ord> selectOrderList(PageInfo pi, int memNo);



	/**
	 * @작성일  : 2020. 4. 18.
	 * @작성자  : 우예진
	 * @내용    : 배송지 insert
	 * @param ad
	 * @return
	 */
	int mAddressInsert(Address ad);

	/**
	 * @작성일  : 2020. 4. 18.
	 * @작성자  : 우예진
	 * @내용    : 배송지 페이징처리
	 * @param m
	 * @return
	 */
	int getAddressCount(Member m);

	/**
	 * @작성일  : 2020. 4. 18.
	 * @작성자  : 우예진
	 * @내용    : 배송지 리스트 뿌려주기
	 * @param pi
	 * @param m
	 * @return
	 */
	ArrayList<Address> selectAddressList(PageInfo pi, Member m);

	/**
	 * @작성일  : 2020. 4. 18.
	 * @작성자  : 우예진
	 * @내용    : 배송지 수정
	 * @param mAddress
	 * @return
	 */
	Address ModifyAddress(int mAddress);

	/**
	 * @작성일  : 2020. 4. 18.
	 * @작성자  : 우예진
	 * @내용    : 배송지 업데이트치기
	 * @param ad
	 * @return
	 */
	int AddressUpdate(Address ad);

	/**
	 * @작성일  : 2020. 4. 18.
	 * @작성자  : 우예진
	 * @내용    : 배송지 삭제
	 * @param nokArr
	 * @return
	 */
	int AddressDelete(ArrayList<Address> nokArr);



	/**
	 * @작성일 : 2020. 4. 19.
	 * @작성자 : 신경섭
	 * @내용 : 주문내역 검색
	 * @param @param os
	 * @param @return
	 * @return int
	 */
	int SearchListCount(OrdSearch os);

	ArrayList<Ord> selectSearchList(PageInfo pi, OrdSearch os);

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태 A
	 * @param memNo
	 * @return
	 */
	int orderCount1(int memNo);
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태 B
	 * @param memNo
	 * @return
	 */
	int orderCount2(int memNo);
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태 C
	 * @param memNo
	 * @return
	 */
	int orderCount3(int memNo);
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태 D
	 * @param memNo
	 * @return
	 */
	int orderCount4(int memNo);
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태 E
	 * @param memNo
	 * @return
	 */
	int orderCount5(int memNo);

	/**
	 * @작성일 : 2020. 4. 20.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 반품주문내역
	 * @param memNo
	 * @return
	 */
	int getCancelListCount(int memNo);

	ArrayList<Ord> selectCancelList(PageInfo pi, int memNo);


	/**
	 * @작성일 : 2020. 4. 20.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 반품주문내역 검색
	 * @param os
	 * @return
	 */
	int getSearchCancelCount(OrdSearch os);

	ArrayList<Ord> selectSearchCancelList(PageInfo pi, OrdSearch os);

	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 문태환
	 * @내용 	: 반품신청 인설트
	 * @param r
	 * @return
	 */
	int ReturnInsert(Return r);

	int orderCount6(int memNo);

	int orderCount7(int memNo);
	
	/* / **
	 	 * @작성일 : 2020. 4. 20.
		 * @작성자 : 신경섭
		 * @내용 : 마이페이지 위시리스트
		 * @param memNo
		 * @return
		 */
	int getWishListCount(int memNo);

	ArrayList<DIBS> selectWishList(PageInfo pi, int memNo);

	ArrayList<Product_opt> selectOptionList1(int prdt_no);

	ArrayList<Product_opt> selectOptionList2(int prdt_no);

	int insertwishlist(DIBS d);

	DIBS selectonelist();

	int updatewishlist(DIBS d);

	int deleteWishlist(ArrayList<DIBS> noArr);

	int deletewishAll(int memno);

	int selectDelete(int dibsno);

	ArrayList<DIBS> selectDlist(ArrayList<DIBS> wish);

	int insertCartList(ArrayList<Cart> clist);

	/**
	 * @작성일  : 2020. 4. 23.
	 * @작성자  :  문태환
	 * @내용 	: 장바구니 담기후 제거
	 * @param wish
	 * @return
	 */
	int deleteDlist(ArrayList<DIBS> wish);

	DIBS selectOneBuynow(int dibsno);

	int InsertOneCart(Cart c);

	int deleteOneList(DIBS d);

	ArrayList<DIBS> selectAllBuyNow(int memno);

	int deleteAlllist(ArrayList<DIBS> dlist);

	int getReviewListCount(int memNo);

	ArrayList<Review> selectReviewList(PageInfo pi, int memNo);

	int getSearchReviewCount(ReviewSearch rs);

	ArrayList<Review> selectSearchReviewList(PageInfo pi, ReviewSearch rs);
	
	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 포인트
	 * @param memNo
	 * @return
	 */
	int resultPoint(int memNo);


	ArrayList<Review> selectLastSort(PageInfo pi,int memNo);

	ArrayList<Review> selectLikeSort(PageInfo pi,int memNo);

	ArrayList<Review> selectStarSort(PageInfo pi, int memNo);

	int reviewDelete1(int rv_no);
	int reviewDelete2(int rv_no);
	int reviewDelete3(int rv_no);
	int reviewDelete4(int rv_no);



}

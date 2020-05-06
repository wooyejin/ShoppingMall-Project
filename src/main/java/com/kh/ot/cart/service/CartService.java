package com.kh.ot.cart.service;

import java.util.ArrayList;

import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.admin.vo.Point;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.cart.vo.Pay;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.Address;

public interface CartService {

	/**
	 * @작성일  : 2020. 4. 14.
	 * @작성자  : 우예진
	 * @내용    : cart list뿌리기
	 * @param mem_no
	 * @return
	 */
	ArrayList<Cart> selectList(int mem_no);

	/**
	 * @작성일  : 2020. 4. 14.
	 * @작성자  : 우예진
	 * @내용    : cart coupon list 뿌리기 
	 * @param mem_no
	 * @return
	 */
	ArrayList<Coupon> selectCouponList(int mem_no);


	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 우예진
	 * @내용    : cart 상품 삭제
	 * @param checkArr
	 * @return
	 */
	int deleteCart(ArrayList<Cart> noArr);

	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 문태환
	 * @내용 	: cart 주문정보 인설트
	 * @param olist
	 * @return
	 */
	int cartInsert(ArrayList<Ord> olist);

	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 우예진
	 * @내용    : 주문결과창 값 뿌려주기
	 * @param mem_no
	 * @return
	 */
	ArrayList<Ord> selectOrderList(int mem_no);

	/**
	 * @작성자  : 문태환
	 * @내용 	: pay 결제정보 인설트
	 * @param plist
	 * @return
	 */
	int payInsert(ArrayList<Pay> plist);

	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 우예진
	 * @내용    : 결제정보 리스트
	 * @param p
	 * @return
	 */
	ArrayList<Pay> selectPayList(ArrayList<Pay> list);

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 결제화면 상품 이미지 가져오기
	 * @param olist
	 * @return
	 */
	ArrayList<Cart> selecPro(ArrayList<Ord> olist);

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 회원 누적적립금 업데이트
	 * @param updatePrice
	 * @return
	 */
	int updatePrice(Cart ct);

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 사용쿠폰 업데이트
	 * @param pay_usedcp
	 * @return
	 */
	int updateCoupon(int pay_usedcp);

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 사용포인트 차감
	 * @param py
	 * @return
	 */
	int updatePoint(Pay py);

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 결제완료 페이지 회원정보 리셋
	 * @param m
	 * @return
	 */
	Member selectMember(Member m);

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 결제완료 페이지 회원정보 쿠폰
	 * @param m
	 * @return
	 */
	int countCoupon(Member m);

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환 
	 * @내용 	: 재고수량 카운트
	 * @param olist
	 * @return
	 */
	int updateProduct(ArrayList<Ord> olist);

	/**
	 * @작성일  : 2020. 4. 18.
	 * @작성자  : 문태환
	 * @내용    : 카트 배송지 리스트 
	 * @param mem_no
	 * @return
	 */
	ArrayList<Address> selectAdList(int mem_no);

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 선택 배송지 가져오기
	 * @param adNo
	 * @return
	 */
	Address selectAdOne(int adNo);

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환 
	 * @내용 	: 회원 구매상품 3% 적립
	 * @param resultPoint
	 * @return
	 */
	int updateMemPoint(Member mpo);

	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 문태환
	 * @내용 	: 상품구매 확정시 포인트 적립
	 * @param pot
	 * @return
	 */
	int insertPoint(Point pot);

	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 문태환
	 * @내용 	: 결제한 카트 리스트 불러오기
	 * @param list
	 * @return
	 */
	ArrayList<Cart> selectCartList(ArrayList<Cart> list);

	/**
	 * @작성일  : 2020. 4. 23.
	 * @작성자  : 문태환
	 * @내용 	: 결제후 판매 상품 판매량 올리기
	 * @param olist
	 * @return
	 */
	int updateProductStock(ArrayList<Ord> olist);

	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환
	 * @내용 	: 최근 일주일 날짜 구하기
	 * @return
	 */
	ArrayList<Pay> weekList();

	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환
	 * @내용 	: 최근 일주일 판매액 구하기
	 * @return
	 */
	ArrayList<Pay> weekPayList();

}

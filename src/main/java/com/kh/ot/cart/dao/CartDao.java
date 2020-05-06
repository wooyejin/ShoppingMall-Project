package com.kh.ot.cart.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.admin.vo.Point;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.cart.vo.Pay;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.Address;

@Repository("cDao")
public class CartDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * @작성일  : 2020. 4. 14.
	 * @작성자  : 우예진
	 * @내용    : cart list 뿌리기
	 * @param mem_no
	 * @return
	 */
	public ArrayList<Cart> selectList(int mem_no) {
		return (ArrayList)sqlSession.selectList("cartMapper.selectList",mem_no);
	}

	/**
	 * @작성일  : 2020. 4. 14.
	 * @작성자  : 우예진
	 * @내용    : coupon list 뿌리기
	 * @param mem_no
	 * @return
	 */
	public ArrayList<Coupon> selectCouponList(int mem_no) {
		return (ArrayList)sqlSession.selectList("cartMapper.selectCouponList",mem_no);
	}


	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 우예진
	 * @내용    : cart 상품 삭제
	 * @param checkArr
	 * @return
	 */
	public int deleteCart(ArrayList<Cart> noArr) {
		   Map<String, Object> map = new HashMap<String, Object>();
		   map.put("noArr", noArr);
		return sqlSession.delete("cartMapper.deleteCart",map);
	}

	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 문태환 
	 * @내용 	: 주문정보 인설트
	 * @param olist
	 * @return
	 */
	public int cartInsert(ArrayList<Ord> olist) {
		   Map<String, Object> map = new HashMap<String, Object>();
		   map.put("olist", olist);
		return sqlSession.insert("cartMapper.cartInsert",map);
	}

	
	public ArrayList<Ord> selectOrderList(int mem_no) {
		return (ArrayList)sqlSession.selectList("cartMapper.selectOrderList",mem_no);
	}
	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 문태환
	 * @내용 	: 결제정보 인설트
	 * @param plist
	 * @return
	 */
	public int payInsert(ArrayList<Pay> plist) {
		  Map<String, Object> map = new HashMap<String, Object>();
		   map.put("plist", plist);
		return sqlSession.insert("cartMapper.payInsert",map);
	}

	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 우예진
	 * @내용    : 결제 리스트 
	 * @param p
	 * @return
	 */
	public ArrayList<Pay> selectPayList(ArrayList<Pay> list) {
		Map<String, Object> map = new HashMap<String, Object>();
		   map.put("list", list);
		return (ArrayList)sqlSession.selectList("cartMapper.selectPayList",map);
	}

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 상품선택
	 * @param olist
	 * @return
	 */
	public ArrayList<Cart> selecPro(ArrayList<Ord> olist) {
		Map<String, Object> map = new HashMap<String, Object>();
		   map.put("olist", olist);
		return (ArrayList)sqlSession.selectList("cartMapper.selecPro",map);
	}

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 누적금액업데이트
	 * @param ct
	 * @return
	 */
	public int updatePrice(Cart ct) {
			
		return sqlSession.update("cartMapper.updatePrice",ct);
	}

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 사용쿠폰 업데이트
	 * @param pay_usedcp
	 * @return
	 */
	public int updateCoupon(int pay_usedcp) {
		return sqlSession.update("cartMapper.updateCoupon",pay_usedcp);
	}

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 사용포인트 차감
	 * @param py
	 * @return
	 */
	public int updatePoint(Pay py) {
		return sqlSession.update("cartMapper.updatePoint",py);
	}

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 결제완료 화편 회원정보 리셋
	 * @param m
	 * @return
	 */
	public Member selectMember(Member m) {
		return sqlSession.selectOne("cartMapper.selectMember",m);
	}

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 결제완료 화면 쿠폰 카운트
	 * @param m
	 * @return
	 */
	public int countCoupon(Member m) {
		return sqlSession.selectOne("cartMapper.countCoupon",m);
	}

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 상품재고 업데이트
	 * @param olist
	 * @return
	 */
	public int updateProduct(ArrayList<Ord> olist) {
		Map<String, Object> map = new HashMap<String, Object>();
		   map.put("olist", olist);
		return sqlSession.update("cartMapper.updateProduct",map);
	}

	/**
	 * @작성일  : 2020. 4. 18.
	 * @작성자  : 문태환
	 * @내용    : 카트 배송지 리스트
	 * @param mem_no
	 * @return
	 */
	public ArrayList<Address> selectAdList(int memNo) {
		return (ArrayList)sqlSession.selectList("cartMapper.selectAdList",memNo);
	}

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  :  문태환
	 * @내용 	:선택 배송지 가져오기
	 * @param adNo
	 * @return
	 */
	public Address selectAdOne(int adNo) {
		return sqlSession.selectOne("cartMapper.selectAdOne",adNo);
	}

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 구매상품 3% 적립
	 * @param resultPoint
	 * @return
	 */
	public int updateMemPoint(Member mpo) {
		return sqlSession.update("cartMapper.updateMemPoint",mpo);
	}

	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 문태환
	 * @내용 	: 구매확정시 포인트 적립
	 * @param pot
	 * @return
	 */
	public int insertPoint(Point pot) {
		return sqlSession.insert("cartMapper.insertPoint",pot);
	}

	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 문태환
	 * @내용 	: 결제 카트 리스트 불러오기
	 * @param list
	 * @return
	 */
	public ArrayList<Cart> selectCartList(ArrayList<Cart> cartList) {
		Map<String, Object> map = new HashMap<String, Object>();
		   map.put("cartList", cartList);
		return (ArrayList)sqlSession.selectList("cartMapper.selectCartList",map);
	}

	public int updateProductStock(ArrayList<Ord> olist) {
		Map<String, Object> map = new HashMap<String, Object>();
		   map.put("olist", olist);
		return  sqlSession.update("cartMapper.updateProductStock",map);
	}

	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환 
	 * @내용 	: 최근 일주일 구하기
	 * @return
	 */
	public ArrayList<Pay> weekList() {
		return  (ArrayList)sqlSession.selectList("cartMapper.weekList");
	}

	public ArrayList<Pay> weekPayList() {
		return (ArrayList)sqlSession.selectList("cartMapper.weekPayList");
	}

}

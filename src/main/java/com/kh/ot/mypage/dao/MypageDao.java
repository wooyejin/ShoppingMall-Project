package com.kh.ot.mypage.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

@Repository("mpDao")
public class MypageDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/*
	 * ========================================= 적립금 부분
	 * =========================================
	 */
	public int PointListCount(int memNo) {
		return sqlSession.selectOne("mypageMapper.PointListCount",memNo);
	}

	public ArrayList<Point> PointSelectList(int memNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("mypageMapper.PointselectList", memNo, rowBounds);
	}

	public int PointUnavailListCount(int memNo) {
		return sqlSession.selectOne("mypageMapper.PointUnavailListCount",memNo);
	}

	public ArrayList<Point> PointselectUnavailList(int memNo, PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("mypageMapper.PointselectUnavailList", memNo, rowBounds);
	}

	/*
	 * ========================================= 쿠폰 부분
	 * =========================================
	 */

	public int CouponListCount(Member m) {
		return sqlSession.selectOne("mypageMapper.CouponListCount", m);
	}

	public ArrayList<CouponMem> CouponSelectList(int memNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("mypageMapper.CouponSelectList", memNo, rowBounds);
	}

	public int CompleteCouponListCount(Member m) {
		return sqlSession.selectOne("mypageMapper.CompleteCouponListCount", m);
	}

	public ArrayList<CouponMem> CompleteCouponSelectList(int memNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("mypageMapper.CompleteCouponSelectList", memNo, rowBounds);
	}

	public int PointPrice(Member m) {

		/*
		 * int memNo = m.getMemNo();
		 * 
		 * // int pointSet = sqlSession.selectOne("mypageMapper.selectPoint",memNo); //
		 * m.setMem_point(pointSet);
		 */

		return sqlSession.update("mypageMapper.updatePoint", m);
	}

	public int getListCount(int memNo) {
		return sqlSession.selectOne("mypageMapper.selectBoardListCount", memNo);
	}

	public ArrayList<MyBoard> selectList(PageInfo pi, int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("mypageMapper.selectBoardList", memNo, rowBounds);
	}

	public int SearchListCount(SearchCondition sc) {

		return sqlSession.selectOne("mypageMapper.SearchListCount", sc);
	}

	public ArrayList<MyBoard> selectSearchList(PageInfo pi, SearchCondition sc) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("mypageMapper.selectSearchList", sc, rowBounds);
	}

	public int getOrderListCount(int memNo) {
		return sqlSession.selectOne("mypageMapper.getOrderListCount", memNo);
	}

	public ArrayList<Ord> selectOrderList(PageInfo pi, int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("mypageMapper.selectOrderList", memNo, rowBounds);
	}

	public int mAddressInsert(Address ad) {
		return sqlSession.insert("mypageMapper.mAddressInsert",ad);
	}

	public int getAddressCount(Member m) {
		int memNo = m.getMemNo();
		return sqlSession.selectOne("mypageMapper.getAddressCount",memNo);
	}

	public ArrayList<Address> selectAddressList(PageInfo pi, Member m) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("mypageMapper.selectAddressList",m,rowBounds);
	}

	public Address ModifyAddress(int mAddress) {
		return sqlSession.selectOne("mypageMapper.ModifyAddress",mAddress);
	}

	public int AddressUpdate(Address ad) {
		return sqlSession.update("mypageMapper.AddressUpdate",ad);
	}

	public int AddressDelete(ArrayList<Address> nokArr) {
		  Map<String, Object> map = new HashMap<String, Object>();
		   map.put("nokArr", nokArr);
		return sqlSession.delete("mypageMapper.AddressDelete",map);
	}

	public int SearchListCount(OrdSearch os) {

		return sqlSession.selectOne("mypageMapper.SearchOrdListCount", os);
	}

	public ArrayList<Ord> selectSearchList(PageInfo pi, OrdSearch os) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("mypageMapper.selectSearchOrdList", os, rowBounds);
	}

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태값 A
	 * @param memNo
	 * @return
	 */
	public int orderCount1(int memNo) {
		return sqlSession.selectOne("mypageMapper.orderCount1",memNo);
	}
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태값 B
	 * @param memNo
	 * @return
	 */
	public int orderCount2(int memNo) {
		return sqlSession.selectOne("mypageMapper.orderCount2",memNo);
	}
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태값 C
	 * @param memNo
	 * @return
	 */
	public int orderCount3(int memNo) {
		return sqlSession.selectOne("mypageMapper.orderCount3",memNo);
	}
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태값 D
	 * @param memNo
	 * @return
	 */
	public int orderCount4(int memNo) {
		return sqlSession.selectOne("mypageMapper.orderCount4",memNo);
	}
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 마이페이지 배송상태값 E
	 * @param memNo
	 * @return
	 */
	public int orderCount5(int memNo) {
		return sqlSession.selectOne("mypageMapper.orderCount5",memNo);
	}

	public int orderCount6(int memNo) {
		return sqlSession.selectOne("mypageMapper.orderCount6",memNo);
	}

	public int orderCount7(int memNo) {
		return sqlSession.selectOne("mypageMapper.orderCount7",memNo);
	}

	public int getCancelListCount(int memNo) {
		return sqlSession.selectOne("mypageMapper.getCancelListCount", memNo);
	}

	public ArrayList<Ord> selectCancelList(PageInfo pi, int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("mypageMapper.selectCancelList", memNo, rowBounds);
	}

	public int getSearchCancelCount(OrdSearch os) {

		return sqlSession.selectOne("mypageMapper.getSearchCancelCount", os);
	}

	public ArrayList<Ord> selectSearchCancelList(PageInfo pi, OrdSearch os) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("mypageMapper.selectSearchCancelList", os, rowBounds);
	}

	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  : 문태환
	 * @내용 	: 반품하기 인설트
	 * @param r
	 * @return
	 */
	public int ReturnInsert(Return r) {
		return sqlSession.insert("mypageMapper.ReturnInsert",r);
	}
	public int getWishListCount(int memNo) {
		return sqlSession.selectOne("mypageMapper.getWishListCount",memNo);
	}

	public ArrayList<DIBS> selectWishList(PageInfo pi, int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("mypageMapper.selectWishList", memNo, rowBounds);
	}

	public ArrayList<Product_opt> selectOptionList1(int prdt_no) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectOptionList1", prdt_no);
	}

	public ArrayList<Product_opt> selectOptionList2(int prdt_no) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectOptionList2", prdt_no);
	}

	public int insertwishlist(DIBS d) {
		return sqlSession.insert("mypageMapper.insertwishlist",d);
	}

	public DIBS selectonelist() {
		return sqlSession.selectOne("mypageMapper.selectonelist");
	}

	public int updatewishlist(DIBS d) {
		return sqlSession.update("mypageMapper.updatewishlist",d);
	}

	public int deleteWishlist(ArrayList<DIBS> noArr) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("noArr", noArr);
		return sqlSession.delete("mypageMapper.deletewishlist", map);
	}

	public int deletewishAll(int memno) {
		return sqlSession.delete("mypageMapper.deletewishAll", memno);
	}

	public int selectDelete(int dibsno) {
		return sqlSession.delete("mypageMapper.selectDelete",dibsno);
	}

	public ArrayList<DIBS> selectDlist(ArrayList<DIBS> wishArr) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("wishArr", wishArr);
		
		return (ArrayList)sqlSession.selectList("mypageMapper.selectDlist",map);
	}

	public int insertCartList(ArrayList<Cart> clist) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("clist", clist);
		
		return sqlSession.insert("mypageMapper.insertCartList",map);
	}

	public int deleteDlist(ArrayList<DIBS> wish) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("wish", wish);
		
		return sqlSession.delete("mypageMapper.deleteDlist",map);
	}

	public DIBS selectOneBuynow(int dibsno) {
		return sqlSession.selectOne("mypageMapper.selectOneBuynow", dibsno);
	}

	public int InsertOneCart(Cart c) {
		return sqlSession.insert("mypageMapper.InsertOneCart", c);
	}

	public int deleteOneList(DIBS d) {
		return sqlSession.delete("mypageMapper.deleteOneList", d);
	}

	public ArrayList<DIBS> selectAllBuyNow(int memno) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectAllBuyNow", memno);
	}

	public int deleteAlllist(ArrayList<DIBS> dlist) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dlist", dlist);
		return sqlSession.delete("mypageMapper.deleteAlllist", map);
	}

	public int getReviewListCount(int memNo) {
		return sqlSession.selectOne("mypageMapper.getReviewListCount", memNo);
	}

	public ArrayList<Review> selectReviewList(PageInfo pi, int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("mypageMapper.selectReviewList", memNo, rowBounds);
	}

	public int getSearchReviewCount(ReviewSearch rs) {
		System.out.println("dao : " + rs);
		return sqlSession.selectOne("mypageMapper.getSearchReviewCount", rs);
	}

	public ArrayList<Review> selectSearchReviewList(PageInfo pi, ReviewSearch rs) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("mypageMapper.selectSearchReviewList", rs, rowBounds);
	}

	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환 
	 * @내용 	: 마이페이지 포인트 가져오기
	 * @param memNo
	 * @return
	 */
	public int resultPoint(int memNo) {
		return sqlSession.selectOne("mypageMapper.resultPoint",memNo);
	}
	
	public ArrayList<Review> selectLastSort(PageInfo pi,int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("mypageMapper.selectLastSort", memNo, rowBounds);
	}

	public ArrayList<Review> selectLikeSort(PageInfo pi, int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("mypageMapper.selectLikeSort", memNo, rowBounds);
	}

	public ArrayList<Review> selectStarSort(PageInfo pi,int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("mypageMapper.selectStarSort", memNo, rowBounds);
	}

	public int reviewDelete1(int rv_no) {
		return sqlSession.delete("mypageMapper.reviewDelete1",rv_no);
	}
	public int reviewDelete2(int rv_no) {
		return sqlSession.delete("mypageMapper.reviewDelete2",rv_no);
	}
	public int reviewDelete3(int rv_no) {
		return sqlSession.delete("mypageMapper.reviewDelete3",rv_no);
	}
	public int reviewDelete4(int rv_no) {
		return sqlSession.delete("mypageMapper.reviewDelete4",rv_no);
	}

	



}

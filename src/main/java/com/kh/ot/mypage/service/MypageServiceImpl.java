package com.kh.ot.mypage.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ot.admin.vo.Point;
import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.board.vo.SearchCondition;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.dao.MypageDao;
import com.kh.ot.mypage.vo.Address;
import com.kh.ot.mypage.vo.CouponMem;
import com.kh.ot.mypage.vo.DIBS;
import com.kh.ot.mypage.vo.MyBoard;
import com.kh.ot.mypage.vo.OrdSearch;
import com.kh.ot.mypage.vo.Return;
import com.kh.ot.mypage.vo.ReviewSearch;
import com.kh.ot.review.vo.Review;

@Service("mpService")
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypageDao mpDao;

	@Override
	public int PointListCount(int memNo) {
		return mpDao.PointListCount(memNo);
	}

	@Override
	public ArrayList<Point> PointSelectList(int memNo, PageInfo pi) {
		return mpDao.PointSelectList(memNo, pi);
	}

	@Override
	public int PointUnavailListCount(int memNo) {
		return mpDao.PointUnavailListCount(memNo);
	}

	@Override
	public ArrayList<Point> PointselectUnavailList(int memNo, PageInfo pi) {
		return mpDao.PointselectUnavailList(memNo, pi);
	}

	@Override
	public int CouponListCount(Member m) {
		return mpDao.CouponListCount(m);
	}

	@Override
	public ArrayList<CouponMem> CouponSelectList(int memNo, PageInfo pi) {
		return mpDao.CouponSelectList(memNo, pi);
	}

	@Override
	public int CompleteCouponListCount(Member m) {
		return mpDao.CompleteCouponListCount(m);
	}

	@Override
	public ArrayList<CouponMem> CompleteCouponSelectList(int memNo, PageInfo pi) {
		return mpDao.CompleteCouponSelectList(memNo, pi);

	}

	@Override
	public int PointPrice(Member m) {
		return mpDao.PointPrice(m);
	}

	@Override
	public int getListCount(int memNo) {
		return mpDao.getListCount(memNo);
	}

	@Override
	public ArrayList<MyBoard> selectList(PageInfo pi, int memNo) {
		return mpDao.selectList(pi, memNo);
	}

	@Override
	public int SearchListCount(SearchCondition sc) {
		return mpDao.SearchListCount(sc);
	}

	@Override
	public ArrayList<MyBoard> selectSearchList(PageInfo pi, SearchCondition sc) {
		return mpDao.selectSearchList(pi, sc);
	}

	@Override
	public int getOrderListCount(int memNo) {
		return mpDao.getOrderListCount(memNo);
	}

	@Override
	public ArrayList<Ord> selectOrderList(PageInfo pi, int memNo) {
		return mpDao.selectOrderList(pi, memNo);
	}

	@Override
	public int mAddressInsert(Address ad) {
		return mpDao.mAddressInsert(ad);
	}

	@Override
	public int getAddressCount(Member m) {
		return mpDao.getAddressCount(m);
	}

	@Override
	public ArrayList<Address> selectAddressList(PageInfo pi, Member m) {
		return mpDao.selectAddressList(pi,m);
	}

	@Override
	public Address ModifyAddress(int mAddress) {
		return mpDao.ModifyAddress(mAddress);
	}

	@Override
	public int AddressUpdate(Address ad) {
		return mpDao.AddressUpdate(ad);
	}

	@Override
	public int AddressDelete(ArrayList<Address> nokArr) {
		return mpDao.AddressDelete(nokArr);
	}

	@Override
	public int SearchListCount(OrdSearch os) {

		return mpDao.SearchListCount(os);
	}

	@Override
	public ArrayList<Ord> selectSearchList(PageInfo pi, OrdSearch os) {

		return mpDao.selectSearchList(pi, os);
	}

	@Override
	public int orderCount1(int memNo) {
		return mpDao.orderCount1(memNo);
	}

	@Override
	public int orderCount2(int memNo) {
		return mpDao.orderCount2(memNo);

	}

	@Override
	public int orderCount3(int memNo) {
		return mpDao.orderCount3(memNo);

	}

	@Override
	public int orderCount4(int memNo) {
		return mpDao.orderCount4(memNo);

	}

	@Override
	public int orderCount5(int memNo) {
		return mpDao.orderCount5(memNo);

	}

	@Override
	public int getCancelListCount(int memNo) {
		return mpDao.getCancelListCount(memNo);
	}

	@Override
	public ArrayList<Ord> selectCancelList(PageInfo pi, int memNo) {
		return mpDao.selectCancelList(pi, memNo);
	}

	@Override
	public int getSearchCancelCount(OrdSearch os) {
		return mpDao.getSearchCancelCount(os);
	}

	@Override
	public ArrayList<Ord> selectSearchCancelList(PageInfo pi, OrdSearch os) {
		return mpDao.selectSearchCancelList(pi, os);
	}

	@Override
	public int ReturnInsert(Return r) {
		return mpDao.ReturnInsert(r);
	}

	@Override
	public int orderCount6(int memNo) {
		return mpDao.orderCount6(memNo);
	}

	@Override
	public int orderCount7(int memNo) {
		return mpDao.orderCount7(memNo);
	}
	public int getWishListCount(int memNo) {
		return mpDao.getWishListCount(memNo);
	}

	@Override
	public ArrayList<DIBS> selectWishList(PageInfo pi, int memNo) {
		return mpDao.selectWishList(pi, memNo);
	}

	@Override
	public ArrayList<Product_opt> selectOptionList1(int prdt_no) {
		return mpDao.selectOptionList1(prdt_no);
	}
	
	public ArrayList<Product_opt> selectOptionList2(int prdt_no) {
		return mpDao.selectOptionList2(prdt_no);
	}

	@Override
	public int insertwishlist(DIBS d) {
		return mpDao.insertwishlist(d);
	}

	@Override
	public DIBS selectonelist() {
		return mpDao.selectonelist();
	}

	@Override
	public int updatewishlist(DIBS d) {
		return mpDao.updatewishlist(d);
	}

	@Override
	public int deleteWishlist(ArrayList<DIBS> noArr) {
		return mpDao.deleteWishlist(noArr);
	}

	@Override
	public int deletewishAll(int memno) {
		return mpDao.deletewishAll(memno);
	}

	@Override
	public int selectDelete(int dibsno) {
		return mpDao.selectDelete(dibsno);
	}

	@Override
	public ArrayList<DIBS> selectDlist(ArrayList<DIBS>  wish) {
		return mpDao.selectDlist(wish);
	}

	@Override
	public int insertCartList(ArrayList<Cart> clist) {
		return mpDao.insertCartList(clist);
	}

	@Override
	public int deleteDlist(ArrayList<DIBS> wish) {
		return mpDao.deleteDlist(wish);
	}

	@Override
	public DIBS selectOneBuynow(int dibsno) {
		return mpDao.selectOneBuynow(dibsno);
	}

	@Override
	public int InsertOneCart(Cart c) {
		return mpDao.InsertOneCart(c);
	}

	@Override
	public int deleteOneList(DIBS d) {
		// TODO Auto-generated method stub
		return mpDao.deleteOneList(d);
	}

	@Override
	public ArrayList<DIBS> selectAllBuyNow(int memno) {
		return mpDao.selectAllBuyNow(memno);
	}

	@Override
	public int deleteAlllist(ArrayList<DIBS> dlist) {
		return mpDao.deleteAlllist(dlist);
	}

	@Override
	public int getReviewListCount(int memNo) {
		return mpDao.getReviewListCount(memNo);
	}

	@Override
	public ArrayList<Review> selectReviewList(PageInfo pi, int memNo) {
		return mpDao.selectReviewList(pi, memNo);
	
	}

	@Override
	public int getSearchReviewCount(ReviewSearch rs) {
		return mpDao.getSearchReviewCount(rs);
	}

	@Override
	public ArrayList<Review> selectSearchReviewList(PageInfo pi, ReviewSearch rs) {
		return mpDao.selectSearchReviewList(pi, rs);
	}

	@Override
	public ArrayList<Review> selectLastSort(PageInfo pi,int memNo) {
		return mpDao.selectLastSort(pi, memNo);
	}

	@Override
	public ArrayList<Review> selectLikeSort(PageInfo pi,int memNo) {
		return mpDao.selectLikeSort(pi, memNo);
	}

	@Override
	public ArrayList<Review> selectStarSort(PageInfo pi,int memNo) {
		return mpDao.selectStarSort(pi, memNo);
	}

	@Override
	public int resultPoint(int memNo) {
		return mpDao.resultPoint(memNo);
	}

	@Override
	public int reviewDelete1(int rv_no) {
		return mpDao.reviewDelete1(rv_no);
	}

	@Override
	public int reviewDelete2(int rv_no) {
		return mpDao.reviewDelete2(rv_no);
	}

	@Override
	public int reviewDelete3(int rv_no) {
		return mpDao.reviewDelete3(rv_no);
	}

	@Override
	public int reviewDelete4(int rv_no) {
		return mpDao.reviewDelete4(rv_no);
	}

}

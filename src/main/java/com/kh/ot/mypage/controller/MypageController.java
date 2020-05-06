package com.kh.ot.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.ot.admin.servie.adminService;
import com.kh.ot.admin.vo.Point;
import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.board.vo.SearchCondition;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.common.Pagination;
import com.kh.ot.common.ReviewPagination;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.service.MypageService;
import com.kh.ot.mypage.vo.Address;
import com.kh.ot.mypage.vo.CouponMem;
import com.kh.ot.mypage.vo.DIBS;
import com.kh.ot.mypage.vo.MyBoard;
import com.kh.ot.mypage.vo.OrdSearch;
import com.kh.ot.mypage.vo.Return;
import com.kh.ot.mypage.vo.ReviewSearch;
import com.kh.ot.review.service.ReviewService;
import com.kh.ot.review.vo.Review;
import com.kh.ot.review.vo.Review_count;

@SessionAttributes("loginMember")
@Controller
public class MypageController {

	@Autowired
	private MypageService mpService;

	@Autowired
	private adminService adService;

	@Autowired
	private ReviewService rService;

	/**
	 * @작성일 : 2020. 4. 2.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 주문내역 이동
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mList.do")
	public ModelAndView mList(ModelAndView mv, HttpSession session,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String order_status) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		int orderCount1 = mpService.orderCount1(memNo);
		int orderCount2 = mpService.orderCount2(memNo);
		int orderCount3 = mpService.orderCount3(memNo);
		int orderCount4 = mpService.orderCount4(memNo);
		int orderCount5 = mpService.orderCount5(memNo);
		int orderCount6 = mpService.orderCount6(memNo);
		int orderCount7 = mpService.orderCount7(memNo);
		int resultPoint = mpService.resultPoint(memNo);

		int listCount = mpService.getOrderListCount(memNo);

		System.out.println("listCount : " + listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Ord> list = mpService.selectOrderList(pi, memNo);

		System.out.println("list : " + list);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("orderCount1", orderCount1);
		mv.addObject("orderCount2", orderCount2);
		mv.addObject("orderCount3", orderCount3);
		mv.addObject("orderCount4", orderCount4);
		mv.addObject("orderCount5", orderCount5);
		mv.addObject("orderCount6", orderCount6);
		mv.addObject("orderCount7", orderCount7);
		mv.addObject("listCount", listCount);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_list");
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 20.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 주문내역 - 검색
	 * @param mv
	 * @param session
	 * @param currentPage
	 * @param order_status
	 * @param history_start_date
	 * @param history_end_date
	 * @return
	 */
	@RequestMapping("my_orderlist.do")
	public ModelAndView MyOrderList(ModelAndView mv, HttpSession session,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String order_status, Date history_start_date, Date history_end_date) {
		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		int orderCount1 = mpService.orderCount1(memNo);
		int orderCount2 = mpService.orderCount2(memNo);
		int orderCount3 = mpService.orderCount3(memNo);
		int orderCount4 = mpService.orderCount4(memNo);
		int orderCount5 = mpService.orderCount5(memNo);
		int orderCount6 = mpService.orderCount6(memNo);
		int orderCount7 = mpService.orderCount7(memNo);
		int resultPoint = mpService.resultPoint(memNo);




		OrdSearch os = new OrdSearch();

		if (order_status.equals("all")) {
			os.setOrd_status("all");
		} else if (order_status.equals("deposit_complete")) {
			os.setOrd_status("A");
		} else if (order_status.equals("shipped_standby")) {
			os.setOrd_status("B");
		} else if (order_status.equals("shipped_begin")) {
			os.setOrd_status("C");
		} else if (order_status.equals("shipped_complete")) {
			os.setOrd_status("D");
		} else if (order_status.equals("order_return_ready")) {
			os.setOrd_status("E");
		} else if (order_status.equals("order_return_complete")) {
			os.setOrd_status("F");
		} else if (order_status.equals("order_return_cancel")) {
			os.setOrd_status("G");
		}

		os.setStart_date(history_start_date);
		os.setEnd_date(history_end_date);

		os.setMemno(memNo);

		System.out.println(os);

		int listCount = mpService.SearchListCount(os);

		System.out.println("listCount : " + listCount);

		PageInfo pi = os.getPageInfo(currentPage, listCount);

		ArrayList<Ord> list = mpService.selectSearchList(pi, os);

		System.out.println("list : " + list);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("orderCount1", orderCount1);
		mv.addObject("orderCount2", orderCount2);
		mv.addObject("orderCount3", orderCount3);
		mv.addObject("orderCount4", orderCount4);
		mv.addObject("orderCount5", orderCount5);
		mv.addObject("orderCount6", orderCount6);
		mv.addObject("orderCount7", orderCount7);
		mv.addObject("listCount", listCount);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("os", os);
		mv.setViewName("mypage_list");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 20.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 반품주문내역 이동
	 * @param mv
	 * @param session
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("mCancel.do")
	public ModelAndView mCancel(ModelAndView mv, HttpSession session,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		int orderCount1 = mpService.orderCount1(memNo);
		int orderCount2 = mpService.orderCount2(memNo);
		int orderCount3 = mpService.orderCount3(memNo);
		int orderCount4 = mpService.orderCount4(memNo);
		int orderCount5 = mpService.orderCount5(memNo);
		int orderCount6 = mpService.orderCount6(memNo);
		int orderCount7 = mpService.orderCount7(memNo);
		int resultPoint = mpService.resultPoint(memNo);




		int listCount = mpService.getCancelListCount(memNo);

		System.out.println("listCount : " + listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Ord> list = mpService.selectCancelList(pi, memNo);

		System.out.println("list : " + list);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("orderCount1", orderCount1);
		mv.addObject("orderCount2", orderCount2);
		mv.addObject("orderCount3", orderCount3);
		mv.addObject("orderCount4", orderCount4);
		mv.addObject("orderCount5", orderCount5);
		mv.addObject("orderCount6", orderCount6);
		mv.addObject("orderCount7", orderCount7);
		mv.addObject("listCount", listCount);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_list_cancel");
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 20.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 반품 주문내역 - 검색
	 * @param mv
	 * @param session
	 * @param currentPage
	 * @param order_status
	 * @param history_start_date
	 * @param history_end_date
	 * @return
	 */
	@RequestMapping("mSearchCancelList.do")
	public ModelAndView mCancelList(ModelAndView mv, HttpSession session,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String order_status, Date history_start_date, Date history_end_date) {

		Member m = (Member) session.getAttribute("loginMember");

		OrdSearch os = new OrdSearch();

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		int orderCount1 = mpService.orderCount1(memNo);
		int orderCount2 = mpService.orderCount2(memNo);
		int orderCount3 = mpService.orderCount3(memNo);
		int orderCount4 = mpService.orderCount4(memNo);
		int orderCount5 = mpService.orderCount5(memNo);
		int orderCount6 = mpService.orderCount6(memNo);
		int orderCount7 = mpService.orderCount7(memNo);
		int resultPoint = mpService.resultPoint(memNo);




		os.setMemno(memNo);
		os.setOrd_status("E");

		os.setStart_date(history_start_date);
		os.setEnd_date(history_end_date);

		System.out.println(os);

		int listCount = mpService.getSearchCancelCount(os);

		System.out.println("listCount : " + listCount);

		PageInfo pi = os.getPageInfo(currentPage, listCount);

		ArrayList<Ord> list = mpService.selectSearchCancelList(pi, os);

		System.out.println("list : " + list);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("orderCount1", orderCount1);
		mv.addObject("orderCount2", orderCount2);
		mv.addObject("orderCount3", orderCount3);
		mv.addObject("orderCount4", orderCount4);
		mv.addObject("orderCount5", orderCount5);
		mv.addObject("orderCount6", orderCount6);
		mv.addObject("orderCount7", orderCount7);
		mv.addObject("listCount", listCount);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("os", os);
		mv.setViewName("mypage_list_cancel");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 내역 출력
	 * @param @param  mv
	 * @param @param  currentPage
	 * @param @param  session
	 * @param @return
	 * @return ModelAndView
	 */
	@RequestMapping("mWishlist.do")
	public ModelAndView mWishlist(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			HttpSession session) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		System.out.println(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		int listCount = mpService.getWishListCount(memNo);

		int resultPoint = mpService.resultPoint(memNo);

		System.out.println("listCount : " + listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<DIBS> list = mpService.selectWishList(pi, memNo);

		System.out.println("list : " + list);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", listCount);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_wishList");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 내의 옵션선택에서 컬러 셀렉트
	 * @param @param  response
	 * @param @param  prdt_no
	 * @param @throws IOException
	 * @return void
	 */
	@RequestMapping("optiondetail.do")
	public void optiondetail(HttpServletResponse response, @RequestParam("prdt_no") int prdt_no) throws IOException {

		System.out.println("prdt_no : " + prdt_no);

		PrintWriter out = response.getWriter();
		// 해당 아이디를 가지고 검색 -> 데이터를 객체로 받아서 json으로 전달

		ArrayList<Product_opt> plist1 = mpService.selectOptionList1(prdt_no);

		System.out.println("plist1 : " + plist1);

		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new Gson();

		gson.toJson(plist1, response.getWriter());

	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 내의 옵션선택에서 사이즈 셀렉트
	 * @param @param  response
	 * @param @param  prdt_no
	 * @param @throws IOException
	 * @return void
	 */
	@RequestMapping("optiondetail2.do")
	public void optiondetail2(HttpServletResponse response, @RequestParam("prdt_no") int prdt_no) throws IOException {

		ArrayList<Product_opt> plist2 = mpService.selectOptionList2(prdt_no);

		System.out.println("plist2 : " + plist2);

		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new Gson();

		gson.toJson(plist2, response.getWriter());

	}

	/**
	 * @작성일 : 2020. 4. 15.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 적립금 이동
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mPoint.do") // 2
	public ModelAndView mPoint(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			HttpSession session) {
		System.out.println(currentPage);

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m); // 사용 가능한 쿠폰 카운팅

		int listCount = mpService.PointListCount(memNo); // 사용 가능한 쿠폰

		System.out.println("listCount : " + listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Point> list = mpService.PointSelectList(memNo, pi);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", listCount);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_point");

		return mv;
	}

	/**
	 * ***** 사용안함 *****
	 *
	 * @작성일 : 2020. 4. 15.
	 * @작성자 : 신경섭
	 * @내용 : 적립금 - 미사용적립금
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mUnavailpoint.do")
	public ModelAndView mUnavailpoint(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			HttpSession session) {
		System.out.println(currentPage);

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int listCount = mpService.PointUnavailListCount(memNo);
		int coupon = mpService.CouponListCount(m); // 사용가능한 쿠폰
		int point = mpService.PointListCount(memNo); // 사용가능한 적립금

		System.out.println("listCount : " + listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Point> list = mpService.PointselectUnavailList(memNo, pi);

		mv.addObject("PointCount", point);
		mv.addObject("CouponCount", coupon);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_unavailpoint");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 15.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 쿠폰 이동
	 * @param @return
	 * @return String
	 */

	@RequestMapping("mCoupon.do")
	public ModelAndView mCoupon(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			HttpSession session) {

		System.out.println(currentPage);

		Member m = (Member) session.getAttribute("loginMember");
		System.out.println(m);
		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int listCount = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		System.out.println("listCount : " + listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<CouponMem> list = mpService.CouponSelectList(memNo, pi);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", listCount);
		mv.addObject("PointCount", point);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_coupon");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 15.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 쿠폰 - 사용완료한 쿠폰
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mCompleteCoupon.do")
	public ModelAndView mCompleteCoupon(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			HttpSession session) {
		System.out.println(currentPage);

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		int listCount = mpService.CompleteCouponListCount(m);
		System.out.println(m);
		System.out.println("listCount : " + listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<CouponMem> list = mpService.CompleteCouponSelectList(memNo, pi);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_completecoupon");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 16.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 내가 쓴 게시글 이동
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mBoard.do")
	public ModelAndView mBoard(ModelAndView mv, HttpSession session,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int coupon = mpService.CouponListCount(m);

		int wishlist = mpService.getWishListCount(memNo);

		int point = mpService.PointListCount(memNo);

		int listCount = mpService.getListCount(memNo);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<MyBoard> list = mpService.selectList(pi, memNo);

		System.out.println("listCount : " + listCount);

		System.out.println("list : " + list);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_board");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 17.
	 * @작성자 : 신경섭
	 * @내용 : 내가 쓴 게시글 검색
	 * @param @param  mv
	 * @param @param  session
	 * @param @param  currentPage
	 * @param @param  search_key
	 * @param @param  search
	 * @param @return
	 * @return ModelAndView
	 */
	@RequestMapping("mBoardsearch.do")
	public ModelAndView mBoardsearch(ModelAndView mv, HttpSession session,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String search_key, String search) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		SearchCondition sc = new SearchCondition();
		sc.setSearch_key(search_key);
		sc.setSearch(search);
		sc.setMemno(memNo);

		if (search_key.equals("writer")) {
			sc.setWriter(search);
		} else if (search_key.equals("title")) {
			sc.setTitle(search);
		}

		System.out.println("**********************: " + sc);

		int listCount = mpService.SearchListCount(sc);

		System.out.println("listCount : " + listCount);

		PageInfo pi = sc.getPageInfo(currentPage, listCount);

		ArrayList<MyBoard> list = mpService.selectSearchList(pi, sc);

		System.out.println("list : " + list);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("listCount", listCount);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("sc", sc);
		mv.setViewName("mypage_board");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 25.
	 * @작성자 : 신경섭
	 * @내용 : 내가 쓴 리뷰 리스트 출력
	 * @param @param  mv
	 * @param @param  session
	 * @param @param  currentPage
	 * @param @return
	 * @return ModelAndView
	 */
	@RequestMapping("mReview.do")
	public ModelAndView mReview(ModelAndView mv, HttpSession session,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int coupon = mpService.CouponListCount(m);

		int wishlist = mpService.getWishListCount(memNo);

		int point = mpService.PointListCount(memNo);

		int listCount = mpService.getReviewListCount(memNo);

		PageInfo pi = ReviewPagination.getPageInfo(currentPage, listCount);

		ArrayList<Review> list = mpService.selectReviewList(pi, memNo);
		ArrayList<Review_count> rc = rService.selectReviewCount();

		System.out.println("listCount : " + listCount);

		System.out.println("list : " + list);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("listCount", listCount);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("rc", rc);

		mv.setViewName("mypage_review");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 25.
	 * @작성자 : 신경섭
	 * @내용 : 내가 쓴 리뷰 검색
	 * @param @param  mv
	 * @param @param  session
	 * @param @param  currentPage
	 * @param @param  reviewSearch
	 * @param @return
	 * @return ModelAndView
	 */
	@RequestMapping("mSearchReview.do")
	public ModelAndView mSearchReview(ModelAndView mv, HttpSession session,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			String reviewSearch) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		ReviewSearch rs = new ReviewSearch();

		rs.setSearch(reviewSearch);
		rs.setMemno(memNo);

		int coupon = mpService.CouponListCount(m);

		int wishlist = mpService.getWishListCount(memNo);

		int point = mpService.PointListCount(memNo);

		int listCount = mpService.getSearchReviewCount(rs);

		PageInfo pi = rs.getPageInfo(currentPage, listCount);

		ArrayList<Review> list = mpService.selectSearchReviewList(pi, rs);

		System.out.println("listCount : " + listCount);

		System.out.println("list : " + list);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("listCount", listCount);
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("rs", rs);
		mv.setViewName("mypage_review");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 3.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 배송 주소록 이동
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mAddress.do")
	public ModelAndView mAddress(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			HttpSession session) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		System.out.println(currentPage);

		int listCount = mpService.getAddressCount(m);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Address> adlist = mpService.selectAddressList(pi, m);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("adlist", adlist);
		mv.addObject("pi", pi);
		mv.setViewName("mypage_address");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 3.
	 * @작성자 : 신경섭
	 * @내용 : 마이페이지 회원정보수정 이동
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mEdit.do")
	public ModelAndView mEdit(ModelAndView mv, HttpSession session) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.setViewName("mypage_memberEdit");
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 4.
	 * @작성자 : 신경섭
	 * @내용 : 회원정보수정 - 환불계좌 페이지
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mAccount.do")
	public String mAccount() {
		return "mypage_member_account";
	}

	/**
	 * @작성일 : 2020. 4. 4.
	 * @작성자 : 신경섭
	 * @내용 : 배송 주소록 - 배송지 등록
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mAddress_register.do")
	public ModelAndView mAddress_register(ModelAndView mv, HttpSession session) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.setViewName("mypage_address_register");
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 4.
	 * @작성자 : 신경섭
	 * @내용 : 배송 주소록 - 수정페이지
	 * @param @return
	 * @return String
	 */
	@RequestMapping("mAddress_modify.do")
	public ModelAndView mAddress_modify(ModelAndView mv, int mAddress, HttpSession session) {

		Member m = (Member) session.getAttribute("loginMember");

		int memNo = m.getMemNo();

		int wishlist = mpService.getWishListCount(memNo);

		int coupon = mpService.CouponListCount(m);

		int point = mpService.PointListCount(memNo);

		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);

		Address ad = mpService.ModifyAddress(mAddress);

		int resultPoint = mpService.resultPoint(memNo);

		mv.addObject("resultPoint",resultPoint);
		mv.addObject("WishList", wishlist);
		mv.addObject("CouponCount", coupon);
		mv.addObject("PointCount", point);
		mv.addObject("ad", ad);
		mv.setViewName("mypage_address_modify");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 18.
	 * @작성자 : 우예진
	 * @내용 : 배송지 주소록 업데이트
	 * @param ad
	 * @param postcode1
	 * @param address1
	 * @param address2
	 * @param mobile1
	 * @param mobile2
	 * @param mobile3
	 * @param session
	 * @return
	 */
	@RequestMapping("AddressUpdate.do")
	public String AddressUpdate(Address ad, @RequestParam("postcode1") String postcode1,
			@RequestParam("address1") String address1, @RequestParam("address2") String address2,
			@RequestParam("mobile1") String mobile1, @RequestParam("mobile2") String mobile2,
			@RequestParam("mobile3") String mobile3, HttpSession session) {

		// 주소데이터들 ","를 구분자로 지정
		if (!postcode1.contentEquals("")) {
			ad.setAdAddress(postcode1 + "," + address1 + "," + address2);
		}
		if (!mobile1.contentEquals("")) {
			ad.setAdPhone(mobile1 + "-" + mobile2 + "-" + mobile3);
		}

		int result = mpService.AddressUpdate(ad);

		if (result > 0) {
			return "redirect:mAddress.do";
		} else {
			return null;
		}
	}

	@RequestMapping("AddressDelete.do")
	public void AddressDelete(int[] adNokArr, HttpServletResponse response, HttpSession session) throws IOException {

		PrintWriter out = response.getWriter();

		ArrayList<Address> NokArr = new ArrayList<Address>();

		for (int i = 0; i < adNokArr.length; i++) {
			Address ad = new Address();
			ad.setAdNo(adNokArr[i]);
			NokArr.add(ad);
		}

		int result = mpService.AddressDelete(NokArr);

		if (result > -2) {
			out.print("ok");
		} else {
			out.print("fail");

		}

	}

	/**
	 * @작성일 : 2020. 4. 18.
	 * @작성자 : 우예진
	 * @내용 : 배송지 insert
	 * @param ad
	 * @return
	 */
	@RequestMapping("mAddress_insert.do")
	public String mAddress_insert(Address ad, @RequestParam("postcode1") String postcode1,
			@RequestParam("address1") String address1, @RequestParam("address2") String address2,
			@RequestParam("mobile1") String mobile1, @RequestParam("mobile2") String mobile2,
			@RequestParam("mobile3") String mobile3, HttpSession session) {

		Member m = (Member) session.getAttribute("loginMember");
		ad.setMemNo(m.getMemNo());

		// 주소데이터들 ","를 구분자로 지정
		if (!postcode1.contentEquals("")) {
			ad.setAdAddress(postcode1 + "," + address1 + "," + address2);
		}
		if (!mobile1.contentEquals("")) {
			ad.setAdPhone(mobile1 + "-" + mobile2 + "-" + mobile3);
		}

		int result = mpService.mAddressInsert(ad);

		if (result > 0) {
			return "redirect:mAddress.do";
		} else {
			return null;
		}
	}

	/**
	 * @작성일 : 2020. 4. 20.
	 * @작성자 : 문태환
	 * @내용 : 마이페이지 반품신청 이동
	 * @param mv
	 * @param ordNo
	 * @return
	 */
	@RequestMapping("MypageReturn.do")
	public ModelAndView MypageReturn(ModelAndView mv, int ordNo) {

		mv.addObject("ordNo", ordNo);
		mv.setViewName("mypage_return_write");
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 20.
	 * @작성자 : 문태환
	 * @내용 : 반품신청 인설트
	 * @param r
	 * @param session
	 * @return
	 */
	@RequestMapping("ReturnInsert.do")
	public String ReturnInsert(Return r, HttpSession session) {
		Member m = (Member) session.getAttribute("loginMember");

		r.setMemCode(m.getMemNo());
		int ordNo = r.getOrdCode();
		System.out.println(ordNo);
		int result = mpService.ReturnInsert(r);

		int result2 = adService.orderUpdate4(ordNo);

		return "redirect:mList.do";

	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 추가
	 * @param @param  session
	 * @param @param  prdt_no
	 * @param @param  dibs_count
	 * @param @param  dibs_size
	 * @param @param  dibs_color
	 * @param @return
	 * @return String
	 */
	@RequestMapping("insertwishlist.do")
	public String insertwishlist(HttpSession session, int prdt_no, int dibs_count, String dibs_size,
			String dibs_color) {

		System.out.println("dibs_count : " + dibs_count);
		System.out.println("dibs_size : " + dibs_size);
		System.out.println("dibs_color : " + dibs_color);
		Member m = (Member) session.getAttribute("loginMember");

		DIBS d = new DIBS();
		d.setPrdt_no(prdt_no);
		d.setDibs_count(dibs_count);
		d.setDibs_size(dibs_size);
		d.setDibs_color(dibs_color);
		d.setMemno(m.getMemNo());

		int result = mpService.insertwishlist(d);

		if (result > 0) {
			return "redirect:mWishlist.do";
		} else {
			return "";
		}
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 수정
	 * @param @param  dibsno
	 * @param @param  dibs_count
	 * @param @param  dibs_size
	 * @param @param  dibs_color
	 * @param @return
	 * @return String
	 */
	@RequestMapping("updatewishlist.do")
	public String updatewishlist(int dibsno, int dibs_count, String dibs_size, String dibs_color) {

		System.out.println("dibsno : " + dibsno);

		DIBS d = new DIBS();
		d.setDibs_count(dibs_count);
		d.setDibs_size(dibs_size);
		d.setDibs_color(dibs_color);
		d.setDibsno(dibsno);
		int result = mpService.updatewishlist(d);

		if (result > 0) {
			return "redirect:mWishlist.do";
		} else {
			return "";
		}
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 게시글내의 삭제버튼
	 * @param @param  dibsno
	 * @param @param  response
	 * @param @throws IOException
	 * @return void
	 */
	@RequestMapping("selectDelete.do")
	public void selectDelete(int dibsno, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();

		int result = mpService.selectDelete(dibsno);

		if (result > 0) {
			out.print("ok");
		} else {
			out.print("fail");
		}
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 전체 비우기
	 * @param @param  response
	 * @param @param  memno
	 * @param @throws IOException
	 * @return void
	 */
	@RequestMapping("deletewishAll.do")
	public void deletewishAll(HttpServletResponse response, int memno) throws IOException {

		PrintWriter out = response.getWriter();

		int result = mpService.deletewishAll(memno);

		if (result > 0) {
			out.print("ok");
		} else {
			out.print("fail");
		}
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 체크박스 선택 삭제
	 * @param @param  wishArr
	 * @param @param  response
	 * @param @param  session
	 * @param @throws IOException
	 * @return void
	 */
	@RequestMapping("wishlistdelete.do")
	public void WishListDelete(int[] wishArr, HttpServletResponse response, HttpSession session) throws IOException {

		PrintWriter out = response.getWriter();

		ArrayList<DIBS> noArr = new ArrayList<DIBS>();

		for (int i = 0; i < wishArr.length; i++) {
			DIBS d = new DIBS();
			d.setDibsno(wishArr[i]);
			noArr.add(d);
			System.out.println("dsadasdas : " + d);
		}

		int result = mpService.deleteWishlist(noArr);

		System.out.println(result);
		if (result > -2) {
			out.print("ok");
		} else {
			out.print("fail");
		}
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 문태환
	 * @내용 : 선택 상품 장바구니 담기
	 * @param @param  wishArr
	 * @param @return
	 * @return String
	 */
	@RequestMapping("Insertbasket.do")
	public String Insertbasket(int[] wishArr) {

		ArrayList<DIBS> wish = new ArrayList<DIBS>();

		for (int i = 0; i < wishArr.length; i++) {
			DIBS c = new DIBS();
			c.setDibsno(wishArr[i]);
			wish.add(c);
		}

		ArrayList<DIBS> dlist = mpService.selectDlist(wish);// product 테이블에서 체크한 항목 가져옴
		System.out.println("dlist" + dlist);
		ArrayList<Cart> clist = new ArrayList<Cart>();

		for (int i = 0; i < dlist.size(); i++) {
			Cart c = new Cart();

			c.setMemNo(dlist.get(i).getMemno());
			c.setPrdt_no(dlist.get(i).getPrdt_no());
			c.setPrdt_count(dlist.get(i).getDibs_count());
			c.setPrdt_color(dlist.get(i).getDibs_color());
			c.setPrdt_size(dlist.get(i).getDibs_size());
			c.setPrdt_price(dlist.get(i).getPrdt_price());
			c.setPrdt_sumprice((dlist.get(i).getDibs_count() * dlist.get(i).getPrdt_price()));

			clist.add(c);
		}

		int result = mpService.insertCartList(clist);

		if (result > -2) {
			int result2 = mpService.deleteDlist(wish);

			return "redirect:mWishlist.do";
		}
		return "에러다";
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 신경섭
	 * @내용 : 위시리스트 선택한 상품 바로 구매
	 * @param @param  dibsno
	 * @param @return
	 * @return String
	 */
	@RequestMapping("wishBuynow.do")
	public String wishBuynow(int dibsno) {

		DIBS d = mpService.selectOneBuynow(dibsno);

		System.out.println("d : " + d);

		Cart c = new Cart();

		c.setMemNo(d.getMemno());
		c.setPrdt_no(d.getPrdt_no());
		c.setPrdt_count(d.getDibs_count());
		c.setPrdt_color(d.getDibs_color());
		c.setPrdt_size(d.getDibs_size());
		c.setPrdt_price(d.getPrdt_price());
		c.setPrdt_sumprice((d.getDibs_count() * d.getPrdt_price()));

		int result = mpService.InsertOneCart(c);

		if (result > 0) {
			int result2 = mpService.deleteOneList(d);

			if (result2 > 0) {
				return "redirect:cartbutton.do";
			} else {
				return "";
			}
		} else {
			return "";
		}
	}

	@RequestMapping("mReviewSort.do")
	public void mReviewSort(String Sort, HttpServletResponse response, HttpSession session,
							@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) throws JsonIOException, IOException {
		Member m = (Member)session.getAttribute("loginMember");
		int memNo = m.getMemNo();

		ArrayList<Review> list = new ArrayList();
		ArrayList<Review_count> rc = rService.selectReviewCount();

		int listCount = mpService.getReviewListCount(memNo);

		System.out.println("listCount : " + listCount);

		PageInfo pi = ReviewPagination.getPageInfo(currentPage,listCount);

		if (Sort.equals("last")) {
			list = mpService.selectLastSort(pi, memNo);
			System.out.println(list);
		} else if (Sort.equals("like")) {
			list = mpService.selectLikeSort(pi, memNo);
			System.out.println(list);
		} else if (Sort.equals("star")) {
			list = mpService.selectStarSort(pi, memNo);
			System.out.println(list);
		}

		System.out.println("list : " + list);
		response.setContentType("appliction/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		Map hmap = new HashMap();
		hmap.put("list", list);
		hmap.put("pi", pi);
		hmap.put("rc", rc);

		gson.toJson(hmap, response.getWriter());

	}

	@RequestMapping("reviewDelete.do")
	@ResponseBody
	public String reviewDelete(int rv_no, HttpServletResponse response, HttpSession session) throws JsonIOException, IOException {
		int result1=0;
		int result2=0;
		int result3=0;
		int result4=0;

			result1 = mpService.reviewDelete1(rv_no);
			result2 = mpService.reviewDelete2(rv_no);
			result3 = mpService.reviewDelete3(rv_no);
			result4 = mpService.reviewDelete4(rv_no);


		if(result4>0) {
			return "ok";
		}else{
			return "fail";
		}

	}

}

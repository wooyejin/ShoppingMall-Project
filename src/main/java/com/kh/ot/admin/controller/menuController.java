package com.kh.ot.admin.controller;

import java.awt.List;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.ot.admin.servie.adminService;
import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.admin.vo.Design;
import com.kh.ot.admin.vo.DownCategory;
import com.kh.ot.admin.vo.Point;
import com.kh.ot.admin.vo.PrdtConnect;
import com.kh.ot.admin.vo.UpCategory;
import com.kh.ot.board.service.BoardService;
import com.kh.ot.board.vo.Board;
import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.cart.service.CartService;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.cart.vo.Pay;
import com.kh.ot.common.MainPagination2;
import com.kh.ot.common.Pagination;
import com.kh.ot.main.service.MainService;
import com.kh.ot.main.vo.MainPageInfo2;
import com.kh.ot.main.vo.Product;
import com.kh.ot.main.vo.Product_color;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.Return;
import com.kh.ot.review.service.ReviewService;
import com.kh.ot.review.vo.Review;
import com.kh.ot.review.vo.ReviewReply;

@SessionAttributes("loginMember")
@Controller
public class menuController {

	  @Autowired
	  private ReviewService rService;
	  
	@Autowired
	private adminService adService;

	@Autowired
	private BoardService bService;

	@Autowired
	private MainService mainService;

	@Autowired
	   private CartService cService;
	/**
	 * @작성일 : 2020. 4. 4.
	 * @작성자 : 이서현
	 * @내용 : ADMIN VIEW 연결
	 */
	/**
	 * @작성일 : 2020. 4. 25.
	 * @작성자 : 이서현
	 * @내용 : TOP5인기순위, 오늘 현황 
	 */
	@RequestMapping("todayMain.ad")
	public ModelAndView todayMain(ModelAndView mv) {
		
		ArrayList<Product> plist = adService.topSelect();
		//오늘의 QNA
		int qnaResult = adService.todayQnAselect();
		int returnResult = adService.todayReturnSelect();
		int scountResult = 0;
		int spriceResult = 0;
		 scountResult = adService.todayScountSelect();
		 spriceResult = adService.todaySpriceSelect();
		
		 ArrayList<Pay> week = cService.weekList();
		 ArrayList<Pay> weekPay = cService.weekPayList();
		 
		 for(int i=0;i<week.size();i++) {
			 for(int j=0;j<weekPay.size();j++) {
				 if(week.get(i).getWeek().equals(weekPay.get(j).getWeek())) {
					 week.get(i).setSumprice(weekPay.get(j).getSumprice());
				 }
			 }
		 }
 		 
		 System.out.println("week : " + week);
		mv.addObject("week",week); 
		mv.addObject("plist",plist);
		mv.addObject("qnaResult",qnaResult);
		mv.addObject("returnResult",returnResult);
		mv.addObject("scountResult",scountResult);
		mv.addObject("spriceResult",spriceResult);
		mv.setViewName("admin/todaymain");
		
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 27.
	 * @작성자 : 이서현
	 * @내용 : 월별 판매량 
	 */
	@RequestMapping("todayChart.ad")
	public ModelAndView todayChart(ModelAndView mv) {
		
		ArrayList<Pay> month = adService.monthScountList();
		ArrayList<Pay> monthPay = adService.monthPayList();
		
		for(int i=0;i<month.size();i++) {
			 for(int j=0;j<monthPay.size();j++) {
				 if(month.get(i).getWeek().equals(monthPay.get(j).getWeek())) {
					 month.get(i).setSumprice(monthPay.get(j).getSumprice());
				 }
			 }
		 }
		System.out.println("month : " + month);
		mv.addObject("month",month);
		mv.addObject("monthPay",monthPay);
		mv.setViewName("admin/todaychart");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 이서현
	 * @내용 : 상품순위 리스트
	 */
	@RequestMapping("best.ad")
	public ModelAndView best(ModelAndView mv) {
		ArrayList<Product> plist = adService.ProductSelectListBest();
		
		mv.addObject("plist",plist);
		mv.setViewName("admin/best");
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 19.
	 * @작성자 : 이서현
	 * @내용 : 회원관리 리스트
	 */
	@RequestMapping("customer.ad")
	public ModelAndView customer(ModelAndView mv) {
		
		ArrayList<Member> mlist = adService.selectMember();
		
		mv.addObject("mlist", mlist);
		mv.setViewName("admin/customer");
		return mv;
	}
	
	/**
	 * @작성일 : 2020. 4. 23.
	 * @작성자 : 이서현
	 * @내용 : 회원관리 리스트 디테일
	 */
	@RequestMapping("customerDetail.ad")
	public ModelAndView customerDetail(ModelAndView mv, int memNo) {
		
		Member m = adService.selectOneMember(memNo);
		ArrayList<Ord> olist = adService.selectOrder(memNo);
		ArrayList<Product> plist = adService.ProductSelectList();
		
		if(m!=null) {
			mv.addObject("plist",plist);
			mv.addObject("m",m).setViewName("admin/customerDetail");
			mv.addObject("olist",olist).setViewName("admin/customerDetail");
			
		}else {
			mv.addObject("msg","상품관리 상세조회 실패").setViewName("common/errorPage");
		}
		
		return mv;
	}

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  :  문태환 
	 * @내용 	: 오더리스트 상태값 A 리스트
	 * @param mv
	 * @return
	 */
	@RequestMapping("order.ad")
	public ModelAndView order(ModelAndView mv) {
		
		ArrayList<Ord> odlist = adService.selectOderList1();
		
		
		mv.addObject("odlist",odlist);
		mv.setViewName("admin/order");
		return mv;
	}
	
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환 
	 * @내용 	: 오더리스트 A 상태값 변경
	 * @param response
	 * @param ordNo
	 * @throws IOException
	 */
	@RequestMapping("orderUpdate1.ad")
	public void orderUpdate1(HttpServletResponse response , int ordNo) throws IOException {
		
		PrintWriter out  = response.getWriter();
		
		int result = adService.orderUpdate1(ordNo);
		
		if(result > 0) {
			out.print("ok");
		}else {
			out.print("fail");
		}
		
	}
	
	
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환 
	 * @내용 	: 오더리스트 상태값 B
	 * @param mv
	 * @return
	 */
	@RequestMapping("order_2.ad")
	public ModelAndView order2(ModelAndView mv) {
		
		ArrayList<Ord> odlist = adService.selectOderList2();
		
		
		mv.addObject("odlist",odlist);
		mv.setViewName("admin/order_2");
		return mv;
	}
	
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환 
	 * @내용 	: 오더리스트 B 상태값 변경
	 * @param response
	 * @param ordNo
	 * @throws IOException
	 */
	@RequestMapping("orderUpdate2.ad")
	public void orderUpdate2(HttpServletResponse response , int ordNo) throws IOException {
		
		PrintWriter out  = response.getWriter();
		
		int result = adService.orderUpdate2(ordNo);
		
		if(result > 0) {
			out.print("ok");
		}else {
			out.print("fail");
		}
		
	}

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환 
	 * @내용 	: 오더리스트 상태값 C
	 * @param mv
	 * @return
	 */
	@RequestMapping("order_3.ad")
	public ModelAndView order3(ModelAndView mv) {
		
		ArrayList<Ord> odlist = adService.selectOderList3();
		
		
		mv.addObject("odlist",odlist);
		mv.setViewName("admin/order_3");
		return mv;
	}
	
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환 
	 * @내용 	: 오더리스트 C 상태값 변경
	 * @param response
	 * @param ordNo
	 * @throws IOException
	 */
	@RequestMapping("orderUpdate3.ad")
	public void orderUpdate3(HttpSession session,HttpServletResponse response , int ordNo) throws IOException {
		
		PrintWriter out  = response.getWriter();
		
		int result = adService.orderUpdate3(ordNo);
		
		Member m = (Member)session.getAttribute("loginMember");
		Member mpo = new Member();
		Pay pa = adService.selectPay(ordNo);
		Point pot = new Point();
		
		pot.setMemno(m.getMemNo());
		pot.setOrdno(ordNo);
		pot.setPt_price(pa.getSumprice());
		pot.setPt_content("상품구입");
		
		
		mpo.setMemNo(m.getMemNo());
		mpo.setMem_point(pa.getSumprice());
		
		
		
		int result2 = cService.updateMemPoint(mpo);
		int result3 = cService.insertPoint(pot);
		
		
		if(result > 0) {
			out.print("ok");
		}else {
			out.print("fail");
		}
	}
	
	
	
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환 
	 * @내용 	: 오더리스트 상태값 D
	 * @param mv
	 * @return
	 */
	@RequestMapping("order_4.ad")
	public ModelAndView order4(ModelAndView mv) {
		
		ArrayList<Ord> odlist = adService.selectOderList4();
		
		System.out.println("odlist : "+odlist);
		
		mv.addObject("odlist",odlist);
		mv.setViewName("admin/order_4");
		return mv;
	}
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환 
	 * @내용 	: 오더리스트 D 상태값 변경
	 * @param response
	 * @param ordNo
	 * @throws IOException
	 */
	@RequestMapping("orderUpdate4.ad")
	public void orderUpdate4(HttpServletResponse response , int ordNo) throws IOException {
		
		PrintWriter out  = response.getWriter();
		
		int result = adService.orderUpdate4(ordNo);
		
		if(result > 0) {
			out.print("ok");
		}else {
			out.print("fail");
		}
	}
	

	@RequestMapping("category.ad")
	public String category() {
		return "admin/category";
	}

	/**
	 * @작성일 : 2020. 4. 15.
	 * @작성자 : 이서현
	 * @내용 : 상품등록 리스트 뿌리기
	 */
	@RequestMapping("productAdd.ad")
	public ModelAndView productAdd(ModelAndView mv) {

		ArrayList<UpCategory> ulist = adService.UpCategorySelect();
		ArrayList<DownCategory> dlist = adService.DownCategorySelect();
		ArrayList<Product_color> pclist = mainService.selectColorList2();

		mv.addObject("ulist", ulist);
		mv.addObject("dlist", dlist);
		mv.addObject("pclist", pclist);
		mv.setViewName("admin/productAdd");
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 19.
	 * @작성자 : 이서현
	 * @내용 : 상품리스트  리스트
	 */
	@RequestMapping("productList.ad")
	public ModelAndView productList(ModelAndView mv) {
		ArrayList<Product> plist = adService.ProductSelectList();
		ArrayList<UpCategory> ulist = adService.UpCategorySelect();
		ArrayList<DownCategory> dlist = adService.DownCategorySelect();
		
		mv.addObject("ulist", ulist);
		mv.addObject("dlist", dlist);
		mv.addObject("plist", plist);
		mv.setViewName("admin/productList");
		return mv;
	}
	
	/**
	 * @작성일 : 2020. 4. 21.
	 * @작성자 : 이서현
	 * @내용 : 상품리스트디테일 리스트 
	 */
	@RequestMapping("productListDetail.ad")
	public ModelAndView productListDetail(ModelAndView mv, int prdtNo) {
		
//		그냥 뿌려주기 
		ArrayList<UpCategory> ulist = adService.UpCategorySelect();
		ArrayList<DownCategory> dlist = adService.DownCategorySelect();
		ArrayList<Product_color> clist = mainService.selectColorList2();
		
		
		Product p = adService.listProductSelectList(prdtNo);
		ArrayList<Product_opt> oplist = adService.listProductOptSelectList(prdtNo);
		
		if(p!=null) {
			mv.addObject("ulist", ulist);
			mv.addObject("dlist", dlist);
			mv.addObject("clist",clist);
			
			mv.addObject("p", p).setViewName("admin/productListDetail");
			 mv.addObject("oplist",oplist).setViewName("admin/productListDetail"); 
		}else {
			mv.addObject("msg","상품관리 상세조회 실패").setViewName("common/errorPage");
		}
	
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 13.
	 * @작성자 : 문태환
	 * @내용 : 이벤트 페이지 쿠폰리스트 뿌리기
	 * @param mv
	 * @return
	 */
	@RequestMapping("eventAdd.ad")
	public ModelAndView eventAdd(ModelAndView mv) {

		ArrayList<Coupon> clist = adService.selectListCoupon();

		if (!clist.isEmpty()) {
			mv.addObject("clist", clist);
			mv.setViewName("admin/coupon");
		} else {
			mv.setViewName("admin/coupon");
			System.out.println("리스트 비었다 확인");
		}

		return mv;
	}
	
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 쿠폰 업데이트
	 * @return
	 */
	@RequestMapping("couponUpdate.ad")
	public String couponUpdate(int[] cpNo, int[] cpDiscount ) {
		
		ArrayList<Coupon> cplist = new ArrayList<Coupon>();
		
		
		for(int i=0;i<cpNo.length;i++) {
		Coupon cp = new Coupon();
		cp.setCpNo(cpNo[i]);
		cp.setCpDiscount(cpDiscount[i]);
		
		cplist.add(cp);
		
		}
		
		int result = adService.couponUpdate(cplist);
		
		
		return "redirect:eventAdd.ad";
	}

	@RequestMapping("eventList.ad")
	public String eventList() {
		return "admin/eventList";
	}

	/**
	 * @작성일 : 2020. 4. 13.
	 * @작성자 : 문태환
	 * @내용 :디자인 페이지 리스트 뿌리기
	 * @param mv
	 * @return
	 */
	@RequestMapping("DesignEdit.ad")
	public ModelAndView DesignEdit(ModelAndView mv) {

		ArrayList<Design> mainList = adService.selectMainList();
		Design video = adService.selectVideo();
		ArrayList<Design> instaList = adService.selectInstaList();
		Design prdtimg = adService.selectPrdtImg();
		
		System.out.println(mainList);

		mv.addObject("prdtimg",prdtimg);
		mv.addObject("mainList", mainList);
		mv.addObject("video", video);
		mv.addObject("instaList", instaList);
		mv.setViewName("admin/DesignEdit");

		return mv;

	}

	/**
	 * @작성일 : 2020. 4. 13.
	 * @작성자 : 문태환
	 * @내용 : 상품문의 리스트 뿌리기
	 * @param mv
	 * @return
	 */
	@RequestMapping("QnA_Product.ad")
	public ModelAndView QnA_Product(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		int b_cate_no = 1;

		ArrayList<Board> list = adService.selectList(b_cate_no);

		System.out.println("list" + list);

		mv.addObject("list", list);
		mv.setViewName("admin/QnA_Product");

		return mv;

	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송문의 게시판 리스트 뿌리기
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("QnA_del.ad")
	public ModelAndView QnA_del(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		int b_cate_no = 2;

		ArrayList<Board> list = adService.selectList(b_cate_no);

		System.out.println("list" + list);

		mv.addObject("list", list);
		mv.setViewName("admin/QnA_del");

		return mv;

	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송전 문의 리스트 뿌리기
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("QnA_delivery_cancel.ad")
	public ModelAndView QnA_delivery_cancel(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		int b_cate_no = 3;

		ArrayList<Board> list = adService.selectList(b_cate_no);

		System.out.println("list" + list);

		mv.addObject("list", list);
		mv.setViewName("admin/QnA_delivery_cancel");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송후 문의 게시판 뿌리기
	 * @return
	 */
	@RequestMapping("QnA_delivery_after.ad")
	public ModelAndView productReturn(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		int b_cate_no = 4;

		ArrayList<Board> list = adService.selectList(b_cate_no);

		System.out.println("list" + list);

		mv.addObject("list", list);
		mv.setViewName("admin/QnA_delivery_after");

		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 입금관련 문의 리스트
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("QnA_bank_insert.ad")
	public ModelAndView QnA_bank_insert(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		int b_cate_no = 5;

		ArrayList<Board> list = adService.selectList(b_cate_no);

		System.out.println("list" + list);

		mv.addObject("list", list);
		mv.setViewName("admin/QnA_bank_insert");

		return mv;
	}
	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 불량상품 문의 리스트
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("QnA_bad_product.ad")
	public ModelAndView QnA_bad_product(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		int b_cate_no = 6;

		ArrayList<Board> list = adService.selectList(b_cate_no);

		System.out.println("list" + list);

		mv.addObject("list", list);
		mv.setViewName("admin/QnA_bad_product");

		return mv;
	}

	@RequestMapping("status.ad")
	public String status() {
		return "admin/status";
	}

	@RequestMapping("QnA_bank_detail.ad")
	public String QnA_bank_detail() {
		return "admin/QnA_bank_detail";
	}

	@RequestMapping("QnA_bad_detail.ad")
	public String QnA_bad_detail() {
		return "admin/QnA_bad_detail";
	}

	@RequestMapping("QnA_delivery_detail.ad")
	public String QnA_delivery_detail() {
		return "admin/QnA_delivery_detail";
	}

	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 문태환 
	 * @내용 	: 반품 게시판 리스트 뿌리
	 * @param mv
	 * @return
	 */
	@RequestMapping("productReturn_list.ad")
	public ModelAndView productReturn_list(ModelAndView mv) {
		
		ArrayList<Return> rlist = adService.productReturnlist();
		
		
		mv.addObject("rlist",rlist);
		mv.setViewName("admin/productReturn_list");
		
		return mv;
	}

	@RequestMapping("review_list.ad")
	public ModelAndView review_list(@RequestParam(value="currentPage", 
		    required=false,defaultValue="1") int currentPage,ModelAndView mv) {
		
		
		int listCount = rService.selectListCount();
		MainPageInfo2 pi = MainPagination2.getPageInfo(currentPage, listCount);
		
		ArrayList<Review> rlist =   rService.selectReviewList(pi);
		
		mv.addObject("rlist",rlist);
		mv.setViewName( "admin/review_list");
		return mv;
		
	}

	@RequestMapping("review_report_list.ad")
	public ModelAndView review_report_list(ModelAndView mv) {
		
		ArrayList<Review> rlist =   rService.selectReviewReportList();
		
		mv.addObject("rlist",rlist);
		mv.setViewName( "admin/review_report_list");
		return mv;
	}

//	기능 시작

	/**
	 * @작성일 : 2020. 4. 7.
	 * @작성자 : 문태환
	 * @내용 : 쿠폰등록
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("couponInput.do")
	public void couponInput(HttpServletResponse response, String[] cpName, int[] cpDiscount) throws IOException {

		ArrayList<Coupon> clist = new ArrayList<Coupon>();

		for (int i = 0; i < cpName.length; i++) {
			Coupon co = new Coupon();
			System.out.println("cpName : " + cpName[i]);
			System.out.println(cpDiscount[i]);
			co.setCpName(cpName[i]);
			co.setCpDiscount(cpDiscount[i]);
			clist.add(co);
		}
		System.out.println("clist" + clist);

		int result = adService.couponInput(clist);

		PrintWriter out = response.getWriter();
		if (result > 0) {
			out.print("ok");
		} else {
			out.print("fail");
		}
	}

	/**
	 * @작성일 : 2020. 4. 8.
	 * @작성자 : 문태환
	 * @내용 :쿠폰삭제
	 * @param response
	 * @param cpName
	 * @throws IOException
	 */
	@RequestMapping("couponDelete.ad")
	public void couponDelete(HttpServletResponse response, String cpName) throws IOException {

		int result = adService.couponDelete(cpName);

		PrintWriter out = response.getWriter();

		if (result > 0) {
			out.print("ok");
		} else {
			out.print("fail");
		}
	}

	/**
	 * @작성일 : 2020. 4. 8.
	 * @작성자 : 문태환
	 * @내용 : 디자인 업데이트
	 * @param d
	 * @param request
	 * @param session
	 * @param uploadFile
	 * @return
	 */
	@RequestMapping(value = "DesignEd.do", method = RequestMethod.POST)
	public String DesignEd(int[] no, String[] mainComment, String[] mainLink, HttpServletRequest request,
			HttpSession session, @RequestParam(name = "mainbaner", required = false) MultipartFile[] uploadFile) {

		ArrayList<Design> dlist = new ArrayList<Design>();
		for (int i = 0; i < no.length - 1; i++) {
			Design d = new Design();

			if (!uploadFile[i].getOriginalFilename().equals("")) {
				// 서버에 업로드
				// saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드

				String renameFileName = saveFile(uploadFile[i], request);

				if (renameFileName != null) {
					d.setDeNo(no[i]);
					d.setMainComment(mainComment[i]);
					d.setMainLink(mainLink[i]);
					d.setOriFile(uploadFile[i].getOriginalFilename());// DB에는 파일명 저장
					d.setReFile(renameFileName);
					dlist.add(d);
				}
			}
		}
		int result = adService.DesignEd(dlist);

		return "redirect:home.do";
	}

	@RequestMapping(value = "DesignEdVideo.do", method = RequestMethod.POST)
	public String DesignEdVideo(HttpServletRequest request,
			@RequestParam(name = "mainvideo", required = false) MultipartFile uploadFile) {
		Design d = new Design();

		if (!uploadFile.getOriginalFilename().equals("")) {
			// 서버에 업로드
			// saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드
			String renameFileName = saveFile(uploadFile, request);
			if (renameFileName != null) {
				d.setReFile(renameFileName);
			}
		}
		int result = adService.DesignEdVideo(d);

		if (result > -1) {
			return "redirect:home.do";
		} else {
			return "에러야";
		}
	}

	/**
	 * @작성일 : 2020. 4. 11.
	 * @작성자 : 문태환
	 * @내용 :인스타 업데이트
	 * @param inno
	 * @param instalink
	 * @param request
	 * @param session
	 * @param uploadFile
	 * @return
	 */
	@RequestMapping(value = "DesignInsta.do", method = RequestMethod.POST)
	public String DesignInsta(int[] inno, String[] instalink, String[] instacomment, HttpServletRequest request,
			HttpSession session, @RequestParam(name = "instaimg", required = false) MultipartFile[] uploadFile) {

		ArrayList<Design> dlist = new ArrayList<Design>();
		for (int i = 0; i < inno.length ; i++) {
			Design d = new Design();

			if (!uploadFile[i].getOriginalFilename().equals("")) {
				// 서버에 업로드
				// saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드

				String renameFileName = saveFile(uploadFile[i], request);

				if (renameFileName != null) {
					d.setDeNo(inno[i]);
					d.setMainLink(instalink[i]);
					d.setMainComment(instacomment[i]);
					d.setOriFile(uploadFile[i].getOriginalFilename());// DB에는 파일명 저장
					d.setReFile(renameFileName);
					dlist.add(d);
				}
			}
		}
		int result = adService.DesignInsta(dlist);

		return "redirect:home.do";

	}
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 상품배너 등록
	 * @param prdtcomment
	 * @param request
	 * @param session
	 * @param uploadFile
	 * @return
	 */
	@RequestMapping(value = "DesignPrdt.do", method = RequestMethod.POST)
	public String DesignPrdt( String prdtcomment, HttpServletRequest request,
			HttpSession session, @RequestParam(name = "prdtimg", required = false) MultipartFile uploadFile) {

			Design d = new Design();

			if (!uploadFile.getOriginalFilename().equals("")) {
				// 서버에 업로드
				// saveFile메소드 : 내가 저장하고자하는 file과 request를 전달하여 서버에 업로드 시키고 그 저장된 파일명을 반환해주는 메소드

				String renameFileName = saveFile(uploadFile, request);

				if (renameFileName != null) {
					d.setOriFile(uploadFile.getOriginalFilename());// DB에는 파일명 저장
					d.setReFile(renameFileName);
				}
			}
			d.setMainComment(prdtcomment);
		int result = adService.DesignPrdt(d);
		return "redirect:home.do";

	}
	
	

	/**
	 * @작성일 : 2020. 4. 8.
	 * @작성자 : 문태환
	 * @내용 : 파일이름 변경
	 * @param file
	 * @param request
	 * @return
	 */
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 저장할 경로 설정et
		// 웹 서버 contextPath를 불러와서 폴더의 경로 찾음(webapp 하위의 resources)
		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\buploadFiles";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir(); // 폴더가 없다면 생성해주세요
		}

		String originFileName = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

		String renamePath = folder + "\\" + originFileName;

		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {

			System.out.println("파일 전송 에러: " + e.getMessage());
		}
		return renameFileName;
	}

	/**
	 * @작성일 : 2020. 4. 11.
	 * @작성자 : 문태환
	 * @내용 : 파일다운로드
	 * @param path
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("nfdown.ad")
	public String fileDownload(HttpServletResponse response, HttpServletRequest request, String path) {
		String folder = request.getSession().getServletContext().getRealPath("/resources/boardUploadFiles");
		String fileName = path;
		// 파일 이름 가지고 오고
		String tempfileName = folder + path;
		// 폴더까지 지정되어 있는 파일명 가져와서
		StringBuilder sb = new StringBuilder("c:/tmp/");
		sb.append(tempfileName);
		// 파일 저장되어 있는 경로뒤에 붙여줘서
		String saveFileName = sb.toString();
		// saveFileName을 만든다.

		File file = new File(saveFileName);
		long fileLength = file.length();
		// 데이터베이스에 없는 정보는 파일로 만들어서 가져온다. 이 경우엔 Content-Length 가져온 것

		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setHeader("Content-Length", "" + fileLength);
		response.setHeader("Pragma", "no-cache;");
		response.setHeader("Expires", "-1;");
		// 그 정보들을 가지고 reponse의 Header에 세팅한 후

		try (FileInputStream fis = new FileInputStream(saveFileName); OutputStream out = response.getOutputStream();) {
			// saveFileName을 파라미터로 넣어 inputStream 객체를 만들고
			// response에서 파일을 내보낼 OutputStream을 가져와서
			int readCount = 0;
			byte[] buffer = new byte[1024];
			// 파일 읽을 만큼 크기의 buffer를 생성한 후
			while ((readCount = fis.read(buffer)) != -1) {
				out.write(buffer, 0, readCount);
				// outputStream에 씌워준다
			}
		} catch (Exception ex) {
			throw new RuntimeException("file Load Error");
		}
		return "redirect:DesignEdit.ad";
	}

	/**
	 * @작성일 : 2020. 4. 8.
	 * @작성자 : 이서현
	 * @내용 : 대분류 리스트 뿌리기
	 */
	@RequestMapping("UpCategorySelect.ad")
	public void UpCategorySelct(HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<UpCategory> ulist = adService.UpCategorySelect();
		System.out.println("ulist : "+ulist);
		response.setContentType("application/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		// 날짜 포멧을 지정하기 위해서 GsonBuilder를이용해서 객체 생성
		gson.toJson(ulist, response.getWriter());
	}

	/**
	 * @작성일 : 2020. 4. 8.
	 * @작성자 : 이서현
	 * @내용 : 중분류 리스트 뿌리기
	 */
	@RequestMapping("DownCategorySelect.ad")
	public void DownCategorySelect(HttpServletResponse response) throws JsonIOException, IOException {

		ArrayList<DownCategory> dlist = adService.DownCategorySelect();

		response.setContentType("application/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		// 날짜 포멧을 지정하기 위해서 GsonBuilder를이용해서 객체 생성
		gson.toJson(dlist, response.getWriter());

	}

	/**
	 * @throws IOException
	 * @작성일 : 2020. 4. 9.
	 * @작성자 : 이서현
	 * @내용 : 대분류 카테고리 추가 버튼
	 */
	@RequestMapping("UpCategoryInsert.ad")
	@ResponseBody
	public void UpCategoryInsert(HttpServletResponse repsonse, String addOption, int Uple) throws IOException {

		int result = 0;
		int result2 = 0; 
		UpCategory up = new UpCategory();
		up.setUp_name(addOption);
		
		for(int i=1 ;i<=Uple+1;i++) {
					result = adService.UpCategoryCount(i);
			if(result == 0) {
				up.setUp_no(i);
			   result2 = adService.UpCategoryInsert(up);
			   break;
			}
		}
		PrintWriter out = repsonse.getWriter();

		if (result2 > 0) {
			out.print("ok");
		} else {
			out.print("fail");
		}
	}

	/**
	 * @작성일 : 2020. 4. 9.
	 * @작성자 : 이서현
	 * @내용 : 중분류 카테고리 추가 버튼
	 */
	@RequestMapping("DownCategoryInsert.ad")
	public void DownCategoryInsert(HttpServletResponse repsonse, String addOption2, int up_no,int dole) throws IOException {

		System.out.println("up_no : " + up_no);
		System.out.println("addOption2 : " + addOption2);
		DownCategory dc = new DownCategory();
		int result = 0;
		int result2 = 0; 
		dc.setUp_no(up_no);
		dc.setDown_name(addOption2);
		
		for(int i=1 ;i<=dole+1;i++) {
					dc.setDown_no(i);
					result = adService.DownCategoryCount(dc);
			if(result == 0) {
				dc.setDown_no(i);
			   result2 = adService.DownCategoryInsert(dc);
			   break;
			}
		}
		PrintWriter out = repsonse.getWriter();

		if (result > 0) {
			out.print("ok");
		} else {
			out.print("fail");
		}
	}

	/**
	 * @작성일 : 2020. 4. 9.
	 * @작성자 : 이서현
	 * @내용 : 대분류 카테고리 삭제 버튼
	 */
	@RequestMapping("UpCategoryDelete.ad")
	public String UpCategoryDelete(int up_no, HttpServletRequest request) {

		int result = adService.UpCategoryDelete(up_no);

		if (result > 0) {
			return "redirect:category.ad";
		} else {
			System.out.println("실패 ! ");
			return "redirect:category.ad";
		}
	}

	/**
	 * @작성일 : 2020. 4. 9.
	 * @작성자 : 이서현
	 * @내용 : 중분류 카테고리 삭제 버튼
	 */
	@RequestMapping("DownCategoryDelete.ad")
	public String DownCategoryDelete(int up_no, int down_no, HttpServletRequest request) {
		System.out.println("up_no : " + up_no);
		System.out.println("down_no : " + down_no);
		DownCategory dc = new DownCategory();
		dc.setUp_no(up_no);
		dc.setDown_no(down_no);

		int result = adService.DownCategoryDelete(dc);

		if (result > 0) {
			return "redirect:category.ad";
		} else {
			System.out.println("실패 ! ");
			return "redirect:category.ad";
		}
	}

	/**
	 * @작성일 : 2020. 4. 13.
	 * @작성자 : 문태환
	 * @내용 : 어드민 상품문의 디테일 화면
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("QnA_ProductUpdateView.ad")
	public ModelAndView QnA_ProductUpdate(ModelAndView mv, int qna_no) {

		Board b = bService.selectBoard(qna_no);
		System.out.println(b);
		if (b != null) {
			mv.addObject("b", b);
			mv.setViewName("admin/QnA_Product_detail");

		} else {
			mv.addObject("msg", "게시글 상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 어드민 상품문의 업데이트
	 * @param b
	 * @return
	 */
	@RequestMapping("QnA_ProductUpdate.ad")
	public String QnA_ProductUpdate(Board b) {

		int result = adService.QnA_ProductUpdate(b);

		if (result > 0) {

			return "redirect:QnA_Product.ad";
		} else {
			return "에러다";
		}

	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 어드민 불향상품 게시판 디테일
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("QnA_badUpdateView.ad")
	public ModelAndView QnA_BadUpdateView(ModelAndView mv, int qna_no) {

		Board b = bService.selectBoard(qna_no);
		System.out.println(b);
		if (b != null) {
			mv.addObject("b", b);
			mv.setViewName("admin/QnA_bad_detail");

		} else {
			mv.addObject("msg", "게시글 상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 불량상품 문의 업데이트
	 * @param b
	 * @return
	 */
	@RequestMapping("QnA_BadUpdate.ad")
	public String QnA_BadUpdate(Board b) {

		int result = adService.QnA_ProductUpdate(b);

		if (result > 0) {

			return "redirect:QnA_bad_product.ad";
		} else {
			return "에러다";
		}

	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 입급관련 디테일 화면이동
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("QnA_bankUpdateView.ad")
	public ModelAndView QnA_bankUpdateView(ModelAndView mv, int qna_no) {

		Board b = bService.selectBoard(qna_no);
		System.out.println(b);
		if (b != null) {
			mv.addObject("b", b);
			mv.setViewName("admin/QnA_bank_detail");

		} else {
			mv.addObject("msg", "게시글 상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 입금관련 문의 업데이트
	 * @param b
	 * @return
	 */
	@RequestMapping("QnA_bankUpdate.ad")
	public String QnA_bankUpdate(Board b) {

		int result = adService.QnA_ProductUpdate(b);

		if (result > 0) {

			return "redirect:QnA_bank_insert.ad";
		} else {
			return "에러다";
		}
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송문의 디테일 화면
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("QnA_delUpdateView.ad")
	public ModelAndView QnA_delUpdateView(ModelAndView mv, int qna_no) {

		Board b = bService.selectBoard(qna_no);
		System.out.println(b);
		if (b != null) {
			mv.addObject("b", b);
			mv.setViewName("admin/QnA_delivery_detail");

		} else {
			mv.addObject("msg", "게시글 상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송문의 업데이트
	 * @param b
	 * @return
	 */
	@RequestMapping("QnA_delUpdate.ad")
	public String QnA_delUpdate(Board b) {

		int result = adService.QnA_ProductUpdate(b);

		if (result > 0) {

			return "redirect:QnA_del.ad";
		} else {
			return "에러다";
		}

	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송전 문의 디테일 화면
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("QnA_deliveryUpdateView.ad")
	public ModelAndView QnA_deliveryUpdateView(ModelAndView mv, int qna_no) {

		Board b = bService.selectBoard(qna_no);
		System.out.println(b);
		if (b != null) {
			mv.addObject("b", b);
			mv.setViewName("admin/QnA_delivery_detail");

		} else {
			mv.addObject("msg", "게시글 상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송전 문의 업데이트
	 * @param b
	 * @return
	 */
	@RequestMapping("QnA_deliveryUpdate.ad")
	public String QnA_deliveryUpdate(Board b) {

		int result = adService.QnA_ProductUpdate(b);

		if (result > 0) {

			return "redirect:QnA_delivery_cancel.ad";
		} else {
			return "에러다";
		}

	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송후 문의 업데이트
	 * @param mv
	 * @param qna_no
	 * @return
	 */
	@RequestMapping("QnA_afterUpdateView.ad")
	public ModelAndView QnA_afterUpdateView(ModelAndView mv, int qna_no) {

		Board b = bService.selectBoard(qna_no);
		System.out.println(b);
		if (b != null) {
			mv.addObject("b", b);
			mv.setViewName("admin/QnA_delivery_after_detail");

		} else {
			mv.addObject("msg", "게시글 상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 문태환
	 * @내용 : 배송후 문의 업데이트
	 * @param b
	 * @return
	 */
	@RequestMapping("QnA_afterUpdate.ad")
	public String QnA_afterUpdate(Board b) {

		int result = adService.QnA_ProductUpdate(b);

		if (result > 0) {

			return "redirect:QnA_delivery_after.ad";
		} else {
			return "에러다";
		}
	}

	/**
	 * @작성일 : 2020. 4. 14.
	 * @작성자 : 이서현
	 * @내용 : 상품리스트 상품 삭제 버튼
	 */
	@RequestMapping("ProductDelete.ad")
	public String ProductDelete(int prdtNo, HttpServletRequest request) {
		int result = adService.ProductDelete(prdtNo);

		if (result > 0) {
			return "redirect:productList.ad";
		} else {
			System.out.println("상품 삭제 오류 ! ");
			return "redirect:productList.ad";
		}
	}

	/**
	 * @작성일 : 2020. 4. 15.
	 * @작성자 : 이서현
	 * @내용 : 상품등록
	 */
	@RequestMapping(value="ProductInsert.ad" ,method=RequestMethod.POST)
	public String ProductInsert(Product p, HttpServletRequest request,
			String[] size, int[] stock , String[] optColor,
			@RequestParam(name="thumbnailImg",required=false) MultipartFile file1,
			@RequestParam(name="descrptionImg",required=false) MultipartFile file2	) {
		
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			System.out.println(file1);
			System.out.println(file2);
			
			String savePath = "";
			String saveDetailPath = "";
			String frontPath = "/ot/resources/images/oT";
		
		//상품 옵션 추가
		ArrayList<Product_opt> poArr = new ArrayList<Product_opt>();
		
		if (p.getUpNo() == 1 && p.getDownNo() == 1) {
			savePath = root + "\\images/oT/clothing/t_nasi";
			p.setPrdtImagePath(frontPath +savePath);
			saveDetailPath = root + "\\images/oT/clothing/t_nasi/detail";
			p.setPrdtDetailImagePath(frontPath + "/clothing/t_nasi/detail/");

		} else if (p.getUpNo() == 1 && p.getDownNo() == 2) {
			savePath = root + "\\images/oT/clothing/mantoman";
			p.setPrdtImagePath(frontPath + "/clothing/mantoman/");
			saveDetailPath = root + "\\images/oT/clothing/mantoman/detail";
			p.setPrdtDetailImagePath(frontPath + "/clothing/mantoman/detail/");
		} else if (p.getUpNo() == 1 && p.getDownNo() == 3) {
			savePath = root + "\\images/oT/clothing/hoody";
			p.setPrdtImagePath(frontPath + "/clothing/hoody/");
			saveDetailPath = root + "\\images/oT/clothing/hoody/detail";
			p.setPrdtDetailImagePath(frontPath + "/clothing/hoody/detail/");
		} else if (p.getUpNo() == 1 && p.getDownNo() == 4) {
			savePath = root + "\\images/oT/clothing/pants";
			p.setPrdtImagePath(frontPath + "/clothing/pants/");
			saveDetailPath = root + "\\images/oT/clothing/pants/detail";
			p.setPrdtDetailImagePath(frontPath + "/clothing/pants/detail/");
		} else if (p.getUpNo() == 1 && p.getDownNo() == 5) {
			savePath = root + "\\images/oT/clothing/knit";
			p.setPrdtImagePath(frontPath + "/clothing/knit/");
			saveDetailPath = root + "\\images/oT/clothing/knit/detail";
			p.setPrdtDetailImagePath(frontPath + "/clothing/knit/detail/");
		} else if (p.getUpNo() == 1 && p.getDownNo() == 6) {
			savePath = root + "\\images/oT/clothing/onepiece_skirt";
			p.setPrdtImagePath(frontPath + "/clothing/onepiece_skirt/");
			saveDetailPath = root + "\\images/oT/clothing/onepiece_skirt/detail";
			p.setPrdtDetailImagePath(frontPath + "/clothing/onepiece_skirt/detail/");
		} else if (p.getUpNo() == 1 && p.getDownNo() == 7) {
			savePath = root + "\\images/oT/clothing/shirt_blouse";
			p.setPrdtImagePath(frontPath + "/clothing/shirt_blouse/");
			saveDetailPath = root + "\\images/oT/clothing/shirt_blouse/detail";
			p.setPrdtDetailImagePath(frontPath + "/clothing/shirt_blouse/detail/");
		}

		else if (p.getUpNo() == 2 && p.getDownNo() == 1) {
			savePath = root + "\\images/oT/outer/jacket";
			p.setPrdtImagePath(frontPath + "/outer/jacket/");
			saveDetailPath = root + "\\images/oT/outer/jacket/detail";
			p.setPrdtDetailImagePath(frontPath + "/outer/jacket/detail/");
		} else if (p.getUpNo() == 2 && p.getDownNo() == 2) {
			savePath = root + "\\images/oT/outer/coat_jumper";
			p.setPrdtImagePath(frontPath + "/outer/coat_jumper/");
			saveDetailPath = root + "\\images/oT/outer/coat_jumper/detail";
			p.setPrdtDetailImagePath(frontPath + "/outer/coat_jumper/detail/");
		} else if (p.getUpNo() == 2 && p.getDownNo() == 3) {
			savePath = root + "\\images/oT/outer/cardigan";
			p.setPrdtImagePath(frontPath + "/outer/cardigan/");
			saveDetailPath = root + "\\images/oT/outer/cardigan/detail";
			p.setPrdtDetailImagePath(frontPath + "/outer/cardigan/detail/");
		}

		else if (p.getUpNo() == 3 && p.getDownNo() == 1) {
			savePath = root + "\\images/oT/shoes/shoes";
			p.setPrdtImagePath(frontPath + "/shoes/shoes/");
			saveDetailPath = root + "\\images/oT/shoes/shoes/detail";
			p.setPrdtDetailImagePath(frontPath + "/shoes/shoes/detail/");
		}

		else if (p.getUpNo() == 4 && p.getDownNo() == 1) {
			savePath = root + "\\images/oT/acc/belt";
			p.setPrdtImagePath(frontPath + "/acc/belt/");
			saveDetailPath = root + "\\images/oT/acc/belt/detail";
			p.setPrdtDetailImagePath(frontPath + "/acc/belt/detail/");
		} else if (p.getUpNo() == 4 && p.getDownNo() == 2) {
			savePath = root + "\\images/oT/acc/glasses";
			p.setPrdtImagePath(frontPath + "/acc/glasses/");
			saveDetailPath = root + "\\images/oT/acc/glasses/detail";
			p.setPrdtDetailImagePath(frontPath + "/acc/glasses/detail/");
		} else if (p.getUpNo() == 4 && p.getDownNo() == 3) {
			savePath = root + "\\images/oT/acc/hat";
			p.setPrdtImagePath(frontPath + "/acc/hat/");
			saveDetailPath = root + "\\images/oT/acc/hat/detail";
			p.setPrdtDetailImagePath(frontPath + "/acc/hat/detail/");
		} else if (p.getUpNo() == 4 && p.getDownNo() == 4) {
			savePath = root + "\\images/oT/acc/socks";
			p.setPrdtImagePath(frontPath + "/acc/socks/");
			saveDetailPath = root + "\\images/oT/acc/socks/detail";
			p.setPrdtDetailImagePath(frontPath + "/acc/socks/detail/");
		} else if (p.getUpNo() == 4 && p.getDownNo() == 5) {
			savePath = root + "\\images/oT/acc/accessories";
			p.setPrdtImagePath(frontPath + "/acc/accessories/");
			saveDetailPath = root + "\\images/oT/acc/accessories/detail";
			p.setPrdtDetailImagePath(frontPath + "/acc/accessories/detail/");
		} else if (p.getUpNo() == 4 && p.getDownNo() == 6) {
			savePath = root + "\\images/oT/acc/etc";
			p.setPrdtImagePath(frontPath + "/acc/etc/");
			saveDetailPath = root + "\\images/oT/acc/etc/detail";
			p.setPrdtDetailImagePath(frontPath + "/acc/etc/detail/");
		}

		else if (p.getUpNo() == 5 && p.getDownNo() == 1) { // 임의로 Event Best20 저장
			savePath = root + "\\images/oT/event/new5";
			p.setPrdtImagePath(frontPath + "/event/new5/");
			saveDetailPath = root + "\\images/oT/event/new5/detail";
			p.setPrdtDetailImagePath(frontPath + "/event/new5/detail/");
		} else if (p.getUpNo() == 5 && p.getDownNo() == 2) { // 임의로 Event Best20 저장
			savePath = root + "\\images/oT/event/sale";
			p.setPrdtImagePath(frontPath + "/event/sale/");
			saveDetailPath = root + "\\images/oT/event/sale/detail";
			p.setPrdtDetailImagePath(frontPath + "/event/sale/detail/");
		}

		else if (p.getUpNo() == 6 && p.getDownNo() == 1) {
			savePath = root + "\\images/oT/best/best20";
			p.setPrdtImagePath(frontPath + "/best/best20/");
			saveDetailPath = root + "\\images/oT/best/best20/detail";
			p.setPrdtDetailImagePath(frontPath + "/best/best20/detail/");
		}

		File folder = new File(savePath);
		File folder2 = new File( saveDetailPath);

		if (!folder.exists()) {
			folder.mkdir(); // 폴더가 없다면 생성해주세요
		}
		if (!folder2.exists()) {
			folder2.mkdir(); // 폴더가 없다면 생성해주세요
		}

		String originFileName = file1.getOriginalFilename();
		String originDetailFileName = file2.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);
		String renameDetailName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ originDetailFileName.substring(originDetailFileName.lastIndexOf(".") + 1);

		String renamePath = folder + "\\" + renameFileName;
		String renameDetailPath = folder2 + "\\" + renameDetailName;

		try {
			file1.transferTo(new File(renamePath));
			file2.transferTo(new File(renameDetailPath));
		} catch (Exception e) {

			System.out.println("파일 전송 에러: " + e.getMessage());
		}

		p.setPrdtImage(renameFileName);
		p.setPrdtDetailImage(renameDetailName);

		int result = adService.ProductInsert(p);

		if (result > 0) {
			Product pd = adService.selectPrdtNo();
			
			for(int i=0;i<stock.length;i++) {
				Product_opt pot = new Product_opt();
				
				pot.setSize(size[i]);
				pot.setStock(stock[i]);
				pot.setPrdtNo(pd.getPrdtNo());
				pot.setOptColor(optColor[i]);
			
				poArr.add(pot);
			}
			
			
			int result2 = adService.insertPotList(poArr);
			
				return "redirect:productList.ad";
			} else {
				System.out.println("에러");
				return "redirect:productAdd.ad";
		}
	}
	
	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 문태환 
	 * @내용 	: 반품화면 디테일
	 * @param mv
	 * @param reNo
	 * @return
	 */
	@RequestMapping("ReturnDetail.do")
	public ModelAndView ReturnDetail(ModelAndView mv,int reNo) {
		System.out.println(reNo);
		Return re = new Return();
		
		re.setReNo(reNo);
		
		re = adService.ReturnDetail(re);	
		
		System.out.println(re);
		
		mv.addObject("re", re);
		mv.setViewName("admin/productReturn");
		return mv;
				
	}
	
	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 문태환 
	 * @내용 	: 반품 결제취소
	 * @param response
	 * @param cpmemNo
	 * @param ordCode
	 * @param point
	 * @param memCode
	 * @throws IOException
	 */
	@RequestMapping("cancellPay.ad")
	public void cancellPay(HttpServletResponse response,int cpmemNo,int ordCode,int point,int memCode) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		int result = adService.calcellCoupon(cpmemNo);
		
		int result2= adService.cancellPay(ordCode);
		
		Member m = new Member();
		m.setMemNo(memCode);
		m.setMem_point(point);
		
		int result3 = adService.cancellPoint(m);
		
		if(result3 > 0) {
			out.print("ok");
		}else {
			out.print("fail");
		}
		
	}
	
	/**
	 * @작성일  : 2020. 4. 23.
	 * @작성자  : 문태환
	 * @내용 	: 반품신청 업데이트
	 * @param reNo
	 * @param content
	 * @param realCheck
	 * @param reMent
	 * @param reStatus
	 * @return
	 */
	@RequestMapping("ReturnUpdate.ad")
	public String ReturnUpdate(int ordCode,int reNo,String content,String realCheck,String reMent,String reStatus,String productCheck) {
		
		Return r = new Return();
		r.setReNo(reNo);
		r.setContent(content);
		r.setReCheck(productCheck);
		r.setReReal(realCheck);
		r.setReStatus(reStatus);
		r.setReMent(reMent);
		r.setOrdCode(ordCode);
		int  result2 =adService.updateOrdf(r); 
			
		
		int result = adService.ReturnUpdate(r);
		
		if(result > 0) {
			return "redirect:productReturn_list.ad";
		}else {
			return "에러다";
		}
		
	}
	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환 
	 * @내용 	: 관리자 리뷰 댓글
	 * @param coment
	 * @param rvNo
	 * @param memNo
	 * @return
	 */
	@RequestMapping("ComentInsert.ad")
	public String ComentInsert(String coment , int rvNo , int memNo) {
		
			ReviewReply rp = new ReviewReply();
			
			rp.setMemNo(memNo);
			rp.setRvComment(coment);
			rp.setRvNo(rvNo);
			
			int result = adService.ComentInsert(rp);
		
		return "redirect:review_list.ad";
	}
	
	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환
	 * @내용 	: 신고댓글 삭제
	 * @param rvcNo
	 * @return
	 */
	@RequestMapping("comentDelete.ad")
	public String comentDelete(int rvcNo) {
		
		ReviewReply rp = new ReviewReply();
		rp.setRvcNo(rvcNo);	
		
		int result = adService.comentDelete(rp);
		
		
		return "redirect:review_report_list.ad";
		
	}
	
	@RequestMapping("comentReturn.ad")
	public String comentReturn(int rvcNo) {
		
		ReviewReply rp = new ReviewReply();
		rp.setRvcNo(rvcNo);	
		
		int result = adService.comentReturn(rp);
		
		
		return "redirect:review_report_list.ad";
		
	}
	
	/**
	 * @작성일 : 2020. 4. 23.
	 * @작성자 : 이서현
	 * @내용 : 상품 업데이트 
	 */
	
	  @RequestMapping(value="ProductUpdate.ad" ,method=RequestMethod.POST)  
	  public String ProductUpdate(HttpServletRequest request, String[] size, Product p,
			  						int[] stock,String[] optColor, 
			  						@RequestParam(name="thumbnailImg",required=false) MultipartFile file1,
	  								@RequestParam(name="descrptionImg",required=false) MultipartFile file2 ) {
		  
		    //ArrayList<Product_opt> poArr = new ArrayList<Product_opt>();
		  
		    String root = request.getSession().getServletContext().getRealPath("resources");
		
			String renameFileName = "";
			String renameDetailName = "";
			String strr="";
			String strr2="";
			Product pa = adService.selectProduct(p);

			String str = pa.getPrdtImagePath();
			String str2 = pa.getPrdtDetailImagePath();
			
			StringTokenizer st = new StringTokenizer(str,"/",true);
			StringTokenizer st2 = new StringTokenizer(str,"/",true);
			
			ArrayList<String> strArr = new ArrayList<String>();
			ArrayList<String> strArr2 = new ArrayList<String>();
			
			while(st.hasMoreTokens()) {
					strArr.add("/"+st.nextToken());
			}
				for(int i =0;i<strArr.size();i++) {
					if(i > 3 ){
						strr +=strArr.get(i);
					}
				}
				while(st2.hasMoreTokens()) {
					strArr2.add("/"+st2.nextToken());
			}
				for(int i =0;i<strArr2.size();i++) {
					if(i > 3 ){
						strr2 +=strArr2.get(i);
					}
				}		
		
			 p.setPrdtImage(pa.getPrdtImage());
			 p.setPrdtDetailImage(pa.getPrdtDetailImage());
			String savePath = root+"\\"+strr+"/";
			String saveDetailPath = root+"\\"+strr2+"/";
		

				File folder = new File(savePath);
				File folder2 = new File( saveDetailPath);

				if (!folder.exists()) {
					folder.mkdir(); // 폴더가 없다면 생성해주세요
				}
				if (!folder2.exists()) {
					folder2.mkdir(); // 폴더가 없다면 생성해주세요
				} 
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			 
		  //사진을 변경 했을시 업데이트
		  if (!file1.getOriginalFilename().equals("")) {
			  String originFileName = file1.getOriginalFilename();
			  		renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				   + originFileName.substring(originFileName.lastIndexOf(".") + 1);
					
					p.setPrdtImage(renameFileName);
					
					String renamePath = folder + "\\" + renameFileName;
					
					try {
						file1.transferTo(new File(renamePath));
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
		     }
					 
			if(!file2.getOriginalFilename().equals("")) {
				
				String originDetailFileName = file2.getOriginalFilename();
						renameDetailName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
						+ originDetailFileName.substring(originDetailFileName.lastIndexOf(".") + 1);
				       
						p.setPrdtDetailImage(renameDetailName);
						
						String renameDetailPath = folder2 + "\\" + renameDetailName;
						
						try {
							file2.transferTo(new File(renameDetailPath));
						} catch (IllegalStateException | IOException e) {
							e.printStackTrace();
						}
			}
					int result2 = adService.ProductUpdate2(p);		
					
					if(result2 > 0) {
						  return "redirect:productList.ad";
					}else {
						  return "에러다";
					}
	  }
	  
	  
	  /**
	 * @작성일 : 2020. 4. 28.
	 * @작성자 : 이서현
	 * @내용 : 연관상품 등록View 
	 */
	@RequestMapping("productConnect.ad")
	public ModelAndView productConnect(ModelAndView mv, int prdtNo) {
		
		ArrayList<Product> plist = adService.ProductSelectList();
		ArrayList<UpCategory> ulist = adService.UpCategorySelect();
		ArrayList<DownCategory> dlist = adService.DownCategorySelect();
		Product p = adService.listProductSelectList(prdtNo);
		
		mv.addObject("plist", plist);
		mv.addObject("ulist",ulist);
		mv.addObject("dlist",dlist);
		mv.addObject("p", p).setViewName("admin/productConnect");
		mv.setViewName("admin/productConnect");
		return mv;
	}
	
	
	/**
	 * @작성일 : 2020. 4. 29.
	 * @작성자 : 이서현
	 * @내용 : 연관상품 등록
	 */
	@RequestMapping("ConnectSubmit.ad")
	public String ConnectSubmit(HttpServletResponse response, int[] prdtNoArr,int prdtNo) throws IOException {

		PrdtConnect pco = new PrdtConnect();
		
			pco.setSelectNo(prdtNo);
			pco.setConnect_no1(prdtNoArr[0]);
			pco.setConnect_no2(prdtNoArr[1]);
			pco.setConnect_no3(prdtNoArr[2]);
			pco.setConnect_no4(prdtNoArr[3]);
			pco.setConnect_no5(prdtNoArr[4]);
			pco.setConnect_no6(prdtNoArr[5]);
			pco.setConnect_no7(prdtNoArr[6]);
			pco.setConnect_no8(prdtNoArr[7]);

		
		System.out.println("pco" + pco);
		int result = adService.ConnectSubmit(pco);
		
		if(result>0) {
			return "redirect:productList.ad";
		} else {
			System.out.println("에러");
			return "redirect:productAdd.ad";
		}
		
	}
	

//					if(result>0){
//						Product pd = adService.selectPrdtNo();
//						
//						for(int i=0;i<stock.length;i++) {
//							Product_opt pot = new Product_opt();
//							
//							pot.setSize(size[i]);
//							pot.setStock(stock[i]);
//							pot.setPrdtNo(pd.getPrdtNo());
//							pot.setOptColor(optColor[i]);
//						
//							poArr.add(pot);
//						}
//					int result2 = adService.UpdatePotList(poArr);
//						
//					return "redirect:productList.ad";
//					} else {
//					
//						System.out.println("에러");
//					return "redirect:productListDetail.ad";
//					}
//	  }
	
	 
}

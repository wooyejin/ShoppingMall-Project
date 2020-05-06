package com.kh.ot.cart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.cart.service.CartService;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.cart.vo.Pay;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.Address;

import net.sf.json.JSONObject;


@SessionAttributes("loginMember")
@Controller
public class CartController extends HttpServlet {

	@Autowired
	   private CartService cService;

	/**
	 * @작성일  : 2020. 4. 13.
	 * @작성자  : 우예진
	 * @내용    : 주문상세정보 페이지 이동
	 * @return
	 */
	@RequestMapping("orderDetail.do")
	public String orderDetail() {

		return "orderDetail";
	}


	/**
	 * @작성일 : 2020. 4. 2.
	 * @작성자 :이대윤
	 * @내용 : 카트 페이지 이동
	 * @param @return
	 * @return String
	 */

	@RequestMapping("cartbutton.do")
	public ModelAndView cartbutton(ModelAndView mv,HttpSession session,HttpServletRequest request) {

		Member m = (Member)session.getAttribute("loginMember");
		int mem_no = m.getMemNo();

		ArrayList<Cart> list = cService.selectList(mem_no);
		ArrayList<Coupon> clist = cService.selectCouponList(mem_no);
		ArrayList<Address> adlist =cService.selectAdList(mem_no);
		

		//session.setAttribute("list","");
	
		mv.addObject("adlist",adlist);
   		mv.addObject("list",list);
   		mv.addObject("clist", clist);
   		mv.setViewName("cart");

   		return mv;
	}
	
	@RequestMapping("cartbutton1.do")
	@ResponseBody
	public void cartbutton1(HttpServletResponse response,HttpSession session,HttpServletRequest request) throws JsonIOException, IOException {

		Member m = (Member)session.getAttribute("loginMember");
		int mem_no = m.getMemNo();

		ArrayList<Cart> cclist = cService.selectList(mem_no);
		response.setContentType("application/json; charset=utf-8");
		Gson gson = new Gson();

		gson.toJson(cclist, response.getWriter());
	}
	
	@RequestMapping("cartbutton2.do")
	@ResponseBody
	public void cartbutton2(HttpServletResponse response,HttpSession session,HttpServletRequest request) throws JsonIOException, IOException {

		Member m = (Member)session.getAttribute("loginMember");
		int mem_no = m.getMemNo();

		ArrayList<Cart> ccclist = cService.selectList(mem_no);
		response.setContentType("application/json; charset=utf-8");
		Gson gson = new Gson();

		gson.toJson(ccclist, response.getWriter());
	}

	/**
	 * @작성일  : 2020. 4. 15.
	 * @작성자  : 우예진
	 * @내용    : 선택상품삭제
	 * @param ca_no
	 * @param request
	 * @return
	 */
	@RequestMapping("CartDeleteProduct.do")
	public void CartDeleteProduct(int[] checkArr,HttpServletResponse response,HttpSession session) {

		ArrayList<Cart> noArr = new ArrayList<Cart>();

		for(int i =0; i<checkArr.length;i++) {
			Cart c = new Cart();
			c.setCa_no(checkArr[i]);
			noArr.add(c);
		}
			

		int result =  cService.deleteCart(noArr);



		//int result = cService.CartDeleteProduct(ca_no);

		/*if(result >0) {
			return "redirect:cartbutton.do";
		} else {
			return "에러다";
		}*/

	}

	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 문태환
	 * @내용 	: 주문정보 인설트
	 * @param mv
	 * @param session
	 * @param prdtArr
	 * @param sizeArr
	 * @param colorArr
	 * @param countArr
	 * @param ord_receiver
	 * @param ord_phone
	 * @param ord_address
	 * @param ord_message
	 * @return
	 */
	@RequestMapping("cartInsert.do")
	public String cartInsert(ModelAndView mv,HttpSession session,
						int[] prdtArr, String[] sizeArr, String[] colorArr,int[] countArr,
						String ord_receiver, String ord_phone, String ord_address,String ord_message,
						int[] sumpriceArr,String pay_category,int pay_point,int pay_usedcp,int coupon_price,
						int[] canoArr){


		Member m =(Member)session.getAttribute("loginMember");
		Member mpo = new Member();
		
		ArrayList<Ord> olist = new ArrayList<Ord>();
		ArrayList<Pay> plist = new ArrayList<Pay>();
		ArrayList<Cart> list = new ArrayList<Cart>();

		for(int i =0; i<canoArr.length;i++) {
			Cart c = new Cart();
			c.setCa_no(canoArr[i]);
			list.add(c);
		}

		for(int i=0;i<prdtArr.length;i++) {
			Ord o = new Ord();
			o.setMemNo(m.getMemNo());
			o.setPrdt_no(prdtArr[i]);
			o.setOrd_receiver(ord_receiver);
			o.setOrd_phone(ord_phone);
			o.setOrd_address(ord_address);
			o.setOrd_message(ord_message);
			o.setOrd_size(sizeArr[i]);
			o.setOrd_color(colorArr[i]);
			o.setOrd_count(countArr[i]);

			olist.add(o);
		}
		
		int memPoint = 0;
		
		for(int i=0;i<sumpriceArr.length;i++) {
			Pay p = new Pay();
			if(i==0) {
			p.setMemNo(m.getMemNo());
			p.setSumprice(sumpriceArr[i]+2500-pay_point-coupon_price);
			p.setPay_category(pay_category);
			p.setPay_usedcp(pay_usedcp);
			p.setPay_point(pay_point);
			}else {
			p.setMemNo(m.getMemNo());
			p.setSumprice(sumpriceArr[i]);
			p.setPay_category(pay_category);
			p.setPay_usedcp(pay_usedcp);
			p.setPay_point(pay_point);
			}
			
			memPoint +=sumpriceArr[i];
			
			plist.add(p);
			}
		
		int resultPoint = (int) (memPoint*0.03);
		
		mpo.setMemNo(m.getMemNo());
		mpo.setMem_point(resultPoint);
		
		
		int updatePrice = 0;
		for(int i=0;i<sumpriceArr.length;i++) {
				updatePrice += 	sumpriceArr[i];
		}
		Cart ct = new Cart();
		ct.setMemNo(m.getMemNo());
		ct.setPrdt_sumprice(updatePrice);
		
		Pay py = new Pay();
		py.setMemNo(m.getMemNo());
		py.setPay_point(pay_point);

		
		int result = cService.cartInsert(olist);
		if(result > -2) {
			ArrayList<Cart> cartList = cService.selectCartList(list);
			int result2 = cService.payInsert(plist);
			int result3 =  cService.deleteCart(list);
			int result4 = cService.updatePrice(ct);	
			int result5 = cService.updateCoupon(pay_usedcp);
			int result6 = cService.updatePoint(py);
			int result7 = cService.updateProduct(olist);
			int result8 = cService.updateMemPoint(mpo);
		    int result9 = cService.updateProductStock(olist);
		
			
			session.setAttribute("list", cartList);
			session.setAttribute("olist", "");
			session.setAttribute("plist", "");
			session.setAttribute("olist", olist);
			session.setAttribute("plist", plist);
			return "redirect:orderResultView.do?";

			
		}else {
			
			return null;
		}

	
	}

	/**
	 * @작성일  : 2020. 4. 16.
	 * @작성자  : 우예진
	 * @내용    : 주문후 결과창 페이지 이동
	 * @return
	 */
	@RequestMapping("orderResult.do")
	public String orderResult() {

		return "orderResult";
	}

	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 문태환
	 * @내용 	: 결제완료 화면
	 * @param mv
	 * @param session
	 * @return
	 */
	@RequestMapping("orderResultView.do")
	public ModelAndView orderResultView(ModelAndView mv,HttpSession session) {
		
		Member m = 	(Member)session.getAttribute("loginMember");
		
		Member mem = cService.selectMember(m);
		int count  = cService.countCoupon(m);
		mem.setCountCounpon(count);
		
		mv.addObject("mem",mem);
   		mv.setViewName("orderResult");

   		return mv;
	}

	
	/**
	 * @작성일  : 2020. 4. 17.
	 * @작성자  : 우예진
	 * @내용    : 영수증 리스트 뿌려주기
	 * @return
	 */
	@RequestMapping("receipt.do")
	public ModelAndView receipt(ModelAndView mv,HttpSession session) {
		
		ArrayList<Ord> olist = (ArrayList<Ord>)session.getAttribute("olist");
		ArrayList<Pay> plist = (ArrayList<Pay>)session.getAttribute("plist");
		
		System.out.println(olist);
		
		mv.addObject("olist",olist);
		mv.addObject("plist",plist);
		mv.setViewName("receipt");
		
		return mv;
	}

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 선택 주소록 불러오기
	 * @param response
	 * @param adNo
	 * @throws IOException
	 */
	@RequestMapping("selectAdOne.do")
	public void selectAd(HttpServletResponse response,int adNo) throws IOException {
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		System.out.println("adno : " + adNo);
		Address ad = cService.selectAdOne(adNo);
		System.out.println("Ad:" +ad);
		JSONObject job = new JSONObject();
		
		job.put("ad", ad);
		
		out.print(job);
		out.flush();
		out.close();
	}


}

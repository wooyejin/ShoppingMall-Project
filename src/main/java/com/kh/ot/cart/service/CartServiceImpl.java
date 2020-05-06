package com.kh.ot.cart.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.admin.vo.Point;
import com.kh.ot.cart.dao.CartDao;
import com.kh.ot.cart.vo.Cart;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.cart.vo.Pay;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.Address;


@Service("cService")
public class CartServiceImpl implements CartService{

	@Autowired
	private CartDao cDao;

	@Override
	public ArrayList<Cart> selectList(int mem_no) {
		return cDao.selectList(mem_no);
	}

	@Override
	public ArrayList<Coupon> selectCouponList(int mem_no) {
		return cDao.selectCouponList(mem_no);
	}

	@Override
	public int deleteCart(ArrayList<Cart> noArr) {
		return cDao.deleteCart(noArr);
	}

	@Override
	public int cartInsert(ArrayList<Ord> olist) {
		return cDao.cartInsert(olist);
	}

	@Override
	public ArrayList<Ord> selectOrderList(int mem_no) {
		return cDao.selectOrderList(mem_no);
	}

	@Override
	public int payInsert(ArrayList<Pay> plist) {
		return cDao.payInsert(plist);
	}

	@Override
	public ArrayList<Pay> selectPayList(ArrayList<Pay> list) {
		return cDao.selectPayList(list);
	}

	@Override
	public ArrayList<Cart> selecPro(ArrayList<Ord> olist) {
		return cDao.selecPro(olist);
	}

	@Override
	public int updatePrice(Cart ct) {
		return cDao.updatePrice(ct);
	}

	@Override
	public int updateCoupon(int pay_usedcp) {
		return cDao.updateCoupon(pay_usedcp);
	}

	@Override
	public int updatePoint(Pay py) {
		return cDao.updatePoint(py);
	}

	@Override
	public Member selectMember(Member m) {
		return cDao.selectMember(m);
	}

	@Override
	public int countCoupon(Member m) {
		return cDao.countCoupon(m);
	}

	@Override
	public int updateProduct(ArrayList<Ord> olist) {
		return cDao.updateProduct(olist);
	}

	@Override
	public ArrayList<Address> selectAdList(int mem_no) {
		return cDao.selectAdList(mem_no);
	}

	@Override
	public Address selectAdOne(int adNo) {
		return cDao.selectAdOne(adNo);
	}

	@Override
	public int updateMemPoint(Member mpo) {
		return cDao.updateMemPoint(mpo);
	}

	@Override
	public int insertPoint(Point pot) {
		return cDao.insertPoint(pot);
	}

	@Override
	public ArrayList<Cart> selectCartList(ArrayList<Cart> cartList) {
		return cDao.selectCartList(cartList);
	}

	@Override
	public int updateProductStock(ArrayList<Ord> olist) {
		return cDao.updateProductStock(olist);
	}

	@Override
	public ArrayList<Pay> weekList() {
		return cDao.weekList();
	}

	@Override
	public ArrayList<Pay> weekPayList() {
		return cDao.weekPayList();
	}
}

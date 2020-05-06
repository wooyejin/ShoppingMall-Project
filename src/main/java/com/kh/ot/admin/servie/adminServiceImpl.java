package com.kh.ot.admin.servie;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ot.admin.dao.adminDao;
import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.admin.vo.DownCategory;
import com.kh.ot.admin.vo.PrdtConnect;
import com.kh.ot.admin.vo.UpCategory;
import com.kh.ot.main.vo.Product;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.Return;
import com.kh.ot.review.vo.Review;
import com.kh.ot.review.vo.ReviewReply;
import com.kh.ot.board.vo.Board;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.cart.vo.Pay;
import com.kh.ot.admin.vo.Design;

@Service("adService")
public class adminServiceImpl implements adminService{

	@Autowired
	private adminDao adDao;


	@Override
	public int couponInput(ArrayList<Coupon> clist) {
		return adDao.couponInput(clist);
	}


	@Override
	public ArrayList<Coupon> selectListCoupon() {
		return adDao.selectListCoupon();
	}


	@Override
	public int couponDelete(String cpName) {
		return adDao.couponDelete(cpName);
	}

	public int DesignEd(ArrayList<Design>  dlist) {
		return adDao.DesignEd(dlist);
	}

	public int DesignEdVideo(Design d) {
		return adDao.DesignEdVideo(d);
	}

	public int DesignInsta(ArrayList<Design> dlist) {
		return adDao.DesignInsta(dlist);
	}

	public ArrayList<Design> selectMainList() {
		return adDao.selectMainList();
	}

	public Design selectVideo() {
		return adDao.selectVideo();
	}

	public ArrayList<Design> selectInstaList() {
		return adDao.selectInstaList();
	}



//	/////여기부터 서현쓰


	@Override
	public ArrayList<UpCategory> UpCategorySelect() {
		return adDao.upCategorySelect();
	}

	@Override
	public ArrayList<DownCategory> DownCategorySelect() {
		return adDao.DownCategorySelect();
	}

	@Override
	public int UpCategoryInsert(UpCategory up) {
		return adDao.UpCategoryInsert(up);
	}

	@Override
	public int DownCategoryInsert(DownCategory downCategory) {
		return adDao.DownCategoryInsert(downCategory);
	}


	@Override
	public int UpCategoryDelete(int up_no) {
		return adDao.UpCategoryDelete(up_no);
	}


	@Override
	public int DownCategoryDelete(DownCategory downCategory) {
		return adDao.DownCategoryDelete(downCategory);
	}

	@Override public int ProductInsert(Product p) {
		/*
		 *  주완님이 도와준 코딩
		 * int result=0; int presult = adDao.ProductInsert(p);
		 *
		 * int poresult = 0; int prdtNo =p.getPrdtNo();
		 *
		 * if(presult>0) { poresult=adDao.ProductOptionInsert(po, prdtNo); result
		 * =presult * poresult; } return result;
		 */
		return adDao.ProductInsert(p);
	}


	@Override
	public ArrayList<Board> selectList(int b_cate_no) {
		return adDao.selectList(b_cate_no);
	}


	@Override
	public int QnA_ProductUpdate(Board b) {
		return adDao.QnA_ProductUpdate(b);
	}


	@Override
	public ArrayList<Product> ProductSelectList() {
		return adDao.ProductSelectList();
	}


	@Override
	public int ProductDelete(int prdtNo) {
		return adDao.ProductDelete(prdtNo);
	}


	@Override
	public ArrayList<Ord> selectOderList1() {
		return adDao.selectOderList1();
	}


	@Override
	public int orderUpdate1(int ordNo) {
		return adDao.orderUpdate1(ordNo);
	}


	@Override
	public ArrayList<Ord> selectOderList2() {
		return adDao.selectOderList2();
	}


	@Override
	public int orderUpdate2(int ordNo) {
		return adDao.orderUpdate2(ordNo);
	}

	@Override
	public ArrayList<Ord> selectOderList3() {
		return adDao.selectOderList3();
	}


	@Override
	public int orderUpdate3(int ordNo) {
		return adDao.orderUpdate3(ordNo);
	}

	@Override
	public ArrayList<Ord> selectOderList4() {
		return adDao.selectOderList4();
	}


	@Override
	public int orderUpdate4(int ordNo) {
		return adDao.orderUpdate4(ordNo);
	}


	@Override
	public ArrayList<Member> selectMember() {
		return adDao.selectMember();

	}

	@Override
	public int DesignPrdt(Design d) {
		return adDao.Designprdt(d);
	}


	@Override
	public Design selectPrdtImg() {
		return adDao.selectPrdtImg();
	}


	@Override
	public int couponUpdate(ArrayList<Coupon> cplist) {
		return adDao.couponUpdate(cplist);
	}


	@Override
	public Pay selectPay(int ordNo) {
		return adDao.selectPay(ordNo);
	}


	@Override
	public ArrayList<Return> productReturnlist() {
		return adDao.productReturnlist();
}
@Override
	public Product selectPrdtNo() {
		return adDao.selectPrdtNo();
	}


	@Override
	public Return ReturnDetail(Return re) {
		return adDao.ReturnDetai(re);
	}
		@Override
	public int insertPotList(ArrayList<Product_opt> poArr) {
		return adDao.insertPotList(poArr);
	}


	@Override
	public ArrayList<Product_opt> ProductOptSelectList() {
		return adDao.ProductOptSelectList();
	}


	@Override
	public Product listProductSelectList(int prdtNo) {
		return adDao.listProductSelectList(prdtNo);
	}


	@Override
	public ArrayList<Product_opt> listProductOptSelectList(int prdtNo) {
		return adDao.listProductOptSelectList(prdtNo);
	}
		@Override
		public int calcellCoupon(int cpmemNo) {
			return adDao.calcellCoupon(cpmemNo);
		}


		@Override
		public int cancellPay(int ordCode) {
			return adDao.cancellPay(ordCode);
		}


		@Override
		public int cancellPoint(Member m) {
			return adDao.cancellPoint(m);
		}


		@Override
		public Member selectOneMember(int memNo) {
			return adDao.selectOneMember(memNo);
		}

		public int ReturnUpdate(Return r) {
			return adDao.ReturnUpdate(r);
		}


		@Override
		public ArrayList<Ord> selectOrder(int memNo) {
			return adDao.selectOrder(memNo);
		}


		@Override
		public ArrayList<Product> ProductSelectListBest() {
			return adDao.ProductSelectListBest();
		}

		public int updateOrdf(Return r) {
			return adDao.updateOrdf(r);
		}
		
		public int UpCategoryCount(int i) {
			return adDao.UpCategoryCount(i);
		}


		@Override
		public int DownCategoryCount(DownCategory dc) {
			return adDao.DownCategoryCount(dc);
		}


		@Override
		public ArrayList<Product> topSelect() {
			return adDao.topSelect();
		}

		
		public int ComentInsert(ReviewReply rp) {
			return adDao.ComentInsert(rp);
		}


		@Override
		public int todayQnAselect() {
			return adDao.todayQnAselect();
		}

		
		public int comentDelete(ReviewReply rp) {
			return adDao.comentDelete(rp);
		}


		@Override
		public int todayReturnSelect() {
			return adDao.todayReturnSelect();
		}


		@Override
		public int todayScountSelect() {
			return adDao.todayScountSelect();
		}


		@Override
		public int todaySpriceSelect() {
			return adDao.todaySpriceSelect();
		}
		
		

		@Override
		public int ProductUpdate(Product p) {
			return adDao.ProductUpdate(p);
		}


		@Override
		public int UpdatePotList(ArrayList<Product_opt> poArr) {
			return adDao.UpdatePotList(poArr);		
		}


		public int comentReturn(ReviewReply rp) {
			return adDao.comentReturn(rp);
		}


		@Override
		public ArrayList<Pay> monthScountList() {
			return adDao.monthScountList();
		}


		@Override
		public ArrayList<Pay> monthPayList() {
			return adDao.monthPayList();
		}


		@Override
		public int ConnectSubmit(PrdtConnect pco) {
			return adDao.ConnectSubmit(pco);
		}
		public int ProductUpdate2(Product p) {
			return adDao.ProductUpdate2(p);
		}


		@Override
		public Product selectProduct(Product p) {
			return adDao.selectProduct(p);
		}




}

package com.kh.ot.admin.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ot.admin.vo.Coupon;
import com.kh.ot.admin.vo.DownCategory;
import com.kh.ot.admin.vo.PrdtConnect;
import com.kh.ot.admin.vo.UpCategory;
import com.kh.ot.admin.vo.Design;
import com.kh.ot.board.vo.Board;
import com.kh.ot.board.vo.PageInfo;
import com.kh.ot.cart.vo.Ord;
import com.kh.ot.cart.vo.Pay;
import com.kh.ot.main.vo.Product;
import com.kh.ot.main.vo.Product_opt;
import com.kh.ot.member.vo.Member;
import com.kh.ot.mypage.vo.Return;
import com.kh.ot.review.vo.Review;
import com.kh.ot.review.vo.ReviewReply;

@Repository("adDao")
public class adminDao {

	@Autowired
	private SqlSessionTemplate sqlSession;


	/**
	 * @작성일  : 2020. 4. 7.
	 * @작성자  : 문태환
	 * @내용 	: 쿠폰등록
	 * @param clist
	 * @return
	 */
	public int couponInput(ArrayList<Coupon> clist) {
		   Map<String, Object> map = new HashMap<String, Object>();
		   map.put("clist", clist);
		return sqlSession.insert("adminMapper.couponInput",map);
	}


	/**
	 * @작성일  : 2020. 4. 7.
	 * @작성자  : 문태환
	 * @내용 	: 쿠폰 리스트
	 * @return
	 */
	public ArrayList<Coupon> selectListCoupon() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectListCoupon");
	}


	/**
	 * @작성일  : 2020. 4. 8.
	 * @작성자  :문태환
	 * @내용 	:쿠폰삭제
	 * @param cpName
	 * @return
	 */
	public int couponDelete(String cpName) {
		return sqlSession.delete("adminMapper.couponDelete",cpName);
	}


	/**
	 * @작성일 : 2020. 4. 8.
	 * @작성자 : 이서현
	 * @내용 : 카테고리 관린
	 */
	public ArrayList<UpCategory> upCategorySelect() {
		return (ArrayList)sqlSession.selectList("adminMapper.UpCategorySelect");
	}


	public ArrayList<DownCategory> DownCategorySelect() {
		return (ArrayList)sqlSession.selectList("adminMapper.DownCategorySelect");
	}


	public int UpCategoryInsert(UpCategory up) {
		return sqlSession.insert("adminMapper.UpCategoryInsert",up);
	}


	public int DownCategoryInsert(DownCategory downCategory) {
		return sqlSession.insert("adminMapper.DownCategoryInsert",downCategory);
	}


	public int UpCategoryDelete(int up_no) {
		return sqlSession.update("adminMapper.UpCategoryDelete",up_no);
	}


	public int DownCategoryDelete(DownCategory downCategory) {
		return sqlSession.update("adminMapper.DownCategoryDelete",downCategory);
	}


	/*
	 * @작성일  : 2020. 4. 8.
	 * @작성자  : 문태환
	 * @내용 	:메인배너등록
	 * @param d
	 * @return
	 */
	public int DesignEd(ArrayList<Design>  dlist) {
		   Map<String, Object> map = new HashMap<String, Object>();
		   map.put("dlist", dlist);
		return sqlSession.update("adminMapper.DesignEd",map);
	}


	/**
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 문태환
	 * @내용 	 : 메인동영상 등록
	 * @param d
	 * @return
	 */
	public int DesignEdVideo(Design d) {
		return sqlSession.update("adminMapper.DesignEdVideo",d);
	}


	/**
	 * @작성일  : 2020. 4. 9.
	 * @작성자  : 문태환
	 * @내용 	: 메인 인스타 등록
	 * @param dlist
	 * @return
	 */
	public int DesignInsta(ArrayList<Design> dlist) {
		Map<String, Object> map = new HashMap<String, Object>();
		   map.put("dlist", dlist);
		return sqlSession.insert("adminMapper.DesignInsta",map);
	}


	public ArrayList<Design> selectMainList() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectMainList");
	}

	public Design selectVideo() {
		return (Design)sqlSession.selectOne("adminMapper.selectVideo");
	}


	public ArrayList<Design> selectInstaList() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectInstaList");
	}


	/**
	 * @작성일  : 2020. 4. 13.
	 * @작성자  : 문태환
	 * @내용 	: 어드민 상품문의 리스트
	 * @param b_cate_no
	 * @return
	 */
	public ArrayList<Board> selectList(int b_cate_no) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectList",b_cate_no);
	}


	public int QnA_ProductUpdate(Board b) {
		return sqlSession.update("adminMapper.QnA_ProductUpdate",b);
	}

	/**
	 * @작성일 : 2020. 4. 12.
	 * @작성자 : 이서현
	 * @내용 : 상품만 등록
	 */

	public int ProductInsert(Product p) {
		return sqlSession.insert("productMapper.ProductInsert",p);
	}

	/*
	 * public int ProductOptionInsert(Product_opt po,int prdtNo) {
	 *
	 * int result =0; List<Product_opt> polist = po.getOptionVOList();
	 * for(Product_opt Option : polist) { Option.setPrdtNo(prdtNo);
	 * result=sqlSession.insert("adminMapper.ProductOptionInsert",Option); } return
	 * result; }
	 */


	public ArrayList<Product> ProductSelectList() {
		return (ArrayList)sqlSession.selectList("productMapper.ProductSelectList");
	}


	public int ProductDelete(int prdtNo) {
		return sqlSession.update("productMapper.ProductDelete",prdtNo);
	}


	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	:오더리스트 상태값 A
	 * @return
	 */
	public ArrayList<Ord> selectOderList1() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectOderList1");
	}


	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  :  문태환
	 * @내용 	: 오더리스트 상태값 A 변경
	 * @param ordNo
	 * @return
	 */
	public int orderUpdate1(int ordNo) {
		return sqlSession.update("adminMapper.orderUpdate1",ordNo);
	}

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	:오더리스트 상태값 B
	 * @return
	 */
	public ArrayList<Ord> selectOderList2() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectOderList2");
	}



	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  :  문태환
	 * @내용 	: 오더리스트 상태값 B 변경
	 * @param ordNo
	 * @return
	 */
	public int orderUpdate2(int ordNo) {
		return sqlSession.update("adminMapper.orderUpdate2",ordNo);
	}

	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	:오더리스트 상태값 C
	 * @return
	 */
	public ArrayList<Ord> selectOderList3() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectOderList3");
	}



	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  :  문태환
	 * @내용 	: 오더리스트 상태값 C 변경
	 * @param ordNo
	 * @return
	 */
	public int orderUpdate3(int ordNo) {
		return sqlSession.update("adminMapper.orderUpdate3",ordNo);
	}
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	:오더리스트 상태값 D
	 * @return
	 */
	public ArrayList<Ord> selectOderList4() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectOderList4");
	}


	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  :  문태환
	 * @내용 	: 오더리스트 상태값 D 변경
	 * @param ordNo
	 * @return
	 */
	public int orderUpdate4(int ordNo) {
		return sqlSession.update("adminMapper.orderUpdate4",ordNo);
	}


	public ArrayList<Member> selectMember() {
		return (ArrayList)sqlSession.selectList("memberMapper.selectMember");
	}
	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 상품배너 업데이트
	 * @param d
	 * @return
	 */
	public int Designprdt(Design d) {
		return sqlSession.update("adminMapper.Designprdt",d);
	}


	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 상품배너 불러오기
	 * @return
	 */
	public Design selectPrdtImg() {
		return sqlSession.selectOne("adminMapper.selectPrdtImg");
	}


	/**
	 * @작성일  : 2020. 4. 19.
	 * @작성자  : 문태환
	 * @내용 	: 쿠폰 업데이트
	 * @param cp
	 * @return
	 */
	public int couponUpdate(ArrayList<Coupon> cplist) {
		Map<String, Object> map = new HashMap<String, Object>();
		   map.put("cplist", cplist);
		return sqlSession.update("adminMapper.couponUpdate",map);
	}


	/**
	 * @작성일  : 2020. 4. 20.
	 * @작성자  :  문태환
	 * @내용 	: 회원 적립급 지급
	 * @param ordNo
	 * @return
	 */
	public Pay selectPay(int ordNo) {
		return sqlSession.selectOne("cartMapper.selectPay",ordNo);
	}


	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 문태환
	 * @내용 	: 반품 리스트 뿌리기
	 * @return
	 */
	public ArrayList<Return> productReturnlist() {
		return (ArrayList)sqlSession.selectList("adminMapper.productReturnlist");
	}


	/**
	 * @작성일  : 2020. 4. 21.
	 * @작성자  : 문태환
	 * @내용 	: 어드민 반품 디테일
	 * @param reNo
	 * @return
	 */
	public Return ReturnDetai(Return re) {
		return sqlSession.selectOne("adminMapper.ReturnDetail",re);
	}

	/**
	* @작성일 : 2020. 4. 20.
	 * @작성자 : 이서현
	 * @내용 : 상품번호 가져오기
	 */
	public Product selectPrdtNo() {
		return sqlSession.selectOne("productMapper.selectPrdtNo");
	}

	/**
	 * @작성일 : 2020. 4. 20.
	 * @작성자 : 이서현
	 * @내용 : 옵션등록
	 */
	public int insertPotList(ArrayList<Product_opt> poArr) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("poArr", poArr);
		return sqlSession.insert("productMapper.insertPotList",map);
	}


	/**
	 * @작성일 : 2020. 4. 23.
	 * @작성자 : 이서현
	 * @내용 : 옵션 리스트 뿌리기 
	 */
	public ArrayList<Product_opt> ProductOptSelectList() {
		return (ArrayList)sqlSession.selectList("productMapper.ProductOptSelectList");
	}


	/**
	 * @작성일 : 2020. 4. 23.
	 * @작성자 : 이서현
	 * @내용 : 상품리스트디테일 상품
	 */
	public Product listProductSelectList(int prdtNo) {
		return sqlSession.selectOne("productMapper.listProductSelectList",prdtNo);
	}


	/**
	 * @작성일 : 2020. 4. 23.
	 * @작성자 : 이서현
	 * @내용 : 상품리스트 디테일 상품옵션 
	 */
	public ArrayList<Product_opt> listProductOptSelectList(int prdtNo) {
		return (ArrayList)sqlSession.selectList("productMapper.listProductOptSelectList",prdtNo);
	}
	
	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 문태환
	 * @내용 	: 반품 결제취소
	 * @param cpmemNo
	 * @return
	 */
	public int calcellCoupon(int cpmemNo) {
		return sqlSession.update("adminMapper.calcellCoupon",cpmemNo);
	}


	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 문태환
	 * @내용 	: 페이 테이블 결제취소
	 * @param ordCode
	 * @return
	 */
	public int cancellPay(int ordCode) {
		return sqlSession.update("adminMapper.cancellPay",ordCode);
	}


	/**
	 * @작성일  : 2020. 4. 22.
	 * @작성자  : 문태환
	 * @내용 	: 포인트 반환
	 * @param m
	 * @return
	 */
	public int cancellPoint(Member m) {
		return sqlSession.update("adminMapper.cancellPoint",m);
	}


	/**
	 * @작성일 : 2020. 4. 23.
	 * @작성자 : 이서현
	 * @내용 : 고객 디테일 화면 리스트 
	 */
	public Member selectOneMember(int memNo) {
		return sqlSession.selectOne("memberMapper.selectOneMember",memNo);
	}
	
	 
	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 문태환
	 * @내용 : 반품 업데이트 
	 */
	public int ReturnUpdate(Return r) {
		return sqlSession.update("adminMapper.ReturnUpdate",r);
	}


	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 이서현
	 * @내용 : 주문 목록 리스트
	 */
	public ArrayList<Ord> selectOrder(int memNo) {
		return (ArrayList)sqlSession.selectList("cartMapper.selectOrder",memNo);
	}


	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 이서현
	 * @내용 : 상품인기순위 리스트 
	 */
	public ArrayList<Product> ProductSelectListBest() {
		return (ArrayList)sqlSession.selectList("productMapper.ProductSelectListBest");
	}
	
	
	/**
	 * @작성일 : 2020. 4. 24.
	 * @작성자 : 문태환
	 * @내용 : 주분테이블 반품상태 업데이트 
	 */
	public int updateOrdf(Return r) {
		
		if(r.getReStatus() =="Y") {
			return sqlSession.update("adminMapper.updateOrdF",r);
		}else if(r.getReStatus() == "H") {
			return sqlSession.update("adminMapper.updateOrdG",r);
		}else {
			return 0;
		}
		
	}

	/**
	 * @작성일  : 2020. 4. 24.
	 * @작성자  : 문태환
	 * @내용 	: 업 카테고리 카운트
	 * @param i
	 * @return
	 */
	public int UpCategoryCount(int i) {
		return sqlSession.selectOne("adminMapper.UpCategoryCount",i);
	}


	/**
	 * @작성일  : 2020. 4. 24.
	 * @작성자  : 문태환  
	 * @내용 	: 다운 카테고리 카운트
	 * @param i
	 * @return
	 */
	public int DownCategoryCount(DownCategory dc) {
		return sqlSession.selectOne("adminMapper.DownCategoryCount",dc);
	}


	/**
	 * @작성일 : 2020. 4. 25.
	 * @작성자 : 이서현
	 * @내용 : 상품 TOP5 
	 */
	public ArrayList<Product> topSelect() {
		return (ArrayList)sqlSession.selectList("productMapper.topSelect");
	}


	public int todayQnAselect() {
		return sqlSession.selectOne("boardMapper.todayQnAselect");
	}


	public int todayReturnSelect() {
		return sqlSession.selectOne("adminMapper.todayReturnSelect");
	}


	public int todayScountSelect() {
		return sqlSession.selectOne("cartMapper.todayScountSelect");
	}


	public int todaySpriceSelect() {
		return sqlSession.selectOne("cartMapper.todaySpriceSelect");
	}
	
	


	public int ProductUpdate(Product p) {
		return sqlSession.update("productMapper.ProductUpdate",p);
	}


	public int UpdatePotList(ArrayList<Product_opt> poArr) {
		return sqlSession.update("productMapper.UpdatePotList",poArr);
	}
     /*
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환
	 * @내용 	: 관리자 리뷰 댓글
	 * @param rp
	 * @return
	 */
	public int ComentInsert(ReviewReply rp) {
		return sqlSession.insert("adminMapper.ComentInsert",rp);
	}


	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환
	 * @내용 	: 신고 댓글 삭제
	 * @param rvNo
	 * @return
	 */
	public int comentDelete(ReviewReply rp) {
		return sqlSession.delete("adminMapper.comentDelete",rp);
	}


	/**
	 * @작성일  : 2020. 4. 27.
	 * @작성자  : 문태환 
	 * @내용 	: 신고 댓글 반려
	 * @param rp
	 * @return
	 */
	public int comentReturn(ReviewReply rp) {
		return sqlSession.update("adminMapper.comentReturn",rp);
	}


	/**
	 * @작성일 : 2020. 4. 28.
	 * @작성자 : 이서현
	 * @내용 : 월별판매량(월카운트)
	 */
	public ArrayList<Pay> monthScountList() {
		return (ArrayList)sqlSession.selectList("cartMapper.monthScountList");
	}


	/**
	 * @작성일 : 2020. 4. 28.
	 * @작성자 : 이서현
	 * @내용 : 월별판매량(월총 판매금액)
	 */
	public ArrayList<Pay> monthPayList() {
		return (ArrayList)sqlSession.selectList("cartMapper.monthPayList");
	}


	/**
	 * @작성일 : 2020. 4. 29.
	 * @작성자 : 이서현
	 * @내용 : 관심상품등록 
	 */
	public int ConnectSubmit(PrdtConnect pco) {
		return sqlSession.insert("adminMapper.ConnectSubmit",pco);
	}

	
	/**
	 * @작성일  : 2020. 4. 28.
	 * @작성자  : 문태환 
	 * @내용 	: 상품수정 사진 있을시 
	 * @param p
	 * @return
	 */
	public int ProductUpdate2(Product p) {
		return sqlSession.update("productMapper.ProductUpdate2",p);
	}


	public Product selectProduct(Product p) {
		return sqlSession.selectOne("productMapper.selectProduct",p);
	}


}

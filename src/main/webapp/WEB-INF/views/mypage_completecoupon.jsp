<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>oT.</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="/ot/resources/css/Login_style.css"> -->
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>

<style>
.ec-base-tab.tab_style li a {
    background: #f4f4f4;
    margin: 0;
}

.ec-base-paginate1 img {
    vertical-align: none !important;
}
.ec-base-paginate1 {
    margin: 30px auto;
    text-align: center;
    line-height: 0;
    display: table;
}
</style>
	<jsp:include page="header.jsp"/>	
</head>
<body>

	<c:url var="mWishlist" value="mWishlist.do"/>
	<c:url var="mPoint" value="mPoint.do"/>
	<c:url var="mCoupon" value="mCoupon.do"/>
	<c:url var="mCompletecoupon" value="mCompletecoupon.do"/>
	
 	<div id="container">
 		<div id="memberInf1">
			<div class="xans-myshop-bankbook " style="width: 80%;">
    			<p class="xans-element- xans-myshop xans-myshop-asyncbenefit mypage_top ">
    				<strong>
    					<span><span class="xans-member- var-name">${loginMember.memName }</span></span>
    				</strong>
 					님은 현재 
					<strong>
						<span class="xans-member- var-group_name" style="color:rgba(230,106,87,1);">
							<c:if test="${loginMember.memSumMoney < 100000}" >
								MEMBER
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 100000 && loginMember.memSumMoney < 300000}" >
								IRON
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 300000 && loginMember.memSumMoney < 500000}" >
								BRONZE
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 500000 && loginMember.memSumMoney < 700000}" >
								SILVER
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 700000}" >
								GOLD
							</c:if>
						</span>
						<span class="myshop_benefit_ship_free_message"></span>
					</strong>
  					입니다.
				</p>
		
				<ul style="float: right;width: 350px; height: 60px;margin-right: 100px;margin-top: -34px;">
					<li class="xans-layout-shoppinginfo ">
						<strong class="title">WISH</strong>
  						<br>
						<strong class="data ">
							<a href="${mWishlist }">
									<span id="xans_myshop_interest_prd_cnt">${WishList }개</span>
							</a>
						</strong>
					</li>
				
               		<li>
	                    <strong class="title">POINT</strong>
	                    <br>
	                    <strong class="data">
	                    	<a href="${mPoint }">
	                  <span>${resultPoint}</span>원</a>
	                    </strong>
	                </li>
                
	                <li class="etc ">
	                    <strong class="title">COUPON</strong>
	                    <br>
	                    <strong class="data">
	                    	<a href="${mCoupon }">${CouponCount}<span>개</span></a>
	                    </strong>
	                </li>
	            </ul>
			</div>
		</div>
		
        <div id="contents">
			<div class="titleArea">
    			<h2>COUPON</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="ec-base-tab tab_style">
        		<ul class="menu">
					<li>
						<a href="${mCoupon }">사용가능한 쿠폰 목록</a>
					</li>
		            <li class="selected">	
		            	<a href="${mCompletecoupon }">사용한 쿠폰 목록</a>
	            	</li>
						<p style="text-align: right; margin-right: 5px; padding-top: 15px;">사용가능 쿠폰 : ${CouponCount }장</p>
        		</ul>
			</div>

			<div class="xans-element- xans-myshop xans-myshop-historylist">
				<!--
	            $only_html = no
	            $count = 10
	            $login_page = /member/login.html
	        	-->
				<div class="ec-base-table typeList">
            		<table border="1" summary="" style="border-bottom: none;">
						<caption>적립금 내역</caption>
               			<colgroup>
							<col style="width: 60px">
							<col style="width: 200px">
							<col style="width: 150px">
							<col style="width: 160px">
							<col style="width: 150px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">NO</th>
								<th scope="col">COUPON NAME</th>
								<th scope="col">DISCOUNT</th>
								<th scope="col">COMPLETE DATE</th>
							</tr>
						</thead>
                   	
						<c:if test="${ !empty list}">
								<c:forEach var="cp" items="${list }">
							<tbody class="center">
								<tr class="xans-record-">
									<td>${cp.cpmem_no }</td>
									<td>${cp.cpname }</td>
									<td>
										<fmt:formatNumber value="${cp.cpdiscount }" pattern="#,###"/>
									</td>
									<td>${cp.cp_usedate }</td>
								</tr>
								</c:forEach>
								</c:if>
							</tbody>
							<c:if test="${empty list }">
							<tbody class="">
								<tr>
									<td colspan="7" class="message">보유하고 계신 쿠폰 내역이 없습니다</td>
								</tr>
							</tbody>
							</c:if>
					</table>
        		</div>
			</div>

			
			<!-- 페이징 처리 -->
			<c:if test="${!empty list }">
			<div class="xans-element- xans-myshop xans-myshop-couponlistpaging ec-base-paginate1">
				<c:if test="${pi.currentPage eq 1 }">
					<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
				</c:if>
				<c:if test="${pi.currentPage ne 1 }">
					<c:url var="start" value="mCompleteCoupon.do">
						<c:param name="currentPage" value="1"/>
					</c:url>
				<a href="${start }" class="first">
					<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
				</a>
				</c:if> 
				
				
				<c:if test="${ pi.currentPage eq 1 }">
					<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지"> &nbsp;
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
				<c:url var="before" value="mCompleteCoupon.do">
                  <c:param name="currentPage" value="${pi.currentPage - 1 }"/>
                  </c:url>
                  <a href="${before}">
                  <img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
                  </a> &nbsp;
                 </c:if>
                  
				 <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                     <c:if test="${ p eq pi.currentPage }">
                        <font color="red" style="font-size: 13px;font-weight: 900;font-family: 'arial',serif;line-height: 35px;">
                        <b>${ p }</b> &nbsp;&nbsp;</font>
                     </c:if>

                     <c:if test="${ p ne pi.currentPage }">
                        <c:url var="pagination" value="mCompleteCoupon.do">
                           <c:param name="currentPage" value="${ p }"/>
                     </c:url>
                     <a href="${ pagination }" style="font-family: 'arial',serif;line-height: 35px;font-size: 13px;">
                     ${ p }</a> &nbsp;
                  </c:if>
               </c:forEach>
               
               
               <c:if test="${ pi.currentPage eq pi.maxPage }">
					<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
				<c:url var="after" value="mCompleteCoupon.do">
                     <c:param name="currentPage" value="${pi.currentPage +1 }"/>
                  </c:url>
                  <a href="${after}">
               <img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
               </a>
               </c:if>
               
               <c:if test="${ pi.currentPage eq pi.maxPage }">
               		<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
               </c:if>
               <c:if test="${ pi.currentPage ne pi.maxPage }">
               		<c:url var="end" value="mCoupon.do">
               			<c:param name="currentPage" value="${pi.maxPage }"/>
               		</c:url>
					<a href="${end }" class="last">
					<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지"></a>
               </c:if>
			</div>
			</c:if>
	
			<div class="xans-element- xans-myshop xans-myshop-head ec-base-help ">
				<h3>적립금 안내</h3>
				<div class="inner">
	        		<ol class="xans-element- xans-myshop xans-myshop-historyinfo" style="font-size: 13px;">
	        			<li class="item1 ">주문으로 발생한 적립금은 배송완료 후 7일 부터 실제 사용 가능한 적립금으로 전환됩니다. 배송완료 시점으로부터 7일 동안은 미가용 적립금으로 분류됩니다.</li>
						<li class="item2 ">미가용 적립금은 반품, 구매취소 등을 대비한 임시 적립금으로 사용가능 적립금으로 전환되기까지 상품구매에 사용하실 수 없습니다.</li>
						<li class="item3 ">사용가능 적립금(총적립금 - 사용된적립금 - 미가용적립금)은 상품구매 시 바로 사용가능합니다.</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	
 <%@include file="footer.jsp" %>
</body>
</html>
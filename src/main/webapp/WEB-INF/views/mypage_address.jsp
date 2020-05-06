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
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
<style>
th, td {
    border: 0;
}

.ec-base-paginate1 {
    margin: 30px auto;
    text-align: center;
    line-height: 0;
    display: table;
}
a {
cursor:pointer;
}
 

   </style>   
   
<jsp:include page="header.jsp"/>	
</head>
<body>
	<c:url var="mWishlist" value="mWishlist.do"/>
	<c:url var="mPoint" value="mPoint.do"/>
	<c:url var="mCoupon" value="mCoupon.do"/>
	
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
			<div class="mypage_top_outer">
			 <!-- <div module="myshop_bankbook">        
			        <ul>
			            <li module="Layout_shoppingInfo">
			                <strong class="title"><a href="/myshop/wish_list.html">WISH</a></strong>
			                <strong class="data {$use_interest_prd|display}"><a href="/myshop/wish_list.html">{$interest_prd_cnt}</a></strong>
			            </li>
			            <li>
			                <strong class="title"><a href="/myshop/mileage/historyList.html">POINT</a></strong>
			                <strong class="data"><a href="/myshop/mileage/historyList.html">{$avail_mileage}</a></strong>
			            </li>
			            <li class="etc {$display_coupon|display}">
			                <strong class="title"><a href="/myshop/coupon/coupon.html">COUPON</a></strong>
			                <strong class="data"><a href="/myshop/coupon/coupon.html">{$coupon_cnt}<span>개</span></a></strong>
			                <a href="/myshop/coupon/coupon.html"></a>
			            </li>
			        </ul>
			    </div> -->
			</div>

			<div class="titleArea">
    			<h2>ADDRESS</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>

			<!-- <form id="frmAddr" action="mAddress.do"> -->
		
    			
    			<div class="ec-base-table typeList">
        				<table border="1" summary="">
							<caption>배송 주소록 목록</caption>
            				<colgroup>
								<col style="width:80px">
								<col style="width:110px">
								<col style="width:120px">
								<col style="width:160px">
								<col style="width:auto">
								<col style="width:120px">
							</colgroup>
							
							<thead>
								<tr>
									<th scope="col">
										<span class="">
											<input id="allCheck" onclick="myshopAddr.checkAll(this)" value="" type="checkbox">
										</span>
									</th>
				                   <!--  <th scope="col">ADDRESS FIX</th> -->
				                    <th scope="col">TITLE</th>
				                    <th scope="col">NAME</th>
				                    <!-- <th scope="col">PHONE</th> -->
				                    <th scope="col">MOBILE</th>
				                    <th scope="col">ADDRESS</th>
				                    <th scope="col">MODIFY</th>
                				</tr>
               				</thead>
               				
               				
							<tbody class=" center">
							<c:forEach var="ad" items="${adlist}">
								<c:url var="mAddress_modify" value="mAddress_modify.do">
									<c:param name="mAddress" value="${ad.adNo }"/>
								</c:url>
								<input type="hidden" name="adNo" value="${ad.adNo }">
								<tr class="xans-record-">
									<td>
										<input name="adCheck" id="adCheck" value="843124" type="checkbox">
									</td>
                    				
                    				<td>
										<img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif" class="displaynone" alt="기본"> 
										<span>${ad.adTitle }</span>
									</td>
				                    <td><span>${ad.adReceiver}</span></td>
				                   
				                    <td><span>${ad.adPhone }</span></td>
				                    <td class="left">
				                   
				                    	<span>${ad.adAddress }</span>
				                    </td>
				                    <td>	
				                    	<a href="${mAddress_modify }" class=" yg_btn_24 yg_btn3" alt="수정">수정</a>
			                    	</td>
                				</tr>
                				</c:forEach>
							</tbody>
							
							<c:if test="${empty list }">
							<tbody>
								<tr>
									<td colspan="8" class="message">등록된 주소가 없습니다.</td>
                				</tr>
               				</tbody>
               				</c:if>
						</table>
					</div>
					<div class="ec-base-button">
        				<span class="gLeft ">
            				<a id="AddressDelete" class="yg_btn yg_btn4"alt="선택 주소록 삭제">선택 주소록 삭제</a>
        				</span>
        				
				        <span class="gRight">
				            <a href="mAddress_register.do" class="yg_btn yg_btn1 yg_btn_border_444" alt="배송지 등록">배송지등록</a>
				        </span>
    				</div>
    				
    				
    				
    				
    		<!-- 페이징처리 -->
    			<c:if test="${!empty list }">
			<div class="xans-element- xans-myshop xans-myshop-couponlistpaging ec-base-paginate1">
				<c:if test="${pi.currentPage eq 1 }">
					<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
				</c:if>
				<c:if test="${pi.currentPage ne 1 }">
					<c:url var="start" value="mAddress.do">
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
				<c:url var="before" value="mAddress.do">
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
                        <c:url var="pagination" value="mAddress.do">
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
				<c:url var="after" value="mAddress.do">
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
               		<c:url var="end" value="mAddress.do">
               			<c:param name="currentPage" value="${pi.maxPage }"/>
               		</c:url>
					<a href="${end }" class="last">
					<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지"></a>
               </c:if>
			</div>
		</c:if>

			<div class="ec-base-help" >
			    <h3>배송주소록 유의사항</h3>
			    <div class="inner">
			        <ol style="font-size: 13px;">
			        	<li class="item1">배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.</li>
			            <li class="item2">자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서 제외됩니다.</li>
			            <li class="item3">기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.</li>
			        </ol>
		        </div>
			</div>	
    				
    				
    				
    				
    				
    				
    				
    				
				</div>
	<!-- 		</form> -->
			
			
		</div>
	
 <jsp:include page="footer.jsp"/>
 
 <script>
 <!--선택 주소록 삭제 스크립트-->
 $('#AddressDelete').click(function() {

	 if(confirm("삭제하시겠습니까?") == true) {

		 var adNokArr = new Array();
		 var adCheck = document.getElementsByName('adCheck');
		 var adNo = document.getElementsByName('adNo');

		 var count=0;
		 for(var i=0;i<adCheck.length;i++){
			 if(adCheck[i].checked ==true){

				 adNokArr[count] = adNo[i].value
				 count++;
			 }
		 }
		  console.log(adNokArr);

	/* 	  $("input[name='pro_check']:checked").each(function() {
			 ca_no.push($(this).attr("data-cartNum"))
		 }); */

		 $.ajax({
			url : "AddressDelete.do",
			traditional : true,
			data : { 'adNokArr' : adNokArr},
			success : function(data) {
				if(data =="ok"){
				location.href = "mAddress.do";
				}else{
					alert('삭제실패')
				}
			},error : function(){
				alert('삭제 할 주소지를 선택해주세요');
			}
		 });
	 }
	 
 });
 
 
 
 
 </script>
</body>
</html>
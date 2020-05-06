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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<style>
input {
	height: 25px !important;
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
				<h2>ADDRESS REGISTER</h2>
			</div>
	
			<div class="xans-element- xans-layout xans-layout-logincheck ">
				<!--
			    $url = /member/login.html
				-->
			</div>
			
			<form id="frmAddr" action="mAddress_insert.do">
				
				<div class="ec-base-table typeWrite">
       				<table border="1" summary="">
						<caption>배송 주소록 입력</caption>
	   		 			<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						
						<tbody style="font-size:12px;">
							<tr>
								<th scope="row">배송지명 
									<img src="/ot/resources/images/req_check.png" alt="필수">
								</th>
	                    		<td>
	                    			<input id="adTitle" name="adTitle"  
	             					class="inputTypeText" value="" type="text">
	                   		 	</td>
	               			</tr>
							<tr>
								<th scope="row">성명 
									<img src="/ot/resources/images/req_check.png" alt="필수">
								</th>
			                    <td>
			                    	<input id="adReceiver" name="adReceiver" 
			                    	 class="ec-member-name" value="" type="text">
		                    	</td>
			                </tr>
							<tr>
								<th scope="row">주소 
									<img src="/ot/resources/images/req_check.png" alt="필수">
								</th>
	                    		<td>
	                        		<input id="zipCode" name="postcode1"
	                        		 class="inputTypeText" readonly="readonly" maxlength="14" value="" type="text">                        
	                        		<a href="#none" onclick="addrSearch();" id="SearchAddress" class="yg_btn_24 yg_btn5" alt="우편번호">우편번호</a>
	                        		<br>
			                       <input id="address1" name="address1" class="inputTypeText" readonly="readonly" value="" type="text"> 기본주소
			                        <br>
			                        <input id="address2" name="address2" class="inputTypeText" value="" type="text"> 나머지주소
			                        <span class="displaynone">(선택입력가능)</span>
	                    		</td>
	               			</tr>
						
							<tr>
								<th scope="row">휴대전화 
								<span class="">
									<img src="/ot/resources/images/req_check.png" alt="필수">
								</span>
								</th>
	                   			<td>
	                   			<select id="mobile1" name="mobile1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>-
								<input id="mobile2" name="mobile2" maxlength="4" value="" type="text">-
								<input id="mobile3" name="mobile3" maxlength="4" value="" type="text">
								</td>
	               			</tr>
							
						</tbody>
					</table>
				</div>
					
				<div class="ec-base-button">
	      				<span>
			            	<a href="#none" class="yg_btn_140 yg_btn5" onclick="addressInsert();" alt="등록">등록</a>
			            	<a href="mAddress.do" class="yg_btn_140 yg_btn3" alt="취소">취소</a>
	      				</span>
				</div>
			</form>
		
			<div class="ec-base-help">
	    		<h3>배송주소록 유의사항</h3>
				<div class="inner">
        			<ol style="font-size:13px;">
	        			<li class="item1">배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.</li>
			            <li class="item2">자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서 제외됩니다.</li>
			            <li class="item3">기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.</li>
		       		</ol>
	       		</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
	
<script>
function addrSearch() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $('#zipCode').val(data.zonecode); //5자리 새우편번호 사용

            $('#address1').val(fullAddr);

            // 커서를 상세주소 필드로 이동한다.
            $('#address2').focus();
        }
    }).open();
};



function addressInsert() {
	$("#frmAddr").submit();
}





		</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDER</title>
 <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body class="animsition">
	<c:url var="product_detail" value="product_detail.do">
		<c:param name="product_detail" value="p1"/>
	</c:url>

	<!-- Header -->
	<%@include file="header.jsp" %>


	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: images/heading-pages-01.jpg;">
		<h2 class="l-text2 t-center">
			ORDER
		</h2>
	</section>
	

	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
			<div class="container">
				<!-- <h3 style="font-size:12px;font-weight:600;">국내배송상품 주문내역</h3> -->
		
			<div class="container-table-cart pos-relative" style="position: relative;right: 4%;">
				<div class="wrap-table-shopping-cart bgwhite">
					<table class="table-shopping-cart">
						<tr class="table-head">
							<input type="checkbox" id="pro_cart" style="position: relative;top: 40px;left: 35px;">
							<th class="column-1"><span id="cart_font">Image</span></th>
							<th class="column-2">Product Name</th>
							<th class="column-3">Price</th>
							<th class="column-4 p-l-70">Quantity</th>
							<th class="column-6">POINT</th>
							<th class="column-7">DELIVERY</th>
							<th class="column-8">CHARGE</th>
							<th class="column-5">Total</th>
						</tr>

						<tr class="table-row">
						    <input type="checkbox" name=pro_check style="position: relative;top: 136px;left: 22px;">
							<td class="column-1">
								<div class="cart-img-product b-rad-4 o-f-hidden">
									<img src="//black-up.kr/web/product/medium/201910/7e87ddc2879aa1c854575447f27b6026.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
								</div>
							</td>
							<td class="column-2">
								<a href="${product_detail }"> Men Tshirt</a>
							<br><span id="idMsg7">[옵션 : 블루/S/1개]</span>
							</td>
							<td class="column-3"><font class="format-money">29000</font> won</td>
							<td class="column-4">
								<div class="flex-w bo5 of-hidden w-size17">
									<button class="num-product-down1 color1 flex-c-m size7 bg8 eff2" style="display:none; ">
										<i class="fs-12 fa fa-minus" aria-hidden="true" ></i>
									</button>

									<input class="size8 m-text18 t-center num-product" type="number" name="num-product1" value="1" style="top: 0px; left: 31px;">

									<button class="num-product-up1 color1 flex-c-m size7 bg8 eff2" style=" display:none;">
										<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
									</button>
									
							
								</div>
							</td>
							<td class="column-6"><img src="/ot/resources/images/icons/icon-point.png" width="15px;height:15px;" 
							style="position: relative;left: -5px;
								top: -1px;">900원</td>
							<td class="column-7" style="padding-left: 40px;">기본배송</td>
							<td class="column-8"><font class="format-money">2500</font> won</td>
							<td class="column-5"><font class="format-money">58000</font> won</td>
						</tr>

						<tr class="table-row">
							 <input type="checkbox" name=pro_check style="position: relative;top: 276px;left: 9px;">
							<td class="column-1">
								<div class="cart-img-product b-rad-4 o-f-hidden">
									<img src="//black-up.kr/web/product/medium/201910/7e87ddc2879aa1c854575447f27b6026.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
								</div>
							</td>
							<td class="column-2">
							<a href="${product_detail }">Mug Adventure</a>
							<br><span id="idMsg7">[옵션 : 베이지/S/1개]</span></td>
							<td class="column-3"><font class="format-money">29000</font> won</td>
							<td class="column-4">
								<div class="flex-w bo5 of-hidden w-size17">
									<button class="num-product-down1 color1 flex-c-m size7 bg8 eff2" style="display:none; ">
										<i class="fs-12 fa fa-minus" aria-hidden="true" ></i>
									</button>

									<input class="size8 m-text18 t-center num-product" type="number" name="num-product1" value="1" style="top: 0px; left: 31px;">

									<button class="num-product-up1 color1 flex-c-m size7 bg8 eff2" style=" display:none;">
										<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
									</button>
								</div>
						</td>
							<td class="column-6"><img src="/ot/resources/images/icons/icon-point.png" width="15px;height:15px;" 
							style="position: relative;left: -5px;
								top: -1px;">900원</td>
							<td class="column-7" style="padding-left: 40px;">기본배송</td>
							<td class="column-8"><font class="format-money">2500</font> won</td>
							<td class="column-5"><font class="format-money">58000</font> won</td>
						</tr>
					</table>
				</div>
			</div>

		
			

			<!-- Total -->
			<h3 class=" " style="position: relative;font-size: 12px;font-weight: 600; top:63px;left:-48px;">
			결제 예정 금액</h3><br>
 
			<div class="totalArea"style="display:flex;margin-top: 3%;">
			    <form method="POST" name="payform"
			    style="width: 100%;margin-right: 3%;margin-left:-4%; margin-top:2%;">
			    
			    <table class="cashfuture"  style="height: 48%;width: 109%;
			   border-top: 1px solid #ddd;border-left: 1px solid #ddd;border-right: 1px solid #ddd;">
			    <colgroup>
					<col style="width:42%">
					<col style="width:38%">
					<col style="width:57%">
				</colgroup>
			    		<tr>	
			    			<th scope="col">
			    			<strong style="position: relative;left: 148px;">총 주문 금액</strong>
			    			</th>
			    			
			    			<th scope="col">
							<strong>총 </strong><strong id="total">할인</strong>
							<strong id="plus_mark"> + </strong>
							<strong id="total" class="">부가결제</strong>
							<strong> 금액</strong>
							</th>
							
							<th scope="col">
							<strong>총 결제예정 금액</strong>
							</th>
			    		</tr>
			    	<tbody class="center">
			    		<tr>
			    		
			    			<td class="price">
			    			<span class="m-text21 w-size20 w-full-sm"
			    			style="position: relative;left: 143px;">
						<font class="format-money">58000</font> won
					</span>
			    		</td>
			    		
			    			<td class="option">
			    			<strong id="plus_mark" style="position: relative;left: 40px;"> - </strong>
			    				<span class="m-text21 w-size20 w-full-sm" style="position: relative;left: 39px;">
							0 won</span>
						</td>	

						 	<td class="total-price">
						 	<strong>=</strong>
						 	<span class="m-text21 w-size20 w-full-sm">
						<font class="format-money">58000</font> <span id="m-text21">won</span>
					</span>
					</td>
						 	
			    		</tr>
			 	</tbody>
			    </table>
			    
			    <div class="detail-pay">
				<table style="height: 128%;width: 109%;
			    border: 1px solid #ddd;">
					<colgroup>
						<col style="width:160px">
						<col style="width:auto">
					</colgroup>
				<tbody>
					<tr class="txt14">
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<strong>총 할인금액</strong></th>
						<td><span class="m-text21 w-size20 w-full-sm" style="position: relative;left: 9px;top: 1px;">
							0 won</span>
						</td>	
					</tr>
					
					<tr class="txt14">
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<strong>총 부가결제금액</strong></th>
						<td style="border-top: 1px solid #ddd;"><span class="m-text21 w-size20 w-full-sm" style="position: relative;left: 9px;top: 1px;">
							0 won</span>
						</td>	
					</tr>
					
					
					<tr class="txt14">
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<strong>적립금</strong></th>
						<td style="border-top: 1px solid #ddd;">
						<input type="text" name="point" id="point" size="20px;" style="margin-left: 8px; margin-top:10px;">
						<span id="idMsg5">원 (총 사용가능 적립금 : <font class="format-money">2000</font>원)</span>
						
						<br>
						
						<ul class="info" style="margin: 18px 1px 8px;">
								<li id="idMsg6">- 적립금은 최소 2,000 이상일 때 결제가 가능합니다.</li>
                                <li id="idMsg6">- 최대 사용금액은 제한이 없습니다.</li>
                                <li id="idMsg6">- 1회 구매시 적립금 최대 사용금액은 2,000입니다.</li>
                                <li id="idMsg6">- 적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면 주문이 완료됩니다.</li>
                                <li id="idMsg6">- 적립금 사용 시 배송비는 적립금으로 사용 할 수 없습니다.</li>
                                <li id="idMsg6">- 적립금 사용 시 해당 상품에 대한 적립금은 적립되지 않습니다.</li>
                            </ul>
						</td>	
					</tr>
				
				
				</tbody>
				
				
				</table>
		
			    </div>
		</form>
	</div>
			<h3 class=" " style="position: relative;font-size: 12px;
   font-weight: 600; top:89px;left:-48px;">결제 수단</h3><br>
    <p class = "required3" style="color:#000;">
      <img src = "/ot/resources/images/red.png" alt="필수">
      필수입력사항
   </p>
			<div style="display:flex;margin-top: 5%;">
			    <form method="POST" name="payform"
			    style="border:1px solid #ddd;width: 100%;margin-right: 3%;margin-left:-4%; margin-top:2%;">
			    
			    <div class="method">
			    	<input type="radio" value="cash" name="paymethod" id="pay1" checked="checked" onclick="payshow1();">
			    	<label for="pay1">무통장 입금</label>
			    	
			    	<input type="radio" value="card" name="paymethod" id="pay2" onclick="payshow2();">
			    	<label for="pay2">카드 결제</label>
			    	
			    	<input type="radio" value="kakaopay" name="paymethod" id="pay3" onclick="payshow3();">
			    	<label for="pay3">카카오페이(간편결제)<a href="http://www.kakao.com/kakaopay" target="_blank">
			    	<img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_info2.gif" alt="info"></a></label>
			    	
			    	<input type="radio" value="payco" name="paymethod" id="pay4" onclick="payshow4();">
			    	<label for="pay4">페이코(간편결제)<a href="http://www.payco.com/payco/guide.nhn" target="_blank">
			    	<img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_info2.gif" alt="info"></a></label>
			    </div>
			    
			    
			    <div id="pay-cash">
			    	<table>
			    		<tbody>
			    			<tr>
			    				<th>입금자명</th>
			    				<td><input type="text" name="userName" id="userName" size="10px"></td>
			    			</tr>
			    			
			    			<tr>
			    				<th>입금은행</th>
			    				<td>
			    					<select id="bank" name="bank" style="font-size:12px;">
									<option value="-1">::: 선택해 주세요. :::</option>
									<option value="1">국민은행:093402-04-081571</option>
									<option value="2">신한은행:140-012-58997</option>
									<option value="3">농협:301-0231-3595-51</option>
								</select>
								</td>
			    			</tr>
			    		</tbody>
			    	
			    	</table>
			    </div>
			    
			    <div id="pay-card" style="padding-left: 29px; display:none;">
			    	<p id="shipfee" class="help"
			    	style="font-size: 12px;font-weight: 600;color: #000;">
			    	최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</p>
			    	
			    	<p id="pg" class="help" 
			  		style="font-size: 12px;font-weight: 600;color: #000;">
			  		소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</p>
			    </div>	
			    
			   <div id="pay-kakaopay" style="padding-left:29px; display:none;">
			   	<p class="help" style="font-size: 12px;font-weight: 600;color: #000;">
			   	휴대폰에 설치된 카카오톡 앱에서 비밀번호 입력만으로 빠르고 안전하게 결제가 가능한 서비스 입니다.</p>
			   
			   <p class="help" style="font-size: 12px;font-weight: 600;color: #000;">
			   	안드로이드의 경우 구글 플레이, 아이폰의 경우 앱 스토어에서 카카오톡 앱을 설치 한 후,<br>
               	최초 1회 카드 및 계좌 정보를 등록하셔야 사용 가능합니다.</p>
               	
               	<p class="help" style="font-size: 12px;font-weight: 600;color: #000;">
               	인터넷 익스플로러의 경우 8 이상에서만 결제 가능합니다.</p>
               	
               	<p class="help" style="font-size: 12px;font-weight: 600;color: #000;">
               	BC카드 중 신한, 하나, 국민카드는 결제가 불가능합니다.</p>
               	
			   </div>
			   
			   <div id="pay-payco" style="padding-left:29px; display:none;">
			   	<p class="help" style="font-size: 12px;font-weight: 600;color: #000;" >
			   	페이코 결제 팝업창에서 비밀번호 입력만으로 빠르고 안전하게 결제가 가능한 서비스 입니다.</p>
			   
			   <p class="help" style="font-size: 12px;font-weight: 600;color: #000;" >
			   <a href="//www.payco.com" target="_blank" style="font-size: 12px;font-weight: 600;color: #000;">
			   www.payco.com</a> 
			      에 회원가입 후, 최초 1회 카드 및 계좌 정보를 등록하셔야 사용 가능합니다.</p>
			   </div>
      </form>
	
			<div  class="bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
				<!-- <h5 class="m-text20 p-b-24">
					결제예정금액
				</h5> -->

				<!--  -->
				<div class="flex-w flex-sb-m p-b-12">
					<span class="s-text18 w-size19 w-full-sm">
						총 주문금액 :
					</span>

					<span class="m-text21 w-size20 w-full-sm">
						<font class="format-money">58000</font> won
					</span>
				</div>
				

				<!--  -->
				
				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<span class="s-text18 w-size19 w-full-sm">
						총 배송비 :
					</span>

						<span class="m-text21 w-size20 w-full-sm">
						<font class="format-money">2500</font> won
					</span>


					
				</div>

				<!--  -->
				<div class="flex-w flex-sb-m p-t-26 p-b-30">
					<span class="m-text22 w-size19 w-full-sm">
						총 결제예정 금액 :
					</span>

					<span class="m-text21 w-size20 w-full-sm">
						<font class="format-money">60500</font> <span id="m-text21">won</span>
					</span>
				</div>

				<div class="size15 trans-0-4">
					<!-- Button -->
					<button id="idMsg3" class="hov1 s-text1 trans-0-4 yg_btn_141"
						style="position: relative;left: 43px;">
						전체상품주문
					</button>
					
					<button  id="idMsg3" class="hov1 s-text1 trans-0-4 yg_btn_142" 
						style="position: relative;left: 54px;">
						선택상품주문
					</button>
				</div>
			</div>
			
			</div>
			<h3 class=" " style="    position: relative;
    font-size: 12px;
    font-weight: 600; top:63px;left:-48px;">주문 정보</h3><br>
    <p class = "required2" style="color:#000;">
      <img src = "/ot/resources/images/red.png" alt="필수">
      필수입력사항
   </p>
		<form method="POST" name="inputForm" style="width: 100%;margin-right: 3%; margin-left: -4%;margin-top: 5%;height: 300px;">
        <table class="jointype2" style="height: 84%;width: 109%;">
        <tbody>
            <tr>
                <th style="border-top:1px solid #ddd;">
                   	 주문하시는 분<img src="/ot/resources/images/red.png" style="position:relative;left:8px;">
                </th>
                  <td style="border-top:1px solid #ddd;">
                	<input type="text" name="userName" id="userName" size="20px"> 
                </td>
                </tr>
           
            <tr>
                <th>
                      주소<img src="/ot/resources/images/red.png" style="position:relative;left:8px;">
                </th>
                <td>
                   <input id="zipCode" style=" width:50px;" name="postcode1"  class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text" style="width:50px;">
                   <a href="#none" onclick="addrSearch();" id="postBtn" class="yg_btn_24 yg_btn3">우편번호</a>
                   <br>
                   <input id="address1"  name="address1" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"><span id="idMsg" style="left: 7px;
                  position: relative;">기본주소</span>
                   <br>
                   <input id="address2" name="address2"  class="inputTypeText" placeholder="" value="" type="text"><span id="idMsg" style="left: 7px;
               position: relative;">나머지주소</span>
                   
                </td>
            </tr>
            
            <tr>
                <th style="border-bottom:1px solid #ddd;">
                    휴대전화<img src="/ot/resources/images/red.png" style="position:relative;left:8px;">
                </th>
                <td style="border-bottom:1px solid #ddd;">
                    <select id="mobile1" name="mobile[]" style="font-size:12px;">
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="016">016</option>
                  <option value="017">017</option>
                  <option value="018">018</option>
                  <option value="019">019</option>
                  </select>
                    -<input id="mobile2"  name="mobile[]" maxlength="4" value="" type="text">
                    -<input id="mobile3"  name="mobile[]" maxlength="4" value="" type="text">
                </td>
            </tr>
            
            <tr>
                <th>
                    이메일<img src="/ot/resources/images/red.png" style="position:relative;left:8px;">
                </th>
                <td>
                    <input id="email" name="email" value="" type="text">
                   
                </td>
            </tr>
			</tbody>
		</table>
	</form>
	
	<!-- 수정함 수정함 기억해내! -->
	<h3 class=" " style="    position: relative;
    font-size: 12px;
   font-weight: 600; top:63px;left:-48px;">배송 정보</h3><br>
    <p class = "required4" style="color:#000;">
      <img src = "/ot/resources/images/red.png" alt="필수">
      필수입력사항
   </p>
	<div style="display:flex;margin-top: 3%;">
			    <form method="GET" name="inputForm"
			    style="width: 100%;margin-right: 3%;margin-left:-4%; margin-top:2%;">
        <table class="jointype3" style="height: 100%;width: 109%;">
        <tbody>
           <tr>
                <th style="border-top:1px solid #ddd;">
                   	 주문하시는 분<img src="/ot/resources/images/red.png" style="position:relative;left:8px;">
                </th>
                <td style="border-top:1px solid #ddd;">
                	<input id="delivery" name="delivery" type="radio">
                    <label id="delivery" style="position: relative; left: -2px;top: -2px;">주문자 정보와 동일</label>
                    <!-- <input id="delivery2" name="delivery2"  type="radio"
                    style="position: relative;left: -2px;">
                    <label id="delivery2" style="position: relative;left: -3px;top: -2px;">새로운배송지</label> -->
                </td>
                </tr>
                
                 <tr>
                <th>
                      받으시는 분<img src="/ot/resources/images/red.png" style="position:relative;left:8px;">
                   </th>
                <td>
                    <input type="text" name="userName" id="userName" size="20px"> 
                </td>
            </tr>
            
           
            
            <tr>
                <th>
                      주소<img src="/ot/resources/images/red.png" style="position:relative;left:8px;">
                </th>
                <td>
                   <input id="zipCode" style=" width:50px;" name="postcode1" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text" style="width:50px;">
                   <a href="#none" onclick="addrSearch();" id="postBtn" class="yg_btn_24 yg_btn3" >우편번호</a>
                   <br>
                   <input id="address1"  name="address1"  class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"><span id="idMsg" style="left: 7px;
                  position: relative;">기본주소</span>
                   <br>
                   <input id="address2" name="address2"class="inputTypeText" placeholder="" value="" type="text"><span id="idMsg" style="left: 7px;
               position: relative;">나머지주소</span>
                   
                </td>
            </tr>
            
            <tr>
                <th style="border-bottom:1px solid #ddd;">
                    휴대전화<img src="/ot/resources/images/red.png" style="position:relative;left:8px;">
                </th>
                <td style="border-bottom:1px solid #ddd;">
                    <select id="mobile1" name="mobile[]"  style="font-size:12px;">
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="016">016</option>
                  <option value="017">017</option>
                  <option value="018">018</option>
                  <option value="019">019</option>
                  </select>
                    -<input id="mobile2"  name="mobile[]" maxlength="4" value="" type="text">
                    -<input id="mobile3"  name="mobile[]" maxlength="4" value="" type="text">
                </td>
            </tr>
            
            <tr>
            	<th style="border-bottom:1px solid #ddd;">
            	배송메시지
            	</th>
            	<td style="border-bottom:1px solid #ddd;">
            		<textarea id="omessage" name="omessage" maxlength="255" cols="70"></textarea>
            	</td>
            
            
            </tr>
           
			
			</tbody>
		</table>
	</form>
	</div>
	</section>



	<!-- Footer -->
	<%@include file="footer.jsp" %>



	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>



<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	
	<script>

	
	
	$('#idMsg3').click(function(){
		
		
		//IMP.init('imp36292670');  핸드폰 결제용
		 if($('#pay2').prop('checked') == true){
			 IMP.init('imp71871253');
		}else if($('#pay3').prop('checked') == true){
			IMP.init('imp36292670');	 
		 } 
			 
			 
			 var totalpay = $('.format-money').text();
				IMP.request_pay({
				    pg : 'inicis',
				    pay_method : 'card',
				    merchant_uid : 'merchant_' + new Date().getTime(),
				    name : '주문명:결제테스트',
				    amount : 60500,
				    buyer_email : 'iamport@siot.do',
				    buyer_name : '구매자이름',
				    buyer_tel : '010-1234-5678',
				    buyer_addr : '서울특별시 강남구 삼성동',
				    buyer_postcode : '123-456'
				}, function(rsp) {
				    if ( rsp.success ) {
				    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
				    	jQuery.ajax({
				    		url: "/payments/complete", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
				    		type: 'POST',
				    		dataType: 'json',
				    		data: {
					    		imp_uid : rsp.imp_uid
					    		//기타 필요한 데이터가 있으면 추가 전달
				    		}
				    	}).done(function(data) {
				    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
				    		if ( everythings_fine ) {
				    			var msg = '결제가 완료되었습니다.';
				    			msg += '\n고유ID : ' + rsp.imp_uid;
				    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
				    			msg += '\결제 금액 : ' + rsp.paid_amount;
				    			msg += '카드 승인번호 : ' + rsp.apply_num;

				    			alert(msg);
				    		} else {
				    			//[3] 아직 제대로 결제가 되지 않았습니다.
				    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
				    		}
				    	});
				    } else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;

				        alert(msg);
				    }
				});
	});
	
	</script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect2')
		});
		
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
		  
		  function validateEmail(email) {
			  var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			  return re.test(email);
			  }
		  
		  function payshow1() {
			  if($('input:radio[id=pay1]').is(':checked')) {
				  $('#pay-cash').show();
				  $('#pay-card').hide();
				  $('#pay-kakaopay').hide();
				  $('#pay-payco').hide();
			  } else {
				  $('#pay-cash').hide();
			  }
		  }
		  
		  function payshow2() {
			  if($('input:radio[id=pay2]').is(':checked')) {
				  $('#pay-card').show();
				  $('#pay-cash').hide();
				  $('#pay-kakaopay').hide();
				  $('#pay-payco').hide();
			  } else {
				  $('#pay-card').hide();
			  }
		  }
			  
			  function payshow3() {
				  if($('input:radio[id=pay3]').is(':checked')) {
					  $('#pay-kakaopay').show();
					  $('#pay-cash').hide();
					  $('#pay-card').hide();
					  $('#pay-payco').hide();
				  } else {
					  $('#pay-card').hide();
				  }
		  }
			  
			  function payshow4() {
				  if($('input:radio[id=pay4]').is(':checked')) {
					  $('#pay-payco').show();
					  $('#pay-cash').hide();
					  $('#pay-card').hide();
					  $('#pay-kakaopay').hide();
				  } else {
					  $('#pay-card').hide();
				  }
		  }
			  
			  var $pro_cart = $('#pro_cart');
			    $pro_cart.change(function () {
			        var $this = $(this);
			        var checked = $this.prop('checked');
			        $('input[name="pro_check"]').prop('checked', checked);

			    });
	
		 
	</script>
			<script>
								
/*[ +/- num product ]
   ===========================================================*/
   $('.num-product-down1').on('click', function(e){
       e.preventDefault();
       var numProduct = Number($(this).next().val());
       if(numProduct > 1) $(this).next().val(numProduct - 1);
   });

   $('.num-product-up1').on('click', function(e){
       e.preventDefault();
       var numProduct = Number($(this).prev().val());
       $(this).prev().val(numProduct + 1);
   });
</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>

e>Insert title here</title>
</head>
<body>

</body>
</html>
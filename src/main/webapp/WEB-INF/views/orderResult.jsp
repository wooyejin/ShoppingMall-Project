<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제완료창</title>
<style>
#ord_address {
	    color: #000;
    position: relative;
    font-size:12px;
    font-weight:600;
    left:11px;
}


#ord_phone {
	    color: #000;
    position: relative;
    font-size:12px;
    font-weight:600;
    left:11px;
}


#ord_message {
	color: #000;
    position: relative;
    font-size:12px;
    font-weight:600;
    left:11px;
}

#ord_receiver{
	 color: #000;
    position: relative;
    font-size:12px;
    font-weight:600;
    left:11px;
}


</style>
 <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/fonts/themify/themify-icons.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="/ot/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">


	<!-- Header -->
	<%@include file="header.jsp" %>

		


	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: images/heading-pages-01.jpg;margin-top:54px;">
		<h2 class="l-text315 t-center">
			ORDER RESULT
		</h2>
		
		<br>
		<p class="membertype" style="position: relative;left: -182px;top: 102px;">
    		<strong>
    		<span><span class="mem_type">${loginMember.memName}</span></span>
    		</strong>
 			님은 현재 
			<strong>
			<span class="mem_type2" style="color:rgba(230,106,87,1);">MEMBER</span>
			</strong>
  			입니다.
  			<div class="xans-myshop-bankbook "><ul><li class="xans-layout-shoppinginfo ">
  			<strong class="title">
  			<a>WISH</a></strong>
  			<br>
			<strong class="data ">
			<a  href="${mWishlist }">
			<span id="xans_myshop_interest_prd_cnt">0개</span></a></strong>
			</li>
                <li>
                    <strong class="title">
                    <a>POINT</a></strong>
                    <br>
                    <strong class="data">
                   <a href="${mPoint }">
	                <fmt:formatNumber value="${mem.mem_point }" pattern="#,###"/>원</a>
                    </strong>
                </li>
                <li class="etc ">
                    <strong class="title">
                    <a>COUPON</a></strong>
                    <br>
                   <strong class="data">
	                    	<a href="${mCoupon }">${mem.countCounpon}<span>개</span></a>
	               </strong>
                </li>
            </ul>
</div>
		</p>
	</section>
	
	
	<!-- 주문완료창 -->
	
	

	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
			<div class="container">
				<!-- <h3 style="font-size:12px;font-weight:600;">국내배송상품 주문내역</h3> -->
		
			<div class="container-table-cart pos-relative" style="position: relative;right: 4%;">
			<div class="orderInfo" style="border: 1px solid #e6e6e6; height:216px;">
        <p>
            <strong style="font-weight:600; color:#000; font-size: 20px;position: relative;left: 492px;top: 31px;">고객님의 주문이 완료 되었습니다.</strong>
            		<br>
       			   <span id="idMsg4" style="font-weight: 600;position: relative;left: 458px;top: 31px;">주문내역 및 배송에 관한 안내는 주문조회 를 통하여 확인 가능합니다.</span>
         		   <br>   
            		<span id="idMsg4" style="font-weight:600;position: relative;top: 25px;left: 387px;">비회원으로 주문하신 고객님께서는 주문번호와 비회원 주문 비밀번호를 꼭 기억해두셔야 합니다.</span>
        </p>
       		  <ul>
					 <li style="position: relative;left: 553px;top: 58px;">
					 <span id="idMsg4" style="font-weight:600;">${o.ord_no }</span></li>
           			 <li><span id="idMsg4" style="font-weight:600;position: relative;left: 551px;top: 54px;">
           			 주문일자 : <span id="today">2020-03-15 20:23:05</span></li>
       		 </ul>
		</div>
		
		<h3 class=" " style="position: relative;
    font-size: 12px;
    font-weight: 600; top:51px;left:-2px;">결제 정보</h3><br>
		<div class="detail-pay">
				<table style="height: 128%;width: 100%;margin-top:3%;
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
						<strong>최종결제금액</strong></th>
						<td><span class="m-text21 w-size20 w-full-sm" id="totalPrice" style="margin-left:6px;">
										</span>
								 <span id="m-text21">won</span>
						</td>	
					</tr>
					
					
					<tr class="txt15">
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<strong>결제수단</strong></th>
						<td style="border-top: 1px solid #ddd;">
						<ul class="info" style="margin: 14px 1px 12px;">
								<li id="pCategory"></li>
                               <!--  <li id="idMsg5">입금자: 홍길동. 계좌번호 : 국민은행 543001-01-454061</li>
                                <li id="idMsg5">현금영수증 발행 : 신청안함</li> -->
                            </ul>
						</td>	
					</tr>
				
				
				</tbody>
				
				
				</table>
		
			    </div>
       
			
			<h3 class=" " style="position: relative;font-size: 12px;font-weight: 600; top:86px;left:-2px;">
			주문 상품 정보</h3><br>
				<div class="wrap-table-shopping-cart bgwhite" style="margin-top:4%;">
					<table class="table-shopping-cart">
						<tr class="table-head">
							
							<th class="column-1"><span id="cart_font">Image</span></th>
							<th class="column-2">Product Name</th>
							<th class="column-3">Price</th>
							<th class="column-4 p-l-70">Quantity</th>
							<th class="column-6">POINT</th>
							<th class="column-7">DELIVERY</th>
							<th class="column-5">Total</th>
						</tr>

						<c:forEach var="c" items="${sessionScope.list }">
						<tr class="table-row">
						    
							<td class="column-1">
								<div class="cart-img-product b-rad-4 o-f-hidden">
								<img src="${c.path }${c.image}"onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
								</div>
							</td>
							<td class="column-2">${c.prdt_name }
							<br><span id="idMsg7">[옵션 : ${c.prdt_color }/${c.prdt_size }/${c.prdt_color}개]</span></td>
							<td class="column-3"><font id="pro-price" class="format-money">${c.prdt_price }</font> </td>
							<td class="column-4">
								<div class="flex-w bo5 of-hidden w-size17">
									<input class="size8 m-text18 t-center num-product" type="number" name="num-product1" value="1"
									style="margin-left: 31px;">

								</div>
							</td>
							<td class="column-6"><img src="/ot/resources/images/icons/icon-point.png" width="15px;height:15px;" 
							style="position: relative;left: -5px;
								top: -1px;">3%</td>
							<td class="column-7" style="padding-left: 40px;">기본배송</td>
							<td class="column-5"><font class="format-money">${c.prdt_price }</font> won</td>
						<%-- 	<input type="hidden" name="sumprice" value="${c.prdt_sumprice }">
							<input type="hidden"class="ca_no"  name="ca_no" value="${c.ca_no }">										
							<input type="hidden" name="prdt_no" value="${c.ord_no }">
							<input type="hidden" name="ord_color" value="${o.ord_color }">
							<input type="hidden" name="ord_size" value="${o.ord_size }">
							<input type="hidden" name="ord_count" value="${o.ord_count }"> --%>
						</tr>
						
				</c:forEach>
					</table>
				</div>
			</div>

		
			

			<!-- Total -->
			<%-- <h3 class=" " style="position: relative;font-size: 12px;font-weight: 600; top:73px;left:-48px;">
			결제 예정 금액</h3><br>
 
			<div class="totalArea"style="display:flex;margin-top: 3%;">
			    <form method="POST" name="payform"
			    style="width: 100%;margin-right: 3%;margin-left:-4%; margin-top:2%;">
			    
			    <table class="cashfuture"  style="height: 41%;width: 109%;
			   border-top: 1px solid #ddd;border-left: 1px solid #ddd;border-right: 1px solid #ddd;
			   border-bottom:1px solid #ddd;">
			    <colgroup>
					<col style="width:42%">
				<!-- 	<col style="width:38%"> -->
					<col style="width:37%">
				</colgroup>
			    		<tr>	
			    			<th scope="col">
			    			<strong style="position: relative;left: 148px;">총 주문 금액</strong>
			    			</th>
			    			
			    			<th scope="col">
							<!-- <strong>총 </strong><strong id="total">할인</strong>
							<strong id="plus_mark"> + </strong>
							<strong id="total" class="">부가결제</strong>
							<strong> 금액</strong> -->
							</th>
							
							<th scope="col">
							<strong>총 결제예정 금액</strong>
							</th>
			    		</tr>
			    	<tbody class="center">
			    		<tr>
			    		
			    			<td class="price">
			    			<span class="m-text21 w-size20 w-full-sm">
						<font id="allprice2" class="format-money"></font> won
					</span>
					</span>
			    		</td>
			    		
			    			<td class="option">
			    			
						</td>	

						 	<td class="total-price">
						 	<strong>=</strong>
						 	<span class="m-text21 w-size20 w-full-sm">
						<font id="resultPrice" name="resultPrice" class="format-money"></font> <span id="m-text21">won</span>
					</span>
					</td>
						 	
			    		</tr>
			 	</tbody>
			    </table>
			    
			    
		</form>
	</div>
			 --%>
	
	<!-- 수정함 수정함 기억해내! -->
	<h3 class=" " style="position: relative;font-size: 12px;font-weight: 600; top:50px;left:-47px;">
	배송지정보</h3><br>
	<div class="delivery-detail" style="margin-left: -46px;
    width: 109%;">
				<table style="height: 128%;width: 100%;margin-top:3%;
			    border: 1px solid #ddd;">
					<colgroup>
						<col style="width:160px">
						<col style="width:auto">
					</colgroup>
				<tbody>
					<tr>
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<span id="idMsg4">받으시는분</span></th>
						<td>
						<span id="ord_receiver"></span>
						</td>	
					</tr>
					
					
				<!-- 	<tr>
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<span id="idMsg4">우편번호</span></th>
						<td style="border-top: 1px solid #ddd;">
							<span id="idMsg13">10115</span>
						</td>	
					</tr> -->
					
					<tr>
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<span id="idMsg4">주소</span></th>
						<td style="border-top: 1px solid #ddd;">
						<span id="ord_address"></span>
						</td>	
					</tr>
					
					<tr>
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<span id="idMsg4">휴대전화</span></th>
						<td style="border-top: 1px solid #ddd;">
						<span id="ord_phone"></span>
						</td>	
					</tr>
					
					<tr>
						<th scope="row" style="padding: 11px 0 10px 18px;
   						 border: 1px solid #ddd;
    					 border-bottom-width: 0;
   						 color: #353535;
   					     text-align: left;
    					font-weight: normal;
    					background-color: #fafafa;">
						<span id="idMsg4">배송메시지</span></th>
						<td style="border-top: 1px solid #ddd;">
						<!--배송메시지  내용 -->
						<span id="ord_message"></span>
						</td>	
					</tr>
			
			</tbody>
		</table>
	<!-- </form> -->
	</div>
	
	<c:url var="cReceipt" value="receipt.do"/>
	<a href="#none" onclick="window.open('${cReceipt}','order_receipt','width=790,height=940,left=900,top=20'); return false;" class=" yg_btn_24 yg_btn32">영수증 보기</a>
	
	 <div class="" style="margin-left:25%;">
        <a href="index.jsp" class="yg_btn_24 yg_btn31"><span style="position:relative;top:7px;">쇼핑계속하기</span></a>
        <a href="mList.do" class="hov1 s-text1 trans-0-4 yg_btn_143">주문확인하기</a>
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
	<script type="text/javascript" src="/ot/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="/ot/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="/ot/resources/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="/ot/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="/ot/resources/vendor/select2/select2.min.js"></script>
	<script>
	$(function(){
		
		var today = new Date();   
		var year = today.getFullYear();
		var month = (today.getMonth()+1);
		var day  = today.getDate();
		var hours = today.getHours(); // 시
		var minutes = today.getMinutes();  // 분
		  var ampm = hours >= 12 ? 'pm' : 'am';
		  hours = hours % 12;
		  hours = hours ? hours : 12; // the hour '0' should be '12'
		  minutes = minutes < 10 ? '0'+minutes : minutes;
		  var strTime = year+'-'+month+'-'+day+' '+ampm+' '+hours +':' + minutes;
		  
		  $('#today').text(strTime);
		var totalPrice = 0;
		var pCategory="";
		
		  "<c:forEach var ='p' items='${plist}'>"
		  			totalPrice +=Number("${p.sumprice}")
		  			pCategory = "${p.pay_category}"
		  "</c:forEach>"
		  
		  $('#totalPrice').text(totalPrice);
		  		if(pCategory == "card"){
		  			$('#pCategory').text("카드 결제");
		  		}else if(pCategory == "phone"){
		  			$('#pCategory').text("핸드폰 결제");
		  		}else if(pCategory == "kakaopay"){
		  			$('#pCategory').text("카카오 페이 결제");
		  		}else if(pCategory == "cash"){
		  			$('#pCategory').text("무통장 입금");
		  		}
		  		
	 	  "<c:forEach var ='o' items='${olist}'>"
		  		$('#ord_receiver').text("${o.ord_receiver}");
		  	 	 $('#ord_address').text("${o.ord_address}");
		  	 	$('#ord_phone').text("${o.ord_phone}");
		  	 	$('#ord_message').text("${o.ord_message}");
		   "</c:forEach>" 
		   
		  	
		  
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
			    
			    
			    function receipt(){
			    	location.href="receipt.do?";
			    };
			    
	
		 
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>


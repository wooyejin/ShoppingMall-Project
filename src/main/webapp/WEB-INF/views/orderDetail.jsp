<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제완료창</title>

 <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
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
	<link rel="stylesheet" type="text/css" href="/ot/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="/ot/resources/css/main.css">
<!--===============================================================================================-->
<style>
.totalDetail {
    display: none;
    width: 300px !important;
 }
</style>
</head>

<body class="animsition">


	<!-- Header -->
	<%@include file="header.jsp" %>

		<div id="memberInf" style="font-size:16px;">
    	<p class="xans-element- xans-myshop xans-myshop-asyncbenefit mypage_top ">
    		<strong>
    		<span class="xans-member- var-name" style="font-size:17px;">홍길동</span>
    		</strong>
 			님은 현재 
			<strong>
			<span class="xans-member- var-group_name" style="color:rgba(230,106,87,1); font-size:17px;">MEMBER</span>
		
			</strong>
  			입니다.
		</p>
	</div>


	<!-- Title Page -->
<!-- 	<section class="" style="background-image: images/heading-pages-01.jpg;"> -->

		<h2 class="l-text317 t-center">
			ORDER DETAIL
		</h2>
	
	
	
	<!-- 주문완료창 -->
	
	

	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
			<div class="container">
				<!-- <h3 style="font-size:12px;font-weight:600;">국내배송상품 주문내역</h3> -->
		
			<div class="container-table-cart pos-relative" style="position: relative;right: 4%;">
			
		
		<h3 class=" " style="position: relative;
    font-size: 12px;
    font-weight: 600; top:51px;left:-2px;">주문 정보</h3><br>
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
						<span id="idMsg4">주문번호</span></th>
						<td><span id="idMsg4" style="margin-left:10px;">
						20200316-0010199
					</span>
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
						<span id="idMsg4">주문일자</span></th>
						<td style="border-top: 1px solid #ddd;">
						<span id="idMsg4" style="margin-left:10px;">2020-03-16 23:32:35</span>
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
						<span id="idMsg4">주문자</span></th>
						<td style="border-top: 1px solid #ddd;">
						<span id="idMsg4" style="margin-left:10px;">우예진</span>
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
						<span id="idMsg4">주문처리상태</span></th>
						<td style="border-top: 1px solid #ddd;">
						<span id="idMsg4" style="margin-left:10px;">입금전</span>
						
						<button>
						<p class="yg_btn_24 yg_btn3 ">
						<span style="position:relative;top:-1px;">주문취소</span></p>
						</button>
						</td>	
					</tr>
					
					
				
				
				</tbody>
				
				
				</table>
		
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
						<strong>총 주문금액</strong></th>
						<td><span class="m-text21 w-size20 w-full-sm" style="margin-left:11px;
						position:relative;top:2px;">
						60,500 <span id="m-text21">won</span>
						</span>
						&nbsp;&nbsp;
						<button id="infodetail" 
						class="more yg_btn_24 yg_btn3">내역보기</button>
						
						
					
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
						<strong>총 결제금액</strong></th>
						<td style="border-top: 1px solid #ddd;">
						<span class="m-text21 w-size20 w-full-sm" style="margin-left:11px;
						position:relative;top:2px;">
						60,500 <span id="m-text21">won</span>
						</span>	
					
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
								<li id="idMsg5">무통장 입금</li>
                                <li id="idMsg5">입금자: 홍길동. 계좌번호 : 국민은행 543001-01-454061</li>
                                <li id="idMsg5">현금영수증 발행 : 신청안함</li>
                                
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
							<th class="column-8">CHARGE</th>
							<th class="column-5">Total</th>
						</tr>

						<tr class="table-row">
						    
							<td class="column-1">
								<div class="cart-img-product b-rad-4 o-f-hidden">
									<img src="//black-up.kr/web/product/medium/201910/7e87ddc2879aa1c854575447f27b6026.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
								</div>
							</td>
							<td class="column-2">Men Tshirt
							<br><span id="idMsg7" >[옵션 : 블루/S/1개]</span></td>
							<td class="column-3">29,000 won</td>
							<td class="column-4">
								<div class="flex-w bo5 of-hidden w-size17">
							
									<input class="size8 m-text18 t-center num-product" type="number" name="num-product1" value="1"
									style="margin-left: 31px;">

								</div>
							</td>
							<td class="column-6"><img src="/ot/resources/images/icons/icon-point.png" width="15px;height:15px;" 
							style="position: relative;left: -5px;
								top: -1px;">900원</td>
							<td class="column-7" style="padding-left: 40px;">기본배송</td>
							<td class="column-8">2,500 won</td>
							<td class="column-5">58,000 won</td>
						</tr>

						<tr class="table-row">
							
							<td class="column-1">
								<div class="cart-img-product b-rad-4 o-f-hidden">
									<img src="//black-up.kr/web/product/medium/201910/7e87ddc2879aa1c854575447f27b6026.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
								</div>
							</td>
							<td class="column-2">Mug Adventure
							<br><span id="idMsg7">[옵션 : 베이지/S/1개]</span></td>
							<td class="column-3">29,000 won</td>
							<td class="column-4">
								<div class="flex-w bo5 of-hidden w-size17">
									<input class="size8 m-text18 t-center num-product" type="number" name="num-product2" value="1"
									style="margin-left: 31px;">
								</div>
						</td>
							<td class="column-6"><img src="/ot/resources/images/icons/icon-point.png" width="15px;height:15px;" 
							style="position: relative;left: -5px;
								top: -1px;">900원</td>
							<td class="column-7" style="padding-left: 40px;">기본배송</td>
							<td class="column-8">2,500 won</td>
							<td class="column-5">58,000 won</td>
						</tr>
					</table>
				</div>
			</div>

	
			
			
	
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
						<span id="idMsg13">홍길동</span>
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
						<span id="idMsg4">우편번호</span></th>
						<td style="border-top: 1px solid #ddd;">
							<span id="idMsg13">10115</span>
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
						<span id="idMsg4">주소</span></th>
						<td style="border-top: 1px solid #ddd;">
						<span id="idMsg13">서울시 강남구 테헤란로</span>
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
						<span id="idMsg13">010-1234-5678</span>
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
						</td>	
					</tr>
			
			</tbody>
		</table>
	</form>
	</div>
	
	<a href="#none" class=" yg_btn_24 yg_btn32">현금영수증 신청</a>
	<a href="#none" class=" yg_btn_24 yg_btn32">세금계산서 신청</a>
	<a href="#none" class=" yg_btn_24 yg_btn32">거래명세서 인쇄</a>
	
	 <div class="" style="margin-left:25%;">
        <a href="mypage_list.jsp" class="hov1 s-text1 trans-0-4 yg_btn_144">주문목록보기</a>
    </div>
	</section>
	
	<div id="orderdetail" class="totalDetail ec-base-layer" style="top:704px; left: 580.906px; display:none;position:absolute;
	border:1px solid #000;height:159px; background-color:#fff;">
        <div class="header">
            <h3 style="font-size: 14px;position: relative;top: 1px;">총 주문금액 상세내역</h3>
        </div>
        <div class="content">
            <p>21,500 won</p>
            <ul class="ec-base-desc typeDot gLarge rightDD">
<li>
<strong class="term">상품금액</strong><span class="desc">19,000 won</span>
</li>
                
                <li style="position: relative;top: 16px;">
<strong class="term">배송비</strong><span class="desc" style="padding-left:19px;">2,500 won</span>
</li>
            </ul>
</div>
        <a href="#none" class="close" onclick="OrderLayer.offDiv('order_layer_detail');">
        <img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"
        style="position: relative;left: -14px;top: -151px;"></a>
    </div>


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
	
	
	$('#infodetail').click(function(){
		$('#orderdetail').css('display','block');
		
	});
	$('.close').click(function(){
		$('#orderdetail').css('display','none');
	})
	
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
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>


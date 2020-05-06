<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FaQ</title>
</head>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700&display=swap&subset=korean" rel="stylesheet"><script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
 html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
    -webkit-text-size-adjust: none;
}
        .titleArea {
    min-height: 30px;
    margin: 10px 0 40px;
    text-align: center;
}
.titleArea h2 {
    display: block;
    font-size: 34px;
    padding: 10px 20px;
    font-weight: 600;
    font-family: 'HelveticaLTPro','Arial';
    *display: inline;
    *zoom: 1;
}
ul.tabs {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;
    border-bottom: 1px solid #eee;
    border-left: 1px solid #eee;
    width: 100%;
    font-family:"dotum";
    font-size:12px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:219px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
.tab_container {
    border-top: none;
    clear: both;
    float: left;
  width: 1100px;
    background: #FFFFFF;
}
.tab_content {
    padding: 5px;
    font-size: 12px;
    display: none;
    padding-left: 15px;
   
    
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container .tab_content ul li {
    padding:5px;
    list-style:none;
    padding-top: 10px;
   padding-bottom: 20px;
}
#container {
       width: 1100px;
    margin: 0 auto;
}
.tab_content li{
font-family: 'Nanum Gothic', sans-serif;
	border-bottom: 1px solid #e8e8e8;
	font-weight:400;
	font-size: 13px;
}
.fcontent{
	font-family: 'Nanum Gothic', sans-serif;
	border-bottom: 1px solid #e8e8e8;
	font-size:12px;
    padding-left: 17px;
    padding-top: 15px;
    padding-bottom: 15px;
}

.qna_box{
	margin: 0 auto;
    text-align: center;
    padding-bottom: 80px;

}

.qna_box li{
    display: inline-block;
    width: 114px;
    height: 60px;
    margin: 0 3px;
    border: 1px solid #aaa;
    vertical-align: middle;
}
.qna_box a{
	display: inline-block;
    width: 100%;
    height: 100%;
    box-sizing: border-box;
    font-size: 12px;
    padding: 16px 0;
    line-height: 1.3em;
    font-weight: 600;
}
.qna_box a:hover{
	color: black;
}

    </style>
 <%@include file="header.jsp" %>
<body>
<br><br><br>
<div  class="titleArea" >
        <h2>QnA</h2>
        <br>
      카테고리별 게시판을 클릭하신 후 유형에 맞는 문의글을 남겨주세요.<br>
아래의 FAQ(자주묻는질문)을 확인하시면 좀 더 빠른 답변을 얻으실 수 있습니다.  
    </div>
              
  <div class="qna_box">
  <ul>
  	<li><a href="product_board.do" style="line-height: 2.2em;">상품문의</a></li>
  	<li><a href="delivery_board.do" style="line-height: 2.2em;">배송문의</a></li>
  	<li><a href="delivery_cancel.do" >배송전 <br>취소/변경</a></li>
  	<li><a href="product_change.do">배송후 <br>교환/반품</a></li>
  	<li><a href="bank_insert_board.do">입금확인<br>/입금자 변경 </a></li>
  	<li><a href="bad_product_board.do" >상품불량 및<br>오배송접수</a></li>
  </ul>  
   </div>
         
    
    
<br><br><br><br>
<div  class="titleArea" >
        <h2>FAQ</h2>
    </div>
          
  <div id="container">
    <ul class="tabs">
        <li class="active" rel="tab1">배송문의</li>
        <li rel="tab2">교환/반품</li>
        <li rel="tab3">결제문의</li>
        <li rel="tab4">배송전 변경</li>
        <li rel="tab5">기타문의</li>
    </ul>
    <div class="tab_container">
        <div id="tab1" class="tab_content">
            <ul >
                <li>주문했는데 언제 배송되나요?</li>
                <p class="fcontent">
				 결제완료 후 기본배송일: 주문당일 ~ 3일(휴일제외)<br>
				부득이하게 입고지연 상품이 있는경우 지연문자 연락 드립니다.<br>
				<br>
				결제일 기준으로 자정에 거래처로 주문이 들어가는 시스템으로<br>
				주문하신 상품이 저희쪽에 여유재고가 있는 상품이라면 당일출고가 가능하지만,<br>
				재고가 없는 상품의 경우 거래처의 출고일에 따라 배송이 지연될 수 있습니다.<br>
				<br>
				입고,배송여부 문의는 14시 이후 연락주시는게 가장 정확합니다.<br>
				(당일출고가 어렵다고 안내받으신 경우 다음날 같은 시간에 연락주시면 확인 도와드려요.)<br>
				</p>
                <li>배송조회는 어떻게 하나요?</li>
                <p class="fcontent">
		                상품 출고시 주문자님의 핸드폰번호로 송장번호 포함된 문자가 발송됩니다.<br>
			   ( 14시부터 배송 출고 진행되며 문자와 전산상으로는 19시 이후 조회가능합니다.)<br>
				OT의 택배사는 우체국택배 이며 아래의 주소를 통해 배송조회가 가능합니다.<br>
                
                </p>
                <li>배송이 되었다는 문자를 받았는데 배송조회가 되지 않아요</li>
                <p class="fcontent">
                저희쪽에서 출고된 상품은 우체국택배로 발송되어 운송장 정보를 전송하는 시간이 필요합니다.<br>
		운송장번호를 이용한 배송조회는 저녁7~10시 이후 가능하며, 출고 후 1-3일 이내로 수령 가능합니다.<br>
		<br>
		(택배사 물량에 따라 변동이 있을 수 있습니다.),<br>
		간혹 시스템 오류로 배송추적이 되지 않을 경우, 게시판 또는 고객센터로 문의주세요.
                </p>
               <li>상품을 한꺼번에 받고 싶어요(묶음배송)</li>
                <p class="fcontent">
           		     부분배송을 원하지 않으시는 고객님들께서는 주문 후 [배송전변경문의] 게시판 또는 고객센터로<br>
				'묶음배송'을 요청해주시면, 모든 상품이 준비되는대로 발송해드리겠습니다.<br>
				<br>
				*묶음배송 시 지연되는 상품이 있을 경우 배송기간이 다소 소요될 수 있는 점 양해부탁드립니다<br>
                
                
                </p>
               <li>주문번호를 까먹었어요.</li>
                <p class="fcontent">
				                주문,결제완료시 문자로 주문번호 발송됩니다.<br>
				<br>
				문자 회신이 되지 않았거나 삭제된 경우<br>
				주문자 성함, 휴대전화 번호 등 주문조회 가능한 정보를<br>
				고객센터나 문의글 남겨주시면 확인 도와드려요.<br>
                
                </p>
                 <li>상품수령을 못했는데 배송완료가 되어있어요.</li>
                <p class="fcontent">
				사이트에서는 발송일 기준 2일이면 자동적으로 배송완료처리됩니다.<br>
				발송시 보내드린 운송장번호로 조회 하시는게 가장 정확합니다.<br>
				<br>
				-3일 이상 같은 곳에 멈춰있다면 분실 가능성이 있으니 우체국택배 고객센터 1588-0000로 문의 부탁드립니다.
                
                </p>
            </ul>
        </div>
        <!-- #tab1 -->
 		<div id="tab2" class="tab_content">
            <ul >
                <li>상품을 교환/반품 하고싶어요.</li>
                <p class="fcontent">
				OT과 미리 연락 한 후에 교환해주세요 !<br>
				상품 수령후 2일 안에 접수해 주셔야 교환 가능합니다.<br>
				( 수령일 기준으로 블랙업에 일주일안에 도착해야합니다.)<br>
				CJ 대한통운 방문 접수를 원하실 경우 기사님 방문 접수 신청 여부와<br>
				교환상품 사이즈 or 컬러 같이 문의 주시면 접수 도와드리겠습니다.<br>
				( 다른상품으로는 교환이 불가능합니다. 반품접수와 새주문 부탁드릴게요. )<br>
				</p>
                <li>환불은 어떻게 받나요?</li>
                <p class="fcontent">
              	  환불은 결제하신 방법대로만 처리가 가능하며, 반품상품 도착일로부터 1~2일이내에 처리됩니다.<br>
				결제 방법에 따라 환불기간은 조금씩 다르니 아래의 내용을 참고해주세요.<br>
				<br>
				-무통장입금: 환불 접수 당일 저녁7시이후 확인 가능<br>
				-카드결제: 취소 승인일로부터 3~5일 소요<br>
				-실시간계좌이체: 취소 승인일로부터 3~5일 뒤 결제하신 은행으로 자동입금<br>
				-휴대혼결제(당월만 취소가능): 취소 승인일로부터 1~2일 소요<br>
				<br>
				. *실시간계좌이체, 휴대폰결제는 부분취소가 불가능합니다.<br>
				이 경우 전체취소 후 재결제하시거나 현금환불 가능합니다.<br>
				회원이신 경우 현금처럼 사용 가능한 예치금환불도 가능합니다. (부분 사용 후 차액 현금 환불 불가)<br>
				-휴대폰결제(당월만 취소가능): 취소 승인일로부터 1-2일 소요<br>
				이월된 휴대폰결제는 요금청구로 인해 취소가 불가능하며, 이 경우 현금환불 또는 예치금환불 가능하니 참고해주세요.<br>
                </p>
                <li>교환/반품 시 배송비는 어떻게 되나요?</li>
                <p class="fcontent">
                1.교환<br>
				-단순교환:5000원 (제주,산간지역 11000원)<br>
				-불량상품 수령 후 동일상품 교환시:무료<br>
				<br>
				*CJ대한통운 반품접수시 금액이며,<br>
				타택배사 이용시 타택배사 배송비+ 블랙업 교환 배송비입니다.<br>
				<br>
				2.반품<br>
				-반품제외 실수령 상품 금액 7만원 이상:2500원 ( 제주,산간지역 5500원 )<br>
				-반품제외 실수령 상품 금액 7만원 이하:5000원 ( 제주,산간지역 8000원 )<br>
                </p>
               <li>교환/반품전에 확인해야할 사항이 있나요?</li>
                <p class="fcontent">
				-상품 수령 후 영업일 기준 7일이 경과한 경우.<br>
				-공정거래 표준약관 제 15조 2항에 의한 이용자의 사용 또는 일부 소비에 의하여 재화등의 가치가 현저히 감소한 경우.<br>
				(착용흔적, 오염, 냄새, 세탁한 상품, 택이 제거된 상품 포함)<br>
				-세탁 후, 착용 후에 발견된 불량은 반품/교환 불가합니다.<br>
				제품의 초기 불량과 소비자 과실과의 책임소지가 불분명해 불가피하게 마련된 규정이오니 양해 부탁드립니다.<br>
				-제품 하자의 경우 상품 수령 후 3개월 이내, 또는 그 사실을 안 날로부터 30일 이내 청약철회가 가능합니다.<br>
				-모니터 해상도에 따라 색상 차이가 있을수 있기 때문에 불량으로 처리되지 않습니다.<br>
				-실측사이즈는 측정방법에 따라 1~3cm 오차가 있을 수 있으며,니트 상품은 소재 특성상 1~5cm 오차가 있을 수 있습니다.<br>
				이런 경우 불량으로 교환/반품 불가한 점 양해 부탁드립니다.<br>
				-데님소재 및 컬러감이 강한 상품은 밝은 색상의 상품과 함께 착용시 이염의 가능성이 있는 점 주의 부탁드립니다.<br>
				-제작과정에 따라 마감처리 미흡(실밥), 초크자국 등이 있을 수 있으며 불량으로 판단되지 않습니다.<br>
				</p>
               <li>주문한 상품이 아닌 다른상품(또는 불량상품)이 왔어요.</li>
                <p class="fcontent">
            	상품불량 및 오배송접수 게시판에 사진과 함께 글 남겨주시면 불량 or 오배송 확인 후<br>
				최대한 빨리 연락드리겠습니다.<br>
				<br>
				고객님 부재시 문자 연락 남겨드리고 있으니 통화 가능할때 연락주시면<br>
				바로 회수 신청과 재발송 도와드리겠습니다.<br>
				<br>
				<br>
				*불량 상품의 경우 소비자보호원의 규정에 따라<br>
				교환→수선→환불의 절차순으로 이루어집니다.<br>                             
                </p>
                 <li>교환(반품)상품을 타사택배로 보내고싶어요.</li>
                <p class="fcontent">
            	    타 택배사 이용시 선불 결제로 사이트 하단 주소지로 보내주시면 됩니다.<br>
				* 수령 후 결제 방법 or 무료배송 여부에 따라 배송비가 다 다르기때문에 문자 안내 해드리겠습니다.<br>
				( 타 택배사 이용시 구매자분 성함, 연락처 확인 가능하게 보내주세요.)<br>
                </p>
                 <li>휴대폰 결제를 했는데 취소가 안된다는 연락을 받았어요~ 왜그런거죠?</li>
                <p class="fcontent">
                                  당월취소<br>
				-휴대폰결제는 당월만 취소가 가능하고, 부분취소가 불가합니다.<br>
				-부분반품을 원하실 경우 예치금으로 환불 받으시거나 현금환불으로 진행해드리고있습니다.<br>
				<br>
				이월취소<br>
				-휴대폰결제 시스템상 요금 청구로 인해 결제취소 불가<br>
				-환불 받는 방법<br>
				1.현금으로 환불 받는다.<br>
				2.예치금으로 환불 받는다. (부분 사용 후 차액 현금 환불 불가)
                
                </p>
                 <li>상품이 도착되었다는 문자를 받았는데 처리는 언제되나요?</li>
                <p class="fcontent">
                보내주신 상품은 저희가 거래하는 우체국택배 영업소를 경유하여 OT으로 입고됩니다.<br>
                 통상적으로 상품 도착 문자를 받으신 날로부터 1~2일(영업일 기준) 후 당사 반품 관리팀에서 상품 확인 후 처리되고 있습니다.
                </p>
                 <li>환불 받았는데 금액이 덜 입금됐어요.</li>
                <p class="fcontent">
			                환불 내역 확인하시면 어떤 부분에서 차감처리 되었는지 확인 됩니다.<br>
			<br>
			ex) 타택배사 착불로 보내주신경우 배송비가 2500원 이상 부담되어 추가 차감 되셨을 수 있어요.<br>
			ex) 최종 구매 금액이 3만원 이하인 경우 적립금 사용가능 금액 미달로 사용하셨던 적립금은 복구됩니다.<br>
			ex) 반품상품 제외한 구매 금액이 7만원 이하일 경우 무료배송비가 차감됩니다.                
                </p>
            </ul>
        </div>       
 
 		<div id="tab3" class="tab_content">
            <ul >
                 <li>무통장 입금으로 주문 후 입금했는데 입금전으로 확인돼요.</li>
                <p class="fcontent">
		                무통장 입금은 입금 후 1시간 이내로 저희쪽 시스템에 의해 자동입금확인이 되는데요,<br>
				주문시 작성하신 입금은행, 예금주명이 다를 경우 매칭이 안되어 자동입금확인이 어려우니<br>
				[입금확인/입금자변경] 게시판 또는 고객센터로 문의주시면 입금확인처리 도와드리겠습니다.<br>
				<br>
				*은행/입금자명/입금일/입금액 확인 후 문의부탁드립니다.
                </p>
                <li>여러가지 상품을 따로 주문하였는데 한꺼번에 입금해도 되나요?</li>
                <p class="fcontent">
             	   주문을 따로하시고 함께 입금하는 것은 가능하나, 주문서와 입금액이<br>
				일치하지 않기 때문에 자동입금확인은 어렵습니다.<br>
				<br>
				총 주문금액을 입금하신 후 고객센터나 [입금확인/입금자변경] 게시판으로 입금확인 요청을 해주시면,<br>
				각 주문서별로 입금확인 후 발송해드리도록 하겠습니다.<br>
                </p>
                <li>실수로 주문금액보다 더(혹은 덜) 입금했어요.</li>
                <p class="fcontent">
				    입금하신 금액과 주문서 금액이 일치하지 않을 경우, 자동입금확인이 불가합니다<br>
				은행/입금자면/입금일/입금액을 확인 후 [입금확인/입금자변경] 게시판 또는 고객센터로 문의주세요.<br>
				<br>
				*주문금액보다 더 입금했을 경우 [입금확인/입금자변경] 게시판에 환불 받으실 계좌를 남겨주시면 익일 오전에 차액을 환불해드립니다<br>
				*주문금액보다 덜 입금했을 경우 차액을 추가로 입금해주시고 [입금확인/입금자변경] 게시판 또는 고객센터로 문의주세요.<br>
                
                </p>
               <li>현금영수증 문의</li>
                <p class="fcontent">
			    회원이신 경우 로그인 후 마이페이지에서 주문내역 조회 들어가시면 주문내역이 차례대로 나옵니다.<br>
				현금영수증 신청하실 주문번호 클릭하시면 배송지정보 아래 현금영수증 버튼을 누르시면 신청하실 수 있습니다.<br>
				비회원이신 경우 입금확인 후 2일 이내에 가능하며, 요청시 Q&A게시판에 발행하실 번호를 남겨주시면 됩니다.<br>
                </p>
            </ul>
        </div>       
   

	 <div id="tab4" class="tab_content">
            <ul >
                <li>아직 배송전인데 상품/사이즈/색상 등을 변경하고 싶어요.</li>
                <p class="fcontent">
            	    배송 전 상품변경을 원하시는 경우 전산작업이 마무리되는 오전 11시 전까지 고객센터에 전화주시거나 [배송전 변경/취소]게시판으로 배송 전 변경 요청을 해주세요.<br>
				변경 요청을 하실 경우 옵션변경을 원하시는 상품의 정확한 이름과 사이즈/색상을 기재해 주세요.<br>
				<br>
				※ 정확한 상품명과 사이즈/색상 기재 없이 “배송 전 변경해주세요”와 같은 요청은 다시 고객님께 연락을 드려야 해서 변경처리에 시간이 더 소요되는 점 참고해주세요.<br>
				<br>
				오전 11시 이후에는 변경사항이 있을경우 꼭! 배송 전 변경/취소 게시판 문의 또는 고객센터로 연락주셔야 합니다.<br>
				<br>
				주문상태가 배송 전인 경우에도 배송작업이 시작되어 고객님의 상품이 이미 포장되어 우체국으로 발송된 상태일 수 있습니다.<br>
				이 경우 변경을 원하셔도 이미 발송작업이 이루어져 주문변경이 불가하며, 출고 된 후 변경이 되지 않았다는 이유로 교환/반품을 원하시는 경우<br>
				일반 상품의 단순 변심 교환/반품으로 접수되니 유의해주세요.(교환/반품비 발생)<br>
				<br>
				※ 배송전 변경의 경우 변경상품의 재고확보 때문에 배송일정에 변동이 생길 수 있습니다.<br>
                </p>
                <li>아직 배송전인데 주소지를 변경하고 싶어요.</li>
                <p class="fcontent">
            	    배송 전 배송 받으실 주소지를 변경하고 싶으신 고객님께서는 전산작업이 마무리되는 오전 11시 전까지 변경을 원하시는 주소를 함께 기재하여<br>
            	     저희 상담센터나 [배송전 변경/취소]게시판으로 요청을 해주세요.
                </p>
                <li>아직 배송전인데 취소해주세요.</li>
                <p class="fcontent">
                -전산작업이 마무리되는 오전 11시 전까지는 주문취소 가능합니다.<br>
				주문취소를 원하시는 고객님께서는 오전 11시 전까지 고객센터나 [배송전 변경취소]게시판으로 요청해주세요.<br>
				오전 11시 넘어서 하신 요청은 시간/업무량 등의 상황에 따라 처리가 지연되어 발송되는 경우가 잦습니다.<br>
				<br>
				-오전 11시 이후에 요청하시면 취소/변경 불가하며, 상품을 받으신 뒤 교환/반품을 원하시는 경우 고객 단순 변심 사유로 처리되어 고객님이 택배비를 부담하셔야 하오니, 가급적 오전 11시 이전에 배송 전 취소 요청을 해주세요.<br>                          
                </p>
               <li>추가주문을 하고 싶은데 가능한가요?</li>
                <p class="fcontent">
				 전산작업이 마무리되는 오전 11시 전까지 추가주문 및 결제를 통해 기존 주문서에 상품을 추가하실 수 있습니다.(오전 11시 이후 주문건은 따로 발송처리됩니다.)<br>
				추가주문(합포장)을 원하실 경우 오전 11시 이전에 [배송전 변경/취소]게시판 또는 고객센터로 전화주시면 추가주문 및 결제 방법에 대해 상담원이 친절하게 답변드리겠습니다.<br>
				<br>
				※ 배송 전 추가주문(합포장)의 경우 추가상품의 재고확보로 인해 배송일정에 변동이 생길 수 있습니다.<br>
                </p>
            </ul>
        </div>

		 <div id="tab5" class="tab_content">
            <ul >
                <li>방문수령이 가능한가요?</li>
                <p class="fcontent">
             	 OT은 오프라인 매장이 따로 없어서 택배 거래만 가능합니다.<br>
					<br>
				급하신 경우 재고있는 상품에 한해서 퀵서비스가 가능합니다.<br>
				오후 12시까지 결제 완료된 주문건에 한하여 신청 가능하며,<br>
				고객센터 또는 배송 전 변경/취소 게시판으로 미리 연락주셔야 합니다.<br>
				재고확인 후 발송 가능한 상품에 한해서 저희와 계약된 퀵 사무실을 통해<br>
				오후 5시 일괄 발송됩니다. (배송비는 고객님 부담입니다.)<br>
			                
                </p>
                <li>후기 적립금은 언제 들어오나요?</li>
                <p class="fcontent">
				  후기적립금은 담당자가 매주 목-금요일에 일괄 지급합니다.<br>
				담당자가 확인 후 전일 미확인 후기부터 순차적으로 확인하여 지급을 해드립니다.<br>
				후기 작성완료 시 바로 지급되지 않는 이유는 후기적립금을 악용하는 사례가 자주 발생하기 때문입니다.<br>
				<br>
				※ 후기 적립금 지급 기준을 충족하지 않는 무성의한 후기나 글자수를 충족하더라도 내용이 없는 후기, 상품 수령 후 시간이 오래 지난 후기,<br>
				구매하지 않은 상품(반품하신 상품 포함)에 대한 후기 등은 적립금이 지급되지 않음을 알려드립니다.<br>
                
                </p>
                <li>상품 수령까지 했는데 구매적립금은 언제 지급되나요?</li>
                <p class="fcontent">
              	  주문건 배송완료 후 7~10일뒤 자동으로 적립됩니다.
                
                </p>
               <li>등급별 할인은 어떻게 받나요?</li>
                <p class="fcontent">
		        OT서는 고객님의 누적 구매금액에 따라 회원등급을 부여하여 각각 다른 회원 할인혜택을 드리고 있습니다.<br>
				회원 등급별 할인혜택은 결제 시 자동으로 적용되어 결제되오니 걱정 마시고 구매를 진행하시면 됩니다.
		
		
                </p>
               <li>쿠폰 / 적립금은 어디서 확인할 수 있나요?</li>
                <p class="fcontent">
				A. 마이페이지의 쿠폰함 / 적립금확인하기 에서 확인하실 수 있습니다.
				</p>
				  <li>적립금/예치금은 어떻게 사용하나요?</li>
                <p class="fcontent">
				-적립금은 2,000원이상부터 사용이 가능하고 결제금액 3만원 이상 구매시 사용가능합니다.<br>
				( 사용한도는 5,000원 입니다.)<br>
				<br>
				-예치금은 현금처럼 사용 가능합니다.<br>
				(사용한도는 따로 없으며, 총금액에서 배송비는 별도로 결제해주셔야해요.)
				</p>
				  <li>사이즈 추천해주세요.</li>
                <p class="fcontent">
				상품마다 체형마다 다 다른부분이라 정확한 답변이 어려워요.<br>
				상세사이즈와 모델 착용컷 참고 부탁드립니다.
				</p>
            </ul>
        </div>
	</div>
       </div>
     
      </body>
      <div style="height: 180%;"></div>
<%@include file="footer.jsp" %>
<!-- #container -->
<script>
		$('.fcontent').slideUp();
		
		$('.tab_content li').click(function(){
			$(this).next('p').slideToggle(500,function(){
            });
		});
</script>
<script>
$(function () {

    $(".tab_content").hide();
    $(".tab_content:first").show();

    $("ul.tabs li").mouseenter(function () {
        $("ul.tabs li").removeClass("active").css("color", "#333");
        $(this).addClass("active").css("color", "darkred");
        $(".tab_content").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
});
</script>
</html>
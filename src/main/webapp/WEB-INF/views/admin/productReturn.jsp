<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="/ot/resources/aimages/icon/favicon.png"/>
   
    <!-- Title Page-->
    <title>oT. ADMIN</title>

     <!-- Fontfaces CSS-->
    <link href="/ot/resources/acss/font-face.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="/ot/resources/avendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
   <link href="/ot/resources/avendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/ot/resources/acss/theme.css" rel="stylesheet" media="all">

    
  
</head>
<style>
.top_info{
	display: flex;
	 margin-bottom: 3%;

}
.bottom_info{
	display: flex;
}
.member_info{
	width: 50%;
		border-style: outset;
	    padding: 2%;
	    background: white;
	
}
.product_info{
	width: 50%;
	border-style: outset;
	  padding: 2%;
	 background: white;
	 
}
#pay-table th{
	width: 215px;
	
}
#product-table,#member-table,#pay-table{
	width: 100%;


}


.menu-sidebar {
   
     overflow-y: none;
}
th,td{
    padding: 13px 11px 12px !important;
       border:1px solid #d9dadc;
          font-weight:normal;
}
th{
      width: 135px;
      border:1px solid #d9dadc;
   
background-color:#f5f4f4;

}
td{
    color: black;
   
}
.info-title{
margin-bottom:3%;
    border-bottom: 1px solid;
    padding-bottom: 1%;
}

span{
color: red;
}
/* #pay-calcel{
	margin-left: 3%;
	background: black;
	color: white;
	width: 65px;
	height: 20px;
	border-radius: 10px
} */
.yg_btn_30{
    background: #f4f4f4;
    color: #444!important;
    border-color: #ddd!important;
}

</style>

<body class="animsition" style="background: #f3f3f3;">
	
	
     
 <jsp:include page="a_header.jsp"/>
 <!-- MENU SIDEBAR-->
 	
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="todayMain.ad">
                    <img src="/ot/resources/aimages/icon/ot.png" alt="OT" style="max-height: 35px;"/>
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="has-sub"> 
                            <%-- <!-- active has-sub 파란색 --> --%>
                            <a class="js-arrow" href="#">
                                <i class="fa fa-bar-chart-o"></i>통계</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="todayMain.ad">당일현황</a>
                                </li>
                                <li>
                                    <a href="todayChart.ad">매출그래프</a>
                                </li>
                                <li>
                                    <a href="best.ad">상품판매순위</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-users"></i>회원 </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="customer.ad">회원 관리</a>
                                </li>
                            </ul>
                        </li>
                        
                         <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-truck"></i>주문 </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="order.ad">주문확인 관리</a>
                                </li>
                                <li>
                                	<a href="order_2.ad">배송대기 관리</a>
                                </li>
                                 <li>
                                	<a href="order_3.ad">배송중 관리</a>
                                </li>
                                 <li>
                                	<a href="order_4.ad">배송완료 관리</a>
                                </li>
                                
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-shopping-cart"></i>상품관리</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
                                    <a href="category.ad">카테고리관리</a>
                                </li>
                                <li>
                                    <a href="productAdd.ad">상품등록</a>
                                </li>
                                <li>
                                    <a href="productList.ad">상품관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-bullhorn"></i>이벤트&nbsp;/&nbsp;쿠폰</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="eventAdd.ad">이벤트/쿠폰 등록</a>
                                </li>
                                <li>
                                    <a href="eventList.ad">이벤트/쿠폰 관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        
                        <li>
                            <a class="js-arrow" href="productReturn_list.ad">
                        <i class="fa fa-credit-card"></i>교환 &nbsp;/&nbsp;반품</a>
                        </li>
                 		<li>
                           <a href="DesignEdit.ad">
                               <i class="fa fa-desktop"></i>디자인</a>
                       </li>
                         <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-question"></i>Q & A</a>
                           <ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
                                    <a href="QnA_Product.ad">상품문의</a>
                                </li>
                                 <li>
                                    <a href="QnA_del.ad">배송 문의</a>
                                </li>
                                <li>
                                    <a href="QnA_delivery_cancel.ad">배송전 문의</a>
                                </li>
                                <li>
                                    <a href="QnA_delivery_after.ad">배송후 문의</a>
                                </li>
                                 <li>
                                    <a href="QnA_bank_insert.ad">입금확인/입급자 변경 문의</a>
                                </li>
                                 <li>
                                    <a href="QnA_bad_product.ad">상품불량 및 오배송 문의</a>
                                </li>
                            </ul>
	                       </li>
	                    <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-pencil-square-o"></i>리뷰</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
                                    <a href="review_list.ad">리뷰관리</a>
                                </li>
                                <li>
                                    <a href="review_report_list.ad">신고된 리뷰관리</a>
                                </li>
                                
                            </ul>
	                  	</li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
        
        
      <!-- WELCOME-->
   <div style="padding-left:300px; padding-right: 15px;background: #f3f3f3; padding-top:1%">
   <h2 style="margin-left: 3%;">교환/반품관리</h2>
  	<div class="top_info">
  	<div class="member_info" style="margin-left: 3%">
  	<h4 class="info-title">회원정보</h4> 
  	<table id="member-table">
  		<tr>
  			<th><span>*</span> 주문자 </th>
  			<td>${re.reName}</td>
  	    </tr>
  	    <tr>
  			<th><span>*</span> 주문자 번호</th>
  			<td>${re.memPhone }</td>
  	    </tr>
  		<tr>
  			<th><span>*</span> 고객 아이디</th>
  			<td>${re.memId }</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 고객 이메일</th>
  			<td>${re.memEmail }</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 수령인  </th>
  			<td>${re.memReceiver }  </td>
  		</tr>	
  		<tr>
  			<th><span>*</span> 배송지 </th>
 			<td>${re.memAddress }</td>
  		</tr>
  	</table>
  	</div>
  	<div class="member_info" style="    margin-left: 1.5%;">
  	<h4 class="info-title">문의내용</h4> 
  <div id="contents" style="margin-top:.5%; background: white;padding: 3%;    border-style: outset;">
      
			<div class="mypage_top_outer">
			</div>
			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-board xans-board-writepackage-1002 xans-board-writepackage xans-board-1002 "><div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 "><div class="title">
      
        </div>
</div>
<form id="boardWriteForm">
		<input id="reNo" name="reNo" value="${re.reNo} " type="hidden">
	<%--<input id="product_no" name="reName" value="${re.reName}" type="hidden"> --%>
	<%--<input id="move_write_after" name="memPhone" vale="${re.memPhone }" type="hidden"> --%>
		<%-- <input id="cate_no" name="memId" value="${re.memId }" type="hidden"> --%>
		<input id="ordCode" name="bUsePassword" value="${re.ordCode} " type="hidden">
	<div class="xans-element- xans-board xans-board-write-1002 xans-board-write xans-board-1002">
		<!--
            $login_page_url = /member/login.html
            $deny_access_url = /index.html
        -->
	<div class="ec-base-table typeWrite ">
            <table border="1" summary="">
            <colgroup>
				<col style="width:150px;">
				<col style="width:auto;">
			</colgroup>
		<tbody>
		<tr>
		<th scope="row">문의날짜</th>
           <td><span>${re.qnaDate }</span>	
		   </td>
    </tr>
		<tr>
		<th scope="row">문의고객</th>
           <td><span>${re.reName }</span>
		   </td>
    </tr>
	<tr>
		<th scope="row">Title</th>
           <td><span>${re.reTitle }</span>
		   </td>
		   
    </tr>
	<td colspan="2" class="clear">           
	
	<input type="hidden" value="${re.content}"  id="reContent">
            <script type="text/javascript" src="//editor.cafe24.com/js/nneditor.js?c=ko"></script>
            <style type="text/css">@import "http://editor.cafe24.com/css/style.css?ver=r3.4.0.20191127.1";@import "http://editor.cafe24.com/css/styleie8.css?ver=r3.4.0.20191127.1";		</style>		<script type="text/javascript" src="http://editor.cafe24.com/lang/ko.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorUtils.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorRange.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorCore.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script>
            <script type="text/javascript">
            var reContent = $('#reContent').val();
            NN.Config.instanceID = "content";
            NN.Config.value ="${re.content}";
            NN.Config.toolbarType = "simple";
                
                
                

                //Editor Height
                NN.Config.height=400;

                var oNN_content = new NNEditor();
                oNN_content.build();

                if (typeof $Editor != "object") {
                    $Editor = {
                        _obj : {},

                        push : function(obj, id) {
                            this._obj[id] = obj;
                        },

                        get : function(id) {
                            return this._obj[id];
                        },

                        reset : function(id) {
                            this._obj[id].getText().value = "";
                            this._obj[id].getIFDoc().body.innerHTML = this._obj[id].Config.START_HTML;
                        },

                        contents : function(id, context) {
                            this._obj[id].getText().value = context;
                            this._obj[id].getIFDoc().body.innerHTML = this._obj[id].view.parsing(2);
                        }
                    };
                }

                $Editor.push(oNN_content, "content");
            </script>	
            	
		
	</tbody>
	
		
	<tbody>

	</table>
</div>
		<div class="ec-base-button ">
        </div>
	</div>
</form>
</div>
</div>
  	</div>	
  	</div>
    	<div class="bottom_info">
  		<div class="product_info" style="margin-left: 3%">
  		<h4 class="info-title">상품정보</h4>
  		<table id="product-table">
  			<tr>
  				<th><span>*</span> 주문번호 </th>
  				<td>${re.ordCode }</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 상품번호 </th>
  				<td>${re.prdtNo }</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 구매상품명 </th>
  				<td>${re.prdtName }</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 구매상품옵션 </th>
  				<td>사이즈 : ${re.ordSize } / 색상 : ${re.ordColor }</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 반품/교환사유 </th>
  				<td>${re.reReason }</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 제품수령여부 </th>
  				<td>
  				<c:if test="${re.reCheck == 'Y' }">
  				<label for="Y" style="margin-right: 2%">수령</label><input style="margin-right: 2%;" type="radio" class="product-check" name="product-check" id="Y"value="Y" checked>
  				<label for="N" style="margin-right: 2%">미수령</label><input type="radio" name="product-check" class="product-check" id="N"value="N">
  				</c:if>
  				<c:if test="${re.reCheck == 'N' }">
  				<label for="Y" style="margin-right: 2%">수령</label><input style="margin-right: 2%;" type="radio" class="product-check" name="product-check" id="Y"value="Y" >
  				<label for="N" style="margin-right: 2%">미수령</label><input type="radio" name="product-check" class="product-check" id="N"value="N" checked>
  				</c:if>
  					<c:if test="${empty re.reCheck }">
  				<label for="Y" style="margin-right: 2%">수령</label><input style="margin-right: 2%;" type="radio" class="product-check" name="product-check" id="Y"value="Y" >
  				<label for="N" style="margin-right: 2%">미수령</label><input type="radio" name="product-check" class="product-check" id="N"value="N" >
  				</c:if>
  				
  				</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 실제품상태 </th>
  				<td>
  				<select id="realCheck">
  					<option value="정상">정상</option>
  					<option value="손상">손상</option>
  					<option value="오염">오염</option>
  					<option value="불량">불량</option>
  				</select>
  				</td>
  			</tr>
  			
  		</table>
  		</div>
  	<div class="product_info" style="    margin-left: 1.5%;">
  	<h4 class="info-title">결제내용</h4>
  	<table id="pay-table">
  		<tr>
  			<th><span>*</span> 상품금액 </th>
  			<td>${re.prdtPrice }원</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 쿠폰/적립금 </th>
  			<td> (${re.cpName })${re.cpDiscount }원/${re.payPoint }원</td>
  				<input type="hidden" id="cpmemNo" value="${re.cpmemNo }">
  		</tr>
  		<tr>
  			<th><span>*</span> 실구매가(반환금액)</th>
  			<td>${re.payMoney}원
  			<c:if test="${re.payYn == 'Y' }">
  				<span style="color: blue" id="pay-calcel">결제취소</span>
  			</c:if>
  				
  			<c:if test="${re.payYn == 'N' }">
  				<span style="color: red" id="pay-calcel">결제취소완료</span>
  			</c:if>
  				
  				
  			</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 결제일  </th>
  			<td>${re.ordDate }</td>
  		</tr>
  		 
  		<tr>
  			<th><span>*</span> 반품 신청일  </th>
  			<td>${re.qnaDate}</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 결제 방법  </th>
  			<td>${re.payCategory} </td>
  		</tr>
  		<tr>
  			<th><span>*</span> 반품 승인/반려 메모</th>
  			<td><input id="reMent" type="text"  value="${re.reMent }" style="border: 1px solid;margin-right: 10px"></td>
  		</tr>
  	</table>
  	</div>
  		</div>
  	<div align="right" style="margin-top: 5%;margin-bottom: 5%;margin-right: 5%;">
  	<c:if test="${re.reStatus =='N'}">
  	<button id="return-ok" style="background: black;color: white; border-radius: 10px;width:90px;height: 30px;margin-right: 2%;">승인</button>
  	<button id="return-hold" style="background: black;color: white; border-radius: 10px;width:90px;height: 30px;">반려</button>
  	</c:if>
  	<c:if test="${re.reStatus =='H'}">
  	<button id="return-ok" style="background: black;color: white; border-radius: 10px;width:90px;height: 30px;margin-right: 2%;">승인</button>
  	</c:if>
  	<c:if test="${re.reStatus =='Y'}">
  	<button id="return-cancell" style="background: black;color: white; border-radius: 10px;width:90px;height: 30px;margin-right: 2%;">승인취소</button>
  	</c:if>
  	
  	
  	</div>	
	
    <!-- Jquery JS-->
   <!-- Bootstrap JS-->
     <script src="/ot/resources/avendor/bootstrap-4.1/popper.min.js"></script>
     <script src="/ot/resources/avendor/bootstrap-4.1/bootstrap.min.js"></script>
     <!-- Vendor JS       -->
     <script src="/ot/resources/avendor/slick/slick.min.js">
     </script>
     <script src="/ot/resources/avendor/wow/wow.min.js"></script>
     <script src="/ot/resources/avendor/animsition/animsition.min.js"></script>
     <script src="/ot/resources/avendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
     </script>
     <script src="/ot/resources/avendor/counter-up/jquery.waypoints.min.js"></script>
     <script src="/ot/resources/avendor/counter-up/jquery.counterup.min.js">
     </script>
     <script src="/ot/resources/avendor/circle-progress/circle-progress.min.js"></script>
     <script src="/ot/resources/avendor/perfect-scrollbar/perfect-scrollbar.js"></script>
     <script src="/ot/resources/avendor/chartjs/Chart.bundle.min.js"></script>
     <script src="/ot/resources/avendor/select2/select2.min.js">
     </script>
 
     <!-- Main JS-->
     <script src="/ot/resources/ajs/main.js"></script>
    </div>
    
   <div class="page-wrapper">
</div>
<script>
	

	
var firstnum = document.getElementById('realCheck');

	for(var i=0;  i < 4;i++){
		if(firstnum.children[i].value == '${re.reReal}'){
   		firstnum.children[i].selected = true;
	}
	}
	


$('#return-ok').click(function(){
	console.log("${re.content}");
		var productCheckArr = document.getElementsByName('product-check');
		var 	productCheck = "";
		for(var i=0;i<productCheckArr.length;i++){
			if(productCheckArr[i].checked==true){
				productCheck = productCheckArr[i].value;
			}
		}
	
	if($('#N').prop('checked')==true){
		alert('상품 미수령시 반품승인을 할수 없습니다!');
	}else if($('#Y').prop('checked')==true){
		var reNo = $('#reNo').val();
		var ordCode = "${re.ordCode}";	
		var content = document.getElementsByName('content');
		var realCheck = $('#realCheck').val();
		var reMent = $('#reMent').val();
		var reStatus = "Y";	
		location.href="ReturnUpdate.ad?reNo="+reNo+"&content="+content[0].value+"&realCheck="+realCheck+"&reMent="+reMent+"&reStatus="+reStatus+"&productCheck="+productCheck+"&ordCode="+ordCode;
	}
	
	
	else if($('.product-check').prop('checked')==false){
		alert('상품수령 여부를 확인하세요');
	}
});

$('#return-cancell').click(function(){
	console.log("${re.content}");
	var productCheckArr = document.getElementsByName('product-check');
	var 	productCheck = "";
	for(var i=0;i<productCheckArr.length;i++){
		if(productCheckArr[i].checked==true){
			productCheck = productCheckArr[i].value;
		}
	}


	var reNo = $('#reNo').val();
	var content = document.getElementsByName('content');
	var ordCode = "${re.ordCode}";	
	var realCheck = $('#realCheck').val();
	var reMent = $('#reMent').val();
	var reStatus = "N";	
	location.href="ReturnUpdate.ad?reNo="+reNo+"&content="+content[0].value+"&realCheck="+realCheck+"&reMent="+reMent+"&reStatus="+reStatus+"&productCheck="+productCheck+"&ordCode="+ordCode;

});

$('#return-hold').click(function(){
	console.log("${re.content}");
	var productCheckArr = document.getElementsByName('product-check');
	var 	productCheck = "";
	for(var i=0;i<productCheckArr.length;i++){
		if(productCheckArr[i].checked==true){
			productCheck = productCheckArr[i].value;
		}
	}


	var reNo = $('#reNo').val();
	var content = $('#content_iframe_container').find('body').html();
	var ordCode = "${re.ordCode}";	
	var realCheck = $('#realCheck').val();
	var reMent = $('#reMent').val();
	var reStatus = "H";	
	console.log(content);
//	location.href="ReturnUpdate.ad?reNo="+reNo+"&content="+content+"&realCheck="+realCheck+"&reMent="+reMent+"&reStatus="+reStatus+"&productCheck="+productCheck+"&ordCode="+ordCode;
	
	
});




$('#pay-calcel').click(function(){
	
	if(confirm('취소 하시겠습니까?') ==true){
		var cpmemNo = $('#cpmemNo').val();
		var ordCode = "${re.ordCode}";
		var point = "${re.payPoint }";
		var memCode = "${re.memCode}";
		$.ajax({
				url:"cancellPay.ad",
				data : {cpmemNo:cpmemNo,ordCode:ordCode,point:point,memCode:memCode},
				success:function(data){
					if(data == "ok"){
						$('#pay-calcel').css("color","red")
						$('#pay-calcel').text("결제취소완료");
					}else{
						
					}
				},error:function(){
					alert('에러다');			
				}
		});
		
	}
})
</script>



</body>
</html>
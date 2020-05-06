<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="en">
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

     <!--color box-->
     <link rel="stylesheet" href="/ot/resources/assets/vendor/bootstrap/css/bootstrap.min.css">
     <link href="/ot/resources/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
     <link rel="stylesheet" href="/ot/resources/assets/libs/css/style.css">
     <link rel="stylesheet" href="/ot/resources/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
     <link href="/ot/resources/assets/vendor/bootstrap-colorpicker/%40claviska/jquery-minicolors/jquery.minicolors.css" rel="stylesheet">
 
     <script src="/ot/resources/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
     <script src="/ot/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
     <script src="/ot/resources/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
     <script src="/ot/resources/assets/libs/js/main-js.js"></script>
    <!--color box-->
    
    
<style>
#product_okay{
    border-radius: 10px; 
    background-color: skyblue; 
    margin-left: 73%;
    width: 10%;
    height: 30%;
}
#addlist{
    margin-top: 1%;
    margin-bottom: 3%;
    padding-left: 4%;
    width: 90%;
    margin-left: 5%;
    margin-right: 5%;

}




#addlist input{
    border: 1px solid #333330;
    padding-left: 2%;
}
#addlist [input="type==radio"]{

margin-right: 5%;
}
label{
    display: inline;
    font-weight: bold;
   
}
#coupon_div{
    display: none; position: absolute;
                top: 442px;
                left: 857px;
                background: white;
                width: 410px;
                border: 1px solid;

}
#coupon_input{
    margin-right: 9%;background: black;
    color: white;
    height: 35px; 
    width: 90px;
    border-radius: 10px;
    margin-bottom: 4%;

}
 td{
    padding: 13px 11px 12px !important;
          height: 80px
             font-weight:normal;
               border:2px solid #d9dadc;
}
th{
	padding: 13px 11px 12px !important;
	text-align:center;
	background-color:#f5f4f4;
	   font-weight:normal;
	     border:2px solid #d9dadc;
} 
.first{
      width: 135px;
      border:1px solid #d9dadc;
	  background-color:#f5f4f4 !important;

}
#product-count td,th{
	width: 16%;
	
}
#product-count td{
	background: white;
	border: none;
	border-bottom: 1px solid #d9dadc;
}
#product-count th{
	    background: #dfe3e6;
	    }
.input-group span{
	margin-bottom: 2%;
}
.size{
padding-left: 4% !important;
}
</style>

</head>
<body class="animsition" style="background: rgb(243, 243, 243);">

    
    
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
                        
                        <li class="active has-sub">
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
                         <li class="has-sub">
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
     
     
    <div style="padding-left:300px">
     
    <!-- 이벤트 내용 -->
   <table id="addlist" style="border: 1px dotted; background: white; font-size:13pt;">
        <tr colspan="2">
        	<td colspan="4" style="background:#dfe3e6; margin-bottom: 2%;padding-bottom: 2%;">
        	<h3 style="color: black;margin-left: 5%;"> 고객 관리</h3></td>
        </tr>
        <tr>
        	<th>아이디 </th>
        	<td><input type="text" value="${m.memId }" readonly></td>
        	<th>성명 </th>
        	<td><input type="text" value="${m.memName }" readonly></td>
        </tr>
        <tr>
        	<th>나이 </th>
        	
        	<c:set var="now" value="<%=new java.util.Date()%>" />
			<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy" /></c:set>
			<c:set var="memSsn" value="${m.memSsn }"></c:set>
			<c:set var="birthResult" value="${fn:substring(memSsn,0,4)}"/>
			<c:set var = "age" value="${sysYear-birthResult+1}" />
        	
        	<td><input type="text" value="${age }" readonly></td>
        	<th>사용금액</th>
        	<td><input type="text" value="${m.memSumMoney }"></td>
        </tr>
        <tr>
        	<th>전화번호 </th>
        	<td><input type="text" value="${m.memPhone }" readonly></td>
        	<th>이메일 </th>
        	<td><input type="text" value="${m.memEmail }" readonly></td>
        </tr>
        <tr>
        	<th>주소 </th>
        	<td colspan="3"><input type="text" value="${m.memAddress }" readonly style="width:80%;"></td>
        </tr>
        <tr>
			<th>환불 계좌</th>
			<td colspan="3"><input type="text" value="${m.bank }&nbsp; ${m.returnBank}" readonly style="width:50%;"></td>
        </tr>
       
    </table>
    
    
    <div style="border: 1px solid #dfe3e6;margin-left: 5%;margin-right: 5%;padding-left: 1%;">
    <h4>주문 목록</h4>
    </div>
    <div align="center" id="product-count">
    
    <table style="width: 90%;" >
    	<thead>
    		<tr>
	    		<th>상품명</th>
	    		<th>사이즈</th>
	    		<th>색상</th>
	    		<th>수량</th>
    		</tr>
    	</thead>
   		</table>

<div  style="height: 300px; overflow-y: scroll ; width: 90%;">
    <table  style="width:100%;">	
    	<tbody id="product-add-count" style="text-align: center;font-size: 15px">
    	<c:forEach var="od" items="${olist }">
    		<tr>
    			<c:forEach var="p" items="${plist}">
    			<c:if test="${p.prdtNo== od.prdt_no}">
    			<td><input type="text" value="${p.prdtName }" readonly></td>
    			</c:if>
    			</c:forEach>
    			<td class="size"><input type="text" value="${od.ord_size }" readonly></td>
    			<td><div style="display:inline-flex"><div style="width: -webkit-fill-available;">레드</div><div style="width:20px;height:15px;margin-left: 10%;background:red;"></div></div></td>
    			<td><input type="text" value="${od.ord_count }" readonly></td>
    			<!-- <input type="number" min="0" style="border:1px solid #333330;width: 50%"> -->
    		</tr>
    		</c:forEach>
   		</tbody>
    </table>
    </div>

    </div>
    

	<br><br>
    <div style="height: 130px;">
        <div align="center">
        
            <button style="background: black;
            color: white;
            font-size: 20px;
            padding: 10px;
            height: 65px;
            width: 135px;
            border-radius: 10px;" onclick="location.href='productList.ad'">
            <b>목록으로</b></button>
       </div>
    </div>
    
    
	</div>
<div class="page-wrapper">
</div>
	
   
	<script>
	$(function(){
		
		if($('#select-category').val()=="아우터" || $('#select-category').val()=="탑"){
			$('#top-select').removeAttr('disabled').css('background','white').focus();
		}else{
			$('#top-select').css('background','rgba(190, 181, 181, 0.24)').attr("disabled",true).val('선택');
		}
		if($('#select-category').val() != '아우터' &&  $('#select-category').val() !='탑'){
			$('#bottom-select').removeAttr('readonly').css('background','white').focus();
		}else{
			$('#bottom-select').css('background','rgba(190, 181, 181, 0.24)').attr("readonly",true).val('선택');
		}
	});
		
	</script>

  <script>
  
	// 사진 게시판 미리보기 기능 지원 스크립트
	$(function(){
		$('#fileArea').hide();
		
		$('#titleImgArea').click(() => {
			$('#thumbnailImg1').click();
		});
	});
	
	
	function loadImg(value, num){
		
		if(value.files && value.files[0])  {
			
			var reader = new FileReader();
			
			reader.onload = function(e){
				switch(num) {
				case 1 : $('#titleImg').attr('src', e.target.result);
					break;
				
				}
			}
			reader.readAsDataURL(value.files[0]);
		}
		}

  		$('#product-info-add').click(function(){
  			var src = $('#titleImg').attr('src')
  			var colorname=$('#color-name').val();
  			var color = $('.minicolors-swatch-color').css('background-color');
  			var topselect = $('#top-select').val();
  			var bottomselect = $('#bottom-select').val();
  			var imgsrc= $('#titleImg').val();
  			if(topselect == null){
  				topselect = "";
  			}
  			if(bottomselect == null){
  				bottomselect = "";
  			}
  			
  			$('#product-add-count').append('<tr>'+
  		    		'<td style="width: 16.3%;">12312312</td>'+
  		    		'<td>이뿐옷</td>'+
  		    		'<td>'+
  					'<img src="images/outer.jpg" >'+
  		    		'</td>'+
  		    		'<td class="size">'+topselect+bottomselect+'</td>'+
  		    		'<td><div style="display:inline-flex"><div style="width: -webkit-fill-available;">'+colorname+'</div><div style="width:20px;height:15px;margin-left: 10%;background:'+color+'"></div></div></td>'+
  		    		'<td><input type="number" min="0" style="border:1px solid #333330;width: 50%">'+
  		    		'</td>'+
  		    		'<td>'+
    				'<button onclick="closeBtn(this)" style="margin-left: 1%;">X</button>'+
    				'</td>'+
  		    		'</tr>')
  		});
  		function closeBtn(en){
  			$(en).parents('tr').remove('tr');
  		}
  
        $('#color_add').click(function(){
            $('#line').before(
            '<div id="color-div" class="col-sm-12 col-md-6">'+
                '<div class="form-group">'+
                    '<div class="input-group" >'+
                        '<input style=" padding-right: 0%;;padding-left: 35% !important;" type="text" id="input-group" class="form-control demo" value="#ff0000" />'+
                    '</div>'+
                '</div>'+
        '</div>');
             
        $('.demo').each(function() {
         
            $(this).minicolors({
                control: $(this).attr('data-control') || 'hue',
                defaultValue: $(this).attr('data-defaultValue') || '',
                format: $(this).attr('data-format') || 'hex',
                keywords: $(this).attr('data-keywords') || '',
                inline: $(this).attr('data-inline') === 'true',
                letterCase: $(this).attr('data-letterCase') || 'lowercase',
                opacity: $(this).attr('data-opacity'),
                position: $(this).attr('data-position') || 'bottom left',
                swatches: $(this).attr('data-swatches') ? $(this).attr('data-swatches').split('|') : [],
                change: function(value, opacity) {
                    if (!value) return;
                    if (opacity) value += ', ' + opacity;
                    if (typeof console === 'object') {
                        console.log(value);
                    }
                },
                theme: 'bootstrap'
            });
    
        });
   	 });
  		
        </script>

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
</body>
</html>
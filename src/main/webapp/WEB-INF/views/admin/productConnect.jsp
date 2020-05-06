<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">
    <!--JQuery JS-->
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
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
<script>

$(function(){
	$('#productConnectBtn').on("click",function(){
		
		$('#ProductConnect').attr("action","ConnectSubmit.ad");
		document.getElementById('ProductConnect').submit();
	});
})

//사진 게시판 미리보기 기능 지원 스크립트
$(function(){
	$('#fileArea').hide();
	$('#fileArea2').hide();
	
	$('#titleImgArea').click(() => {
		$('#thumbnailImg1').click();
	});
	$('#titleImgArea2').click(() => {
		$('#thumbnailImg2').click();
	});
});


function loadImg(value, num){
	
	if(value.files && value.files[0])  {
		
		var reader = new FileReader();
		reader.onload = function(e){
			switch(num) {
			case 1 : $('#titleImg').attr('src', e.target.result);
				break;
			case 2 : $('#titleImg2').attr('src', e.target.result);
			break;
			}
		}
		reader.readAsDataURL(value.files[0]);
	}
}
</script>
    
    
      
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
                        
                        <li class="active has-sub">
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
    <form  method="post" id="ProductConnect" class="ProductConnect" onsubmit="return false">
    <!-- 이벤트 내용 -->
   <div style="padding-left:300px">
     <!-- WELCOME-->
     <section class="welcome p-t-10">
        <div class="container" style="margin-left: 3%;">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="title-4"> 
                    <b>
                    &nbsp; &nbsp; &nbsp; 연관 상품 등록
                    </b>
                    </h1>
                    <hr class="line-seprate">
                </div>
            </div>
        </div>
    </section>
    <!-- END WELCOME-->
    
    <table id="addlist" style="border: 1px dotted; background: white; font-size:13pt;">
   
        <tr>
        	<th>상품명</th>
        	<td style="background-color:#f5f4f4;">${p.prdtName }</td>
        </tr>
       
        <tr>
        	<th>대표이미지</th>
        	<td align="center" style="background-color:#f5f4f4;">
        	<div id="titleImgArea">
	        	<c:if test="${!empty p.prdtImage }">
	        		<img id="titleImg" src="${p.prdtImagePath }${p.prdtImage}" alt="상품이미지" title="상품이미지" style="width:200px; height:250px;">
	        	</c:if>
        	</div>
        	</td>
        </tr>
    </table>
    
    
    
    
      <div align="center" id="product-count">
    <table style="width: 90%;">
    	<thead>
    		<tr>
	        	<td colspan="5" style="background:#dfe3e6;">
	        	<h4 style="color: black;margin-left: 5%;"> 전체 상품</h4></td>
        	</tr>
    		<tr align="center">
    		<th>상품번호</th>
    		<th>대분류</th>
    		<th>중분류</th>
    		<th>상품명</th>
    		<th>이미지</th>
    		</tr>
    	</thead>
    </table>
   <div  style="height: 350px; overflow-y: scroll ; width: 90%;">
   <input type="hidden" id="selectNo" name="selectNo" value="${p.prdtNo }">
    <table  style="width:100%;" id="example-table-1">
    <c:forEach var="plist" items="${plist }">	
    	<tbody style="text-align: center;">
    		<tr>
    			<td>${plist.prdtNo }</td>
    			<c:forEach var="u" items="${ulist }">
    			<c:if test="${plist.upNo==u.up_no }">
    				<td>${u.up_name }
    				</td>
    			</c:if>
    			</c:forEach>
    			
    			<c:forEach var="d" items="${dlist }">
    			<c:if test="${plist.upNo==d.up_no && plist.downNo==d.down_no }">
    				<td>${d.down_name }</td>
    			</c:if>
    			</c:forEach>
    			
    			<td>${plist.prdtName }</td>
    			<td><img id="mainImg" style="width: 80px" src="${plist.prdtImagePath }${plist.prdtImage}" alt="상품이미지" title="상품이미지"></td>
    		</tr>
    		
    	</tbody>
    </c:forEach>
    </table>
    </div>
   
    
    <br><br>
     <table style="width: 90%;">
    	
    	<thead>
    		<tr>
	        	<td colspan="5" style="background:#dfe3e6;">
	        	<h4 style="color: black;margin-left: 5%;"> 연관 상품</h4></td>
        	</tr>
    		<tr align="center">
    		<th>상품번호</th>
    		<th>대분류</th>
    		<th>중분류</th>
    		<th>상품명</th>
    		<th>삭제</th>
    		</tr>
    	</thead>
    </table>
    <div  style="height: 350px; overflow-y: scroll ; width: 90%;">
    <table  style="width:100%;">	
    	<tbody id="product-add-count" style="text-align: center;">
    	</tbody>
    </table>
    </div>
    
    <br><br>
    <div style="height: 130px;">
        <div align="center">
            <button id="productConnectBtn" style="background: black;
            color: white;
            font-size: 20px;
            padding: 10px;
            height: 65px;
            width: 135px;
            border-radius: 10px;">
            <b>등록</b></button>
        </div>
    </div>
    
    </div>
    </div>
    
    
   </form>
    
    <!-- 색상 받아오기 스크립트 -->
  
      <!-- This Page JS -->
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asColor/dist/jquery-asColor.min.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asGradient/dist/jquery-asGradient.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/%40claviska/jquery-minicolors/jquery.minicolors.min.js"></script> 

    

  <script>
	$("#example-table-1 tr").click(function(){ 	

		var str = ""
		var tdArr = new Array();	// 배열 선언
		
		var tr = $(this);
		var td = tr.children();
		
		td.each(function(i){
			tdArr.push(td.eq(i).text());
		});
		
		console.log("배열에 담긴 값 : "+tdArr);
  		var prdtno = td.eq(0).text();
		var topselect = td.eq(1).text();
		var bottomselect = td.eq(2).text();
		var prdtname = td.eq(3).text();
		var src = td.eq(4).text();
  		var selectNo = $('#selectNo').val();
  		
  		console.log(selectNo);
  		
  			$('#product-add-count').append('<tr>'+
  					
  					'<td><input type="number" readonly  name="prdtNoArr" value="'+prdtno+'"</td>' +
  		    		'<td>' + topselect +'</td>'+
  		    		'<td>' + bottomselect +'</td>'+
  		    		'<td>'+ prdtname + '</td>'+
  		    		'<td>'+
    				'<button onclick="closeBtn(this)" style="margin-left: 1%;">X</button>'+
    				'<input type="hidden" readonly  name="prdtNo" value="'+selectNo+'"'+
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
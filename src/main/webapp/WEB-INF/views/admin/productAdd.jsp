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
</style>

</head>
<body class="animsition" style="background: rgb(243, 243, 243);">
	<script>
		$(function(){
			$('#productInsertBtn').on("click",function(){
	
			var bdivide =document.getElementById("bdivide");
			var mdivide =document.getElementById("mdivide");
			var product_name =document.getElementById("product_name");
			var product_price=document.getElementById("product_price");
			var product_sale=document.getElementById("product_sale");
			var thumbnailImg1 = document.getElementById("thumbnailImg1").src;
			var descrptionImg = document.getElementById("descrptionImg").src;
			var selectColor=document.getElementById("selectColor");
			var top_select=document.getElementById("top-select");
			var bottom_select=document.getElementById("bottom-select");
			/* var stock=document.getElementById("stock").value; */
		
		
			if(mdivide.value =="" || bdivide.value ==""){
				alert("카테고리를 입력해주세요 ")
				bdivide.focus();
				return false;
			}
			if(product_name.value==""){
				alert("상품명 입력해주세요 ")
				product_name.focus();
				return false;
			}
			if(product_price.value=="" || product_sale.value==""){
				alert("가격정보를 입력해주세요 ")
				product_price.focus();
				return false;
			}
			if(thumbnailImg1.src=="" || descrptionImg.src==""){
				alert("이미지를 입력해주세요 ")
				return false;
			}
			if(selectColor.value==""){
				alert("색상정보를 입력해주세요 ")
				selectColor.focus();
				return false;
			}
			
			$('#ProductInsert').attr("action","ProductInsert.ad");
			document.getElementById('ProductInsert').submit();
			
			
		});
		});
	
	function test1(){
		var mtext = document.getElementById("mdivide_value");
		var moption = document.getElementById("mdivide");
		
		mtext.value= moption.options[moption.selectedIndex].value;
		
		console.log(mtext);
		console.log(moption);
	}
	
	// 사진 게시판 미리보기 기능 지원 스크립트
	$(function(){
		$('#fileArea').hide();
		
		$('#titleImgArea').click(() => {
			$('#thumbnailImg1').click();
		});
	});
	
	
	
  		
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
                            <a class="js-arrow" href="productReturnList.ad">
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
     <!-- WELCOME-->
     <section class="welcome p-t-10">
        <div class="container" style="margin-left: 3%;">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="title-4"> 
                    <b>
                    &nbsp; &nbsp; &nbsp; 상품등록
                    </b>
                    </h1>
                    <hr class="line-seprate">
                </div>
            </div>
        </div>
    </section>
    <!-- END WELCOME-->
    
    
	<!-- <from action="ProductInsert.ad" method="post" id="productInsert"> -->
    <!-- 이벤트 내용 -->
   <form  method="post" id="ProductInsert" class="ProductInsert" enctype="multipart/form-data" onsubmit="return false">
   <table id="addlist" style="border: 1px dotted; background: white; font-size:13pt;">
        <tr colspan="2">
        	<td colspan="2" style="background:#dfe3e6; margin-bottom: 2%;padding-bottom: 2%;">
        	<h3 style="color: black;margin-left: 5%;"> 상품 상세내용</h3></td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 분류</th>
        	<td>
	       		대(大) : &nbsp;&nbsp;
	       	
	       	<select name="upNo" id="bdivide" style="width:150px; height:30px;">
	       		<option value="">선택1(대분류)</option>
	       		<c:forEach var="up" items="${ulist }">
	       			<option value="${up.up_no }">${up.up_name }</option>
	       		</c:forEach>
	       	</select>
	       	
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                                    
                                    중(中) : &nbsp;&nbsp;
                                    
            <select name="downNo" id="mdivide" style="width:150px; height:30px;">
	       		<option value="">선택2(중분류)</option>
	       	</select>	
	       	
        	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 상품명</th>
        	<td>
        		<input type="text" id="product_name" name="prdtName">
        	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 가격</th>
        	<td>
        		<input type="number" id="product_price" name="prdtPrice" min="5,000" step="500" style="width:20%;">
        	</td>
        </tr>
      
        <tr>
        	<th><span style="color:red">*</span> 할인가</th>
        	<td>
        		<input type="number" id="product_sale" name="prdtSale" style="width:20%;"> &nbsp; &nbsp; %
        	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 대표이미지</th>
        	<td>
        		<div id="titleImgArea">
        		<!-- input file에 accept에 저장할 경로 미리 설정할 수 있다.  -->
			<img id="titleImg" width="177px" height="200px" style="width:180px; height:200px;">
			</div>
			<div class="fileArea" id="fileArea" >
		      				<input type="file" id="thumbnailImg1" 
		      				name="thumbnailImg" onchange="loadImg(this, 1);" />
		     			 </div>
        	</td>
        	
        </tr>
        <tr>
        	<th> 상세 설명</th>
        	<td>
        		<textarea id="prdtComment" name="prdtComment" cols="100" rows="3" style="overflow-y:scroll" placeholder="상세설명을 입력해주세요"></textarea>
        	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 상세이미지 </th>
        	<td>
        		<input type="file" id="descrptionImg" name="descrptionImg" style="border:white 1px;">
        	</td>
        </tr>
       
        <tr>
        	<th><span style="color:red">*</span> 색상설정</th>
        	<td>
        		<!-- 가지고 있는 기존 색상 뿌리기  -->
        		
        		<c:forEach var="pc" items="${pclist }">
        		<c:if test="${not empty pc.pcRgb}">
        			<img id="selectColor" class="s1" style="width:20px;height:20px;background:${pc.pcRgb};display:inline-block;border:1px solid gray;margin-left:0.5px;" name="${pc.pcName }" onclick="ctest(this);">
				</c:if>
        		</c:forEach>
        		 <div id="color-area" style="display: block;" >
                    <div id="	" class="col-sm-12 col-md-6">
                    <br><br>
                        <div class="form-group">
                            <div class="input-group" style="    width: 105px" >
                                <input type="text" style=" padding-right: 0%;;padding-left: 36%;"  id="text-color" class="form-control demo" value="ffffff"/> <!-- name="optColor" -->
                                  <span>등록 색상명 </span> <input type="text" id="color-name"  >
                            </div>
                        </div>
                    </div>
                    </div>
                    
         	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span>사이즈 설정</th>
        	<td>상의/모자
        	 <select id="top-select" style="background:rgba(190, 181, 181, 0.24);margin-left: 10px;margin-right: 10px">
                       <option></option>
                       <option>FREE</option>
                       <option>XS</option>
                       <option>S</option>
                       <option>M</option>
                       <option>L</option>
                       <option>XL</option>
                </select>
				하의/신발        	
        		<input id="bottom-select" name="size" type="number" style="background:rgba(190, 181, 181, 0.24);border: 1px solid #333330; margin-left: 10px;width: 75px;">
        	
        	</td>
        </tr>
    </table>
    
    

  <div style="height: 130px;">
    <div align="center" style="margin-bottom:3%">
    <div id="product-info-add" style="width: 130px; cursor:pointer; height: 38px;border-radius: 10px; background: black; color: white; font-size:22px;">상품추가</div>
    </div>
    </div>
    <div style="border: 1px solid #dfe3e6;margin-left: 5%;margin-right: 5%;padding-left: 1%;">
    <h4 > <span style="color:red">*</span>재고설정</h4>
    </div>
    <div align="center" id="product-count">
    <table style="width: 90%;">
    	<thead>
    		<tr>
    		<th>상품명</th>
    		<th>이미지</th>
    		<th>사이즈</th>
    		<th>색상</th>
    		<th>수량</th>
    		<th>삭제</th>
    		</tr>
    	</thead>
    </table>
   <div  style="height: 200px; overflow: scroll ; width: 90%;">
    <table  style="width:100%;">	
    	<tbody id="product-add-count" style="text-align: center;">
    	</tbody>
    </table>
    </div>
    </div>
    

    <div style="height: 130px;">
        <div align="center">
            <button id="productInsertBtn" style="background: black;
            color: white;
            font-size: 20px;
            padding: 10px;
            height: 65px;
            width: 135px;
            border-radius: 10px;">
            <b>등록</b></button>
        </div>
    </div>
   
    
<div class="page-wrapper">
</div>
</form>
	<!-- 옵션설정 select -->
	
	<script>
	/* 이미지 미리보기  */
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
			var name = $('#product_name').val();
			
			if(topselect == null){
				topselect = "";
			}
			if(bottomselect == null){
				bottomselect = "";
			}
		
			
  	     var count = 0;
	       function productOptionAdd(){
	    	 var option1 = $('#Option1').val();
         var option2 = $('#Option2').val();
         var stock = $('#stock').val();
	       }
	       
	       
			$('#product-add-count').append('<tr>'+
		    		'<td>'+ name + '</td>'+
		    		'<td>'+
		    		'<div id="titleImgArea">'+
					'<div id="titleImgArea"><img src="'+src+'" width="100px" height="50"></div>'+
					'</div>'+
		    		'</td>'+
		    		//사이즈 
		    		'<td><input type="text" name="size"align="center" value="'+ topselect + bottomselect + 
		    		'"</td>'+
		    		//색상 optColor
		    		'<td><div style="display:inline-flex"><div style="width: -webkit-fill-available;"><input type="text" name="optColor" value="'+colorname+'"></div><div style="width:20px;height:15px;margin-left: 10%;;background:'+color+'"></div></div></td>'+
		    		//재고수 
		    		'<td><input type="number" id="stock" name="stock" min="0" style="border:1px solid #333330;width: 50%">'+'</td>'+
		    		'<td>'+'<button onclick="closeBtn(this)" style="margin-left: 1%;">X</button>'+'</td>'+
		    		'</tr>')
		});
		
		function closeBtn(en){
			$(en).parents('tr').remove('tr');
		}
	
	
	$('#select-category').click(function(){
		
		if($('#select-category').val()=='a' ||$('#select-category').val()=='b'){
			$('#top-select').removeAttr('disabled').css('background','white').focus();
		}else{
			$('#top-select').css('background','rgba(190, 181, 181, 0.24)').attr("disabled",true).val('선택');
		}
		if($('#select-category').val() != 'a' &&  $('#select-category').val() !='b' && $('#select-category').val() != 'select'){
			$('#bottom-select').removeAttr('readonly').css('background','white').focus();
		}else{
			$('#bottom-select').css('background','rgba(190, 181, 181, 0.24)').attr("readonly",true).val('선택');
		}
	})
	
	</script>
	

    <!-- 색상 받아오기 스크립트 -->
  
      <!-- This Page JS -->
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asColor/dist/jquery-asColor.min.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asGradient/dist/jquery-asGradient.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/%40claviska/jquery-minicolors/jquery.minicolors.min.js"></script> 

      <script>
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
        </script>


  <script>
  
	
  
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
    
  		
      
        </script>
		
		<!-- 카테고리 뿌리기  -->
        <script>
        $('#bdivide').click(function(){
				$('#mdivide').children('option').remove()
				$('#mdivide').append()
        		var upno=$(this).val();
				
        		"<c:forEach var='d' items='${dlist}'>"
				
        		if(upno == "${d.up_no}"){
					$('#mdivide').append('<option value="${d.down_no}">${d.down_name}</option>');
        		}
				
        		"</c:forEach>"
        });
        
        /* 색상 뿌리기  */
		function ctest(en){
			
			var result = en.style.background;
			var colorName = en.name;
			document.getElementById("text-color").value = result;
			$("#color-name").val(colorName);
		}
        
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
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
     
     
    <div style="padding-left:300px">
     
    <form  method="post" id="ProductInsert" action="ProductUpdate.ad" class="ProductInsert" enctype="multipart/form-data">
    <!-- 이벤트 내용 -->
   <table id="addlist" style="border: 1px dotted; background: white; font-size:13pt;">
   
   
       	<tr colspan="2">
        	<td colspan="2" style="background:#dfe3e6; margin-bottom: 2%;padding-bottom: 2%;">
        	<h3 style="color: black;margin-left: 5%;"> 상품 상세내용</h3></td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 분류</th>
        	<td>
        	
	       		대(大) : &nbsp;&nbsp;
	       		<c:forEach var="u" items="${ulist }">
	       		<c:if test="${p.upNo == u.up_no }">	
                	<input type="text"  style="width:15%;" readonly value="${u.up_name }">
                </c:if>
                </c:forEach>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                                    
                                    중(中) : &nbsp;&nbsp;
                <c:forEach var="d" items="${dlist }">
                <c:if test="${p.upNo==d.up_no && p.downNo==d.down_no }">
                   <input type="text" style="width:15%;" readonly value="${d.down_name}">
                </c:if>
                </c:forEach>
                
               
        	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 상품명</th>
        	<td>
        		<input type="hidden" name="prdtNo" value="${p.prdtNo }">
        		<input type="text" id="product_name" name="prdtName" value="${p.prdtName }">
        	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 가격</th>
        	<td>
        		<input type="text" style="width:20%;" name="prdtPrice" value="${p.prdtPrice }">
        	</td>
        </tr>
       
        <tr>
        	<th><span style="color:red">*</span> 할인가</th>
        	<td>
        		<input type="text" style="width:10%;" name="prdtSale" value="${p.prdtSale }"> &nbsp; &nbsp; %
        	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 대표이미지</th>
        	<td align="center">
        		<h4>※이미지 클릭 시 이미지 변경이 가능합니다 .※</h4>
        	<div id="titleImgArea">
	        	<c:if test="${!empty p.prdtImage }">
	        		
	        		<img id="titleImg" src="${p.prdtImagePath }${p.prdtImage}" alt="상품이미지" title="상품이미지">
	        	</c:if>
        	</div>
       		<div class="fileArea" id="fileArea" >
     				<input type="file" id="thumbnailImg1" 
     			 value="${p.prdtImage}"	name="thumbnailImg" onchange="loadImg(this, 1);"/>
	     	</div>
		     	
        	
        	</td>
        </tr>
        <tr>
        	<th><span style="color:red">*</span> 상세설명</th>
        	<td align="center">
        		<h4>※이미지 클릭 시 이미지 변경이 가능합니다 .※</h4>
        		<div id="titleImgArea2">
				<img id="titleImg2" src="${p.prdtDetailImagePath }${p.prdtDetailImage}" alt="상품 상세이미지" title="상품 상세이미지" style="width:600px;">
				</div>
				<div class="fileArea" id="fileArea2" >
     				<input type="file" id="thumbnailImg2" 
     				value="${p.prdtDetailImage}" name="descrptionImg" onchange="loadImg(this, 2);"/>
	     		</div>
        	</td>
        </tr>
        <tr>
        	<th>상세설명 문구</th>
        	<td>
       		<textarea cols="100" name="prdtComment" rows="3" style="overflow-y:scroll" value="${p. prdtComment}">${p.prdtComment }</textarea>
        	</td>
        </tr>
        
    </table>
    
    
   <div style="height: 50px;">
          <div align="center" style="margin-bottom:3%">
    <!-- <button id="product-info-add" style="width: 100px; height: 40px;border-radius: 10px;;background: black; color: white">상품추가</button> -->
    </div>
    </div>
    <div style="border: 1px solid #dfe3e6;margin-left: 5%;margin-right: 5%;padding-left: 1%;">
    <h4 > <span style="color:red">*</span>재고관리</h4>
    </div>
    <div align="center" id="product-count">
    
    <table style="width: 90%;" >
    	<thead style="align:center;">
    		<tr>
	    		<th>상품명</th>
	    		<th>사이즈</th>
	    		<th>색상</th>
	    		<th>수량</th>
	    		<th>삭제</th>
    		</tr>
    	</thead>
   		</table>


<div  style="overflow-y: scroll ; width: 90%;">
	
    <table  style="width:100%;">	
    	<tbody id="product-add-count" style="text-align: center;font-size: 15px">
    	<c:forEach var="op" items="${oplist }">
    		<tr>
    			<td>${p.prdtName }</td>
    			<td>
    				<input type="text" value="${op.size}">
    			</td>
    			<td>
	    			<div style="display:inline-flex"><div style="width: -webkit-fill-available;">${op.optColor }</div>
	    			<c:forEach var="c" items="${clist }">
	    				<c:if test="${op.optColor==c.pcName }">
	    				<div style="width:20px;height:15px;margin-left: 10%;background:${c.pcRgb};"></div>
	    				</c:if>
	    			</c:forEach>
	    			</div>
	    			
	    		</td>
	    		<td>
    			<input type="number" min="0" value="${op.stock }" style="border:1px solid #333330;width: 50%">
  		    	</td>
  		    	
  		    	<td>
    		    <button onclick="closeBtn(this)" style="margin-left: 1%;">X</button>
    		   </td>
    		</tr>
    		</c:forEach>
   		</tbody>
    </table>
    </div>

    </div>
 
	<br><br>
    <input type="hidden" class="prdtNo" id="ic" value="${p.prdtNo }">
        <div align="center">
        	
        	 <a id="connectBtn" style="background: black;
            color: white;
            cursor:pointer;
            font-size: 20px;
            padding: 10px;
            height: 65px;
            width: 145px;
            border-radius: 10px;" onclick="aa();">
            연관상품등록</a>
        	
        	
        	<input type="submit" value="수정" style="background: black; 
            color: white;
            cursor:pointer;
            font-size: 20px;
            padding: 10px;
            height: 65px;
            width: 135px;
            border-radius: 10px;" >
           
            
            <a style="background: black;
            color: white;
            cursor:pointer;
            font-size: 20px;
            padding: 10px;
            height: 65px;
            width: 135px;
            border-radius: 10px;" onclick="location.href='productList.ad'">
            	목록으로</a>
       </div>
       
       <br><br>
    
    </form>
	</div>
<div class="page-wrapper">
</div>

    
    <!-- 색상 받아오기 스크립트 -->
  
      <!-- This Page JS -->
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asColor/dist/jquery-asColor.min.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asGradient/dist/jquery-asGradient.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
      <script src="/ot/resources/assets/vendor/bootstrap-colorpicker/%40claviska/jquery-minicolors/jquery.minicolors.min.js"></script> 

      <script>
      
      function aa(){
    	   var prdtNo = document.getElementById('ic').value;
			console.log(prdtNo);
			
		   	 location.href='productConnect.ad?prdtNo='+prdtNo;
  	/* var prdtNo=$(this).parents('tr').find('.prdtNo').val();
   	 console.log(prdtNo);
   	 
   	 location.href='productListDetail.ad?prdtNo='+prdtNo; */
  		}
      
      
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
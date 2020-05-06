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

<style>
#product_okay{
    border-radius: 10px; 
    background-color: skyblue; 
    margin-left: 73%;
    width: 10%;
    height: 30%;
}
#addlist{
    margin-top: 5%;
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
     height: 800px;
	width: 750px;
      border: 1px solid;

}
#coupon_input{
   background: black;
    color: white;
    height: 35px; 
    width: 90px;
    border-radius: 10px;

}
td{
          font-weight:normal;
          height: 100px
}
.first{
      width: 135px;
      border:1px solid #d9dadc;
background-color:#f5f4f4 !important;

}
#coupon-table td{
	border: none;
}
#coupon-plus{
margin-top: 1%;
    margin-left: 3%;
    font-size: 50px;
}
.cpName{
	border: 1px solid #ddd;
}
.cpDiscount{
	border: 1px solid #ddd;

}
.cpDelete{
	font-weight: bold;
}
th{
text-align: center !important;
}
.couponPrice{
	border: 1px solid black
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
                        
                        <li class="active has-sub">
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
     
     <!-- 이벤트 내용 -->
     
     <!-- WELCOME-->
     <div style="padding-left:300px;">
     <section class="welcome p-t-10">
        <div class="container" style="margin-left: 6%">
            <div class="row">
                <div class="col-md-12" >
                    <hr class="line-seprate">
                </div>
            </div>
        </div>
    </section>
    <!-- END WELCOME-->
    <form action="couponUpdate.ad" id="eventInsert"  align="center">
    <div >
    <table   style="    margin-left: 25px;;border:none;margin-top: 30px;" >
    	<tr style="text-align: center">
    		<th style="font-size: 20px">쿠폰명</th>
    		<th style="font-size: 20px">쿠폰가격</th>
    	</tr>	
    	<c:forEach var="c" items="${clist }">
    	<tr>
    		<input type="hidden" name="cpNo" value="${c.cpNo }">
    		<td style="font-size: 18px" name="cpName"><span style="color:red; margin-right: 10px">*</span>${c.cpName }</td>
    		<td><input name="cpDiscount" style=" padding-left: 7px;margin-left: 38px;" class="couponPrice" type="number" min="0" step="1000" value="${c.cpDiscount }"></td>
    	</tr>
    	</c:forEach>
    </table>
    </div>

    <div style="height: 130px;">
            <div align="center">
                <button id="eventInsertBtn" style="background: black;
                color: white;
                font-size: 15px;
                padding: 10px;
                height: 45px;
                width: 110px;
                border-radius: 10px;
                ">등록</button>
            </div>
    </div>
    </form>
    </div>
     <div class="page-wrapper">
    </div>
      
    <script>
    
    $('#eventInsertBtn').click(function(){
    	$('#eventInsert').submit();
    })
        </script>
     <!-- Jquery JS-->
     <script src="/ot/resources/avendor/jquery-3.2.1.min.js"></script>
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
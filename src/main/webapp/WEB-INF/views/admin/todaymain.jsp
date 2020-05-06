<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<body class="animsition">
   <!-- 차트가능한 소스 -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
   <div class="page-wrapper">
      <jsp:include page="a_header.jsp"/>
 <!-- MENU SIDEBAR-->
    
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="index.jsp">
                    <img src="/ot/resources/aimages/icon/ot.png" alt="OT" style="max-height: 35px;"/>
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub"> 
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
                                <li>
                                    <a href="eventAdd.ad">
                                     <i class="fa fa-bullhorn">&nbsp; &nbsp; 쿠폰 </i></a>
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
        
        

      <!-- WELCOME-->
      <div style="padding-left:300px">
      <section class="welcome p-t-10">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <h1 class="title-4">
                       &nbsp; &nbsp; &nbsp; 당일현황
                      </h1>
                      <hr class="line-seprate">
                  </div>
              </div>
          </div>
       </section>
       <!-- END WELCOME-->

        <!-- STATISTIC-->
        <section class="statistic statistic2" onclick="location.href='status.ad'">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--green">
                            <h2 class="number">${qnaResult}</h2>
                            <span class="desc">오늘 Q&A</span>
                            <div class="icon">
                                <i class="zmdi zmdi-account-o"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--orange">
                            <h2 class="number">${returnResult }</h2>
                            <span class="desc">오늘 반품신청 수</span>
                            <div class="icon">
                                <i class="zmdi zmdi-shopping-cart"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--blue">
                            <h2 class="number">${scountResult }</h2>
                            <span class="desc">오늘 판매량</span>
                            <div class="icon">
                                <i class="zmdi zmdi-calendar-note"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--red">
                            <h2 class="number">   &#8361; 
                            <fmt:formatNumber value="${spriceResult }" pattern="#,###" /></h2>
                            <span class="desc">오늘 판매금액</span>
                            <div class="icon">
                                <i class="zmdi zmdi-money"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END STATISTIC-->

        <!-- STATISTIC CHART-->
        <section class="statistic-chart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="title-5 m-b-35">통계</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4" style="margin-left: 15%">
                        <!-- CHART-->
                        <div class="statistic-chart-1" 
                           style="margin-left:-35%; width:140%; height:auto;" onclick="location.href='todayChart.ad'">
                            <h3 class="title-3 m-b-30">일별 판매량</h3>
                            <div class="chart-wrap">
                                <canvas id="widgetChart5" width:"406" height:"446"></canvas>
                            </div>
<!--                             <div class="statistic-chart-1-note">
                                <span class="big">10,368</span>
                                <span>/ 16220 items sold</span>
                            </div> -->
                        </div>
                        <!-- END CHART-->
                    </div>
                    <div class="col-md-6 col-lg-4" style="margin-left: 1%;">
                        <!-- TOP CAMPAIGN-->
                        <div class="top-campaign" style="width:140%; height:auto;" onclick="location.href='best.ad'">
                            <h3 class="title-3 m-b-30">인기 상품</h3>
                            <div class="table-responsive">
                                <table class="table table-top-campaign">
                                    <tbody>
                                       
                                       <tr>
                                          <td>상품명</td>
                                          <td>총 판매량</td>
                                       </tr>
                                        <c:forEach var="p" items="${plist }" varStatus="status">
                                        <tr>
                                           <td>${status.count} . ${p.prdtName }</td>
                                            <td>${p.prdtScount }</td>
                                        </tr>
                                        </c:forEach>    
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END TOP CAMPAIGN-->
                    </div>
                        <!-- END CHART PERCENT-->
                    </div>
                </div>
        </section>
        <!-- END STATISTIC CHART-->

   </div>
   
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
    <script src="/ot/resources/avendor/select2/select2.min.js"></script>

    <!-- Main JS-->
    <script src="/ot/resources/ajs/main.js"></script>
    </div>
    <script>
    $(function(){
       
       var weekArr = new Array();
       var payArr = new Array();
       var  i =0;
           "<c:forEach var='we' items='${week}'>"
            weekArr[i] = "${we.week}";    
            payArr[i] = "${we.sumprice}"
          i++;
         "</c:forEach>"
       
       
        var ctx = document.getElementById("widgetChart5");
           if (ctx) {
             ctx.height = 247;
             var myChart = new Chart(ctx, {
               type: 'bar',
               data: {
                 labels: [   weekArr[0], weekArr[1], weekArr[2], weekArr[3], weekArr[4], weekArr[5], weekArr[6]   ],
                 datasets: [
                   {
                     label: "일별 판매량",
                     data: [ payArr[0],payArr[1],payArr[2],payArr[3],payArr[4],payArr[5],payArr[6] ],
                     borderColor: "transparent",
                     borderWidth: "0",
                     backgroundColor: "#ccc",
                   }
                 ]
               },
               options: {
                 maintainAspectRatio: true,
                 legend: {
                   display: false
                 },
                 scales: {
                   xAxes: [{
                     display: false,
                     categoryPercentage: 1,
                     barPercentage: 0.65
                   }],
                   yAxes: [{
                     display: false
                   }]
                 }
               }
             });
           }
    	
    /* 	var weekArr = new Array();
    	var payArr = new Array();
    	var  i =0;
      	  "<c:forEach var='we' items='${week}'>"
      	   weekArr[i] = "${we.week}";    
      	   payArr[i] = "${we.sumprice}"
	       i++;
			"</c:forEach>"
    	
    	
    	 var ctx = document.getElementById("widgetChart5");
    	    if (ctx) {
    	      ctx.height = 247;
    	      var myChart = new Chart(ctx, {
    	        type: 'bar',
    	        data: {
    	          labels: [	weekArr[0], weekArr[1], weekArr[2], weekArr[3], weekArr[4], weekArr[5], weekArr[6]   ],
    	          datasets: [
    	            {
    	              label: "일별 판매량",
    	              data: [ payArr[0],payArr[1],payArr[2],payArr[3],payArr[4],payArr[5],payArr[6] ],
    	              borderColor: "transparent",
    	              borderWidth: "0",
    	              backgroundColor: "#ccc",
    	            }
    	          ]
    	        },
    	        options: {
    	          maintainAspectRatio: true,
    	          legend: {
    	            display: false
    	          },
    	          scales: {
    	            xAxes: [{
    	              display: false,
    	              categoryPercentage: 1,
    	              barPercentage: 0.65
    	            }],
    	            yAxes: [{
    	              display: false
    	            }]
    	          }
    	        }
    	      });
    	    } */
    });
    
    </script>

</body>
</html>
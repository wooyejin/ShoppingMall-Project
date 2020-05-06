<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>oT. ADMIN</title>
        <link rel="icon" type="image/png" href="/ot/resources/aimages/icon/favicon.png"/>
        
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/ot/resources/assets/vendor/bootstrap/css/bootstrap.min.css">
        <link href="/ot/resources/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
        <link rel="stylesheet" href="/ot/resources/assets/libs/css/style.css">
        <link rel="stylesheet" href="/ot/resources/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
        <link rel="stylesheet" type="text/css" href="/ot/resources/assets/vendor/datatables/css/dataTables.bootstrap4.css">
        <link rel="stylesheet" type="text/css" href="/ot/resources/assets/vendor/datatables/css/buttons.bootstrap4.css">
        <link rel="stylesheet" type="text/css" href="/ot/resources/assets/vendor/datatables/css/select.bootstrap4.css">
        <link rel="stylesheet" type="text/css" href="/ot/resources/assets/vendor/datatables/css/fixedHeader.bootstrap4.css">
         <link href="/ot/resources/acss/theme.css" rel="stylesheet" media="all">
    </head>
    <style>
    .btn-outline-light {
    color: #7171a6 !important;
    background-color: transparent !important;
    border-color: #e6e6f2 !important;
	}
	.table table-striped table-bordered second tbody td.process {
    color: #00ad5f;
	}


	/*
	one : 주문확인
	two : 배송대기
	three : 배송중
	four : 배송완료
	 */
	
	td{
	cursor: pointer;
	}
	td.one {
	weight:bold;
    color: #fa4251;
	}
	td.two {
    color: black;
	}
	td.three {
    color: blue;
	}
	td.four {
    color: #00ad5f;
	}
	.btn-danger{
	    margin-left: 40%;
	}
    </style>
    
    
    
<body class="animsition" style="background: #f3f3f3;">
<jsp:include page="a_header.jsp"/>

<div style="padding-left:300px;">
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
                        
                         <li class="active has-sub">
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
        
    
         <!-- WELCOME-->
      <section class="welcome p-t-10">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <h1 class="title-4">
                       &nbsp; &nbsp; &nbsp; 배송중 관리
                      </h1>
                      <hr class="line-seprate">
                  </div>
              </div>
          </div>
       </section>
       <!-- END WELCOME-->
        
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
    <div class="card-body">
        <div class="table-responsive">
             <table id="example" class="table table-striped table-bordered second" style="width:100%; text-align:center;">
                <thead>
                    <tr>
                       <th style="width:5%">주문번호</th>
                       <th style="width:5%">상품번호</th>
                       <th style="width:15%">상품명</th>
                       <th style="width:15%">주문 금액</th>
                       <th style="width:15%">수령인</th>
                       <th style="width:15%">주문일</th>
                       <th style="width:5%">확인</th>
                    </tr>
               </thead>
               <tbody>
               <c:forEach var="o" items="${ odlist}">
               		<tr>
                    	<td>${o.ord_no }</td>
                    	<td>${o.prdt_no }</td>
                    	<td >${o.prdt_name }</td>
                    	<td>${o.prdt_sumprice } 원</td>
                    	<td ><p class="conment-line">${o.ord_receiver }</p>
                    	<p class="conment-content">
                    		배송지   ${o.ord_address }<br>
						   	연락처   ${o.ord_phone }<br>
					    배송메세지  ${o.ord_message }                   			
                    	</p>	
                    	</td>
                    	<td>${o.ord_date }</td>
                    	<td>
                       		<button type="button" class="btn btn-danger" style="margin-left:1%;">배송완료</button>
                       	</td>
                    </tr>
                    </c:forEach>
               </tbody>
            </table>
        </div>
        </div>
    </div>
    </div>
    </div>
    <div class="page-wrapper">
</div>
	


    <script src="/ot/resources/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/ot/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="/ot/resources/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/ot/resources/assets/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="/ot/resources/assets/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="/ot/resources/assets/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="/ot/resources/assets/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="/ot/resources/assets/vendor/datatables/js/data-table.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
  
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
      <script src="/ot/resources/ajs/main.js"></script>
           <script>
      $(".conment-content").slideUp();
      
		$('.conment-line').click(function(){
		$(this).next('.conment-content').slideToggle(500,function(){
        });
	})	
	
	// 상태값 업데이트
	$(".btn-danger").click(function(){
		var ordNo = $(this).parents('tr').children('td').eq(0).text();
		var ordRemove = $(this).parents('tr')
		if(confirm("배송완료 하시겠습니까?") == true){
			$.ajax({
				url : "orderUpdate3.ad",
				data : {ordNo : ordNo},
				success : function(data){
					if(data == "ok"){
						alert('배송완료!');
						ordRemove.remove('tr')
					}else{
						alert('주문확인 실패');
					}
				},error: function(){
					alert('주문확인 실패')
				}
			})
		}		
		})
		</script>
</body>
</html>
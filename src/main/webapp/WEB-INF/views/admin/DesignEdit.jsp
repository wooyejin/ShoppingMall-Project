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


</head>
<style>
 td{
    padding: 13px 11px 12px !important;
    height: 80px;
    font-weight:normal;
    border:2px solid #d9dadc;
    background: white;
               
}
th{
	padding: 13px 11px 12px !important;
	text-align:center;
	background-color:#f5f4f4;
	   font-weight:normal;
	     border:2px solid #d9dadc;
}

#design-table th{

	    width: 10%;
	    padding-left: 3%;
}

#design-table{

    margin-top: 1%;
    margin-bottom: 3%;
    padding-left: 4%;
    width: 90%;
    margin-left: 5%;
    margin-right: 5%;
    } 
#design-table tr{
	display: felx;
}
.mainbaner{
 margin-left: 3%;
}  
.main-design div{
	margin-bottom: 1%;
	
.main-text{
	margin-right: 5%;
}  
</style>
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
                 		<li class="active has-sub">
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
     <div style="padding-left:300px;">
    <section class="welcome p-t-10">
        <div class="container" style="margin-left: 3%;">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="title-4"> 
                    <b>
                    &nbsp; &nbsp; &nbsp; 디자인관리
                    </b>
                    </h1>
                    <hr class="line-seprate">
                </div>
            </div>
        </div>
    </section>
    <form id="mainForm" action="DesignEd.do" method="POST" enctype="multipart/form-data">
    <table id="design-table">
   <!--  	<tr>
        	<td colspan="2" style="background:#dfe3e6; margin-bottom: 3%;padding-bottom: 2%;">
        	<h3 style="color: black;margin-left: 3%;"> 디자인 상세정보</h3></td>
        </tr> -->
        <tr >
        	<th rowspan="11" ><span style="color: red">*</span> 메인배너</th>
        </tr>
        	  
      
        		<c:forEach var="d" items="${mainList}"> 
        		<tr>
        		  	<td class="main-design">
        		<div class="malist">
				<input type="hidden" value="${d.deNo}" name="no"> 
				
        		<div style="display: flex;margin-top: 3%"><span>FILE ${d.deNo}</span>
        		
        		<c:if test="${empty  d.oriFile   }">
        		<input  name="mainbaner" class="mainbaner" type="file">
        		<a  class="fildown" name="fildown" style="display:none ;color: blue"  href="/ot/resources/buploadFiles/${ d.oriFile }" download="${ d.oriFile }" >${d.oriFile}</a>
        		<span>메인배너 문구</span>
        		<input  name="mainComment" value="${d.mainComment }" style="margin-left:2%;border: 1px solid #333330" class="main-text" type="text">
        		<span style="margin-left: 1%;">바로가기 링크</span><input  name="mainLink" value="${d.mainLink }" style="margin-left:2%;border: 1px solid #333330" class="main-link" type="text">
        		</c:if>
        		
        		<c:if test="${!empty  d.oriFile   }">
        		<input name="mainbaner"  style="display:none;"class="mainbaner" type="file">
        		<a  class="fildown" name="fildown" style="width : 20%;margin-left: 3%;display:block ;color: blue"  href="/ot/resources/buploadFiles/${ d.oriFile }" download="${ d.oriFile }" >${d.oriFile}</a>
        		<span>메인배너 문구</span>
        		<input  readonly name="mainComment" value="${d.mainComment }" style=" background: #f3f3f3;margin-left:2%;border: 1px solid #333330" class="main-text" type="text">
        		<span style="    margin-left: 1%;">바로가기 링크</span>
        		<input  readonly name="mainLink" value="${d.mainLink }" style="background: #f3f3f3 ;margin-left:2%;border: 1px solid #333330" class="main-link" type="text">
        		</c:if>
        		<c:if test="${!empty  d.oriFile   }">
        		<input type="button"  value="수정"  class="editBtn" style="margin-left: 3%;height: 30px;width: 90px; background: black; color: white; border-radius: 10px;">
        		</c:if>
        		</div>
        		<c:if test="${!empty  d.oriFile   }">
				<div style="    margin-left: 7%;"></div>
				</c:if>
				</div>
					</td>
			</tr>
				</c:forEach>	
	
    </table>
    </form>
     <div align="center">
    <button id="mainBtn" style="width: 90px; height: 30px;border-radius: 10px; background: black;color: white;margin-bottom: 30px"> 메인배너등록 </button>
    </div>   
    <form id="VideoForm" action="DesignEdVideo.do" method="POST" enctype="multipart/form-data">
    <table id="design-table">
     	<tr>
        		<th><span style="color: red">*</span>인스타 영상</th>
        		<td>
        			<c:if test="${!empty  video.oriFile   }">
        			<div style="display: flex"> FILE 
        			<input style="margin-left:2%; display: none" type="file" name="mainvideo"  class="main-video"  >
        			<a style="margin-left:3%" class="mainvideoLink" href="/ot/resources/bupladFiles/${video.oriFile}">${video.oriFile}</a>
        			<input type="button"  value="수정"  class="editBtn" style="margin-left: 3%;height: 30px;width: 90px; background: black; color: white; border-radius: 10px;">
        			</div>
				    </c:if>
				    
					 <c:if test="${empty  video.oriFile   }">
        			<div style="display: flex"> FILE 
        			<input style="margin-left:2%;" type="file" name="mainvideo" class="main-video" >
        			<a class="mainvideoLink" style="display: none"href="/ot/resources/bupladFiles/${video.oriFile}">${video.oriFile}</a>
        			</div>
				    </c:if>

        		</td>
        	</tr>
    </table>
    </form>
       <div align="center">
    <button id="videoBtn" style="width: 90px; height: 30px;border-radius: 10px; background: black;color: white;margin-bottom: 30px"> 동영상등록 </button>
    </div>   
    <form id="instaForm" action="DesignInsta.do" method="POST" enctype="multipart/form-data">
   <table id="design-table">
   	
         <tr >
        	<th rowspan="6" ><span style="color: red">*</span> 상품배너</th>
        </tr>
        	
        	<c:forEach var="in" items="${instaList}">	
        		<tr>
        	<td class="main-design">
        			<div style="display: flex;margin-top: 3%">
        			
        			<c:if test="${empty in.oriFile  }">
        		    <input type="hidden" value="${in.deNo }" name="inno">							
        			FILE ${in.deNo }<input style="margin-left:2%;margin-right: 3%" type="file" name="instaimg" class="insta-img">
        										<a  style=";margin-left: 3%" class="instaFile" href='nfdown.ad?path="${in.oriFile}"'>${in.oriFile}</a>
        			인스타 문구 <input style="margin-left:2%; margin-right: 3%; border: 1px solid #333330;" value="${in.mainComment }" name="instacomment" type="text" class="insta-link">	   	
        			링크 <input style="margin-left:2%; border: 1px solid #333330;" value="${in.mainLink }" name="instalink" type="text" class="insta-link">	   	
        			</c:if>
        			
        				<c:if test="${!empty in.oriFile  }">
        		    <input type="hidden" value="${in.deNo }" name="inno">							
        			FILE ${in.deNo }<input style="margin-left:2%;margin-right: 3%;display:none" type="file" name="instaimg" class="insta-img">
        						<a style="margin-right: 12%;margin-left: 3%" class="instaFile" href='nfdown.ad?path="${in.oriFile}"'>${in.oriFile}</a>
        			인스타 문구 <input readonly style="margin-left:2%; margin-right: 3%; border: 1px solid #333330;background: #f3f3f3 " value="${in.mainComment }" name="instacomment" type="text" class="insta-text">	   	
        			링크 <input readonly style="background: #f3f3f3;margin-left:2%; border: 1px solid #333330;" value="${in.mainLink }" name="instalink" type="text" class="insta-link">	   	
        			 <input  type="button"  value="수정"  class="editBtn" style="margin-left: 3%;height: 30px;width: 90px; background: black; color: white; border-radius: 10px;">
        			</c:if>

        			</div>
				  </td>
				  </tr>
			</c:forEach>
        			
        	
        	
   </table>
       </form>
     <div align="center">
    <button id="InstaBtn" style="width: 90px; height: 30px;border-radius: 10px; background: black;color: white;margin-bottom: 30px"> 배너등록 </button>
    </div>   
    
      <form id="prdtForm" action="DesignPrdt.do" method="POST" enctype="multipart/form-data">
   <table id="design-table">
   	
         <tr >
        	<th rowspan="6" ><span style="color: red">*</span> 메인배너</th>
        </tr>
        	
        		<tr>
        	<td class="main-design">
        			<div style="display: flex;margin-top: 3%">
        			
        			<c:if test="${empty prdtimg.oriFile  }">
        			FILE <input style="margin-left:2%;margin-right: 3%" type="file" name="prdtimg" class="prdtimg">
        										<a  style=";margin-left: 3%" class="prdtFile" href='nfdown.ad?path="${prdtimg.oriFile}"'>${prdtimg.oriFile}</a>
        			상품 문구 <input style="margin-left:2%; margin-right: 3%; border: 1px solid #333330;" value="${prdtimg.mainComment }" name="prdtcomment" type="text" class="prdtcomment">	   	
        			</c:if>
        			
        				<c:if test="${!empty prdtimg.oriFile  }">
        			FILE <input style="margin-left:2%;margin-right: 3%;display:none" type="file" name="prdtimg" class="prdtimg">
        						<a style="margin-right: 12%;margin-left: 3%" class="prdtFile" href='nfdown.ad?path="${prdtimg.oriFile}"'>${prdtimg.oriFile}</a>
        			상품 문구 <input readonly style="margin-left:2%; margin-right: 3%; border: 1px solid #333330;background: #f3f3f3 " value="${prdtimg.mainComment }" name="prdtcomment" type="text" class="prdtcomment">	   	
        			 <input  type="button"  value="수정"  class="editBtn" style="margin-left: 3%;height: 30px;width: 90px; background: black; color: white; border-radius: 10px;">
        			</c:if>

        			</div>
				  </td>
				  </tr>
   			</table>
       </form>
     <div align="center">
    <button id="InstaBtn" style="width: 90px; height: 30px;border-radius: 10px; background: black;color: white;margin-bottom: 30px"> 배너등록 </button>
    </div>   
   
   
   
    </div>
     <div class="page-wrapper">
    </div>

<script>
$('.editBtn').click(function(){
	$(this).parents('td').find('.mainbaner').css("display","block");
	$(this).parents('td').find('.fildown').css("display","none");
	$(this).parents('td').find('.main-text').css("background","white").removeAttr('readonly').val(" ");
	$(this).parents('td').find('.main-link').css("background","white").removeAttr('readonly').val(" ");
	
	$(this).parents('td').find('.main-video').css("display","block");
	$(this).parents('td').find('.mainvideoLink').css("display","none");
	
	$(this).parents('td').find('.insta-img').css("display","block");
	$(this).parents('td').find('.instaFile').css("display","none");
	$(this).parents('td').find('.insta-text').css("background","white").removeAttr('readonly').val(" ");
	$(this).parents('td').find('.insta-link').css("background","white").removeAttr('readonly').val(" ");
	
	$(this).parents('td').find('.prdtimg').css("display","block");
	$(this).parents('td').find('.prdtFile').css("display","none");
	$(this).parents('td').find('.prdtcomment').css("background","white").removeAttr('readonly').val(" ");
	
	
	
	
	});

</script>


    <script>
    $(function(){
    	
    	var mainbaner = document.getElementsByname('mainbaner');
    	var fildown = document.getElementsByname('fildown');

    "<c:forEach var='b'  items='${mainList}'>"
    
    	if("${!empty  b.oriFile }"){
    		mainbaner[i].style.display=none;
    		fildown[i].style.display=block;
    	}else{
    		mainbaner[i].style.display=block;
    		fildown[i].style.display=none;				
    	}
    
    "</c:forEach>"	
})
    	
    	
    	$('#mainBtn').click(function(){
    		$('#mainForm').submit();
    	});
    	$('#videoBtn').click(function(){
    		$('#VideoForm').submit();
    	})
    	$('#InstaBtn').click(function(){
    		$('#instaForm').submit();
    	})
    	
    </script>

    <script type="text/javascript">
        function readURL(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
        $('#blah').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
        }
        }
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



<%@page import="com.kh.ot.main.vo.ListCount"%>
<%@page import="com.kh.ot.main.service.MainServiceImpl"%>
<%@page import="com.kh.ot.main.service.MainService"%>
<%@page import="com.kh.ot.board.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
<link rel="stylesheet" href="/ot/resources/css/popup.css">
<style>

.ec-base-table td{
  border-top: 1px solid #EEE !important;
}
.ec-base-table.typeList .center td.left {
    padding-left: 3px;
    text-align: left !important;
 }
 
 .ec-base-paginate1 {
    margin: 30px auto;
    text-align: center;
    line-height: 0;
    display: table;
}
 
 
.thumb{
 text-align: left !important;
	padding-left: 1% !important;
}
a{
	cursor:pointer;
}

            #container{
                width: 100%;
                height: 100%;
                text-align: center;
                position: absolute;
                left: 0px;
            }

            #profile{
                width: 850px;
                height: 280px;
                padding: 10px;
                padding-top: 25px;
                border: none;
                display: inline-block;
                margin-bottom: 0px;
            }

            .post{
                width: 260px;
                margin: 7px;
            }


            #show-profile{
                width: 850px;
                height: 280px;
                border-radius: 9px;
                position: absolute;
                background: none;
            }
            
            #profilebackgound{
                width: 850px;
                height: 280px;
                background-color: lightgrey;
                border-radius: 9px;
                display: inline-block;
                position:absolute;
				margin-left: -425px; 
				z-index: -1;
                
                -webkit-box-shadow: 0 5px 10px -6px #222;
                -moz-box-shadow: 0 5px 10px -6px #222;
                box-shadow: 0 5px 10px -6px #222;
            }
            

            #profileimgbox{
                width: 170px;
                height: 165px;
                border-radius: 100%;
                float: left;
                margin-top: 110px;
                margin-left: 60px;  
                text-align: center;
                background-color: white;
                box-shadow: 1px 3px 6px 0px #222;

            }
            #profileimg{
                border-radius: 100%;
                width: 160px;
                height: 155px;
                float: left;
                padding: 5px;
                text-align: center;
                display: inline-block;
            }
            

            .profile{
                font-size: 25px;
                margin: 10px;
                margin-top: 1px;

            }

			#hr1{
			 margin: 0px 0px 5px 0px; 
			 width: 850px;
			 display: inline-block;
			 }

            #settingimg{
                width: 50px;
                height: 50px;
            }

            #profilename{
                width: 300px;
                height: 140px;
                margin-top: 130px;
                border: none;
                border-radius: 6px;
                padding: 5px;
                float: left;
                margin-left: 10px;
                text-align: left;
                padding-left: 10px;
                color: white;
            }

            #name{
                font-size: 50px;
            }

            #memo{
                font-size: 25px;
            }

            #profileright{
                width: 130px;
                height: 280px;
                float: right;
                border-radius: 15px;
                text-align: left;
                font-size: 18px;
                color: white;
                padding: 10px;
               
            }

            #profileSetbtn{
                font-family: 'Jua', sans-serif;
                margin-top: 10px;
                font-size: 15px;
                border: none;
                border-radius: 10px;
                width: 100px;
                height: 28px;
                opacity: 70%;
            }

            #settingbtn{
                font-family: 'Jua', sans-serif;
                font-size: 15px;
                width: 70px;
                height: 27px;
                border: none;
                border-radius: 10px;
                margin-left: 25px;
                opacity: 70%;
            }

            #userprofilshow{
                background-color: whitesmoke;
                border: none;
                width: 300px;
                height: 50px;
                

            }
            #modal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4);
                text-align: center;
            }

            #modalcontent{
                width: 900px;
                height: 500px;
                font-size: 25px;
                margin-top: 4%;
                display: inline-block;
            }

			.contentimgs{
				width: auto;
                height: 800px;
                float: left;
			 
			}
			
			#dotbox{
				position: absolute;
                background-color: rgba(0,0,0,0.4);
				bottom: 0px;
				left: 200px;
			}

            #modalimg{
            	width:auto;
                height:100%;
                float: left;
            }

            #coments{
                background-color: white;
                width: 400px;
                height: 800px;
                float: left;
                padding: 20px;
                overflow: hidden;
            }
            .coments{
                float: left;
            }

            #innercoment{
                height: 150px;
            }

            #closebtn{
                margin-left: 1050px;
                width: 40px;
                height: 40px;
                background-color: transparent;
                border: 1px solid transparent;
                font-size: 45px;
            }

            #comentarea{
                margin-top: 10px;
            }

            #comentinput{
                width: 245px;
                height: 25px;
                float: left;
            }

            #comentsend{
                height: 25px;
                background-color: lightslategray;
                border: 0px;
                font-size:18px;
            }

            #setting{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4);
                text-align: center;
            }

            #settinglist{
                height: 490px;
                width: 250px;
                border:none;
                background-color: white;
                border-radius: 15px;
                font-size: 20.5px;
                margin: 120px auto;
                padding-top: 2px;
                display: inline-block;
            }

            #profileModal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4);
                text-align: center;
            }
            #profileSet{
                height: 530px;
                width: 260px;
                border:none;
                background-color: white;
                border-radius: 15px;
                font-size: 18px;
                margin: 85px auto;
                padding-top: 2px;
                text-align: center;
                display: inline-block;
            }

            #Public_scope{
                height: 320px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }

            #Public_Scope_Modal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4);
                text-align: center;
            }

            #comentSet{
                height: 320px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }

            #comentSetModal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4); 
                text-align: center;
            }

            #comenttextarea{
                height: 100px;
                width: 230px;
            }

            #nameSet{
                height: 250px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }

            #nameSetModal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4); 
                text-align: center;
                /* display: inline-block; */
            }

            #nametextarea{
                height: 25px;
                width: 230px;
            }

            .checkBox{
               border-radius: 100%;
               width: 15px;
               height: 15px; 
            }
            
            #proImgSet{
             	height: 250px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }
            
            #proImgModal{
             display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4); 
                text-align: center;
                /* display: inline-block; */
            }
            
              #proimgarea{
                height: 25px;
                width: 230px;
            }
            
             #proBackSet{
             	height: 250px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }
            
            #proBackModal{
             display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4); 
                text-align: center;
                /* display: inline-block; */
            }
            
              #probackarea{
                height: 25px;
                width: 230px;
            }

.ec-base-table td{
  border-top: 1px solid #EEE !important;
}
.ec-base-table.typeList .center td.left {
    padding-left: 3px;
    text-align: left !important;
 }
 
 
 
.thumb{
 text-align: left !important;
	padding-left: 1% !important;
}
</style>
<title>Product Detail</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/ot/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="/ot/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition" style="overflow-x:hidden;">

	<!-- Header -->
	<jsp:include page="header.jsp"/>

	<!-- breadcrumb -->
	<!-- <div class="bread-crumb bgwhite flex-w p-l-52 p-r-15 p-t-30 p-l-15-sm">
		<a href="index.html" class="s-text16"> Home <i
			class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a> <a href="product.jsp" class="s-text16"> clothing <i
			class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a> <a href="product.jsp" class="s-text16"> 티셔츠/나시 <i
			class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a> <span class="s-text17"> [B-BASIC] 베이직 크롭 컬러나시 </span>
	</div> -->
<br>


	<!-- Product Detail -->
	<div class="container bgwhite p-t-35 p-b-80" style="padding-bottom:0px;padding-left:0px;padding-right:0px;width:1500px;">
		<div class="flex-w flex-sb">
			<div class="w-size13 p-t-30 respon5">
				<div class="wrap-slick3 flex-sb flex-w">
					<div class="wrap-slick3-dots"></div>

					<div class="wrap-pic-w">
					<c:forEach var="pd" items="${pdlist }">
						<img
							src="${pd.prdtImagePath }${pd.prdtImage }"
							alt="IMG-PRODUCT">
							</c:forEach>
					</div>
					
					<%
          			int qnaCount = 0;
          			%>
					<!-- <div class="item-slick3" data-thumb="images/thumb-item-02.jpg">
							<div class="wrap-pic-w">
								<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">
							</div>
						</div>

						<div class="item-slick3" data-thumb="images/thumb-item-03.jpg">
							<div class="wrap-pic-w">
								<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">
							</div>
						</div> -->
				</div>
			</div>
			<div class="w-size14 p-t-30 respon5" style="margin-top:-3%">
<c:forEach var="pdd" items="${pdlist }">
				<h4 class="product-detail-name m-text16 p-b-13">${pdd.prdtName }</h4>

				price&nbsp;:&nbsp;&nbsp; <span class="m-text17 format-money">
					<c:if test="${pdd.prdtSale ne 0 }">
	<font class="format-money" style="text-decoration:line-through">${ pdd.prdtPrice}</font>-><font class="format-money">${ pdd.prdtPrice-((pdd.prdtPrice/100)*pdd.prdtSale)}</font>
										</c:if>
										<c:if test="${pdd.prdtSale eq 0 }">
										<font class="format-money">${ pdd.prdtPrice}</font> 
										
										</c:if>



				</span>WON <br> point(1%)&nbsp;:&nbsp;&nbsp; <span class="m-text17">
					<small id="pointArea"></small>
				</span>p
				<hr>
<script>
var result = Math.floor(${ pdd.prdtPrice/100});
$(function(){
	$('#pointArea').text(result)
})


</script>
				<p class="s-text8 p-t-10">${pdd.prdtComment }
				</p>
				
				<hr>
				
				<span class="m-text17" ><small>total</small>&nbsp;:&nbsp;&nbsp;
						<font id="total" class="format-money"><c:if test="${pdd.prdtSale ne 0 }">
										${ pdd.prdtPrice-((pdd.prdtPrice/100)*pdd.prdtSale)}
										</c:if>
										<c:if test="${pdd.prdtSale eq 0 }">
										${ pdd.prdtPrice}
										</c:if></font>&nbsp;<small>WON</small>
					</span> <br>
					<div class="flex-r-m flex-w p-t-10" style="margin-left:-39%;">
						<div class="w-size16 flex-m flex-w">
							<div class="flex-w bo5 of-hidden m-r-22 m-t-10 m-b-10">
								<button onclick="optionDel();"class="num-product-down color1 flex-c-m size7 bg8 eff2">
									<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
								</button>

								<input class="size8 m-text18 t-center num-product" type="number"
									name="num-product" value="1">


								<button onclick="option1Add();"class="num-product-up color1 flex-c-m size7 bg8 eff2">
									<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
								</button>


							</div>
							<!-- 토탈계산을 위한 프로덕트 price -->
							
							<c:if test="${pdd.prdtSale ne 0 }">
							<input class="num-price" type="hidden" value="${ pdd.prdtPrice-((pdd.prdtPrice/100)*pdd.prdtSale)}">
							<input id="num-price" type="hidden" value="${ pdd.prdtPrice-((pdd.prdtPrice/100)*pdd.prdtSale)}">
							</c:if>
							<c:if test="${pdd.prdtSale eq 0 }">
							<input class="num-price" type="hidden" value="${ pdd.prdtPrice}">
							<input id="num-price" type="hidden" value="${ pdd.prdtPrice}">
							</c:if>
</c:forEach>
							<div
								class="btn-addcart-product-detail size9 trans-0-4 m-t-10 m-b-10"
								style="width:18%;height:50px;margin-left: 12%">
								<!-- Button -->
								<button
									class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4" onclick="cartcart();">
									<small>장바구니 담기</small>
								</button>
							</div>


							<br>
							<br>
						</div>
						</div>
					<br>
					
				<div class="p-t-33 p-b-60" 
					style="margin-left: -10%;margin-top:-20px; height: 300px; overflow-y: scroll;">
					
					<%String prNo = request.getParameter("product_detail"); %>
				<input type="hidden" id="prNo_val"value="<%=prNo %>">
					
					
					<!-- 셀렉트시작 -->
					
					<div id="select1o" class="selectArea">
					<div id="select1oo" class="selectItem">
					<!-- 셀렉 -->
    	
						<div
							style="display: -webkit-box; display: -webkit-flex; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-flex-wrap: wrap; -moz-flex-wrap: wrap; -ms-flex-wrap: wrap; -o-flex-wrap: wrap; flex-wrap: wrap; -ms-align-items: center; align-items: center;">
							<div
								style="font-family: Montserrat-Regular; font-size: 15px; color: #666666; line-height: 1.8; width: 21%; text-align: center;">1.Size</div>

							<div 
								style="padding-top: 10px; background-color: white; line-height: 20px; color: #555555; padding-left: 22px; right: 10px; height: 45px; display: block; border: 1px solid #e6e6e6; border-radius: 2px; overflow: hidden; width: 79%;">
								<select id="select1_1" style="border:none;background:none;outline: 0;width:98%;" name="size" >
									<option>--------</option>
									<c:forEach var="poo" items="${ poolist2 }">
									<option>${poo.size}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div style="height: 3px;"></div>
						<div style="display: -webkit-box; display: -webkit-flex; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-flex-wrap: wrap; -moz-flex-wrap: wrap; -ms-flex-wrap: wrap; -o-flex-wrap: wrap; flex-wrap: wrap; -ms-align-items: center; align-items: center;">
							<div
								style="font-family: Montserrat-Regular; font-size: 15px; color: #666666; line-height: 1.8; width: 21%; text-align: center;">1.Color</div>

							<div
								style="padding-top: 10px; background-color: white; line-height: 20px; color: #555555; padding-left: 22px; right: 10px; height: 57px; display: block; border: 1px solid #e6e6e6; border-radius: 2px; overflow: hidden; width: 79%;">

								<select id="select1_2" style="border:none;background:none;outline: 0;width:98%;hover:black;" name="color">
									<option>--------</option>
									<c:forEach var="poo" items="${ polist }">
									<option>${poo.optColor}</option>
									</c:forEach>
								</select><div/>

										<c:forEach var="pc" items="${ pclist }">
								<c:forEach var="po" items="${ polist }">


										<c:if test="${ po.optColor eq pc.pcName }">
										<div style="width:14px;height:14px;background:${pc.pcRgb};display:inline-block;border:1px solid gray;margin-left:0.5px;"></div>
										</c:if>


								</c:forEach>
										</c:forEach>
							</div>
						
					</div>
					
						</div>
						</div>
						<!-- 셀렉 -->
						<br>
					<!-- 셀렉트끝 -->

					
					</div>

				</div>
<script>
    var count = 2;
    var prNo = $('#prNo_val').val();
function option1Add(){
	$.ajax({
		url:"detailSelect.do",
		data:{product_detail:prNo},
		dataType:"json",
		async: false,
		success:function(data){
			const str = 
			   	 '<div id="select'+count+'oo" class="selectItem">'+
			   	 '<div style="display: -webkit-box; display: -webkit-flex; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-flex-wrap: wrap; -moz-flex-wrap: wrap; -ms-flex-wrap: wrap; -o-flex-wrap: wrap; flex-wrap: wrap; -ms-align-items: center; align-items: center;">'+
										'<div '+
										'style="font-family: Montserrat-Regular; font-size: 15px; color: #666666; line-height: 1.8; width: 21%; text-align: center;">'+count+'.Size</div>'+
										'<div '+ 
											'style="padding-top: 10px; background-color: white; line-height: 20px; color: #555555; padding-left: 22px; right: 10px; height: 45px; display: block; border: 1px solid #e6e6e6; border-radius: 2px; overflow: hidden; width: 79%;">'+
											'<select id="select'+count+'_1" style="border:none;background:none;outline: 0;width:98%;" name="size" >'+												
											'<option id="select'+count+'_1option">--------</option>'+
											'</select>'+
										'</div>'+
									'</div>'+
									'<div style="height: 3px;"></div>'+
									'<div style="display: -webkit-box; display: -webkit-flex; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-flex-wrap: wrap; -moz-flex-wrap: wrap; -ms-flex-wrap: wrap; -o-flex-wrap: wrap; flex-wrap: wrap; -ms-align-items: center; align-items: center;">'+
										'<div '+
										'style="font-family: Montserrat-Regular; font-size: 15px; color: #666666; line-height: 1.8; width: 21%; text-align: center;">'+count+'.Color</div>'+
										'<div '+
											'style="padding-top: 10px; background-color: white; line-height: 20px; color: #555555; padding-left: 22px; right: 10px; height: 57px; display: block; border: 1px solid #e6e6e6; border-radius: 2px; overflow: hidden; width: 79%;">'+

											'<select id="select'+count+'_2" style="border:none;background:none;outline: 0;width:98%;hover:black;" name="color">'+
												'<option id="select'+count+'_2option">--------</option>'+
											'</select><div/>'+
											'<div id="color'+count+'Box"></div>'+
										'</div>'+
									'</div>'+
									'</div>'+
			'<br id="select'+count+'a">';
		
$("#select1o").append(str); 


	for(var i in data){
	
	$('#select'+count+'_1option').after('<option>'+data[i].size+'</option>');
	
	}
	
	option2Add();
	
	},error:function(){
			alert("select불러오기 실패데스네");
		}
	})
    
}


function option2Add(){
	$.ajax({
		url:"detailSelect2.do",
		data:{product_detail:prNo},
		dataType:"json",
		async: false,
		success:function(data){
	
	for(var i in data){
		
		$('#select'+count+'_2option').after('<option>'+data[i].optColor+'</option>');
		
		}
	
	option3Add();
	},error:function(){
			alert("select2불러오기 실패데스네");
		}
	})
    
}


function option3Add(){
	$.ajax({
		url:"detailSelect3.do",
		data:{product_detail:prNo},
		dataType:"json",
		async: false,
		success:function(data){
	
	for(var i in data){
		
		$('#color'+count+'Box').append('<div style="width: 14px; height: 14px; background: '+data[i].pcRgb+'; margin-left: 3px; float: left; border: 1px solid gray;"></div>');
		
		}
	count++;
	},error:function(){
			alert("select3불러오기 실패데스네");
		}
	})
    
}




function optionDel(){
	if(count>2){
    $("#select"+(count-1)+"oo").remove();
    $("#select"+(count-1)+"a").remove();
    count--;}
}
</script>


<%String prdtNo = request.getParameter("product_detail").toString(); %>


				<div class="p-b-45">
					<span class="s-text8 m-r-35">oT: 2DY</span>
				</div>

				<style class="modalcss">
.page {
	transition: opacity 0.3s ease-out;
	font-size: 12px;
}

.modal {
	position: relative;
	top: -10%;
}

.reviews_index__body {
	border-bottom: 1px solid #dadada;
}

.reviews_index__no_data_message {
	display: none;
	text-align: center;
	color: #9e9e9e;
	margin-top: 30px;
	font-weight: bold;
}

.reviews_index--gallery .reviews_index__reviews:after {
	clear: both;
	content: ".";
	display: block;
	font-size: 0;
	height: 0;
	line-height: 0;
	visibility: hidden;
}

.photo_review_thumbnail__author_name {
	margin-right: 75px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.reviews_index_gallery_review__review_product:after {
	clear: both;
	content: ".";
	display: block;
	font-size: 0;
	height: 0;
	line-height: 0;
	visibility: hidden;
}

.reviews_index_gallery_review {
	cursor: pointer;
	float: left;
	font-family: "나눔고딕", "NanumGothic", "맑은 고딕", "Malgun Gothic", "돋움",
		"Dotum", "굴림", "Helvetica Neue", Helvetica, Arial, sans-serif;
	width: 215px;
	border: 1px solid #e5e5e5;
	padding: 0;
	margin: 0 10px 50px 10px;
	box-shadow: 0 3px 3px #fafafa;
	position: relative;
}

.reviews_index__foot {
	text-align: center;
	padding-top: 25px;
}

.reviews_index_gallery_review__review_product {
	padding: 13px 11px;
	height: 40px !important;
	cursor: pointer;
	*min-height: 0;
}
</style>

				<div class="wrap-dropdown-content bo7 p-t-15 p-b-14 modalcss">
					<!-- Trigger/Open The Modal -->
					<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
						id="myBtn1" style="width: 40%; float: left;"><small>Review(${rp.reviewCount})</small></button>
					<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
						onclick="qna();" style="position: relative; left: 10%; width: 40%;"><small>Q&A(${lcount.listCount })</small></button>
						
						<br>
						
					<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
						 onclick="washing_tip();" style="width: 40%; float: left;"><small>sizeInfo & wasingTip</small></button>
						 
					<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
						onclick="buynow();" style="position: relative; left: 10%; width: 40%;">Buy Now</button>

<script>


function washing_tip(){
	location.href="#washing_tip";
}
function qna(){
	location.href="#qna";
}

</script>
   

					<!-- The Modal -->
					<div id="myModal" class="modal">

						<!-- Modal content -->
						<div class="modal-content"
							style="width: 80%; height: 80%; overflow-y: scroll; overflow-x: hidden; margin-top: 100px;">
							<button class="close1"
								style="position: relative; left: 49.5%; top: -2%;">&times;</button>

							<div class="page">

								<img class="." alt="best_review"
									src="/ot/resources/images/oT/common/best_review.jpg" width="100%"
									height="auto" style="margin-left: 2.9%">
									
									<br>
									<div class="products_reviews_form__title" style="float:left;">
      <strong>REVIEW</strong><span class="divider">|</span><span class="weak">문의글 혹은 악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^</span>
      
    </div>
    					<button class="flex-c-m bg4 bo-rad-23 hov1 s-text1 trans-0-4" onclick="reviewOn();" 
						style="position: relative; left: 55%; width: 7%; height: 20px; font-size: 12px; float:left;background:#c3b798; ">리뷰 작성하기</button>
							<c:url var="review" value="review.do?Sort=no"/>
    					<button class="flex-c-m bg4 bo-rad-23 hov1 s-text1 trans-0-4" onclick="location.href='${review}'"
						style="position: relative; left: 56%; width: 7%; height: 20px; font-size: 12px; ">리뷰 게시판</button>
    								<hr>
									<br>
									<!-- 리뷰 작성하기부분 -->

								<div id="reviewWrite"
									style="display: none; -webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;padding: 20px 0px 20px 29px; border-width: 1px; border-style: solid; border-color: rgb(218, 218, 218); border-image: initial; height: 22%; background: white; margin-bottom: 3%;">

	<form id="reviewInsertForm" action="detailReviewInsert.do" enctype="multipart/form-data">
		<label>키 : <input type="text"  name="rvHeight" placeholder="필수입력"
			style="width: 80px; align: center; height: 25px; border: 2px solid lightgray; text-align: center; border-radius: 10px;"
			maxlength="6">&nbsp;<small>cm</small></label>&nbsp;&nbsp;&nbsp;

		<label>몸무게 : <input type="text" name="rvWeight" placeholder="필수입력"
			style="width: 80px; height: 25px; border: 2px solid lightgray; text-align: center; border-radius: 10px;"
			maxlength="6">&nbsp;<small>kg</small></label>&nbsp;&nbsp;&nbsp;
			<small style="color:gray;">*키/몸무게는 비공개입니다.</small>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<label>선택한옵션(컬러) : <select style="background: none;width:80px;" name="rvColor">
				<option>------</option>
				<c:forEach var="poo" items="${ polist }">
									<option>${poo.optColor}</option>
									</c:forEach>
		</select> 
		</label>
		
		<label>선택한옵션(사이즈) : <select style="background: none;width:80px;" name="rvSize">
				<option>------</option>
				<c:forEach var="poo" items="${ poolist2 }">
									<option>${poo.size}</option>
									</c:forEach>
		</select> 
		</label>
		<label>만족도 : <select style="background: none;width:100px;" name="rvPoint">
				<option value="0">만족도 선택</option>
				<option value="1">완전별로</option>
				<option value="2">별로</option>
				<option value="3">보통</option>
				<option value="4">만족</option>
				<option value="5">매우만족</option>
		</select> 
		</label>

		<input type="button"  onclick="reviewOff();" value="작성 취소"
			style="cursor:pointer; position: relative; float: right; width: 70px; height: 30px; background: black; border-radius: 9%; margin-right: 15px; color: white;">
		<input type="button" onclick="reviewWrite();" value="작성 완료"
			style="cursor:pointer; position: relative; float: right; width: 70px; height: 30px; background: #c3b798; border-radius: 9%; margin-right: 15px; color: white;">

		<br>
		<br> <input type="file" name="file"
			style="background: #c3b798; border: 2px solid lightgray">&nbsp;
			<input type="file" name="file"
			style="background: #c3b798; border: 2px solid lightgray">
		<br>
		<input type="hidden" value="<%=prdtNo%>" name="prdtNo">
		<br>
		<br> <label>리뷰 내용 <small>(200자 이내)</small><br>
		<textarea maxlength="200" name="rvInfo" placeholder="*리뷰는 한 게시물당 한 리뷰만 작성가능합니다.다시작성하려면 삭제 후 작성해주세요."
				style="border: 2px solid lightgray; border-image: initial; width: 700%; height: 270px; resize: none; font-size: 15px;"></textarea></label>
	</form>

</div>

<hr id="scrollX">

<style>
.moveOn{
 position: relative;
  animation-name: example;
  animation-duration: 2s;  
  animation-fill-mode: forwards;
  }


 
  @keyframes example {
  from {top: -25%; height:600px;background-color: white;}
  to {top: -25%; height:1px;background-color: white;}

 
</style>



								<!-- 리뷰작성 끝 -->
									
									
						<script>
						var scrollX=document.getElementById('scrollX');
						var prdtNo = '<%=prdtNo %>';
						function reviewOn() {
							if("${loginMember.memId}"==""){
								alert('로그인후 이용해주세요');
								location.href="loginView.do";
								
							}else{
								
							$.ajax({
								url:"DetailReviewWrite.do",
								data :{
									prdtNo : prdtNo
								},
								dataType : 'json',
								type : 'get',
								success:function(data){
									if(data.status =="success"){
										$('#reviewWrite').css("display","block");
										scrollX.className ='moveOn'; 
									}else{
										swal(data.message);
									}
								}
							});
							
							}
							
						}
						
						
						function ajaxFileUpload(url, type, dataType, data, success, error){
							$.ajax({
								url : url,
								type : type,
								dataType : dataType,
								data : data,
								processData : false,
								contentType : false,
								success : success,
								error : error
							})
						}
						function ajax(url, type, dataType, data, success, error){
							$.ajax({
								url : url,
								type : type,
								dataType : dataType,
								data : data,
								success : success,
								error : error
							})
						}
						
						function reviewWrite(){
							var form = new FormData(document.getElementById('reviewInsertForm'));
							ajaxFileUpload('detailReviewInsert.do','post','json',form,function(data){
								if(data.status =="success"){
									reviewOff();
									review();
								}else if(data.status =="fail"){
									swal(data.message);
								}
								
							})
  						}
						
						
						function reviewOff() {
							$('#reviewWrite').css("display","none");
							scrollX.className ='';
							
						}
						
						
						</script>			
									
									
					
						
						
						
									
									
									<!-- 리뷰평점부분-->
<style>
.products_reviews_form {
    padding-bottom: 44px;
}
.products_reviews_form__head {
    padding-bottom: 10px;
    margin-bottom: 3px;
    font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림, "Helvetica Neue", Helvetica, Arial, sans-serif;
    height: 11px;
    line-height: 20px;
}
.products_reviews_form__title {
    font-size: 12px;
    float: left;
}
.products_reviews_form__button {
    float: right;
    width: auto;
    line-height: 20px;
    background-color: rgb(48, 48, 48);
    color: rgb(255, 255, 255);
    text-align: center;
    font-size: 10px;
    cursor: pointer;
    white-space: nowrap;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(16, 16, 16);
    border-image: initial;
    border-radius: 3px;
    padding: 0px 2px;
}
.products_reviews_summary {
    padding: 20px 0px 20px 29px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(218, 218, 218);
    border-image: initial;
}
.products_reviews_summary__inner {
    position: relative;
}
.products_reviews_summary__lcontent {
    margin-right: 263px;
    padding: 9px 20px 9px 0px;
    border-right: 1px solid rgb(237, 237, 237);
}
.products_reviews_summary__rcontent {
    position: absolute;
    right: 0px;
    top: 0px;
}
.score_summary {
    min-width: 90px;
}
.score_summary__footer {
    font-size: 14px;
    margin-top: 16px;
}
.score_summary__avg_score {
    width: 96px;
    float: left;
}
.score_summary__score_filters {
    padding-left: 120px;
}
.score_summary__average {
    line-height: 77px;
    text-align: center;
    color: white;
    font-size: 50px;
    background: rgb(37, 37, 37);
}
.score_summary__reviews_count {
    text-align: center;
    color: rgb(118, 118, 118);
    padding: 7px;
}
.score_summary__score_filter {
    display: inline-block;
    margin-bottom: 9px;
    height: 14px;
    width: 100%;
}
.score_summary__score_filter a {
    display: block;
    color: rgb(157, 157, 157);
}
.score_summary__score_filter__title {
    float: left;
    width: 50px;
}
.score_summary__score_filter__status {
    float: right;
    width: 64px;
    margin-left: 6px;
}
.score_summary__score_filter__gauge {
    margin-left: 54px;
    margin-right: 70px;
    position: relative;
    background: rgb(244, 244, 244);
}
.score_summary__score_filter__count {
    float: left;
    text-align: right;
    color: rgb(157, 157, 157);
    width: 42px;
}
.score_summary__score_filter__check {
    float: left;
    visibility: hidden;
    margin-left: 10px;
}
.sprites-check {
    vertical-align: middle;
    background-image: url(//assets.cre.ma/latte/assets/sprites-9f78e5e….png);
    width: 12px;
    height: 12px;
    background-repeat: no-repeat;
    background-position: -35px -88px;
}
.score_summary__score_filter a {
    display: block;
    color: rgb(157, 157, 157);
}
.score_summary__score_filter__gauge .percentile {
    width: 0px;
    height: 14px;
    background: rgb(255, 76, 35);
}
.score_summary__footer {
    font-size: 14px;
    margin-top: 16px;
}
.score_summary__footer .percentage {
    color: rgb(110, 182, 126);
}
.products_reviews_summary__rcontent {
    position: absolute;
    right: 0px;
    top: 0px;
}
.products_reviews_summary_thumbnail_small_with_score {
    width: 245px;
}
.products_reviews_summary_thumbnail_small_with_score__items {
    text-align: center;
    font-size: 0px;
    margin-top: 8px;
}
.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews {
    text-align: center;
    margin-top: 18px !important;
}
.products_reviews_summary_thumbnail_small_with_score__item_row:first-child {
    margin-top: 0px;
}
.products_reviews_summary_thumbnail_small_with_score__item_row {
    margin-top: 8px;
    display: inline-block;
}
.products_reviews_summary_thumbnail_small_with_score__item:first-child {
    margin-left: 0px;
}
.products_reviews_summary_thumbnail_small_with_score__item {
    float: left;
    margin-left: 4px;
    background: rgb(237, 237, 237);
}
.products_reviews_summary_thumbnail_small_with_score__item_link {
    display: inline-block;
    font-size: 0px;
    position: relative;
}
.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews {
    text-align: center;
    margin-top: 18px !important;
}
.widget_reviews {
    padding: 44px 0px;
}
.products_reviews_header {
    font-size: 16px;
}
.widget_reviews__body {
    border-bottom: 1px solid rgb(218, 218, 218);
}
.products_reviews_header__upper {
    font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림, "Helvetica Neue", Helvetica, Arial, sans-serif;
    position: relative;
}
.products_reviews_header__separator {
    height: 1px;
    background: rgb(218, 218, 218);
    margin: 10px 0px;
}
.products_reviews_header__lower {
    padding-top: 10px;
    padding-bottom: 15px;
}
.products_reviews_header__sort_type--selected {
    color: rgb(51, 51, 51);
    font-size: 16px;
}
.products_reviews_header__sort_type {
    color: rgb(148, 148, 148);
    font-size: 13px;
    letter-spacing: -1px;
}
.products_reviews_header__sort_type_divider {
    font-size: 13px;
    padding: 0px 13px;
}
.products_reviews_header__upper {
    font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림, "Helvetica Neue", Helvetica, Arial, sans-serif;
    position: relative;
}
.reviews_manager--absolute {
    position: absolute;
    top: 0px;
    right: 0px;
}
.products_reviews_header__separator {
    height: 1px;
    background: rgb(218, 218, 218);
    margin: 10px 0px;
}
.review_options_search__option_types {
    float: right;
}
.widget_reviews__body {
    border-bottom: 1px solid rgb(218, 218, 218);
}
.products_reviews_summary__lcontent {
    margin-right: 263px;
    padding: 9px 20px 9px 0px;
    border-right: 1px solid rgb(237, 237, 237);
}
.score_summary__avg_score {
    width: 96px;
    float: left;
}
.score_summary__average {
    line-height: 77px;
    text-align: center;
    color: white;
    font-size: 50px;
    background: rgb(37, 37, 37);
}
.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews_icon {
    display: none;
    position: absolute;
    right: -15px;
}
.sprites-check {
    vertical-align: middle;
    background-image: url(//assets.cre.ma/latte/assets/sprites-9f78e5e….png);
    width: 12px;
    height: 12px;
    background-repeat: no-repeat;
    background-position: -35px -88px;
}
</style>
									<div  style="margin-bottom:5%;-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;"class="products_reviews_summary
           products_reviews_summary--small_with_score
           products_reviews_summary--without_write_form" data-url="/black-up.kr/products/reviews?app=0&amp;atarget=reviews&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;product_code=12124&amp;widget_env=100">
    <div class="products_reviews_summary__inner">
      
        <div class="products_reviews_summary__lcontent">
          <div class="score_summary score_summary--list">
  <div class="score_summary__body">
    <div class="score_summary__avg_score">
      <div class="score_summary__average">${rp.pointAvg }</div>
      <div class="score_summary__reviews_count">(${rp.reviewCount})개 리뷰 평점</div>
    </div>
    <ul class="score_summary__score_filters">
      
        <li class="score_summary__score_filter " data-score="5">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">5Stars</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(${rp.point5})</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: ${rp.per/100*rp.point5}%" class="percentile"></div>
            </div>
          </a>
        </li>
      
        <li class="score_summary__score_filter " data-score="4">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">4Stars</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(${rp.point4})</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: ${rp.per/100*rp.point4}%" class="percentile"></div>
            </div>
          </a>
        </li>
      
        <li class="score_summary__score_filter " data-score="3">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">3Stars</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(${rp.point3})</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: ${rp.per/100*rp.point3}%" class="percentile"></div>
            </div>
          </a>
        </li>
      
        <li class="score_summary__score_filter " data-score="2">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">2Stars</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(${rp.point2})</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: ${rp.per/100*rp.point2}%" class="percentile"></div>
            </div>
          </a>
        </li>
      
        <li class="score_summary__score_filter " data-score="1">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">1Star</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(${rp.point1})</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: ${rp.per/100*rp.point1}%" class="percentile"></div>
            </div>
          </a>
        </li>
      
    </ul>
  </div>
  
</div>

        </div>
        <div class="products_reviews_summary__rcontent" style="margin-left:-1%;">
          
<div class="products_reviews_summary_thumbnail_small_with_score">
  
    <div class="products_reviews_summary_thumbnail_small_with_score__items">
      
        <ul class="products_reviews_summary_thumbnail_small_with_score__item_row">
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/99189/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                  
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/09/91/89/image1/thumbnail_fda4eef876b2c0dd.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/09/91/89/image1/thumbnail_fda4eef876b2c0dd.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/118246/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                  
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/82/46/image1/thumbnail_21bdba5e22122276.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/82/46/image1/thumbnail_21bdba5e22122276.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/112232/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                 
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/22/32/image1/thumbnail_0bd7c2eee101616e.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/22/32/image1/thumbnail_0bd7c2eee101616e.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/102392/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                  
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/10/23/92/image1/thumbnail_1756221246c8471e.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/10/23/92/image1/thumbnail_1756221246c8471e.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
        </ul>
      
        <ul class="products_reviews_summary_thumbnail_small_with_score__item_row">
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/108463/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                 
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/10/84/63/image1/thumbnail_a05db29f134c34b3.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/10/84/63/image1/thumbnail_a05db29f134c34b3.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/144494/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/14/44/94/image1/thumbnail_56c606efc6baaad0.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/14/44/94/image1/thumbnail_56c606efc6baaad0.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/123041/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                 
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/12/30/41/image1/thumbnail_c9149c95281400a7.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/12/30/41/image1/thumbnail_c9149c95281400a7.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/111847/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                 
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/18/47/image1/thumbnail_b187976297932d92.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/18/47/image1/thumbnail_b187976297932d92.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
        </ul>
      
    </div>
    <div class="products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews">
      <a class="products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews_link
                js-link-photo-reviews
                ">
        이 상품의 포토리뷰 모아보기
        <span class="products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews_icon sprites-check"></span>
      </a>
    </div>
  
</div>

        </div>
      
    </div>
  </div>
									<!-- 리뷰평점부분끝 -->
									<!-- 정렬 부분 버튼 -->
						<div id=sortButton>
									
								<!-- Button -->
								<button id="1"class=" bg4 bo-rad-23 hov1 s-text1 trans-0-4" onclick="review(this.id)"
						style=" width: 4%; height: 20px; font-size: 12px; background:white;color:gray;"><Strong>최신순</Strong></button>
									
						&nbsp;|
								<!-- Button -->
								<button id="1" class=" bg4 bo-rad-23 hov1 s-text1 trans-0-4" onclick="review2(this.id)"
						style=" width: 7%; height: 20px; font-size: 12px; background:white;color:gray;"><Strong>평점순</Strong></button>
									&nbsp;|
									
								<!-- Button -->
								<button id="1"class="bg4 bo-rad-23 hov1 s-text1 trans-0-4" onclick="review1(this.id)"
						style=" width: 4%; height: 20px; font-size: 12px; background:white;color:gray;"><Strong>좋아요순</Strong></button>
									
								</div>	
									
						<!-- 정렬 부분 버튼 -->
						
						
						<div class="products_reviews_header__lower" >
      
  <div class="review_options_search js-review-options-search">
    
    <ul class="review_options_search__option_types"style="border:2px solid lightgray;margin-top:17px;color:#c3b798;">
      <br>
        <li class="review_options_search__option_type">
          <a class="review_options_search__option_type_link js-link-review-option-type">
            <div class="review_options_search__option_type_name" title="키"><small><strong>키</strong></small></div>
            <div class="review_options_search__option_type_dropdown_button">
              <i class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
            </div>
          </a>
          <div class="review_options_search__dropdown_menu js-dialog-iframe-height">
            
              <ul class="review_options_search__values"style="margin-left:10px;">
                
                   <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" id="option_149" value="1" onClick="checkboxSearch(1)" style="border:none;" id="review_option_type_3_0">
                    <label for="review_option_type_3_0">149 cm 이하</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="2" id="option_150" onclick="checkboxSearch(1)" style="border:none;" id="review_option_type_3_1">
                    <label for="review_option_type_3_1">150 - 154 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="3" id="option_155" onclick="checkboxSearch(1)" style="border:none;" id="review_option_type_3_2">
                    <label for="review_option_type_3_2">155 - 159 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="4" id="option_160" onclick="checkboxSearch(1)" style="border:none;" id="review_option_type_3_3">
                    <label for="review_option_type_3_3">160 - 164 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="5" id="option_165" onclick="checkboxSearch(1)" style="border:none;" id="review_option_type_3_4">
                    <label for="review_option_type_3_4">165 - 169 cm</label>
                  </li>
                  
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="6" id="option_170" onclick="checkboxSearch(1)" style="border:none;" id="review_option_type_3_4">
                    <label for="review_option_type_3_5">170 cm 이상</label>
                  </li>
                
              </ul>
            
          </div>
        </li>
      <br><br>
        <li class="review_options_search__option_type">
          <a class="review_options_search__option_type_link js-link-review-option-type">
            <div class="review_options_search__option_type_name" title="몸무게"><small><strong>몸무게</strong></small></div>
            <div class="review_options_search__option_type_dropdown_button">
              <i class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
            </div>
          </a>
          <div class="review_options_search__dropdown_menu js-dialog-iframe-height">
            
              <ul class="review_options_search__values"style="margin-left:11px;">
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="7" onclick="checkboxSearch2(1)" style="border:none;" id="review_option_type_4_0">
                    <label for="review_option_type_4_0">39 kg 이하</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="8" onclick="checkboxSearch2(1)" style="border:none;" id="review_option_type_4_1">
                    <label for="review_option_type_4_1">40 - 44 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="9" onclick="checkboxSearch2(1)" style="border:none;" id="review_option_type_4_2">
                    <label for="review_option_type_4_2">45 - 49 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="10" onclick="checkboxSearch2(1)" style="border:none;" id="review_option_type_4_3">
                    <label for="review_option_type_4_3">50 - 54 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="11" onclick="checkboxSearch2(1)" style="border:none;" id="review_option_type_4_4">
                    <label for="review_option_type_4_4">55 - 59 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="12" onclick="checkboxSearch2(1)" style="border:none;" id="review_option_type_4_5">
                    <label for="review_option_type_4_5">60 kg 이상</label>
                  </li>
                
              </ul>
            
          </div>
        </li>
      <br><br>
        <li class="review_options_search__option_type">
          <a class="review_options_search__option_type_link js-link-review-option-type">
            <div class="review_options_search__option_type_name" title="평소사이즈-상의"><small><strong>평소사이즈</strong></small></div>
            <div class="review_options_search__option_type_dropdown_button">
              <i class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
            </div>
          </a>
          <div class="review_options_search__dropdown_menu js-dialog-iframe-height">
            
              <ul class="review_options_search__values"style="margin-left:12px;">
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="13" onclick="checkboxSearch3(1)" style="border:none;" id="review_option_type_5_0">
                    <label for="review_option_type_5_0">XS</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="14" onclick="checkboxSearch3(1)" style="border:none;" id="review_option_type_5_1">
                    <label for="review_option_type_5_1">S</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="15" onclick="checkboxSearch3(1)" style="border:none;" id="review_option_type_5_2">
                    <label for="review_option_type_5_2">M</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="16" onclick="checkboxSearch3(1)" style="border:none;" id="review_option_type_5_3">
                    <label for="review_option_type_5_3">L</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="17" onclick="checkboxSearch3(1)" style="border:none;" id="review_option_type_5_4">
                    <label for="review_option_type_5_4">XL</label>
                  </li>
                  
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="18" onclick="checkboxSearch3(1)" style="border:none;" id="review_option_type_5_4">
                    <label for="review_option_type_5_4">F</label>
                  </li>
                
              </ul>
            
          </div>
        </li>
      <br>
    </ul>
  </div>


    </div>
						
						
						
						<!-- modal시작!!!!!!!!!!!!!!!!!!!!!!!! -->
									<div id="modal" style="overflow-y:hidden;">
								<div id="modalcontent" style="width:100%;height:100%;margin-left:18.5%;margin-top:80px !important;">
                
               
                
                 <div id="modalpost" >
                    <div id="modalimg" class="slideshow-container" style="position:relative;top:-20px;" >
<input type="hidden" id="imgbefore">
<input type="hidden" id="nextPh">
                         

     <!--            <div class="mySlides" style="display: block;">
                            <div class="numbertext" ><font style="font-size:14px;">1 / 2</font></div>
                            <img class="contentimgs" id="contentimgs1" src="" alt="sample1" style="margin-top:-5%;">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext"><font style="font-size:14px;">2 / 2</font></div>
                            <img class="contentimgs" id="contentimgs2" src="" alt="sample2" style="margin-top:-5%;" >
                        </div> -->





                        <div id="dotbox" style="text-align:center">
                            <span class="dot" onclick="currentSlide(1);"></span>
                            <span class="dot" onclick="currentSlide(2);"></span> 
                           
                        </div>      
                        
                                    
                   </div>
            
               </div>
<button class="close1" onclick="modalclose();"style="position: relative;right: 365px;bottom: 37px;color:ivory;">&times;</button>
                    <!-- 모달창 시작점 -->
                    <div id="coments"style="margin-top:-3px;overflow-y:scroll;" >

								<br>
								<div style="position: relative; top: -6%; font-size:14px;margin:0px 0px -20px 0px;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" id="pImage" width="55"
													height="55"
													src="${r.prdtPath }${r.prdtImg}"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div class="reviews_index_gallery_review__review_product_info" >
												<div class="reviews_index_gallery_review__product_info_title" id="prDetail"
												style="padding-top:6px;">
													<!-- MODAL 창에 뜨는 DETAIL 상품명 -->

												</div>
											<div id="starstarArea" class="reviews_index_gallery_review__product_info_feedbacks" style="margin-top: 3px;">
	<i class="fa fa-fw fa-star" id="starstar"></i>
													<span class="reviews_index_gallery_review__reviews_count" style="color:gray;">
													<small id="memName"></small>
													</span>
												</div>
											</div>
										</div>
										<hr>
                        <div style="color:gray; border:1px solid lightgray; font-size:15px;">
                          	<small style="margin-left:-44px;">이 리뷰를 <strong style="color:black;">
                          	<span id="likeCount"></span></strong >명이 좋아합니다.</small>
                        </div><hr>
                         <div style="color:gray; border:2px dotted lightgray; font-size:15px;">
                          	선택한 옵션 <br> <small>color : <strong style="color:black;" id="rColor"></strong></small><br>
                          				<small>size : <strong style="color:black;" id="rSize"></strong></small>
                        </div><hr>
                        <div id="innercoment">
                            <div class="coments" style="font-size:12px;text-align:left;padding:10px;letter-spacing: 1px;" id="rInfo">
                            <!-- 리뷰내용 -->
                            </div><br>


                        </div>
                         <div style="color:lightgray;font-size:12px;float:right;" id="rDate2"></div>
                        <div><hr>
                            <div style="margin-top:-4px;">
                            <font style="font-size:13px;color:gray;">이  리뷰가</font> &nbsp;

                            <a id="heartClick" style="font-size: 12px; border: none; color:white; width:60px;height:30px;">
                            <img src="/ot/resources/images/icons/like-noncheck.png" id="nonHeart"
                            style="width: 33px;margin-left: -11px;margin-top: -3px;">
                            <input type="hidden" id="likeCheck" value="">
                            <input type="hidden" id="rv_no2" value="">
                            </a>
                            </div>
                        </div><hr>

                        <!-- 댓글 forEach 시작점 -->
                        <div id="comentarea">
                        	<div style="margin-bottom: 14px;">


                            <input onkeyPress="reviewReply();" type="text" id="rvComment" placeholder="댓글을 작성해주세요 :)" maxlength="80" style="resize:none; /* border-radius: 5px 0px 0px 5px;  */
                            border: 0.5px solid lightgray; background-color: whitesmoke; padding: 2px; height:40px;width:83%;">
                            <button onclick="" id="comentsend" style=" font-size: 15px;
                             background: white; border: 1px solid lightgray; /* border-radius:0px 5px 5px 0px; */
                             width:50px;height: 40px;position:relative;bottom:1px;display:inline-block;">등록</button>
                             </div>


                        </div>

                    </div>
                       <!-- 모달창 끝나는 점 -->  
                </div>
                </div>
                <!-- modal끝!!!!!!!!!!!!!!!!!!!!!!!! -->
									
									<hr style="border:1px solid lightgray;margin-top:2px;">
									<br><br>
								<div class="reviews_index__no_data_message">아직 작성한 리뷰가
									없습니다.</div>
								<ul class="reviews_index__reviews reviews" id="reviewArea">
								
									<!-- 리뷰1줄 시작 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review" onclick="reviewDetail()"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
														<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>
														
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->

								</ul>
							</div>
							<br><hr><br>
							<!-- 리뷰페이징 -->
							<div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate1" id="reviewPaging">

						
					</div>
				</div>
				</div>
				</div>
			</div>
		</div>
	<style>
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.close1 {
	color: #aaa;
	align: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn1");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close1")[0];

		// When the user clicks on the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
			review();
		}
		function review(arguments){
					var count = 0;
			var sort = "no";
			var prNo = $('#prNo_val').val();
			var opNo = 0;
			var currentPage = arguments;
			
			
			
			
				$.ajax({
					url:"reviewModal.do",
					data:{product_detail:prNo,sort:sort,opNo:opNo,currentPage:currentPage},
					dataType:"json",
					/* async: false, */
					success:function(data){
						$("#reviewArea").text("");
						$("#reviewPaging").text("");
				for(var i=0; i< data.rvlist.length;i++){
	console.log(data.rvlist.length);					
					//리뷰 작성str
					const str = 
					   	 '<li class="reviews_index_gallery_review" id="'+data.rvlist[count].rvNo+'"onclick="reviewDetail(this.id)" '+
										'style="-webkit-box-shadow: 0 4px 6px -6px #222;'+
  '-moz-box-shadow: 0 4px 6px -6px #222;'+
  'box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">'+
										'<div class="photo_review_thumbnail js-link-fullscreen-popup"'+
											'data-url="'+data.rvlist[count].rvImage+'">'+
											'<div class="photo_review_thumbnail__thumbnail_container">'+
												'<ul>'+
													'<li class="photo_review_thumbnail__review_image_thumbnail">'+
														'<img class="js-review-image"'+
														'src="'+data.rvlist[count].rvImage+'"'+
														'style="width: 100%; height: 237px; opacity: 1; border-bottom: 2px solid lightgray;">'+
													'</li>'+
												'</ul>'+
												'<div class="photo_review_thumbnail__review_info">'+
													'<div'+
														'class="photo_review_thumbnail__media_count_indicator'+
            'photo_review_thumbnail__media_count_indicator--total_count_1">'+
														'<div'+
															'class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
													'</div>'+
												'</div>'+
											'</div>'+
											'<div style="border-radius: 2%; width: 90%; margin-left: 5%; height:93px;"'+
												'class="photo_review_thumbnail__review_author_info">'+
												'<div style="margin-top: 2%; border-radius: 2%; height:30px;"'+
													'class="photo_review_thumbnail__review_title js-translate-review-message">'+
													''+
													data.rvlist[count].rvInfo+'</div>'+
												'<br>'+
												'<div style="margin-top: -2%; color: gray;"'+
													'class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
													'<div class="photo_review_thumbnail__author_name"'+
														'style="float: left;">'+
														'<strong>'+data.namelist[count]+'</strong>'+
													'</div>'+
													'<div class="photo_review_thumbnail__created_at"'+
														'style="position: relative; left: 5%;">'+data.rvlist[count].rvDate+'</div>'+
													'<hr>'+
												'</div>'+
											'</div>'+
										'</div>'+
										'<div style="position: relative; top: -6%;"'+
											'class="reviews_index_gallery_review__review_product js-link-iframe "'+
											'data-url="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'">'+
											'<div'+
												'class="reviews_index_gallery_review__review_product_thumbnail">'+
												'<img class="" width="33"'+
													'height="33"'+
													'src="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'"'+
													'style="padding-right: 3%; opacity: 1; display:inline-block;">'+
											'</div>'+
											'<div class="reviews_index_gallery_review__review_product_info">'+
												'<div'+
													'class="reviews_index_gallery_review__product_info_title" style="display:inline-block; position:relative;bottom:48px;left:45px;">'+
													data.pdlist[0].prdtName+'</div>'+
												'<div'+
													'class="reviews_index_gallery_review__product_info_feedbacks">'+
													'<span class="reviews_index_gallery_review__reviews_count"'+
														'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">리뷰'+
														'<strong style="color:black;display:inline-block;">'+data.rp.reviewCount+'</strong></span> <span '+
														'class="reviews_index_gallery_review__display_score" '+
														'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">평점'+
														'<strong style="color: black;display:inline-block;"id="starArea'+count+'o">'+data.rvlist[count].rvPoint+'</strong>&nbsp;</span>'+
												'</div>'+
											'</div>'+
										'</div>'+
									'</li>';
				
									
					   	 
					   	 
					   	 //리뷰 추가
		$("#reviewArea").append(str); 
					   	 
		var star1 = '<i class="fa fa-fw fa-star"></i>'
		   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
		   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
		   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
		   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
		   	 if(data.rvlist[count].rvPoint==1){
		   	 $('#starArea'+count+'o').after(star1);
		   	 }else if(data.rvlist[count].rvPoint==2){
		   		 $('#starArea'+count+'o').after(star2);
		   	 }else if(data.rvlist[count].rvPoint==3){
		   		 $('#starArea'+count+'o').after(star3);
		   	 }else if(data.rvlist[count].rvPoint==4){
		   		 $('#starArea'+count+'o').after(star4);
		   	 }else if(data.rvlist[count].rvPoint==5){
		   		 $('#starArea'+count+'o').after(star5);
		   	 }
					   	 
					   	 
				count++;
				}
				
				
				var currentPage1 = '';
				var currentPage2 = '';
			   	 
			 	var rvPage='';
			 	
			   	var rvPage1='';
			   	
			   	 
			   	 if(data.mainPi.currentPage != 1){
	             
	             currentPage1 = data.mainPi.currentPage-1;
			   	 rvPage1= '<button onclick="review('+currentPage1+');">'+
	             '<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">'+
	             '</button> &nbsp;'
	             
			   	 }
	        
	        var rvPage2 = '';
	        for(var i =data.mainPi.startPage; i<=data.mainPi.endPage; i++){
	        
	        	if(i == data.mainPi.currentPage){
	        		
	        		 rvPage2 +='<button onclick="#" class="flex-c-m trans-0-4 active-pagination" '+
	                 'style="display:inline-block;width:20px;height:27px;margin:3px; border:1px solid gray; border-radius:3px;">'+i+'</button>';
	                 
	        	}else if(i != data.mainPi.currentPage){
	        		rvPage2 +='<button onclick="review('+i+');"'+
	                'style="display:inline-block; width:20px;height:27px;margin:3px;border:1px solid gray;border-radius:3px;" class="flex-c-m trans-0-4">'+
	                ''+i+'</button>';
	                
	        	}
					
	        }
console.log(rvPage2);
	          var rvPage3='';
	          
	          if(data.mainPi.currentPage != data.mainPi.maxPage){
	        

	        	  currentPage2 = data.mainPi.currentPage+1;
	          
	          rvPage3 = '<button onclick="review('+currentPage2+');">'+
	          '<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">'+
	          '</button>';
	          
	          }
			   	 
	          rvPage=rvPage1+rvPage2+rvPage3;
			   	 
			   	 $('#reviewPaging').append(rvPage);
				
				
				},error:function(){
						alert("review불러오기 실패데스네");
					}
				})
		
		}
		
		function review1(arguments){
			var count = 0;
	var sort = "like";
	var prNo = $('#prNo_val').val();
	var opNo = 0;
	var currentPage = arguments;
	
	
	
	
		$.ajax({
			url:"reviewModal.do",
			data:{product_detail:prNo,sort:sort,opNo:opNo,currentPage:currentPage},
			dataType:"json",
			/* async: false, */
			success:function(data){
				$("#reviewArea").text("");
				$("#reviewPaging").text("");
		for(var i=0; i< data.rvlist.length;i++){
console.log(data.rvlist.length);					
			//리뷰 작성str
			const str = 
			   	 '<li class="reviews_index_gallery_review" id="'+data.rvlist[count].rvNo+'" onclick="reviewDetail(this.id)" '+
								'style="-webkit-box-shadow: 0 4px 6px -6px #222;'+
'-moz-box-shadow: 0 4px 6px -6px #222;'+
'box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">'+
								'<div class="photo_review_thumbnail js-link-fullscreen-popup"'+
									'data-url="'+data.rvlist[count].rvImage+'">'+
									'<div class="photo_review_thumbnail__thumbnail_container">'+
										'<ul>'+
											'<li class="photo_review_thumbnail__review_image_thumbnail">'+
												'<img class="js-review-image"'+
												'src="'+data.rvlist[count].rvImage+'"'+
												'style="width: 100%; height: 237px; opacity: 1; border-bottom: 2px solid lightgray;">'+
											'</li>'+
										'</ul>'+
										'<div class="photo_review_thumbnail__review_info">'+
											'<div'+
												'class="photo_review_thumbnail__media_count_indicator'+
    'photo_review_thumbnail__media_count_indicator--total_count_1">'+
												'<div'+
													'class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
											'</div>'+
										'</div>'+
									'</div>'+
									'<div style="border-radius: 2%; width: 90%; margin-left: 5%; height:93px;"'+
										'class="photo_review_thumbnail__review_author_info">'+
										'<div style="margin-top: 2%; border-radius: 2%; height:30px;"'+
											'class="photo_review_thumbnail__review_title js-translate-review-message">'+
											''+
											data.rvlist[count].rvInfo+'</div>'+
										'<br>'+
										'<div style="margin-top: -2%; color: gray;"'+
											'class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
											'<div class="photo_review_thumbnail__author_name"'+
												'style="float: left;">'+
												'<strong>'+data.namelist[count]+'</strong>'+
											'</div>'+
											'<div class="photo_review_thumbnail__created_at"'+
												'style="position: relative; left: 5%;">'+data.rvlist[count].rvDate+'</div>'+
											'<hr>'+
										'</div>'+
									'</div>'+
								'</div>'+
								'<div style="position: relative; top: -6%;"'+
									'class="reviews_index_gallery_review__review_product js-link-iframe "'+
									'data-url="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'">'+
									'<div'+
										'class="reviews_index_gallery_review__review_product_thumbnail">'+
										'<img class="" width="33"'+
											'height="33"'+
											'src="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'"'+
											'style="padding-right: 3%; opacity: 1; display:inline-block;">'+
									'</div>'+
									'<div class="reviews_index_gallery_review__review_product_info">'+
										'<div'+
											'class="reviews_index_gallery_review__product_info_title" style="display:inline-block; position:relative;bottom:48px;left:45px;">'+
											data.pdlist[0].prdtName+'</div>'+
										'<div'+
											'class="reviews_index_gallery_review__product_info_feedbacks">'+
											'<span class="reviews_index_gallery_review__reviews_count"'+
												'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">리뷰'+
												'<strong style="color:black;display:inline-block;">'+data.rp.reviewCount+'</strong></span> <span '+
												'class="reviews_index_gallery_review__display_score" '+
												'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">평점'+
												'<strong style="color: black;display:inline-block;"id="starArea'+count+'o">'+data.rvlist[count].rvPoint+'</strong>&nbsp;</span>'+
										'</div>'+
									'</div>'+
								'</div>'+
							'</li>';
		
							
			   	 
			   	 
			   	 //리뷰 추가
$("#reviewArea").append(str); 
			   	 
var star1 = '<i class="fa fa-fw fa-star"></i>'
   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
   	 if(data.rvlist[count].rvPoint==1){
   	 $('#starArea'+count+'o').after(star1);
   	 }else if(data.rvlist[count].rvPoint==2){
   		 $('#starArea'+count+'o').after(star2);
   	 }else if(data.rvlist[count].rvPoint==3){
   		 $('#starArea'+count+'o').after(star3);
   	 }else if(data.rvlist[count].rvPoint==4){
   		 $('#starArea'+count+'o').after(star4);
   	 }else if(data.rvlist[count].rvPoint==5){
   		 $('#starArea'+count+'o').after(star5);
   	 }
			   	 
			   	 
		count++;
		}
		
		
		var currentPage1 = '';
		var currentPage2 = '';
	   	 
	 	var rvPage='';
	 	
	   	var rvPage1='';
	   	
	   	 
	   	 if(data.mainPi.currentPage != 1){
         
         currentPage1 = data.mainPi.currentPage-1;
	   	 rvPage1= '<button onclick="review('+currentPage1+');">'+
         '<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">'+
         '</button> &nbsp;'
         
	   	 }
    
    var rvPage2 = '';
    for(var i =data.mainPi.startPage; i<=data.mainPi.endPage; i++){
    
    	if(i == data.mainPi.currentPage){
    		
    		 rvPage2 +='<button onclick="#" class="flex-c-m trans-0-4 active-pagination" '+
             'style="display:inline-block;width:20px;height:27px;margin:3px; border:1px solid gray; border-radius:3px;">'+i+'</button>';
             
    	}else if(i != data.mainPi.currentPage){
    		rvPage2 +='<button onclick="review('+i+');"'+
            'style="display:inline-block; width:20px;height:27px;margin:3px;border:1px solid gray;border-radius:3px;" class="flex-c-m trans-0-4">'+
            ''+i+'</button>';
            
    	}
			
    }
console.log(rvPage2);
      var rvPage3='';
      
      if(data.mainPi.currentPage != data.mainPi.maxPage){
    

    	  currentPage2 = data.mainPi.currentPage+1;
      
      rvPage3 = '<button onclick="review('+currentPage2+');">'+
      '<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">'+
      '</button>';
      
      }
	   	 
      rvPage=rvPage1+rvPage2+rvPage3;
	   	 
	   	 $('#reviewPaging').append(rvPage);
		
		
		},error:function(){
				alert("review불러오기 실패데스네");
			}
		})

}
		
		function review2(arguments){
			var count = 0;
	var sort = "point";
	var prNo = $('#prNo_val').val();
	var opNo = 0;
	var currentPage = arguments;
	
	
	
	
		$.ajax({
			url:"reviewModal.do",
			data:{product_detail:prNo,sort:sort,opNo:opNo,currentPage:currentPage},
			dataType:"json",
			/* async: false, */
			success:function(data){
				$("#reviewArea").text("");
				$("#reviewPaging").text("");
		for(var i=0; i< data.rvlist.length;i++){
console.log(data.rvlist.length);					
			//리뷰 작성str
			const str = 
			   	 '<li class="reviews_index_gallery_review" id="'+data.rvlist[count].rvNo+'" onclick="reviewDetail(this.id)" '+
								'style="-webkit-box-shadow: 0 4px 6px -6px #222;'+
'-moz-box-shadow: 0 4px 6px -6px #222;'+
'box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">'+
								'<div class="photo_review_thumbnail js-link-fullscreen-popup"'+
									'data-url="'+data.rvlist[count].rvImage+'">'+
									'<div class="photo_review_thumbnail__thumbnail_container">'+
										'<ul>'+
											'<li class="photo_review_thumbnail__review_image_thumbnail">'+
												'<img class="js-review-image"'+
												'src="'+data.rvlist[count].rvImage+'"'+
												'style="width: 100%; height: 237px; opacity: 1; border-bottom: 2px solid lightgray;">'+
											'</li>'+
										'</ul>'+
										'<div class="photo_review_thumbnail__review_info">'+
											'<div'+
												'class="photo_review_thumbnail__media_count_indicator'+
    'photo_review_thumbnail__media_count_indicator--total_count_1">'+
												'<div'+
													'class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
											'</div>'+
										'</div>'+
									'</div>'+
									'<div style="border-radius: 2%; width: 90%; margin-left: 5%; height:93px;"'+
										'class="photo_review_thumbnail__review_author_info">'+
										'<div style="margin-top: 2%; border-radius: 2%; height:30px;"'+
											'class="photo_review_thumbnail__review_title js-translate-review-message">'+
											''+
											data.rvlist[count].rvInfo+'</div>'+
										'<br>'+
										'<div style="margin-top: -2%; color: gray;"'+
											'class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
											'<div class="photo_review_thumbnail__author_name"'+
												'style="float: left;">'+
												'<strong>'+data.namelist[count]+'</strong>'+
											'</div>'+
											'<div class="photo_review_thumbnail__created_at"'+
												'style="position: relative; left: 5%;">'+data.rvlist[count].rvDate+'</div>'+
											'<hr>'+
										'</div>'+
									'</div>'+
								'</div>'+
								'<div style="position: relative; top: -6%;"'+
									'class="reviews_index_gallery_review__review_product js-link-iframe "'+
									'data-url="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'">'+
									'<div'+
										'class="reviews_index_gallery_review__review_product_thumbnail">'+
										'<img class="" width="33"'+
											'height="33"'+
											'src="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'"'+
											'style="padding-right: 3%; opacity: 1; display:inline-block;">'+
									'</div>'+
									'<div class="reviews_index_gallery_review__review_product_info">'+
										'<div'+
											'class="reviews_index_gallery_review__product_info_title" style="display:inline-block; position:relative;bottom:48px;left:45px;">'+
											data.pdlist[0].prdtName+'</div>'+
										'<div'+
											'class="reviews_index_gallery_review__product_info_feedbacks">'+
											'<span class="reviews_index_gallery_review__reviews_count"'+
												'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">리뷰'+
												'<strong style="color:black;display:inline-block;">'+data.rp.reviewCount+'</strong></span> <span '+
												'class="reviews_index_gallery_review__display_score" '+
												'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">평점'+
												'<strong style="color: black;display:inline-block;"id="starArea'+count+'o">'+data.rvlist[count].rvPoint+'</strong>&nbsp;</span>'+
										'</div>'+
									'</div>'+
								'</div>'+
							'</li>';
		
							
			   	 
			   	 
			   	 //리뷰 추가
$("#reviewArea").append(str); 
			   	 
var star1 = '<i class="fa fa-fw fa-star"></i>'
   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
   	 if(data.rvlist[count].rvPoint==1){
   	 $('#starArea'+count+'o').after(star1);
   	 }else if(data.rvlist[count].rvPoint==2){
   		 $('#starArea'+count+'o').after(star2);
   	 }else if(data.rvlist[count].rvPoint==3){
   		 $('#starArea'+count+'o').after(star3);
   	 }else if(data.rvlist[count].rvPoint==4){
   		 $('#starArea'+count+'o').after(star4);
   	 }else if(data.rvlist[count].rvPoint==5){
   		 $('#starArea'+count+'o').after(star5);
   	 }
			   	 
			   	 
		count++;
		}
		
		
		var currentPage1 = '';
		var currentPage2 = '';
	   	 
	 	var rvPage='';
	 	
	   	var rvPage1='';
	   	
	   	 
	   	 if(data.mainPi.currentPage != 1){
         
         currentPage1 = data.mainPi.currentPage-1;
	   	 rvPage1= '<button onclick="review('+currentPage1+');">'+
         '<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">'+
         '</button> &nbsp;'
         
	   	 }
    
    var rvPage2 = '';
    for(var i =data.mainPi.startPage; i<=data.mainPi.endPage; i++){
    
    	if(i == data.mainPi.currentPage){
    		
    		 rvPage2 +='<button onclick="#" class="flex-c-m trans-0-4 active-pagination" '+
             'style="display:inline-block;width:20px;height:27px;margin:3px; border:1px solid gray; border-radius:3px;">'+i+'</button>';
             
    	}else if(i != data.mainPi.currentPage){
    		rvPage2 +='<button onclick="review('+i+');"'+
            'style="display:inline-block; width:20px;height:27px;margin:3px;border:1px solid gray;border-radius:3px;" class="flex-c-m trans-0-4">'+
            ''+i+'</button>';
            
    	}
			
    }
console.log(rvPage2);
      var rvPage3='';
      
      if(data.mainPi.currentPage != data.mainPi.maxPage){
    

    	  currentPage2 = data.mainPi.currentPage+1;
      
      rvPage3 = '<button onclick="review('+currentPage2+');">'+
      '<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">'+
      '</button>';
      
      }
	   	 
      rvPage=rvPage1+rvPage2+rvPage3;
	   	 
	   	 $('#reviewPaging').append(rvPage);
		
		
		},error:function(){
				alert("review불러오기 실패데스네");
			}
		})

}
		
		
		

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
		
	</script>
	<!-- 디테일 사진 시작부분 -->
	<style>
.detail_pic {
	position: relative;
	left: 8.4%;
}
</style>
<c:forEach var="pddd" items="${pdlist }">
	<img class="detail_pic"
		src="${pddd.prdtDetailImagePath }${pddd.prdtDetailImage }"
		alt="IMG-PRODUCT" width="1000" height="auto">
	</c:forEach>
<!-- 디테일 사진 부분 끝-->
<div id="washing_tip"></div>
<br><br>
<!-- 워싱팁 사진-->
<img class="detail_pic"
		src="/ot/resources/images/oT/common/washing_tip1.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
<img class="detail_pic"
		src="/ot/resources/images/oT/common/washing_tip.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
<!-- 워싱팁 끝-->
<div id="sizeInfo"></div>
	<!-- size info 시작 -->
	<style>
@media ( min-width : 640px) .fit_product_basic {
	position
	:
	 
	relative
	;
	
    
	height
	:
	 
	100%;
	overflow
	:
	 
	hidden
	;
	

}

.text_content--small {
	font-weight: normal;
	font-size: 12px;
	line-height: 1.29;
	color: #191919;
}
</style>
	<br>
	<br>
	<div  class="fit_product_basic text_content--small"
		style="font-size: 15px; text-align: center;">
		<div class="fit_product_basic__left" >



			<div class="fit_product_basic__size">
				<div class="fit_product_basic__size_title" >SIZE INFO</div>
				<div class="fit_product_basic__size_tables">
					<br>


					<table
						class="fit_product_basic__size_table
                fit_product_basic__size_table--free-size
                "
						border="0" cellspacing="0" cellpadding="0"
						style="border-top: 1px solid gray; border-bottom: 1px solid gray; font-size: 15px; width: 800px; margin-left:17%;">
						<thead>
							<tr class="fit_product_basic__size_table_title_row"
								style="background: ivory;">


								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%; border-right: 1px solid gray;">어깨단면<br>
								</td>

								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%; border-right: 1px solid gray;">가슴단면<br>
								</td>

								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%; border-right: 1px solid gray;">암홀단면<br>
								</td>

								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%; border-right: 1px solid gray;">밑단단면<br>
								</td>

								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%;">총장 <br>
								</td>

								<td style="width: 100%">&nbsp;</td>
							</tr>
						</thead>
						<tbody style="">

							<tr class="fit_product_basic__size_table_content_row">


								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%; border-right: 1px solid gray;">28</td>

								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%; border-right: 1px solid gray;">34.5</td>

								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%; border-right: 1px solid gray;">19.5</td>

								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%; border-right: 1px solid gray;">32</td>

								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%;">39.5</td>

								<td style="width: 100%">&nbsp;</td>
							</tr>

						</tbody>
					</table>

				</div>
				<div class="fit_product_basic__size_unit" style="margin-left: 63%;"><small>단위:
					cm</small></div>
				<br>
				<br>
				<br>
				<div class="fit_product_basic__size_description">
					사이즈 측정방법에 따라 1~3cm정도의 오차가 있을 수 있습니다.<br>블랙업의 모든 제품의 첫 세탁은
					드라이크리닝을 권장드립니다.<br>세탁 부주의로 인한 제품손상은 교환/환불 사유가 될 수 없습니다.<br>
					<br>모니터 해상도 또는 조명에 따라 실제 상품과 색상차이가 있을 수 있으니<br>구매전
					디테일페이지의 색상을 반드시 참고바랍니다.<br>
					<br>컬러별 제작 과정, 시기에 따라 같은상품이더라도<br>사이즈,색감 차이가 다소 있을 수 있으며
					이는 불량사유가 되지 않습니다.<br>
					<br>짙은 컬러의 상품은 소재 특성상 땀이나 물에 의한 이염 가능성이 있습니다.<br>밝은 색상의
					속옷이나 가방 기타 아이템과의 마찰에 주의하세요.
				</div>
			</div>


		</div>
		<div class="fit_product_basic__right">

			<div class="fit_product_basic__info">
				<div class="fit_product_basic__info_title">
					<br> ㅡ<br> <b> PRODUCT INFO </b>
				</div>
				<div class="fit_product_basic__info_content">
					<br>

					<div class="fit_product_basic__info_item">
						<span class="fit_product_basic__info_key">옵션 컬러</span> : <span
							class="fit_product_basic__info_value">화이트/옐로우/라임/블루/퍼플/라이트카키/딥카키/블랙/스카이블루/베이지</span>
					</div>

					<div class="fit_product_basic__info_item">
						<span class="fit_product_basic__info_key">사이즈</span> : <span
							class="fit_product_basic__info_value">One Size</span>
					</div>

					<div class="fit_product_basic__info_item">
						<span class="fit_product_basic__info_key">모델 착용</span> : <span
							class="fit_product_basic__info_value">화이트(나래)/그린(나래)/블랙(나래)/베이지(나래)</span>
					</div>

					<div class="fit_product_basic__info_item">
						<span class="fit_product_basic__info_key">소재</span> : <span
							class="fit_product_basic__info_value">코튼 95 스판 5</span>
					</div>

				</div>
			</div>
			<br>


			<div class="fit_product_basic__etc">
				<div class="fit_product_basic__etc_description">
					ㅡ<br>
					<b>MD COMMENT</b><br>
					<br>다양한 컬러로 구성된 블랙업 자체 제작 나시입니다. <br>기본적인 심플한 라운드 디자인으로<br>베이직한
					무드를 연출해드리며<br>어떤 룩에도 이지하게 매치해보실 수 있는 <br>활용적인 아이템이에요.<br>바디에
					슬림 하게 피트되어 라인을 더욱 돋보이게 해드리며 <br>착용 시 우수한 텐션감으로 편안하고<br>자유로운
					활동을 도와드드립니다. <br>시즌에 알맞게 단품으로 매치해보셔도 좋으며 <br>이너탑으로도 멋스러운
					스타일링을 해보시기 좋아요. <br>다채로운 컬러들로 구성되어 <br>선택의 폭을 넓게 느끼실 수 있어
					소장을 추천드립니다. <br>모델컷과 상세 사이즈 참고 부탁드려요.<br>
					<br>ㅡ<br>
					<b>MODEL</b> <br>
					<br>나래 : 167cm 55size S(26)<br>
					<br>ㅡ<br>
					<b>PRODUCTION</b><br>
					<br>제조자 : 블랙업 협력업체<br>제조년월 : 2019년 03월<br>상품정보고시항목 :
					관련법에 의거<br>품질보증기준 : 관련법에 의거하여 품질보증기준을 준수함<br>MD/CNKJA/SB
				</div>
			</div>

		</div>
	</div>
	<!-- size info 끝 -->
	<div id="qna"></div>
<br><br><br>


<!-- Q&A -->
<div id="container" >
        <div id="contents" style="margin-top:11.5%;">
			<div class="mypage_top_outer">
			 
			</div>

			<div class="titleArea">
    			<h2>문의</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
			<!--
        		$login_page = /member/login.html
       		    $count = 10
  			-->
				<table border="1" summary>
					<caption style="display:none;">관심상품 목록</caption>
       				<colgroup>
						<col style="width:6%;">
						<col style="width:85%">
						<col style="width:auto">
						<col style="width:17%">



					</colgroup>
					<thead>
						<tr>
			                <th scope="col">NO</th>
			                <th scope="col">SUBJECT</th>
			                <th scope="col">WRITER</th>
			                <th scope="col">DATE</th>
            			</tr>
          			</thead>

					<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
					
					<tr style="background-color:#F9F9F9; color:#555555;" class="xans-record-">
					<td style="font-weight :600;"> 공지</td>
                    <td class="displaynone"></td>
                    <td class="subject left txtBreak">
                        <strong> <a href="/article/배송문의/3001/279655/" style="color:#555555; font-size:12px;">▶ 배송 안내입니다.</a></span></strong>
                    </td>
                    <td>관리자</td>
                    <td class=""><span class="txtNum">2020-03-09</span></td>
                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
                </tr>
		</tbody>	
				<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
          		<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
          			
          			<c:forEach var="b" items="${ blist }">
          				<tr class="xans-record-">
							<td>
								<!-- no 공지번호 들어갈 곳 -->
									<span id="idMsg44" name="QnaNum">${b.qna_no }</span>
									<input type="hidden" value="${b.qna_no }">
							</td>
                        <!-- 상품명 이름 들어갈 곳 -->
                         <td class="thumb">
                        <!--     <span id="prd_name">러트 세미 부츠컷 슬랙스</span> -->
                           
                            <div class="ppro">
                            	<c:if test="${b.qna_secure=='T'}">
                            <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif" alt="비밀글" class="ec-common-rwd-image"> 
                            		 	<c:if test="${b.qna_chk  == 'N'}">
                                 <a id="idMsg10" style="color:#555555;"onclick="prdtDetail(this)">
                                 [답변 전]</a> 
                                 <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                             		</c:if>
                             			<c:if test="${b.qna_chk  == 'Y'}">
                                 <a id="idMsg10" style="color:#555555;"onclick="prdtDetail(this)">
                                 [답변 완료]</a> 
                                 <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                             		</c:if>
                             	</c:if>
                             	
                             		<c:if test="${b.qna_secure=='F'}">
                            		 	<c:if test="${b.qna_chk  == 'N'}">
                                 <a id="idMsg10" style="color:#555555;"onclick="prdtDetail2(this)">
                                 [답변 전]</a> 
                                 <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                             		</c:if>
                             			<c:if test="${b.qna_chk  == 'Y'}">
                                 <a id="idMsg10" style="color:#555555;"onclick="prdtDetail2(this)">
                                 [답변 완료]</a> 
                                 <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                             		</c:if>
								</c:if>                               
                            </div>
                         </td>
                           <td class="left">
                               <!-- writer 내용들어갈곳 -->
                        <span id="idMsg11">${b.qna_writer }</span>
                            <td class="price center"><span id="idMsg4">${b.qna_date }</span></td>
                            <td class="button">

                            </td>
                          </tr>
                          </c:forEach>
               </tbody>
					<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
          			<!-- 	<tr class="xans-record-">
							<td>
								no 공지번호 들어갈 곳
									<span id="idMsg4">141262</span>
							</td>
               				<td class="subject left txtBreak">
                        &nbsp;&nbsp;&nbsp;<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_re.gif" alt="답변" class="ec-common-rwd-image"> 
                        <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif" alt="비밀글" class="ec-common-rwd-image"> 
                        <a id="idMsg10" style="color:#555555;" href="delivery_board_reply.do">
                        답변완료 :)</a> <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                    </td>
               				
       						</td>
               				<td class="left">
                   				writer 내용들어갈곳
								<span id="idMsg11">홍길동</span>
                				<td class="price center"><span id="idMsg4">2020-03-19</span></td>
				                <td class="button">
				                  
				                </td>
           					</tr> -->
					</tbody>
					
        		</table>
        		
		
			</div>
				
        <!-- 레어어 팝업  --> 
		<a href="#layer2" id="submitBtn" class="hov1 s-text1 trans-0-4 yg_btn_145">
        <span style="position: relative;top: -2px;">write</span></a>
    			
			
			
			<div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate1">
            <!-- <a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="first"> -->


<c:if test="${ mainPi2.currentPage ne 1 }">
                  <c:url var="before" value="product_detail.do">
                  <c:param name="product_detail" value="<%=prdtNo %>"/>
                  <c:param name="currentPage" value="${mainPi2.currentPage -1 }"/>
                  </c:url>
                                            
                  <a href="http://localhost:8888/ot/${before}#qna">
                  <img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
                  </a> &nbsp;
             </c:if>

               <c:forEach var="p" begin="${ mainPi2.startPage }" end="${ mainPi2.endPage }">
                     <c:if test="${ p eq mainPi2.currentPage }">
                         <a href="#" class="flex-c-m trans-0-4 active-pagination" 
                         style="display:inline-block;width:20px;height:27px;margin:3px; border:1px solid gray; border-radius:3px;">${ p }</a>
                     </c:if>
					
                     <c:if test="${ p ne mainPi2.currentPage }">
                     <a href="http://localhost:8888/ot/product_detail.do?product_detail=<%=prdtNo %>&currentPage=${p }#qna" 
                     style="display:inline-block; width:20px;height:27px;margin:3px;border:1px solid gray;border-radius:3px;" class="flex-c-m trans-0-4">
                     ${ p }</a>
                  </c:if>
                  
                  
               </c:forEach>

				 <c:if test="${ mainPi2.currentPage ne mainPi2.maxPage }">
                    <c:url var="after" value="product_detail.do">
                    	<c:param name="product_detail" value="<%=prdtNo %>"/>
                     <c:param name="currentPage" value="${mainPi2.currentPage +1 }"/>
                    </c:url>
                    <a href="http://localhost:8888/ot/${after}#qna">
               <img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
               </a>
                   </c:if>  
                  
                  



         </div>

        </div>
		<hr class="layout">
	</div>
	
	  <input id="q_no" type="hidden" value="${b.qna_no}">
<!-- 레이어 팝업 -->
  <div class="dim-layer">
   					 <div class="dimBg"></div>
    					<div id="layer2" class="pop-layer">
     					   <div class="pop-container">
        					    <div class="pop-conts" style="text-align: center">
          			      <!--content //-->
              		  <p class="ctxt mb20" id="check_ment"><br></p>

              		  <div class="btn-r">
                    <a href="#" class="btn-layerClose">Close</a>
                	</div>
                <!--// content-->
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="memId" value="${loginMember.memId }">
	
<!-- Q&A -->


	<!-- Relate Product -->
	<section class="relateproduct bgwhite p-t-45 p-b-138" style="position:relative;top:1090px;">
	
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">With Item</h3>
			</div>
<c:url var="product_detail" value="product_detail.do">
	<c:param name="product_detail" value="p1" />  
</c:url>
			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">

<c:forEach var="p" items="${plist }">
						<!-- 기본프로덕트블록 샘플 -->
					<div class="item-slick2 p-l-15 p-r-15">
						<div class="block2">
								<c:if test="${61999 gt p.prdtNo and p.prdtNo gt 60000}">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
								
									<img src="${p.prdtImagePath }${p.prdtImage }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
									

										<div id="${p.prdtNo }a" class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width:60%;margin-left:20%" onclick="wish('${p.prdtNo }');">
												<small>관심상품 담기</small>
											</button>
										</div>
									</div>
								</div></c:if>
									<c:if test="${p.prdtNo gt 62000}">
									<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
									
									<img src="${p.prdtImagePath }${p.prdtImage }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										

										<div id="${p.prdtNo }a" class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width:60%;margin-left:20%" onclick="wish('${p.prdtNo }');">
												<small>관심상품 담기</small>
											</button>
										</div>
									</div>
								</div>
									</c:if>
								
								
								<c:if test="${p.prdtNo lt 60000}">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
								
									<img src="${p.prdtImagePath }${p.prdtImage }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										

										<div id="${p.prdtNo }a" class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width:60%;margin-left:20%" onclick="wish('${p.prdtNo }');">
												<small>관심상품 담기</small>
											</button>
										</div>
									</div>
								</div>
								</c:if>
								

								<div class="block2-txt p-t-20">
									<span class="block2-price m-text6 p-r-5" >
								<c:forEach var="po" items="${ polist }">

									<c:if test="${ p.prdtNo eq po.prdtNo }">

										<c:forEach var="pc" items="${ pclist }">

										<c:if test="${ po.optColor eq pc.pcName }">
										<div style="width:14px;height:14px;background:${pc.pcRgb};display:inline-block;border:1px solid gray;margin-left:0.5px;"></div>
										</c:if>

										</c:forEach>

									</c:if>

								</c:forEach>
									</span>

									<br>
									
<c:url var="product_detail" value="product_detail.do">
	<c:param name="product_detail" value="${p.prdtNo }" />
</c:url>
									<a href="${product_detail }" id="${p.prdtNo }"class="block2-name dis-block s-text3 p-b-5"style="font-size:12px">
										${p.prdtName }

									</a>
									

									<span class="block2-price m-text6 p-r-5">
									<c:if test="${p.prdtSale ne 0 }">
	<small><font class="format-money" style="text-decoration:line-through">${ p.prdtPrice}</font>-><font class="format-money">${ p.prdtPrice-((p.prdtPrice/100)*p.prdtSale)}</font> won</small>&nbsp;&nbsp;
										</c:if>
										<c:if test="${p.prdtSale eq 0 }">
										<small><font class="format-money">${ p.prdtPrice}</font> won</small>&nbsp;&nbsp;
										</c:if>
										
										<font style="font-size:9px;color:gray">리뷰 : ${p.prdtReview}</font>
									</span>
								</div>
							</div>
					</div>

				</c:forEach>	
					
				</div>
			
</div>

</section>




	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>

<div style=" width: 160%; margin-left:-30%;position:relative;top:1090px;">
<!-- Footer -->
<jsp:include page="footer.jsp"/>
</div>


	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect2')
		});
		
		
	</script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/sweetalert/sweetalert.min.js"></script>
	<script type="text/javascript">
	function cartcart(){
	var length = $('.selectItem').length;
	var sizeArr = new Array();
	var colorArr = new Array();
	var count = 1;
	var error = 0;
	
	for(var i=0;i<length;i++){
		sizeArr[i] = $('#select'+count+'_1').val();
		colorArr[i] = $('#select'+count+'_2').val();
		count++;
	}
	for(var i=0;i<length;i++){
		if(sizeArr[i] == "--------"||colorArr[i] == "--------"){
			error++;
		}
	}
	
	
	
	
	var prdtNo = $('#prNo_val').val();
	var prdtPrice = Math.floor($('#num-price').val());
	var nameProduct = $('.product-detail-name').html();
			
	if("${loginMember.memId}"==""){
				alert('로그인후 이용해주세요');
				location.href="loginView.do";
				
			}else if(error != 0){
				alert('옵션을 선택하세요.');
			}else{
				
				$.ajax({
					url:"cartcartInsert.do",
					traditional : true,
					data :{'colorArr':colorArr,'sizeArr':sizeArr,'prdtNo':prdtNo,'prdtPrice':prdtPrice},
					success:function(data){
						if(data =="ok"){
							swal(nameProduct, "장바구니에 등록되었습니다 !", "success");
							count=1;
						}else if(data == "fail"){
							swal("다시 시도해주세요.");
						}
					}
				});
				
			
			}
		
	}
	
		function buynow(){
			var length = $('.selectItem').length;
			var sizeArr = new Array();
			var colorArr = new Array();
			var count = 1;
			var error = 0;
			
			for(var i=0;i<length;i++){
				sizeArr[i] = $('#select'+count+'_1').val();
				colorArr[i] = $('#select'+count+'_2').val();
				count++;
			}
			for(var i=0;i<length;i++){
				if(sizeArr[i] == "--------"||colorArr[i] == "--------"){
					error++;
				}
			}
			
			
			
			
			var prdtNo = $('#prNo_val').val();
			var prdtPrice = Math.floor($('#num-price').val());
			var nameProduct = $('.product-detail-name').html();
					
			if("${loginMember.memId}"==""){
						alert('로그인후 이용해주세요');
						location.href="loginView.do";
						
					}else if(error != 0){
						alert('옵션을 선택하세요.');
					}else{
						
						$.ajax({
							url:"cartcartInsert.do",
							traditional : true,
							data :{'colorArr':colorArr,'sizeArr':sizeArr,'prdtNo':prdtNo,'prdtPrice':prdtPrice},
							success:function(data){
								if(data =="ok"){
									location.href="cartbutton.do";
									count=1;
								}else if(data == "fail"){
									swal("다시 시도해주세요.");
								}
							}
						});
						
					
					}
				
			}
	</script>
	<script>
 function prdtDetail(en){
	 var prdtNo = $('#prNo_val').val();
		var q_no = $(en).parents('tr').children('td').eq(0).children('input').val();	 

		 location.href="delivery_board_detailView1.do?qna_no="+q_no+"&prdtNo="+prdtNo; 
		
	 }
	 
	 function prdtDetail2(en){
		 var prdtNo = $('#prNo_val').val();
			var q_no = $(en).parents('tr').children('td').eq(0).children('input').val();	 

			 location.href='delivery_board_detail1.do?qna_no='+q_no;
			
		 }
	 
	 function pbSearch() {
		 var search_key = $('#search_key').val();
		 var search_date = $('#search_date').val();
		 var search = $('#search').val();
		 
		 location.href="de_search.do?search_key="+search_key+"&search="+search+"&search_date="+search_date;
	 }
	 
	 $('#submitBtn').click(function(e){
		 e.stopPropagation();
		 var memId = $('#memId').val();	
		 var prdtNo = $('#prNo_val').val();
		 
		 if("${loginMember.memId}"==""){
				alert('로그인후 이용해주세요');
				location.href="loginView.do";
		 }else{
			 location.href="delivery_board_write1.do?prdtNo="+prdtNo;
		 }
		 
	 })
	 
	 function layer_popup(el){

     var $el = $(el);        //레이어의 id를 $el 변수에 저장
     var isDim = $el.prev().hasClass('dimBg');   //dimmed 레이어를 감지하기 위한 boolean 변수

     isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

     var $elWidth = ~~($el.outerWidth()),
         $elHeight = ~~($el.outerHeight()),
         docWidth = $(document).width(),
         docHeight = $(document).height();

     // 화면의 중앙에 레이어를 띄운다.
     if ($elHeight < docHeight || $elWidth < docWidth) {
         $el.css({
             marginTop: -$elHeight /2,
             marginLeft: -$elWidth/2
         })
     } else {
         $el.css({top: 0, left: 0});
     }

     $el.find('a.btn-layerClose').click(function(){
         isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
         return false;
     });

     $('.layer .dimBg').click(function(){
         $('.dim-layer').fadeOut();
         return false;
     });

 }
 </script>
	

	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	
	
	
	<!-- 키 정렬  스크립트 -->
	<script>
	  function checkboxSearch(arguments) {
			var optionHeightArr=document.getElementsByName('option_3');
			var prNo = $('#prNo_val').val();
			var sort = "height";
			var opNo = 0;
			var currentPage = arguments;
			  var count = 0;
			for(var i=0; i<optionHeightArr.length;i++) {
				if(optionHeightArr[i].checked==true){
					opNo = optionHeightArr[i].value;
				}
			}
			console.log(opNo);
			
		
			
			$.ajax({
				url : "reviewModal.do",
				data : {product_detail:prNo,sort:sort,opNo:opNo,currentPage:currentPage},
				dataType:"json",
				success : function(data) {$("#reviewArea").text("");
				$("#reviewPaging").text("");
				for(var i=0; i< data.rvlist.length;i++){
									//리뷰 작성str
									const str = 
									   	 '<li class="reviews_index_gallery_review" id="'+data.rvlist[count].rvNo+'" onclick="reviewDetail(this.id)" '+
														'style="-webkit-box-shadow: 0 4px 6px -6px #222;'+
				  '-moz-box-shadow: 0 4px 6px -6px #222;'+
				  'box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">'+
														'<div class="photo_review_thumbnail js-link-fullscreen-popup"'+
															'data-url="'+data.rvlist[count].rvImage+'">'+
															'<div class="photo_review_thumbnail__thumbnail_container">'+
																'<ul>'+
																	'<li class="photo_review_thumbnail__review_image_thumbnail">'+
																		'<img class="js-review-image"'+
																		'src="'+data.rvlist[count].rvImage+'"'+
																		'style="width: 100%; height: 237px; opacity: 1; border-bottom: 2px solid lightgray;">'+
																	'</li>'+
																'</ul>'+
																'<div class="photo_review_thumbnail__review_info">'+
																	'<div'+
																		'class="photo_review_thumbnail__media_count_indicator'+
				            'photo_review_thumbnail__media_count_indicator--total_count_1">'+
																		'<div'+
																			'class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
																	'</div>'+
																'</div>'+
															'</div>'+
															'<div style="border-radius: 2%; width: 90%; margin-left: 5%; height:93px;"'+
																'class="photo_review_thumbnail__review_author_info">'+
																'<div style="margin-top: 2%; border-radius: 2%; height:30px;"'+
																	'class="photo_review_thumbnail__review_title js-translate-review-message">'+
																	''+
																	data.rvlist[count].rvInfo+'</div>'+
																'<br>'+
																'<div style="margin-top: -2%; color: gray;"'+
																	'class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
																	'<div class="photo_review_thumbnail__author_name"'+
																		'style="float: left;">'+
																		'<strong>'+data.namelist[count]+'</strong>'+
																	'</div>'+
																	'<div class="photo_review_thumbnail__created_at"'+
																		'style="position: relative; left: 5%;">'+data.rvlist[count].rvDate+'</div>'+
																	'<hr>'+
																'</div>'+
															'</div>'+
														'</div>'+
														'<div style="position: relative; top: -6%;"'+
															'class="reviews_index_gallery_review__review_product js-link-iframe "'+
															'data-url="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'">'+
															'<div'+
																'class="reviews_index_gallery_review__review_product_thumbnail">'+
																'<img class="" width="33"'+
																	'height="33"'+
																	'src="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'"'+
																	'style="padding-right: 3%; opacity: 1; display:inline-block;">'+
															'</div>'+
															'<div class="reviews_index_gallery_review__review_product_info">'+
																'<div'+
																	'class="reviews_index_gallery_review__product_info_title" style="display:inline-block; position:relative;bottom:48px;left:45px;">'+
																	data.pdlist[0].prdtName+'</div>'+
																'<div'+
																	'class="reviews_index_gallery_review__product_info_feedbacks">'+
																	'<span class="reviews_index_gallery_review__reviews_count"'+
																		'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">리뷰'+
																		'<strong style="color:black;display:inline-block;">'+data.rp.reviewCount+'</strong></span> <span '+
																		'class="reviews_index_gallery_review__display_score" '+
																		'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">평점'+
																		'<strong style="color: black;display:inline-block;"id="starArea'+count+'o">'+data.rvlist[count].rvPoint+'</strong>&nbsp;</span>'+
																'</div>'+
															'</div>'+
														'</div>'+
													'</li>';
								
													
									   	 
									   	 
									   	 //리뷰 추가
						$("#reviewArea").append(str); 
									   	 
						var star1 = '<i class="fa fa-fw fa-star"></i>'
						   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 if(data.rvlist[count].rvPoint==1){
						   	 $('#starArea'+count+'o').after(star1);
						   	 }else if(data.rvlist[count].rvPoint==2){
						   		 $('#starArea'+count+'o').after(star2);
						   	 }else if(data.rvlist[count].rvPoint==3){
						   		 $('#starArea'+count+'o').after(star3);
						   	 }else if(data.rvlist[count].rvPoint==4){
						   		 $('#starArea'+count+'o').after(star4);
						   	 }else if(data.rvlist[count].rvPoint==5){
						   		 $('#starArea'+count+'o').after(star5);
						   	 }
									   	 
									   	 
								count++;
								}
				
				
				var currentPage1 = '';
				var currentPage2 = '';
			   	 
			 	var rvPage='';
			 	
			   	var rvPage1='';
			   	
			   	 
			   	 if(data.mainPi.currentPage != 1){
	             
	             currentPage1 = data.mainPi.currentPage-1;
			   	 rvPage1= '<button onclick="checkboxSearch('+currentPage1+');">'+
	             '<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">'+
	             '</button> &nbsp;'
	             
			   	 }
	        
	        var rvPage2 = '';
	        for(var i =data.mainPi.startPage; i<=data.mainPi.endPage; i++){
	        
	        	if(i == data.mainPi.currentPage){
	        		
	        		 rvPage2 +='<button onclick="#" class="flex-c-m trans-0-4 active-pagination" '+
	                 'style="display:inline-block;width:20px;height:27px;margin:3px; border:1px solid gray; border-radius:3px;">'+i+'</button>';
	                 
	        	}else if(i != data.mainPi.currentPage){
	        		rvPage2 +='<button onclick="checkboxSearch('+i+');"'+
	                'style="display:inline-block; width:20px;height:27px;margin:3px;border:1px solid gray;border-radius:3px;" class="flex-c-m trans-0-4">'+
	                ''+i+'</button>';
	                
	        	}
					
	        }
console.log(rvPage2);
	          var rvPage3='';
	          
	          if(data.mainPi.currentPage != data.mainPi.maxPage){
	        

	        	  currentPage2 = data.mainPi.currentPage+1;
	          
	          rvPage3 = '<button onclick="checkboxSearch('+currentPage2+');">'+
	          '<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">'+
	          '</button>';
	          
	          }
			   	 
	          rvPage=rvPage1+rvPage2+rvPage3;
			   	 
			   	 $('#reviewPaging').append(rvPage);
				
				
				},error:function() {
							alert("에러임에러임");
					}
		});
			
	  }
			
			
	  
	  
	
	  </script>
	  
	  <script>
	  <!--몸무게 정렬 스크립트-->
	  function checkboxSearch2(arguments) {
		  var count = 0;
			var optionWeightArr = document.getElementsByName('option_4');
			var prNo = $('#prNo_val').val();
			var sort = "weight";
			var opNo = 0;
			var currentPage = arguments;
			for(var i=0; i<optionWeightArr.length;i++) {
				if(optionWeightArr[i].checked==true){
					opNo = optionWeightArr[i].value;
				}
			}
			
			console.log(opNo);
			
			$.ajax({
				url : "reviewModal.do",
				data : {product_detail:prNo,sort:sort,opNo:opNo,currentPage:currentPage},
				dataType:"json",
				success : function(data) {$("#reviewArea").text("");
				$("#reviewPaging").text("");
				for(var i=0; i< data.rvlist.length;i++){
					console.log(data.rvlist.length);					
									//리뷰 작성str
									const str = 
									   	 '<li class="reviews_index_gallery_review" id="'+data.rvlist[count].rvNo+'" onclick="reviewDetail(this.id)" '+
														'style="-webkit-box-shadow: 0 4px 6px -6px #222;'+
				  '-moz-box-shadow: 0 4px 6px -6px #222;'+
				  'box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">'+
														'<div class="photo_review_thumbnail js-link-fullscreen-popup"'+
															'data-url="'+data.rvlist[count].rvImage+'">'+
															'<div class="photo_review_thumbnail__thumbnail_container">'+
																'<ul>'+
																	'<li class="photo_review_thumbnail__review_image_thumbnail">'+
																		'<img class="js-review-image"'+
																		'src="'+data.rvlist[count].rvImage+'"'+
																		'style="width: 100%; height: 237px; opacity: 1; border-bottom: 2px solid lightgray;">'+
																	'</li>'+
																'</ul>'+
																'<div class="photo_review_thumbnail__review_info">'+
																	'<div'+
																		'class="photo_review_thumbnail__media_count_indicator'+
				            'photo_review_thumbnail__media_count_indicator--total_count_1">'+
																		'<div'+
																			'class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
																	'</div>'+
																'</div>'+
															'</div>'+
															'<div style="border-radius: 2%; width: 90%; margin-left: 5%; height:93px;"'+
																'class="photo_review_thumbnail__review_author_info">'+
																'<div style="margin-top: 2%; border-radius: 2%; height:30px;"'+
																	'class="photo_review_thumbnail__review_title js-translate-review-message">'+
																	''+
																	data.rvlist[count].rvInfo+'</div>'+
																'<br>'+
																'<div style="margin-top: -2%; color: gray;"'+
																	'class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
																	'<div class="photo_review_thumbnail__author_name"'+
																		'style="float: left;">'+
																		'<strong>'+data.namelist[count]+'</strong>'+
																	'</div>'+
																	'<div class="photo_review_thumbnail__created_at"'+
																		'style="position: relative; left: 5%;">'+data.rvlist[count].rvDate+'</div>'+
																	'<hr>'+
																'</div>'+
															'</div>'+
														'</div>'+
														'<div style="position: relative; top: -6%;"'+
															'class="reviews_index_gallery_review__review_product js-link-iframe "'+
															'data-url="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'">'+
															'<div'+
																'class="reviews_index_gallery_review__review_product_thumbnail">'+
																'<img class="" width="33"'+
																	'height="33"'+
																	'src="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'"'+
																	'style="padding-right: 3%; opacity: 1; display:inline-block;">'+
															'</div>'+
															'<div class="reviews_index_gallery_review__review_product_info">'+
																'<div'+
																	'class="reviews_index_gallery_review__product_info_title" style="display:inline-block; position:relative;bottom:48px;left:45px;">'+
																	data.pdlist[0].prdtName+'</div>'+
																'<div'+
																	'class="reviews_index_gallery_review__product_info_feedbacks">'+
																	'<span class="reviews_index_gallery_review__reviews_count"'+
																		'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">리뷰'+
																		'<strong style="color:black;display:inline-block;">'+data.rp.reviewCount+'</strong></span> <span '+
																		'class="reviews_index_gallery_review__display_score" '+
																		'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">평점'+
																		'<strong style="color: black;display:inline-block;"id="starArea'+count+'o">'+data.rvlist[count].rvPoint+'</strong>&nbsp;</span>'+
																'</div>'+
															'</div>'+
														'</div>'+
													'</li>';
								
													
									   	 
									   	 
									   	 //리뷰 추가
						$("#reviewArea").append(str); 
									   	 
						var star1 = '<i class="fa fa-fw fa-star"></i>'
						   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 if(data.rvlist[count].rvPoint==1){
						   	 $('#starArea'+count+'o').after(star1);
						   	 }else if(data.rvlist[count].rvPoint==2){
						   		 $('#starArea'+count+'o').after(star2);
						   	 }else if(data.rvlist[count].rvPoint==3){
						   		 $('#starArea'+count+'o').after(star3);
						   	 }else if(data.rvlist[count].rvPoint==4){
						   		 $('#starArea'+count+'o').after(star4);
						   	 }else if(data.rvlist[count].rvPoint==5){
						   		 $('#starArea'+count+'o').after(star5);
						   	 }
									   	 
									   	 
								count++;
								}
				
				
				var currentPage1 = '';
				var currentPage2 = '';
			   	 
			 	var rvPage='';
			 	
			   	var rvPage1='';
			   	
			   	 
			   	 if(data.mainPi.currentPage != 1){
	             
	             currentPage1 = data.mainPi.currentPage-1;
			   	 rvPage1= '<button onclick="checkboxSearch2('+currentPage1+');">'+
	             '<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">'+
	             '</button> &nbsp;'
	             
			   	 }
	        
	        var rvPage2 = '';
	        for(var i =data.mainPi.startPage; i<=data.mainPi.endPage; i++){
	        
	        	if(i == data.mainPi.currentPage){
	        		
	        		 rvPage2 +='<button onclick="#" class="flex-c-m trans-0-4 active-pagination" '+
	                 'style="display:inline-block;width:20px;height:27px;margin:3px; border:1px solid gray; border-radius:3px;">'+i+'</button>';
	                 
	        	}else if(i != data.mainPi.currentPage){
	        		rvPage2 +='<button onclick="checkboxSearch2('+i+');"'+
	                'style="display:inline-block; width:20px;height:27px;margin:3px;border:1px solid gray;border-radius:3px;" class="flex-c-m trans-0-4">'+
	                ''+i+'</button>';
	                
	        	}
					
	        }
console.log(rvPage2);
	          var rvPage3='';
	          
	          if(data.mainPi.currentPage != data.mainPi.maxPage){
	        

	        	  currentPage2 = data.mainPi.currentPage+1;
	          
	          rvPage3 = '<button onclick="checkboxSearch2('+currentPage2+');">'+
	          '<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">'+
	          '</button>';
	          
	          }
			   	 
	          rvPage=rvPage1+rvPage2+rvPage3;
			   	 
			   	 $('#reviewPaging').append(rvPage);
				
				
				},error:function() {
							alert("에러임에러임");
					}
		});
			
			
	  }
	  </script>


	  <script>
	  <!-- 사이즈 정렬 스크립트 -->
	  
	  function checkboxSearch3(arguments) {
		  var count = 0;
			var optionSizeArr = document.getElementsByName('option_5');
			var prNo = $('#prNo_val').val();
			var sort = "size";
			var opNo = 0;
			var currentPage = arguments;
			for(var i=0; i<optionSizeArr.length;i++) {
				if(optionSizeArr[i].checked==true){
					opNo = optionSizeArr[i].value;
				}
			}
			
			console.log(opNo);
			

			$.ajax({
				url : "reviewModal.do",
				data : {product_detail:prNo,sort:sort,opNo:opNo,currentPage:currentPage},
				dataType:"json",
				success : function(data) {$("#reviewArea").text("");
				$("#reviewPaging").text("");
				for(var i=0; i< data.rvlist.length;i++){
					console.log(data.rvlist.length);					
									//리뷰 작성str
									const str = 
									   	 '<li class="reviews_index_gallery_review" id="'+data.rvlist[count].rvNo+'" onclick="reviewDetail(this.id)" '+
														'style="-webkit-box-shadow: 0 4px 6px -6px #222;'+
				  '-moz-box-shadow: 0 4px 6px -6px #222;'+
				  'box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">'+
														'<div class="photo_review_thumbnail js-link-fullscreen-popup"'+
															'data-url="'+data.rvlist[count].rvImage+'">'+
															'<div class="photo_review_thumbnail__thumbnail_container">'+
																'<ul>'+
																	'<li class="photo_review_thumbnail__review_image_thumbnail">'+
																		'<img class="js-review-image"'+
																		'src="'+data.rvlist[count].rvImage+'"'+
																		'style="width: 100%; height: 237px; opacity: 1; border-bottom: 2px solid lightgray;">'+
																	'</li>'+
																'</ul>'+
																'<div class="photo_review_thumbnail__review_info">'+
																	'<div'+
																		'class="photo_review_thumbnail__media_count_indicator'+
				            'photo_review_thumbnail__media_count_indicator--total_count_1">'+
																		'<div'+
																			'class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
																	'</div>'+
																'</div>'+
															'</div>'+
															'<div style="border-radius: 2%; width: 90%; margin-left: 5%; height:93px;"'+
																'class="photo_review_thumbnail__review_author_info">'+
																'<div style="margin-top: 2%; border-radius: 2%; height:30px;"'+
																	'class="photo_review_thumbnail__review_title js-translate-review-message">'+
																	''+
																	data.rvlist[count].rvInfo+'</div>'+
																'<br>'+
																'<div style="margin-top: -2%; color: gray;"'+
																	'class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
																	'<div class="photo_review_thumbnail__author_name"'+
																		'style="float: left;">'+
																		'<strong>'+data.namelist[count]+'</strong>'+
																	'</div>'+
																	'<div class="photo_review_thumbnail__created_at"'+
																		'style="position: relative; left: 5%;">'+data.rvlist[count].rvDate+'</div>'+
																	'<hr>'+
																'</div>'+
															'</div>'+
														'</div>'+
														'<div style="position: relative; top: -6%;"'+
															'class="reviews_index_gallery_review__review_product js-link-iframe "'+
															'data-url="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'">'+
															'<div'+
																'class="reviews_index_gallery_review__review_product_thumbnail">'+
																'<img class="" width="33"'+
																	'height="33"'+
																	'src="'+data.pdlist[0].prdtImagePath+data.pdlist[0].prdtImage+'"'+
																	'style="padding-right: 3%; opacity: 1; display:inline-block;">'+
															'</div>'+
															'<div class="reviews_index_gallery_review__review_product_info">'+
																'<div'+
																	'class="reviews_index_gallery_review__product_info_title" style="display:inline-block; position:relative;bottom:48px;left:45px;">'+
																	data.pdlist[0].prdtName+'</div>'+
																'<div'+
																	'class="reviews_index_gallery_review__product_info_feedbacks">'+
																	'<span class="reviews_index_gallery_review__reviews_count"'+
																		'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">리뷰'+
																		'<strong style="color:black;display:inline-block;">'+data.rp.reviewCount+'</strong></span> <span '+
																		'class="reviews_index_gallery_review__display_score" '+
																		'style="color: #c3b798;display:inline-block;position:relative;bottom:48px;left:45px;">평점'+
																		'<strong style="color: black;display:inline-block;"id="starArea'+count+'o">'+data.rvlist[count].rvPoint+'</strong>&nbsp;</span>'+
																'</div>'+
															'</div>'+
														'</div>'+
													'</li>';
								
													
									   	 
									   	 
									   	 //리뷰 추가
						$("#reviewArea").append(str); 
									   	 
						var star1 = '<i class="fa fa-fw fa-star"></i>'
						   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 if(data.rvlist[count].rvPoint==1){
						   	 $('#starArea'+count+'o').after(star1);
						   	 }else if(data.rvlist[count].rvPoint==2){
						   		 $('#starArea'+count+'o').after(star2);
						   	 }else if(data.rvlist[count].rvPoint==3){
						   		 $('#starArea'+count+'o').after(star3);
						   	 }else if(data.rvlist[count].rvPoint==4){
						   		 $('#starArea'+count+'o').after(star4);
						   	 }else if(data.rvlist[count].rvPoint==5){
						   		 $('#starArea'+count+'o').after(star5);
						   	 }
									   	 
									   	 
								count++;
								}
				
				
				var currentPage1 = '';
				var currentPage2 = '';
			   	 
			 	var rvPage='';
			 	
			   	var rvPage1='';
			   	
			   	 
			   	 if(data.mainPi.currentPage != 1){
	             
	             currentPage1 = data.mainPi.currentPage-1;
			   	 rvPage1= '<button onclick="checkboxSearch3('+currentPage1+');">'+
	             '<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">'+
	             '</button> &nbsp;'
	             
			   	 }
	        
	        var rvPage2 = '';
	        for(var i =data.mainPi.startPage; i<=data.mainPi.endPage; i++){
	        
	        	if(i == data.mainPi.currentPage){
	        		
	        		 rvPage2 +='<button onclick="#" class="flex-c-m trans-0-4 active-pagination" '+
	                 'style="display:inline-block;width:20px;height:27px;margin:3px; border:1px solid gray; border-radius:3px;">'+i+'</button>';
	                 
	        	}else if(i != data.mainPi.currentPage){
	        		rvPage2 +='<button onclick="checkboxSearch3('+i+');"'+
	                'style="display:inline-block; width:20px;height:27px;margin:3px;border:1px solid gray;border-radius:3px;" class="flex-c-m trans-0-4">'+
	                ''+i+'</button>';
	                
	        	}
					
	        }
console.log(rvPage2);
	          var rvPage3='';
	          
	          if(data.mainPi.currentPage != data.mainPi.maxPage){
	        

	        	  currentPage2 = data.mainPi.currentPage+1;
	          
	          rvPage3 = '<button onclick="checkboxSearch3('+currentPage2+');">'+
	          '<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">'+
	          '</button>';
	          
	          }
			   	 
	          rvPage=rvPage1+rvPage2+rvPage3;
			   	 
			   	 $('#reviewPaging').append(rvPage);
				
				
				},error:function() {
							alert("에러임에러임");
					}
		});
	  }
  
	  
	  </script>
	  
	  <script>
	$('#heartClick').click(function() {
		 var rv_no = $('#rv_no2').val();
		 var likeCheck = $('#likeCheck').val();

		 console.log("rv___no: " + rv_no);
		 var count = 0;

		  $.ajax({
			 url:"reviewLike1.do",
			 dataType:"json",
			 data : {rv_no : rv_no, likeCheck : likeCheck},
			 success : function(r) {
				 console.log(r)
				 console.log(r.r.rvLike)
				 $('#likeCheck').val(r.lhl.likeCheck);
				 $('#likeCount').text(r.r.rvLike);
				 if(r.lhl.likeCheck == "N"){
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-noncheck.png") ;
				 }else{
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-check.png");
				 }
			 }
		 })
	})



	</script>
	
	<script>
	function reviewDetail(arguments){
		
		if("${loginMember.memId}"==""){
			alert('로그인후 이용해주세요');
			location.href="loginView.do";
			
		}else{
	
		var rvNo = arguments;
		
		console.log(rvNo);
		
        
        $("#rv_no2").val(rvNo);

        
        $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();

		 
		 var ulr = $(this).attr("src");
	        $("#modalimg").attr("src", ulr);            
	        $('#modal').show();
			
		var rvc_no = $('.rvc_no').val();
		 var like_img="";
		 var count = 0;


		 $.ajax({
			 url:"reviewDetail1.do",
			 dataType:"json",
			 data : {rvNo : rvNo},
			 success : function(r){
				 console.log(r)
				 $('#prDetail').text(r.r.prdtName);
				 $('#memName').text(r.r.memName);
				 $('#rColor').text(r.r.rvColor);
				 $('#rSize').text(r.r.rvSize);
				 $('#rInfo').text(r.r.rvInfo);
				 $('#rDate2').text(r.r.rvDate2);
				 $('#pImage').attr("src",r.r.prdtPath+r.r.prdtImg);
				 $('#likeCheck').val(r.lhl.likeCheck);
				 $('#likeCount').text(r.r.rvLike);
	/* 			 if(r.ph.length == 1){
					 $('#contentimgs1').attr("src",r.ph[0].rpPhoto);
				 }else{
					 $('#contentimgs1').attr("src",r.ph[0].rpPhoto);
					 $('#contentimgs2').attr("src",r.ph[1].rpPhoto);
				 } */
				 /* if(r.ph.length == 1){
						$('#movePage1').css("display","none");
						$('#movePage2').css("display","none");
					}else{
						$('#movePage1').css("display","block");
						$('#movePage2').css("display","block");
					} */
					$('#starstarArea').children('#starstar1').remove();
					for(var i=1; i<r.r.rvPoint;i++){
						$('#starstar').after('<i class="fa fa-fw fa-star" id="starstar1"></i>')
					}
					
				

				  for(var i =0; i<r.ph.length;i++){
					  if(i == 0){
							$('#nextPh').after(' <div id="img1" class="mySlides'+rvNo+'o" style="display: block;">'+
		                            '<div class="numbertext" ><font style="font-size:14px;">1/ '+r.ph.length+'</font></div>'+
		                            '<img class="contentimgs" id="contentimgs1" src="'+r.ph[0].rpPhoto+'" alt="sample1" style="margin-top:-2.5%;width:800px;">'+
		                            '</div>')
		                            
		                             
					  }else{
				            
							$('#img1').after(	'<div id="img2" class="mySlides'+rvNo+'o" style="display: none;">'+
				                      '<div class="numbertext"><font style="font-size:14px;">2 / '+r.ph.length+'</font></div>'+
				                      '<img class="contentimgs" id="contentimgs2" src="'+r.ph[1].rpPhoto+'" alt="sample2" style="margin-top:-5%;width:800px;" >'+
				                  '</div>')
				                  
				                  $('#img1').css("margin-top","-2.5%");
				                  $('#imgbefore').after('<div id="kin1" style="width:10px;height:10px;position:relative;top:400px;left:5px;">'+
					                         '<a id="'+rvNo+'" class="prev" onclick="plusSlides1(this.id);"style="font-size:25px;background:gray;opacity: 0.6;" ><strong>&#10094;</strong></a>'+
					                         '</div>'+
					                        '<div id="kin2" style="width:10px;height:10px;position:relative;top:390px;left:780px;">'+
					                       '<a id="'+rvNo+'" class="next" onclick="plusSlides2(this.id);" style="font-size:25px;background:gray;opacity: 0.6;"><strong>&#10095;</strong></a>'+
					                        '</div>')
					                        
					  }
				 }


				 if(r.lhl.likeCheck == "N"){
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-noncheck.png") ;
				 }else if(r.lhl.likeCheck == "Y"){
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-check.png");
				 }
			 },error : function(){
					alert('리뷰에러')
			}
		 });
        
        
		
        
		
		$.ajax({

			url:"rList1.do",
			dataType:"json",
			data : {rv_no:rvNo},
			success:function(data) {
			 console.log(data.rplist[0]);
				 for(var i=0;i<data.rplist.length;i++) {

					 if(data.rplist[i].memNo =="${loginMember.memNo}"){
						 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
						 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
		                          	'<small>'+data.rplist[i].rvComment+'</small>'+
		                        	'<button style="" onclick="DeleteReply(this);">&nbsp;&times;</button><br>'+
		                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
		                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
		                          	 )
						 }else{

		                  $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
						 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
		                          	'<small>'+data.rplist[i].rvComment+'</small>'+
		                          	'<button style=""></button><br>'+
		                          	'<button style="float:right;font-size:10px;color:#e65540;"onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
		                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
		                          	 )
						 }
				 }
			},error:function() {
				alert("에러임에러임");
			}

		 })
		 
		
    }
	  
	
	
	
	
	
	
	$('#comentsend').on("click", function() {
		var rvComment = $('#rvComment').val();
		 var rv_no = $('#rv_no2').val();
		 var rvc_no = $('.rvc_no').val();




		if(rvComment == ""){
				alert("댓글을 작성해주세요");
		}else{
			 $('#comentarea').children('.replyDiv').remove();
			 $('#comentarea').children('br').remove();


		$.ajax({
			url:"addReply1.do",
			data : {rvComment : rvComment, rv_no : rv_no},
			success:function(data) {
				if(data=="success") {
					//getReplyList();
					 $.ajax({

						url:"rList1.do",
						dataType:"json",
						data : {rv_no:rv_no},
						success:function(data) {
						 console.log(data.rplist[0]);
							 for(var i=0;i<data.rplist.length;i++) {

								 if(data.rplist[i].memNo =="${loginMember.memNo}"){
								 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
								 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
				                          	'<small>'+data.rplist[i].rvComment+'</small>'+
				                          	'<button style="">&times;</button><br>'+
				                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
				                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
				                          	 )
								 }else{

				                  $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
								 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
				                          	'<small>'+data.rplist[i].rvComment+'</small>'+
				                          	'<button style=""></button><br>'+
				                          	'<button style="float:right;font-size:10px;color:#e65540;">&nbsp;&nbsp;신고하기</button>'+
				                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
				                          	 )
								 }
							 }
						},error:function() {
							alert("에러임에러임");
						}
		 })
					$('#rvComment').val("");
				}
			},error:function() {
				console.log("등록실패");
			}
		})




			}
		});
	
	function getReplyList() {

		 var rv_no = $('#rv_no2').val();

		//comentarea

		$.ajax({
			url:"rList1.do",
			data:{rv_no:rv_no},
			dataType:"json",
			success:function(data) {

			}

		})
	}
	
	
	}

      function modalclose(){
          $('#modal').css("display","none");
          $('#img1').remove();
          $('#img2').remove();
          $('#kin1').remove();
          $('#kin2').remove();
      }
	
      var slideIndex = 1;


      showSlides(slideIndex);

      function plusSlides1(b) {

    	  
	      var n = -1;    	  
          showSlides(slideIndex += n,b);
      }
      function plusSlides2(b) {
    	  var n = 1;    	  
          showSlides(slideIndex += n,b);
      }


      function showSlides(n,b) {
          var i;
          var slides = document.getElementsByClassName("mySlides"+b+"o");
          var dots = document.getElementsByClassName("dot");
          if (n > slides.length) {slideIndex = 1}    
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";  
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
      }
	
	
		/*[ +/- num product ]
		 ===========================================================*/
		 
		$('.num-product-down').on('click', function(e) {
			e.preventDefault();
			var numProduct = Number($(this).next().val());
			if (numProduct > 1)
				$(this).next().val(numProduct - 1);
			var num1 = jQuery('.num-product').val();
			var price = jQuery('.num-price').val();
			console.log(num1);
			console.log(price);
			var total1 = num1*price;
			$('#total').text(total1.format());
		});

		$('.num-product-up').on('click', function(e) {
			e.preventDefault();
			var numProduct = Number($(this).prev().val());
			$(this).prev().val(numProduct + 1);
			var num2 = jQuery('.num-product').val();
			var price = jQuery('.num-price').val();
			console.log(num2);
			console.log(price);
			var total2 = num2*price;
			$('#total').text(total2.format());
		});
		

	</script>
	<script>
	function DeleteReply(dr) {
		var rvcNo=$(dr).parents('.replyDiv').find('.rvc_no').val();
		 var rv_no = $('#rv_no2').val();
		 $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();

		$.ajax({
			url:"DeleteReply1.do",
			dataType:"json",
			data : {rvcNo : rvcNo, rv_no : rv_no},
			success:function(data) {
				 console.log(data.rplist[0]);
				 for(var i=0;i<data.rplist.length;i++) {

					 if(data.rplist[i].memNo =="${loginMember.memNo}"){
						 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
						 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
		                          	'<small>'+data.rplist[i].rvComment+'</small>'+
		                        	'<button style="" onclick="DeleteReply(this);">&nbsp;&times;</button><br>'+
		                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
		                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
		                          	 )
						 }else{

		                  $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
						 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
		                          	'<small>'+data.rplist[i].rvComment+'</small>'+
		                          	'<button style=""></button><br>'+
		                          	'<button style="float:right;font-size:10px;color:#e65540;">&nbsp;&nbsp;신고하기</button>'+
		                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
		                          	 )
						 }
				 }
				},error:function() {
					alert("에러임에러임");
				}

		})


	}

	</script>
	<script>
	function Warning(wa) {
		
		if(confirm('댓글을 신고 하겠습니까?') ==true){
		var rvcNo=$(wa).parents('.replyDiv').find('.rvc_no').val();

		 var rv_no = $('#rv_no2').val();
		 $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();

		 $.ajax({
				url:"WarningReply1.do",
				dataType:"json",
				data : {rvcNo : rvcNo, rv_no : rv_no},
				success:function(data) {
					 for(var i=0;i<data.rplist.length;i++) {

						 if(data.rplist[i].memNo =="${loginMember.memNo}"){
							 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
							 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
			                          	'<small>'+data.rplist[i].rvComment+'</small>'+
			                        	'<button style="" onclick="DeleteReply(this);">&nbsp;&times;</button><br>'+
			                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
			                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
			                          	 )
							 }else{

			                  $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
							 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
			                          	'<small>'+data.rplist[i].rvComment+'</small>'+
			                          	'<button style=""></button><br>'+
			                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
			                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
			                          	 )
							 }
					 }
					},error:function() {
						alert("에러임에러임");
					}

			})
		}
	}
	</script>
	
</body>
		

</html>

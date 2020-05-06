<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>


	<title>oT.</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="<c:url value="/resources/images/icons/favicon.png"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/themify/themify-icons.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/elegant-font/html-css/style.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animate/animate.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animsition/css/animsition.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/select2/select2.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/slick/slick.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/lightbox2/css/lightbox.min.css"/>">
<!--===============================================================================================-->
<!-- 	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css"> -->
<!--===============================================================================================-->
</head>
 
<body class="animsition">


	<!-- header -->
	<jsp:include page="header.jsp"/>

	<!-- Slide1 -->
	<section class="slide1" style="margin-top:-40px;z-index:2;">
		<div class="wrap-slick1">
			<div class="slick1">
			
		 <c:forEach var="d" items="${mainList }">
			<c:if test="${! empty d.mainComment }"> 
				<div class="item-slick1 item1-slick1" style="background-image: url(<c:url value="/resources/buploadFiles/${ d.oriFile }"/>);size:100%;height:700px;">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<h2 class="caption1-slide1 xl-text2 t-center bo14 p-b-6 animated visible-false m-b-22" data-appear="fadeInUp">
					  ${d.mainComment}  
						</h2>
						<span class="caption2-slide1 m-text1 t-center animated visible-false m-b-33" data-appear="fadeInDown">
							New Collection 2020
						</span>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="zoomIn">
							<!-- Button -->
							<a href="product.jsp" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
					   바로가기 <%-- ${d.mainLink} --%>
							</a>
						</div>
					</div>
				 </div>
			 </c:if>
		</c:forEach> 

				<%-- <div class="item-slick1 item2-slick1" style="background-image: url(<c:url value="/resources/images/main_top1.jpg"/>);height:700px;">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<h2 class="caption1-slide1 xl-text2 t-center bo14 p-b-6 animated visible-false m-b-22" data-appear="rollIn" style="margin-bottom:5%;">
							ot.yellow
						</h2>

						<span class="caption2-slide1 m-text1 t-center animated visible-false m-b-33" data-appear="lightSpeedIn">
							 
						</span>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="slideInUp">
							<!-- Button -->
							<a href="product.jsp" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								바로가기
							</a>
						</div>
					</div>
				</div> 

		 	<div class="item-slick1 item3-slick1" style="background-image: url(<c:url value="/resources/images/main_top2.jpg"/>);height:700px;">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<h2 class="caption1-slide1 xl-text2 t-center bo14 p-b-6 animated visible-false m-b-22" data-appear="rotateInDownLeft">
							ot.blue
						</h2>

						<span class="caption2-slide1 m-text1 t-center animated visible-false m-b-33" data-appear="rotateInUpRight">
							New Collection 2020
						</span>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="rotateIn">
							<!-- Button -->
							<a href="product.jsp" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								바로가기
							</a>
						</div>
					</div>
				</div>  --%>

			</div>
		</div>
	</section>

	<!-- Banner -->
	<div class="banner bgwhite p-t-40 p-b-40">
		<div class="container">
			<div class="row">
				
				
					<c:forEach var="top" items="${ topplist }">
						<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
								<c:if test="${61999 gt top.prdtNo and top.prdtNo gt 60000}">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
									<img src="${top.prdtImagePath }${top.prdtImage }" alt="IMG-PRODUCT">
									<div class="block2-overlay trans-0-4">
										<div id="${top.prdtNo }a" class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width:60%;margin-left:20%" onclick="wish('${top.prdtNo }');">
												<small>관심상품 담기</small>
											</button>
										</div>
									</div>
								</div>
							</c:if>
							<c:if test="${top.prdtNo gt 62000}">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
									<img src="${top.prdtImagePath }${top.prdtImage }" alt="IMG-PRODUCT">
									<div class="block2-overlay trans-0-4">
									<div id="${top.prdtNo }a" class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width:60%;margin-left:20%" onclick="wish('${top.prdtNo }');">
												<small>관심상품 담기</small>
											</button>
										</div>
									</div>
								</div>
							</c:if>
							<c:if test="${top.prdtNo lt 60000}">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<img src="${top.prdtImagePath }${top.prdtImage }" alt="IMG-PRODUCT">
									<div class="block2-overlay trans-0-4">
									<div id="${top.prdtNo }a" class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width:60%;margin-left:20%" onclick="wish('${top.prdtNo }');">
												<small>관심상품 담기</small>
											</button>
										</div>
									</div>
								</div>
							</c:if>
							
								<div class="block2-txt p-t-20">
									<span class="block2-price m-text6 p-r-5" >
								<c:forEach var="po" items="${ polist }">
									<c:if test="${ top.prdtNo eq po.prdtNo }">
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
						<c:param name="product_detail" value="${top.prdtNo }" />
					</c:url>
														<a href="${product_detail }" id="${top.prdtNo }"class="block2-name dis-block s-text3 p-b-5"style="font-size:12px">
															${top.prdtName }
					
														</a>
														

									<span class="block2-price m-text6 p-r-5">
									<c:if test="${top.prdtSale ne 0 }">
	<small><font class="format-money" style="text-decoration:line-through">${ top.prdtPrice}</font>-><font class="format-money">${ top.prdtPrice-((p.prdtPrice/100)*p.prdtSale)}</font> won</small>&nbsp;&nbsp;
										</c:if>
										<c:if test="${top.prdtSale eq 0 }">
										<small><font class="format-money">${ top.prdtPrice}</font> won</small>&nbsp;&nbsp;
										</c:if>
										
										<font style="font-size:9px;color:gray">리뷰 : ${top.prdtReview}</font>
									</span>
								</div>
							</div>
							</c:forEach>
	
			</div>
		</div>
	</div>

	<!-- Our product -->
	<section class="bgwhite p-t-45 p-b-58">
		<div class="container">
			<div class="sec-title p-b-22">
				<h3 class="m-text5 t-center">
					ot's
				</h3>
			</div>

			<!-- Tab01 -->
			<div class="tab01">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item">
						<a id="bestPr" class="nav-link active" data-toggle="tab" href="#best-seller" role="tab">Best</a>
					</li>
					<li class="nav-item">
						<a id="salePr" class="nav-link" data-toggle="tab" href="#sale" role="tab">Sale</a>
					</li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content p-t-35">
					<!-- - -->
					<div class="tab-pane fade show active" role="tabpanel">
						<div class="row">
								<!-- 블럭샘플 -->
						<c:forEach var="p" items="${ plist }">
							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50 best">
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
								</div>
							</c:if>
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
							
							
						<c:forEach var="p" items="${ pslist }">
							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50 sale" style="display: none">
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
								</div>
							</c:if>
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
							
<!-- 블럭샘플 -->
						<%-- 	<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="<c:url value="/resources/images/item-08.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Denim jacket blue
										</a>

										<span class="block2-price m-text6 p-r-5">
											$92.50
										</span>]
										
									</div> 
								</div>
							</div> --%>

							<%-- <div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="<c:url value="/resources/images/item-10.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Coach slim easton black
										</a>

										<span class="block2-price m-text6 p-r-5">
											$165.90
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="<c:url value="/resources/images/item-06.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Herschel supply co 25l
										</a>

										<span class="block2-price m-text6 p-r-5">
											$75.00
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="<c:url value="/resources/images/item-12.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Herschel supply co 25l
										</a>

										<span class="block2-price m-text6 p-r-5">
											$75.00
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="<c:url value="/resources/images/item-14.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Denim jacket blue
										</a>

										<span class="block2-price m-text6 p-r-5">
											$92.50
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="<c:url value="/resources/images/item-05.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Coach slim easton black
										</a>

										<span class="block2-price m-text6 p-r-5">
											$165.90
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="<c:url value="/resources/images/item-07.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Frayed denim shorts
										</a>

										<span class="block2-oldprice m-text7 p-r-5">
											$29.50
										</span>

										<span class="block2-newprice m-text8 p-r-5">
											$15.90
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- - -->
					

					<!--  -->
					<div class="tab-pane fade" id="sale" role="tabpanel">
						<div class="row">
							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="<c:url value="/resources/images/item-08.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Herschel supply co 25l
										</a>

										<span class="block2-price m-text6 p-r-5">
											$75.00
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="<c:url value="/resources/images/item-08.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Denim jacket blue
										</a>

										<span class="block2-price m-text6 p-r-5">
											$92.50
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="<c:url value="/resources/images/item-08.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Herschel supply co 25l
										</a>

										<span class="block2-price m-text6 p-r-5">
											$75.00
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="<c:url value="/resources/images/item-08.jpg"/>" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
												<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													관심상품 담기
												</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
											Denim jacket blue
										</a>

										<span class="block2-price m-text6 p-r-5">
											$92.50
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--  -->
					
				</div>
			</div> --%>
		</div>
	</section>


	<!-- Banner video -->
	
				
	<section class="parallax0 parallax100" style="background-image: url(/ot/resources/images/video01.jpg) ;">
	
		<div class="overlay0 p-t-190 p-b-200">
			<div class="flex-col-c-m p-l-15 p-r-15">
			<h3 class="l-text1 fs-35-sm">
					Ot.Lookbook
				</h3>
			<video controls autoplay loop style="width:55%;height:30%;border:none">
   <source src="<c:url value="/resources/images/video.mp4"/>" type="video/mp4"> 
   <%--video.reFile --%>
			</video>

			</div>
		</div>
	</section>

	<!-- Blog -->
	<section class="blog bgwhite p-t-94 p-b-65">
		<div class="container">
			<div class="sec-title p-b-52">
				<h3 class="m-text5 t-center">
					Our Blog
				</h3>
			</div>

			<div class="row">
				<div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">
					<!-- Block3 -->
					<div class="block3">
						<a href="blog-detail.html" class="block3-img dis-block hov-img-zoom">
							<img src="<c:url value="/resources/buploadFiles/KakaoTalk_20200428_161151495_01.jpg"/>" alt="IMG-BLOG">
						</a>

						<div class="block3-txt p-t-14">
							<h4 class="p-b-7">
								<a href="blog-detail.html" class="m-text11">
								
								</a>
							</h4>

							<p class="s-text8 p-t-16">
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">
					<!-- Block3 -->
					<div class="block3">
						<a href="blog-detail.html" class="block3-img dis-block hov-img-zoom">
							<img src="<c:url value="/resources/buploadFiles/KakaoTalk_20200428_161151495_02.jpg"/>" alt="IMG-BLOG">
						</a>

						<div class="block3-txt p-t-14">
							<h4 class="p-b-7">
								<a href="blog-detail.html" class="m-text11">
								</a>
							</h4>

							<p class="s-text8 p-t-16">
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">
					<!-- Block3 -->
					<div class="block3">
						<a href="blog-detail.html" class="block3-img dis-block hov-img-zoom">
							<img src="<c:url value="/resources/buploadFiles/KakaoTalk_20200428_161151495_03.jpg"/>" alt="IMG-BLOG">
						</a>

						<div class="block3-txt p-t-14">
							<h4 class="p-b-7">
								<a href="blog-detail.html" class="m-text11">
								</a>
							</h4>


							<p class="s-text8 p-t-16">
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Instagram -->
	<section class="instagram p-t-20">
		<div class="sec-title p-b-52 p-l-15 p-r-15">
			<h3 class="m-text5 t-center">
				@ follow us on Instagram
			</h3>
		</div>

		<div class="flex-w">
			<!-- Block4 -->
 	<c:forEach var="in" items="${instaList }">  
		<div class="block4 wrap-pic-w">
				<img src="<c:url value="/resources/buploadFiles/${in.oriFile }"/>" alt="IMG-INSTAGRAM">

				<a href="${in.mainLink} " class="block4-overlay sizefull ab-t-l trans-0-4">
				<!-- 	<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span> -->

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
				 		${in.mainComment}   	 <!-- Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit. --> 
						</p>
						<span class="s-text9">
						</span>
					</div>
				</a>
			</div>
			</c:forEach>  



		 	<!-- Block4 -->
<%-- 			<div class="block4 wrap-pic-w">
				<img src="<c:url value="/resources/images/gallery-03.jpg"/>" alt="IMG-INSTAGRAM">

				<a href="#" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit.
						</p>

						<span class="s-text9">
							Photo by @nancyward
						</span>
					</div>
				</a>
			</div>

			<!-- Block4 -->
			<div class="block4 wrap-pic-w">
				<img src="<c:url value="/resources/images/gallery-03.jpg"/>" alt="IMG-INSTAGRAM">

				<a href="#" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit.
						</p>

						<span class="s-text9">
							Photo by @nancyward
						</span>
					</div>
				</a>
			</div>

			<!-- Block4 -->
			<div class="block4 wrap-pic-w">
				<img src="<c:url value="/resources/images/gallery-03.jpg"/>" alt="IMG-INSTAGRAM">

				<a href="#" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit.
						</p>

						<span class="s-text9">
							Photo by @nancyward
						</span>
					</div>
				</a>
			</div>

			<!-- Block4 -->
			<div class="block4 wrap-pic-w">
				<img src="<c:url value="/resources/images/gallery-03.jpg"/>" alt="IMG-INSTAGRAM">

				<a href="#" class="block4-overlay sizefull ab-t-l trans-0-4">
					<span class="block4-overlay-heart s-text9 flex-m trans-0-4 p-l-40 p-t-25">
						<i class="icon_heart_alt fs-20 p-r-12" aria-hidden="true"></i>
						<span class="p-t-2">39</span>
					</span>

					<div class="block4-overlay-txt trans-0-4 p-l-40 p-r-25 p-b-30">
						<p class="s-text10 m-b-15 h-size1 of-hidden">
							Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit amet enim orci. Nam eget metus elit.
						</p>

						<span class="s-text9">
							Photo by @nancyward
						</span>
					</div>
				</a>
			</div> --%>
			
			
			
		</div>
	</section> 

	<!-- Shipping -->
	<section class="shipping bgwhite p-t-62 p-b-46" style="height:4%;">
		<div class="flex-w p-l-15 p-r-15"style="margin-top:-3%;">
			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
				<h4 class="m-text12 t-center">
					-맴버쉽 단계-
				</h4>

				<a href="#" class="s-text11 t-center">
					단계에 따라 월별 쿠폰지급
				</a>
			</div>

			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 bo2 respon2">
				<h4 class="m-text12 t-center">
					-무이자 할부-
				</h4>

				<span class="s-text11 t-center">
					카드사별 다양한 무이자 할부 혜택
				</span>
			</div>

			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
				<h4 class="m-text12 t-center">
					-출석체크 이벤트-
				</h4>

				<span class="s-text11 t-center">
					한 달 출석 체크 이벤트 (쿠폰지급)
				</span>
			</div>
		</div>
	</section>
	<script>
	$('#salePr').click(function(){
		$('.sale').css("display","block");
		$('.best').css("display","none");
		
	})
	$('#bestPr').click(function(){
		$('.sale').css("display","none");
		$('.best').css("display","block");
		
	})
	
	</script>
	 <script src="/socket.io/socket.io.js"></script>
    <script src="<c:url value="/resources/js/index.js"/>"></script>
<!-- footer -->

<jsp:include page="footer.jsp"/>
<!-- All Menu Start -->


</body>
</html>

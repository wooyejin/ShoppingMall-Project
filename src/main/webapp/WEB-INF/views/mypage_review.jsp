<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>oT.</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="/ot/resources/css/Login_style.css"> -->
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png" />

<style>
a{
	font-size : 13px !important;
	cursor : pointer;
}

.ec-base-paginate1 img {
    vertical-align: none !important;
}
.ec-base-paginate1 {
    margin: 30px auto;
    text-align: center;
    line-height: 0;
    display: table;
}

.top_menu {
    position: relative;
    border: 1px solid #e1e1e1;
    margin-top: 18px;
    margin-bottom: 33px;
    box-shadow: 2px 3px 3px 0px rgba(0,0,0,0.03);
    filter: progid:DXImageTransform.Microsoft.Shadow(color='#f7f7f7', Direction=90, Strength=3);
    height: 51px;
    box-sizing: content-box;
    width:100%;
}



.reviews_index--gallery .reviews_index__reviews {
    display: block;
    margin: 0 auto;
    width: 948px;
}

.reviews_index_gallery_review {
    cursor: pointer;
    float: left;
    font-family: "나눔고딕", "NanumGothic", "맑은 고딕", "Malgun Gothic", "돋움", "Dotum", "굴림", "Helvetica Neue", Helvetica, Arial, sans-serif;
    width: 207px;
    border: 1px solid #e5e5e5;
    padding: 0;
    box-shadow: 0 3px 3px #fafafa;
    position: relative;
    height: 430px;
    font-size: 11px;
    margin: 15px 29px 40px;
}

.reviews_index--gallery  {
    clear: both;
    content: ".";
    display: block;
    font-size: 0;
    height: 0;
    line-height: 0;
    visibility: hidden;
}

.photo_review_thumbnail__thumbnail_container {
    position: relative;
    overflow: hidden;
}

.photo_review_thumbnail__review_image_thumbnail img {
    width: 215px;
}

.photo_review_thumbnail__review_info {
    position: absolute;
    top: 0px;
    right: 0px;
}
.photo_review_thumbnail__media_count_indicator_dot {
    float: left;
    background: url(//assets.cre.ma/m/widgets/pc/reviews/circle_x4.png);
    width: 4px;
    height: 4px;
    margin-left: 4px;
    opacity: 0.8;
    transition: opacity 0.2s;
}
.photo_review_thumbnail__media_count_indicator--total_count_1 {
    display: none;
}
.photo_review_thumbnail__review_info {
    position: absolute;
    top: 0px;
    right: 0px;
}

.photo_review_thumbnail__review_author_info {
    padding: 12px 2px 10px 2px;
    margin: 0 10px;
}

.photo_review_thumbnail__review_title {
    font-size: 12px;
    line-height: 1;
    padding-bottom: 5px;
    color: black;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.photo_review_thumbnail__date_name_container--show_created_at {
    padding-top: 2px;
    position: relative;
}
.photo_review_thumbnail__date_name_container {
    font-size: 11px;
    color: #c4c4c4;
    *min-height: 0;
}

.photo_review_thumbnail__author_name {
    margin-right: 75px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.photo_review_thumbnail__date_name_container--show_created_at .photo_review_thumbnail__created_at {
    position: absolute;
    top: 2px;
    right: 0;
    width: 70px;
    padding-right: 2px;
    display: block;
    text-align: right;
    color: #ccc;
}

.photo_review_thumbnail__date_name_container:after {
    clear: both;
    content: ".";
    display: block;
    font-size: 0;
    height: 0;
    line-height: 0;
    visibility: hidden;
}

.reviews_index_gallery_review__review_product {
    padding: 13px 11px;
    height: 40px !important;
    cursor: pointer;
    *min-height: 0;
}
.reviews_index_gallery_review__review_product_thumbnail {
    float: left;
    font-size: 0;
}

.reviews_index_gallery_review__review_product img {
    width: 40px;
    height: 50px;
}

.reviews_index_gallery_review__review_product_info {
    margin-left: 45px;
    font-size: 11px;
    padding-top: 2px;
}

.reviews_index_gallery_review__product_info_title {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    color: black;
    padding-bottom: 4px;
    margin-top : -3px;
    margin-left : 5px;
}

.reviews_index_gallery_review__product_info_feedbacks {
    color: #c3b799;
}




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
	padding: 20px;
	border: 1px solid #888;
	width: 100%; /* Could be more or less, depending on screen size */
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

#modal {
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
			
#dotbox {
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
}

#comentinput{
    width: 245px;
    height: 25px;
    float: left;
}

 #rvComment{
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

</style>
	<jsp:include page="header.jsp"/>
</head>
<body>

	<c:url var="mWishlist" value="mWishlist.do"/>
	<c:url var="mPoint" value="mPoint.do"/>
	<c:url var="mCoupon" value="mCoupon.do"/>
	
	<div id="container">
 		<div id="memberInf1">
			<div class="xans-myshop-bankbook " style="width: 80%;">
    			<p class="xans-element- xans-myshop xans-myshop-asyncbenefit mypage_top ">
    				<strong>
    					<span><span class="xans-member- var-name">${loginMember.memName }</span></span>
    				</strong>
 					님은 현재 
					<strong>
						<span class="xans-member- var-group_name" style="color:rgba(230,106,87,1);">
							<c:if test="${loginMember.memSumMoney < 100000}" >
								MEMBER
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 100000 && loginMember.memSumMoney < 300000}" >
								IRON
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 300000 && loginMember.memSumMoney < 500000}" >
								BRONZE
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 500000 && loginMember.memSumMoney < 700000}" >
								SILVER
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 700000}" >
								GOLD
							</c:if>
						</span>
						<span class="myshop_benefit_ship_free_message"></span>
					</strong>
  					입니다.
				</p>
		
				<ul style="float: right;width: 350px; height: 60px;margin-right: 100px;margin-top: -34px;">
					<li class="xans-layout-shoppinginfo ">
						<strong class="title">WISH</strong>
  						<br>
						<strong class="data ">
							<a href="${mWishlist }">
									<span id="xans_myshop_interest_prd_cnt">${WishList }개</span>
							</a>
						</strong>
					</li>
				
               		<li>
	                    <strong class="title">POINT</strong>
	                    <br>
	                    <strong class="data">
	                    	<a href="${mPoint }">
	                  <span>${resultPoint}</span>원</a>
	                    </strong>
	                </li>
                
	                <li class="etc ">
	                    <strong class="title">COUPON</strong>
	                    <br>
	                    <strong class="data">
	                    	<a href="${mCoupon }">${CouponCount}<span>개</span></a>
	                    </strong>
	                </li>
	            </ul>
			</div>
		</div>

		<div id="contents">
			<div class="titleArea">
				<h2>MY REVIEW</h2>
			</div>

			<!-- 리뷰 부분 -->
			<div class="products_reviews_form__title" style="float:left;font-size:12px;">
	      		<strong>REVIEW</strong>
	      		<span class="divider"> | </span>
	      		<span class="weak">내가 작성한 리뷰</span>
   		    </div>
   		    <br>
   		    
			<div class="widget_reviews__body">
      			<div class="top_menu">
  					<ul class="top_menu__ul top_menu__ul--lpane">
    					<li class="top_menu__li top_menu__li--message" style = "padding: 10px 20px;">
      						<div class="top_menu__message_inner">
        						${listCount }개의 리뷰를 작성하셨습니다.
     						</div>
    					</li>
					</ul>
  
  					<ul class="top_menu__ul top_menu__ul--rpane">
    					<li class="top_menu__li top_menu__li--sort_container">
      						<select name="sort" onchange="sort();" id="sort" style="height: 51px; border-style: none; width: 100%; font-size:13px;">
							     <option value="last">최신순</option>
								 <option value="like">좋아요순</option>
								 <option value="star">평점순</option>
	  						</select>
    					</li>
    
    					<li class="top_menu__li top_menu__search_container">
    					
		 					<form class="js-menu-search" action="mSearchReview.do" method="get">
						  		<button type="submit" style="margin: 15px 0px 15px 8px;">
									<i class="fa fa-search"></i>
								</button>
	   							<input type="text" name="reviewSearch" id="query" placeholder="검색어 입력" class="top_menu__query js-top-menu-query" 
	   							style="float: right; margin: 5px 0; height: 40px; width: 80%; border: none;">
		 					</form>
						</li>
  					</ul>
				</div>
			</div>

			<div id="modal" style="overflow-y: hidden; display: none;">
					<div id="modalcontent" style="width:100%;height:100%;margin-left:18.5%;margin-top:80px !important;">
      				<!-- 모달창 사진 넘어가는 부분 -->
                		<div id="modalpost">
                    		<div id="modalimg" class="slideshow-container" style="position:relative;top:-20px;">
                        
                         		<div style="width:10px;height:10px;position:relative;top:400px;left:5px;">
                         			<a id="movePage1" class="prev" onclick="plusSlides(-1);" style="font-size:25px;background:gray;opacity: 0.6;"><strong>❮</strong></a>
                         		</div>
                       			<div id="nextPh" style="width:10px;height:10px;position:relative;top:390px;left:780px;">
                        			<a id="movePage2" class="next" onclick="plusSlides(1);" style="font-size:25px;background:gray;opacity: 0.6;"><strong>❯</strong></a>
                       			</div>
                        
                        		<!-- <div class="mySlides" style="display: block;">
                            		<div class="numbertext"><font style="font-size:14px;">1 / 2</font></div>
                            		<img class="contentimgs" src="/ot/resources/images/oT/review/review_sample1.jpg" alt="sample1" style="margin-top:-5%;">
                        		</div>
                        
                        		<div class="mySlides" style="display: none;">
                            		<div class="numbertext"><font style="font-size:14px;">2 / 2</font></div>
                           			<img class="contentimgs" src="/ot/resources/images/oT/review/review_sample2.jpg" alt="sample2" style="margin-top:-5%;">
                       			</div> -->
                       			
                        		<div id="dotbox" style="text-align:center">
		                            <span class="dot active" onclick="currentSlide(1);"></span> 
		                            <span class="dot" onclick="currentSlide(2);"></span> 
                        		</div>      
                   			</div>
               			</div>
			   			<button class="close1" onclick="modalclose();" style="position: relative;right: 365px;bottom: 37px;color:ivory;">&times;</button>
               
	 					<!-- 모달창 시작점 -->
	                    <div id="coments"style="margin-top:-3px;overflow-y:scroll;" >
						<br>
							<div style="position: relative; top: -6%; font-size:14px;margin:0px 0px -20px 0px;" class="reviews_index_gallery_review__review_product js-link-iframe"
								data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
								<div class="reviews_index_gallery_review__review_product_thumbnail">
									<img class="" id="pImage" width="55" height="55" src="${r.prdtPath }${r.prdtImg}" style="padding-right: 3%; opacity: 1; float: left;">
	
								</div>
								<div class="reviews_index_gallery_review__review_product_info" >
									<div class="reviews_index_gallery_review__product_info_title" id="prDetail" style="padding-top:6px;">
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
	                          	<small style="margin-left:-44px;">이 리뷰를 
	                          		<strong style="color:black;">
	                          			<span id="likeCount"></span>
	                       			</strong >명이 좋아합니다.
	                  			</small>
	                        </div>
	                        <hr>
	                        
	                        <div style="color:gray; border:2px dotted lightgray; font-size:15px;"> 
	                                          선택한 옵션 
	                        <br> 
		                        <small>color : 
		                        	<strong style="color:black;" id="rColor"></strong>
		                       	</small>
		                       	<br>
		                        <small>size : 
		                        	<strong style="color:black;" id="rSize"></strong>
		                       	</small>	
	                        </div>
	                        <hr>
	                        <div id="innercoment">
	                            <div class="coments" style="font-size:12px;text-align:left;padding:10px;letter-spacing: 1px;" id="rInfo">
	                            <!-- 리뷰내용 -->
	                            </div>
	                            <br>
	                        </div>
	                        
	                        <div style="color:lightgray;font-size:12px;float:right;" id="rDate2"></div>
	                        <div>
	                        <hr>
	                            <div style="margin-top:-4px;">
	                            	<font style="font-size:13px;color:gray;">이  리뷰가</font> &nbsp;
	                            
	                           		<a id="heartClick" style="font-size: 12px; border: none; color:white; width:60px;height:30px;">
	                           			<img src="/ot/resources/images/icons/like-noncheck.png" id="nonHeart"
	                           			style="width: 33px;margin-left: -11px;margin-top: -3px;">   
	                           			<input type="hidden" id="likeCheck" value="">
	                            		<input type="hidden" id="rv_no2" value="">                   
	                           		</a>         
	                            </div>
                        	</div>
                        	<hr>
                        
                        <!-- 댓글 forEach 시작점 -->
	                        <div id="comentarea">
	                        	<div style="margin-bottom: 14px;">
	                            	<input onkeyPress="reviewReply();" type="text" id="rvComment" placeholder="댓글을 작성해주세요 :)" maxlength="80" style="resize:none; /* border-radius: 5px 0px 0px 5px;  */
	                            border: 0.5px solid lightgray; background-color: whitesmoke; padding: 2px; height:40px;width:85%;">
	                            	<button onclick="" id="comentsend" style=" font-size: 15px; 
	                            	background: white; border: 1px solid lightgray; /* border-radius:0px 5px 5px 0px; */ 
	                             	width:50px;height: 40px;position:relative;bottom:2px;">등록</button>
	                            </div>
	                        </div>
                   	 	</div>
                       <!-- 모달창 끝나는 점 -->     
                	</div>
                </div>
			
       		<div class="reviews_index__body" style="display:inline-block;">
				<ul class="reviews_index__reviews reviews menuul" style="display:inline-block;">
				<c:if test="${ !empty list }">
					<c:forEach var="r" items="${list }">
						<li class="reviews_index_gallery_review review">
 					 		<input type="hidden" class="rv_no" value="${r.rvNo }" >
							<div class="photo_review_thumbnail js-link-fullscreen-popup">
								<div class="photo_review_thumbnail__thumbnail_container">
									<ul>
										<li class="photo_review_thumbnail__review_image_thumbnail">
											<a onclick="review1(this)">
												<img class="js-review-image" alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="${r.rvImage }" 
												style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray; height:280px;">
											</a>
										</li>
									</ul>
									<div class="photo_review_thumbnail__review_info">
										<div class=" photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">
											<div class="photo_review_thumbnail__media_count_indicator_dot"></div>
										</div>
									</div>
								</div>
								<div style="border-radius: 2%; width: 90%; margin-left: 5%;" class="photo_review_thumbnail__review_author_info">
									<div style="margin-top: 2%; border-radius: 2%; height:17px;" class="photo_review_thumbnail__review_title js-translate-review-message">
										${r.rvInfo }
									</div>
									<br>
									<div style="color: gray;" class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
										<div class="photo_review_thumbnail__author_name" style="float: left;">
											<!-- 작성자 -->
											<strong>${r.memName }</strong>
										</div>
	
										<div class="photo_review_thumbnail__created_at">
											${r.rvDate }
										</div>
										<!-- 내가 리뷰 작성한 내용 -->
										<hr>
									</div>
								</div>
							</div>

							<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe ">
								<div class="reviews_index_gallery_review__review_product_thumbnail">
									<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="${r.prdtPath }${r.prdtImg}" style="padding-right: 3%; opacity: 1; float: left;">
								</div>
								<div class="reviews_index_gallery_review__review_product_info">
									<div class="reviews_index_gallery_review__product_info_title">
										<!-- 내가 구매한 상품명 -->
										${r.prdtName }
									</div>
											
									<div class="reviews_index_gallery_review__product_info_feedbacks" style="margin-left : 5px;">
										<c:forEach var="rc" items="${rc}">
											<c:if test="${r.prdtCode eq rc.prdt_code}">
												<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰
													<strong style="color: black;">${rc.count }</strong>
												</span> 
											</c:if>
										</c:forEach>
										<br>
										<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점
											<strong style="color: black;" id="starArea">${r.rvPoint }</strong>
											<c:if test="${r.rvPoint ==1 }">
											<i class="fa fa-fw fa-star"></i>
											</c:if>
											<c:if test="${r.rvPoint ==2 }">
											<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>
											</c:if>
											<c:if test="${r.rvPoint ==3 }">
											<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>
											</c:if>
											<c:if test="${r.rvPoint ==4 }">
											<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>
											</c:if>
											<c:if test="${r.rvPoint ==5 }">
											<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>
											</c:if>
											
										</span>
									</div>
									<div class="reviewDelete" style="float: right; margin-right: -5px;">
										<span>
											<strong class="reviewX">X</strong>
										</span>
									</div>
								</div>
							</div>
						</li>
					</c:forEach>
					</c:if>
				</ul>  
			</div>
			<c:if test="${ empty list }">
					<div class="reviews_index__no_data_message" style="color : #999; text-align : center; padding : 50px 0;">작성된 리뷰가 없습니다.</div>
			</c:if>
		
		<!-- 페이징 처리 -->
			<div class="xans-element- xans-myshop xans-myshop-couponlistpaging ec-base-paginate1">
			<c:if test="${ !empty list }">
				<c:if test="${empty rs }">
					<c:if test="${pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</c:if>
					<c:if test="${pi.currentPage ne 1 }">
						<c:url var="start" value="mReview.do">
							<c:param name="currentPage" value="1"/>
						</c:url>
					<a href="${start }" class="first">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</a>
					</c:if>
				</c:if>
				
				<c:if test="${ !empty rs }">
					<c:if test="${pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</c:if>
					<c:if test="${pi.currentPage ne 1 }">
						<c:url var="start" value="mSearchReview.do">
							<c:param name="currentPage" value="1"/>
	                 		<c:param name="search" value="${rs.search }"/>
						</c:url>
					<a href="${start }" class="first">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</a>
					</c:if>
				</c:if>
				
				<c:if test="${empty rs }">
					<c:if test="${ pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지"> &nbsp;
					</c:if>
					
					<c:if test="${ pi.currentPage ne 1 }">
						<c:url var="before" value="mReview.do">
	                  		<c:param name="currentPage" value="${pi.currentPage - 1 }"/>
	                    </c:url>
	               	<a href="${before}">
	                  	<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
	                </a> &nbsp;
	                </c:if>
				</c:if>
					
				<c:if test="${ !empty rs }">
					<c:if test="${ pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지"> &nbsp;
					</c:if>
					
					<c:if test="${ pi.currentPage ne 1 }">
						<c:url var="before" value="mSearchReview.do">
			                <c:param name="currentPage" value="${pi.currentPage - 1 }"/>
			                <c:param name="search" value="${rs.search }"/>
		                </c:url>
	                <a href="${before}">
	                	<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
	                </a> &nbsp;
	       			</c:if>
	       		</c:if>
	            
				 
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
			   		<c:if test="${ p eq pi.currentPage }">
	                        <font color="red" style="font-size: 13px;font-weight: 900;font-family: 'arial',serif;line-height: 35px;">
	                        <b>${ p }</b> &nbsp;&nbsp;</font>
	                </c:if>
						
				 	<c:if test="${ empty rs }">	
	                     <c:if test="${ p ne pi.currentPage }">
	                        <c:url var="pagination" value="mReview.do">
	                           <c:param name="currentPage" value="${ p }"/>
	                     	</c:url>
	                     	<a href="${ pagination }" style="font-family: 'arial',serif;line-height: 35px;font-size: 13px;">
	                     	${ p }</a> &nbsp;
	                  	 </c:if>
	                </c:if>
	                  
	               	 <c:if test="${ !empty rs }">	
	                     <c:if test="${ p ne pi.currentPage }">
	                        <c:url var="pagination" value="mSearchReview.do">
		                        <c:param name="currentPage" value="${ p }"/>
			                    <c:param name="search" value="${rs.search }"/>
	                        </c:url>
	                     	<a href="${ pagination }" style="font-family: 'arial',serif;line-height: 35px;font-size: 13px;">
	                     	${ p }</a> &nbsp;
	                  	 </c:if>
	                </c:if>
	          	</c:forEach>
	               
               	<c:if test="${ empty rs }">
               		<c:if test="${ pi.currentPage eq pi.maxPage }">
						<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
					</c:if>
				
					<c:if test="${ pi.currentPage ne pi.maxPage }">
						<c:url var="after" value="mReview.do">
		                   	<c:param name="currentPage" value="${pi.currentPage +1 }"/>
	                 	</c:url>
	                 	<a href="${after}">
	              			<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
	              		</a>
	              	</c:if>
               </c:if>
               
               <c:if test="${ !empty rs }">
               		<c:if test="${ pi.currentPage eq pi.maxPage }">
						<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
					</c:if>
					
					<c:if test="${ pi.currentPage ne pi.maxPage }">
						<c:url var="after" value="mSearchReview.do">
	                     	<c:param name="currentPage" value="${pi.currentPage +1 }"/>
	           		     	<c:param name="search" value="${rs.search }"/>
                  		</c:url>
                  		<a href="${after}">
               				<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
               			</a>
             		</c:if>
               </c:if>
               
               <c:if test="${empty rs }">
               		<c:if test="${ pi.currentPage eq pi.maxPage }">
               			<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
               		</c:if>
               		
               		<c:if test="${ pi.currentPage ne pi.maxPage }">
	               		<c:url var="end" value="mReview.do">
	               			<c:param name="currentPage" value="${pi.maxPage }"/>
	               		</c:url>
						<a href="${end }" class="last">
							<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
						</a>
               		</c:if>
               </c:if>
               
               <c:if test="${ !empty rs }">
	               <c:if test="${ pi.currentPage eq pi.maxPage }">
	               		<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
	               </c:if>
	               
	               <c:if test="${ pi.currentPage ne pi.maxPage }">
	               		<c:url var="end" value="mSearchReview.do">
	               			<c:param name="currentPage" value="${pi.maxPage }"/>
	           		     	<c:param name="search" value="${rs.search }"/>	
	               		</c:url>
						<a href="${end }" class="last">
							<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
						</a>
	               </c:if>
               </c:if>
               </c:if>
			</div>
			<hr class="layout">
		</div>
		<jsp:include page="footer.jsp"/>
		</div>
	
	
	
	
	<script>
		$(".reviewX").click(function(){
			var rv_no = $(this).parents('li').find('.rv_no').val();
			console.log("rv_no : " + rv_no);
			
			if(confirm("해당 리뷰를 삭제하시겠습니까?") == true){
				$.ajax({
					url : "reviewDelete.do",
					data : {rv_no : rv_no},
					success : function(data){
						console.log(data);
						
						if(data = "ok"){
							location.reload();
						}else{
							alert("삭제실패염")
						}
					}
				})
			} else
				return false;
		});
	
	
	
	
	
	
	function sort(){
		var sort = $('#sort option:selected').val();
		var count = 0;
		$.ajax({
			url : "mReviewSort.do",
			data : {Sort : sort},
			dataType:"json",
			success : function(data) {
				 $('.menuul').children('li').remove();
				 $('.menuul').children('div').remove();
				console.log(data);
				for(var i=0; i<data.list.length;i++){
					var src = data.list[i].prdtPath+data.list[i].prdtImg;
					for(var j=0; j<data.rc.length;j++){
						if(data.list[i].prdtCode == data.rc[j].prdt_code){
							$('.menuul').append('<li class="reviews_index_gallery_review review">'+
		 					 		'<input type="hidden" class="rv_no" value="'+data.list[i].rvNo+'" >'+
									'<div class="photo_review_thumbnail js-link-fullscreen-popup">'+
										'<div class="photo_review_thumbnail__thumbnail_container">'+
										'<ul>'+
												'<li class="photo_review_thumbnail__review_image_thumbnail">'+
													'<a onclick="review1(this)">'+
														'<img class="js-review-image" alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="'+data.list[i].rvImage+'"'+
														'style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray; height:280px;">'+
													'</a>'+
												'</li>'+
											'</ul>'+
											'<div class="photo_review_thumbnail__review_info">'+
												'<div class=" photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">'+
													'<div class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
												'</div>'+
											'</div>'+
										'</div>'+
										'<div style="border-radius: 2%; width: 90%; margin-left: 5%;" class="photo_review_thumbnail__review_author_info">'+
											'<div style="margin-top: 2%; border-radius: 2%; height:17px;" class="photo_review_thumbnail__review_title js-translate-review-message">'+
												''+data.list[i].rvInfo+''+
											'</div>'+
											'<br>'+
											'<div style="color: gray;" class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
												'<div class="photo_review_thumbnail__author_name" style="float: left;">'+
													'<!-- 작성자 -->'+
													'<strong>'+data.list[i].memName+'</strong>'+
												'</div>'+

												'<div class="photo_review_thumbnail__created_at">'+
													''+data.list[i].rvDate+''+
												'</div>'+
												'<!-- 내가 리뷰 작성한 내용 -->'+
												'<hr>'+
											'</div>'+
										'</div>'+
									'</div>'+

									'<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe ">'+
										'<div class="reviews_index_gallery_review__review_product_thumbnail">'+
											'<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="'+src+'" style="padding-right: 3%; opacity: 1; float: left;">'+
										'</div>'+
										'<div class="reviews_index_gallery_review__review_product_info">'+
											'<div class="reviews_index_gallery_review__product_info_title">'+
												'<!-- 내가 구매한 상품명 -->'+
												''+data.list[i].prdtName+''+
											'</div>'+
													
											'<div class="reviews_index_gallery_review__product_info_feedbacks" style="margin-left : 5px;">'+
														'<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰'+
															'<strong style="color: black;">&nbsp'+data.rc[j].count +'&nbsp</strong>'+
														'</span>'+
												'<br>'+
												'<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점'+
													'<strong style="color: black;" id="starArea'+count+'o">&nbsp' + data.list[i].rvPoint +'&nbsp</strong>'+
												'</span>'+
											'</div>'+
											'<div class="reviewDelete" style="float: right; margin-right: -5px;">'+
												'<span>'+
													'<strong class="reviewX">X</strong>'+
												'</span>'+
											'</div>'+
										'</div>'+
									'</div>'+
								'</li>');
								
								
								var star1 = '<i class="fa fa-fw fa-star"></i>'
						   	 	var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 	var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 	var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 	var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 	
						   	 	if(data.list[i].rvPoint==1) {
						   	 		$('#starArea'+count+'o').after(star1);
						      	 } else if(data.list[i].rvPoint==2) {
						      		$('#starArea'+count+'o').after(star2);
						      	 } else if(data.list[i].rvPoint==3) {
						      		$('#starArea'+count+'o').after(star3);
						      	 } else if(data.list[i].rvPoint==4) {
						      		$('#starArea'+count+'o').after(star4);
						      	 } else if(data.list[i].rvPoint==5) {
						      		$('#starArea'+count+'o').after(star5);
						      	 }
							}
						} count++;
					}
				}
			})
		}
	
		 function pbSearch() {
			 var search_key = $('#search_key').val();
			 var search = $('#search').val();
			 
			 location.href="mBoardsearch.do?search_key="+search_key+"&search="+search;
		 }
		 
 		 function boardmove(bm){
			 
 			var b_cate_no=$(bm).parents('tr').find('.b_cate_no').val();
 			
 			console.log(b_cate_no);
 			
 			if(b_cate_no == 1){
 				location.href="product_board.do";
 			} else if(b_cate_no == 2) {
 				location.href="delivery_board.do";
 			} else if(b_cate_no == 3) {
 				location.href="delivery_cancel.do";
 			} else if(b_cate_no == 4) {
 				location.href="product_change.do";
 			} else if(b_cate_no == 5) {
 				location.href="bank_insert_board.do";
 			} else if(b_cate_no == 6) {
 				location.href="bad_product_board.do";
 			}
			
		 }
		 
		 function prdtDetail(pd) {
			 var q_no = $(pd).parents('tr').find('.q_no').val();
			 console.log(q_no);
			 
			 location.href="product_board_detailView.do?qna_no="+q_no;
		 }
		 			 
		 function prdtDetail2(pd) {
			 var q_no = $(pd).parents('tr').find('.q_no').val();
			 console.log(q_no);
			 
			 location.href="product_board_detail.do?qna_no="+q_no;
		 }
	</script>
	
	<script>
	$('#heartClick').click(function() {
		 var rv_no = $('#rv_no2').val();
		 var likeCheck = $('#likeCheck').val();

		 console.log("rv___no: " + rv_no);
		 var count = 0;

		  $.ajax({
			 url:"reviewLike.do",
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
	<!--리뷰 모달 디테일 스크립트-->
	function review1(en){
		 if("${loginMember.memId}"==""){
			 alert("로그인 후 이용해주세요!");
		 } else{

		 $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();
	     $('.mySlides').remove();

		 var rv_no = $(en).parents('li').find('.rv_no').val();
		 $("#rv_no2").val(rv_no);

		var rvc_no = $('.rvc_no').val();
		 var like_img="";
		 var count = 0;
		 console.log(rv_no);


		 $.ajax({
			 url:"reviewDetail.do",
			 dataType:"json",
			 data : {rv_no : rv_no},
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
				/* if(r.ph.length == 1){
					 $('#contentimgs1').attr("src",r.ph[0].rpPhoto);
				 }else{
					 $('#contentimgs1').attr("src",r.ph[0].rpPhoto);
					 $('#contentimgs2').attr("src",r.ph[1].rpPhoto);
				 } */
				if(r.ph.length == 1){
					$('#movePage1').css("display","none");
					$('#movePage2').css("display","none");
				}else{
					$('#movePage1').css("display","block");
					$('#movePage2').css("display","block");
				}

				$('#starstarArea').children('#starstar1').remove();
				for(var i=1; i<r.r.rvPoint;i++){
					$('#starstar').after('<i class="fa fa-fw fa-star" id="starstar1"></i>')
				}

			  for(var i =0; i<r.ph.length;i++){
				  if(i == 0){
						$('#nextPh').after(' <div id="img1" class="mySlides" style="display: block;">'+
	                            '<div class="numbertext" ><font style="font-size:14px;">1/ '+r.ph.length+'</font></div>'+
	                            '<img class="contentimgs" id="contentimgs1" src="'+r.ph[0].rpPhoto+'" alt="sample1" style="margin-top:-5%;width:800px;">'+
	                            '</div>')
				  }else{
						$('#img1').after(	'<div class="mySlides" style="display: none;">'+
			                      '<div class="numbertext"><font style="font-size:14px;">2 / '+r.ph.length+'</font></div>'+
			                      '<img class="contentimgs" id="contentimgs2" src="'+r.ph[1].rpPhoto+'" alt="sample2" style="margin-top:-5%;width:800px;" >'+
			                  '</div>')
				  }
			 }


				 if(r.lhl.likeCheck == "N"){
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-noncheck.png") ;
				 }else if(r.lhl.likeCheck == "Y"){
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-check.png");
				 }
				/*  $('#pImage').text(r.r.prdtImage); */
				 console.log(r.r.prdtName);
			 },error : function(){
					alert('리뷰에러')
			}
		 });

		  $.ajax({

				url:"rList.do",
				dataType:"json",
				data : {rv_no:rv_no},
				success:function(data) {
				 console.log(data.rplist[0]);
					 for(var i=0;i<data.rplist.length;i++) {

						 if(data.rplist[i].memNo =="${loginMember.memNo}"){
							 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
							 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
			                          	'<small>'+data.rplist[i].rvComment+'</small>'+
			                        	'<button style="" onclick="DeleteReply(this);">&times;</button><br>'+
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

        var ulr = $(this).attr("src");
        $("#modalimg").attr("src", ulr);
        $('#modal').show();

		 }
    }


      function modalclose(){
          $('#modal').css("display","none");
      }

      var slideIndex = 1;


      showSlides(slideIndex);

      function plusSlides(n) {
          showSlides(slideIndex += n);
      }

      function currentSlide(n) {
          showSlides(slideIndex = n);
      }

      function showSlides(n) {
          var i;
          var slides = document.getElementsByClassName("mySlides");
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
	</script>

	<script>
	function DeleteReply(dr) {
		var rvcNo=$(dr).parents('.replyDiv').find('.rvc_no').val();
		 var rv_no = $('#rv_no2').val();
		 $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();

		$.ajax({
			url:"DeleteReply.do",
			dataType:"json",
			data : {rvcNo : rvcNo, rv_no : rv_no},
			success:function(data) {
				 console.log(data.rplist[0]);
				 for(var i=0;i<data.rplist.length;i++) {

					 if(data.rplist[i].memNo =="${loginMember.memNo}"){
						 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
						 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
		                          	'<small>'+data.rplist[i].rvComment+'</small>'+
		                        	'<button style="" onclick="DeleteReply(this);">&times;</button><br>'+
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
	
	function Warning(wa) {

		if(confirm('댓글을 신고 하겠습니까?') ==true){
		var rvcNo=$(wa).parents('.replyDiv').find('.rvc_no').val();

		 var rv_no = $('#rv_no2').val();
		 $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();

		 $.ajax({
				url:"WarningReply.do",
				dataType:"json",
				data : {rvcNo : rvcNo, rv_no : rv_no},
				success:function(data) {
					 console.log(data.rplist[0]);
					 for(var i=0;i<data.rplist.length;i++) {

						 if(data.rplist[i].memNo =="${loginMember.memNo}"){
							 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
							 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
			                          	'<small>'+data.rplist[i].rvComment+'</small>'+
			                        	'<button style="" onclick="DeleteReply(this);">&times;</button><br>'+
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
			url:"addReply.do",
			data : {rvComment : rvComment, rv_no : rv_no},
			success:function(data) {
				if(data=="success") {
					//getReplyList();
					 $.ajax({

						url:"rList.do",
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
			url:"rList.do",
			data:{rv_no:rv_no},
			dataType:"json",
			success:function(data) {

			}

		})
	}
	
	</script>
</body>
</html>


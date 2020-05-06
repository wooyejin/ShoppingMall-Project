<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>oT.</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	
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
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>">
	
<!--===============================================================================================-->
</head>
<body class="animsition">


	<!-- Footer -->
	<footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
		<div class="flex-w p-b-90"style="margin-left:0%;margin-bottom:0%;margin-top:-2%;">
			<span class="linedivide1" ></span>
					
			<div class="w-size6 p-t-30 p-l-15 p-r-15 respon3" style="margin-right:-21%;">
				<h4 class="s-text12 p-b-30">
					CS
				</h4>

				<div>
					<p class="s-text7 w-size27">
					010-9252-2608<br>
					평일 11:00 ~ 18:00<br>
					점심 13:00 ~ 14:00<br>
					토,일,공휴일 휴무
					</p>

					<div class="flex-m p-t-30">
						<a href="https://www.instagram.com/blackup_kr/" target="blank_" class="topbar-social-item fa fa-instagram"></a>
					</div>
				</div>
			</div>
	<span class="linedivide1"></span>
					
			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">
					return address
				</h4>

				<ul  style="font-size:12px;">
					
					<li class="p-b-9">
						서울특별시 동대문구
					</li>

					<li class="p-b-9">
						
							전농로 10길
					
					</li>

					<li class="p-b-9">
							sk아파트 200동
					</li>
				</ul>
			</div>
	<span class="linedivide1"></span>
					
			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4"style="margin-left:2%;">
				<h4 class="s-text12 p-b-30">
					BANK
				</h4>

				<ul>
					<li class="p-b-9" style="font-size:11px;">
						국민 093402-04-081571
					</li>

					<li class="p-b-9" style="font-size:13px;">
							예금주  : (주)oT.
					</li>
				</ul>
			</div>
	<span class="linedivide1"></span>
					
			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4"style="margin-left:2%;">
				<h4 class="s-text12 p-b-30">
					Board
				</h4>

				<ul>
<c:url var="faq" value="faq.do"/>
					<li class="p-b-9">
						<a href="${faq }" class="s-text7">
							Q&A
						</a>
					</li>
					<li class="p-b-9">
						<a href="${faq }" class="s-text7">
							FaQ
						</a>
					</li>
<c:url var="review" value="review.do"/>
					<li class="p-b-9">
						<a href=${review }" class="s-text7">
							REVIEW
						</a>
					</li>
<c:url var="notice" value="notice.do"/>
					<li class="p-b-9">
						<a href="${notice }" class="s-text7">
							NOTICE
						</a>
					</li>
	<c:url var="dailyCheck" value="dailyCheck.do"/>

					<li class="p-b-9">
						<a href="${dailyCheck }" class="s-text7">
							출석체크
						</a>
					</li>
				</ul>
			</div>
	<span class="linedivide1"></span>
					
			<div class="w-size8 p-t-30 p-l-15 p-r-15 respon3"style="margin-right:-3%;">
				<h4 class="s-text12 p-b-30">
					MODEL
				</h4>

				<form>
					<div class="effect1 w-size9">
						<span class="effect1-line"></span>
					</div>

					<div class="w-size2 p-t-20">
						<!-- Button -->
						<a href="modelmailView.do" class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4" style="font-size:10px;width:50%;height:auto;border:2px solid darkgray">
							모델 메일지원 <br>바로가기
						</a>
					</div>

				</form>
			</div>
				<span class="linedivide1"></span>
					
		</div>

		<div class="t-center p-l-15 p-r-15"style="margin-bottom:-2%;">
			<a href="#">
				<img class="h-size2" src="<c:url value="/resources/images/icons/paypal.png"/>" alt="IMG-PAYPAL">
			</a>

			<a href="#">
				<img class="h-size2" src="<c:url value="/resources/images/icons/visa.png"/>" alt="IMG-VISA">
			</a>

			<a href="#">
				<img class="h-size2" src="<c:url value="/resources/images/icons/mastercard.png"/>" alt="IMG-MASTERCARD">
			</a>

			

			<div class="t-center s-text8 p-t-20">
				Copyright © 2018 All rights reserved.
			</div>
		</div>
	</footer>




	<!-- 리모콘 -->
	<div class="btn-back-to-top bg0-hov" id="myBtn" style="height:320px; background:black; margin-bottom:10%;">
		

		
		<button class="header-icon1 js-show-header-dropdown" onclick="cartList11()" style="width:88%;height:12%;background:snow;margin-top:-650%;border-radius:10%;" >
					
				<div class="header-wrapicon2 m-r-13" style="width:75%;height:75%;">
						<img onclick="cartList11()" style="border-radius:10%;" src="<c:url value="/resources/images/icons/icon-header-02.png"/>" onmouseover="this.src='/ot/resources/images/icons/icon-header-02-2.png'"
						onmouseout="this.src='/ot/resources/images/icons/icon-header-02.png'" class="header-icon1 js-show-header-dropdown" alt="ICON" >
						
						<!-- <img src="기본 이미지 주소" onmouseover="this.src='마우스 오버 상태의 이미지 주소'" 
						onmouseout="this.src='기본 이미지 주소'"> -->
						
					
						<span class="header-icons-noti" id="p_count"></span> 
						<c:url var="cartbutton" value="cartbutton.do"/>
						<!-- Header cart noti -->
						<div class="header-cart header-dropdown" style="border-radius:10px;">
							<ul id="cartList12" class="header-cart-wrapitem">
								
							</ul>

							<div id="prdtPrice" class="header-cart-total">
								
							</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn" >
									<!-- Button -->
									<a href="${cartbutton }" class="hov1 s-text1 trans-0-4 yg_btn_148">
										<span id="idMsg3">장바구니</span>
									</a>
								</div>

								
							</div>
							
							<script>
							$(function(){
									if("${loginMember.memId}"!=""){
								$.ajax({
									url:"cartbutton2.do",
									dataType:"json",
									success:function(data) {
									 			var count=data.length;
									 
											 $('#p_count').append(count);
									},error:function() {
									}

								 })
									}
							})
							
							
							function cartList11() {
								
								if("${loginMember.memId}"==""){
									 alert("로그인이 필요합니다.");
									 location.href="loginView.do";
								
							}else{
								$.ajax({

									url:"cartbutton1.do",
									dataType:"json",
									success:function(data) {
									 var total=0;
											 for(var i in data){
							$('#cartList12').append('<li name="p_count" class="header-cart-item">'+
													'<div class="header-cart-item-img">'+
													'<img id="contentimgs1" src="'+data[i].path+data[i].image+'" alt="cart" style="height:70px;width:55px;">'+
													'</div>'+
													'<div class="header-cart-item-txt">'+
													'<a href="http://localhost:8888/ot/product_detail.do?product_detail='+data[i].prdt_no+'" class="header-cart-item-name">'+data[i].prdt_name+'</a>'+
													'<span class="header-cart-item-info">'+
													'<font id="total" class="format-money">'+data[i].prdt_price+'</font>&nbsp;<small>WON</small></span>'+
													'</div>'+
													'</li>'
													);
											 total+=data[i].prdt_price;
											 	}
											 
											 $('#prdtPrice').append('Total:<font id="total" class="format-money">'+total+'</font>&nbsp;<small>WON</small>');
									 
									},error:function() {
										alert("카트리스트에러임");
									}

								 })
							}
							}
							</script>
							
							
							
							
							
						</div>
						
					</div>
					
		</button>
		<c:url var="orderList" value="mList.do"/>
		<c:url var="loginView" value="loginView.do"/>		
		<c:url var="wishlist" value="mWishlist.do">
			<c:param name="memNo" value="${loginMember.memNo }"/>
		</c:url>
		<c:url var="MyPage" value="MyPage.do">
						<c:param name="memNo" value="${loginMember.memNo}"/>
					</c:url>
					
		<c:if test="${ !empty sessionScope.loginMember }">
		<button style="width:88%;height:12%;background:snow;margin-top:-430%;margin-left:-88%;border-radius:10%;"href="/web/index.jsp">
		<a class="symbol-btn-back-to-top" href="${orderList }" >
			<img style="border-radius:10%;" src="<c:url value="/resources/images/icons/icon-header-03.png"/>" class="header-icon1" alt="ICON"
				onmouseover="this.src='/ot/resources/images/icons/icon-header-03-3.png'"
				onmouseout="this.src='/ot/resources/images/icons/icon-header-03.png'">
		</a></button>
		</c:if>
		
		<c:if test="${ empty sessionScope.loginMember }">
		<button style="width:88%;height:12%;background:snow;margin-top:-430%;margin-left:-88%;border-radius:10%;"href="/web/index.jsp">
		<a id="orderlist" class="symbol-btn-back-to-top" href="${loginView }" >
			<img style="border-radius:10%;" src="<c:url value="/resources/images/icons/icon-header-03.png"/>" class="header-icon1" alt="ICON"
				onmouseover="this.src='/ot/resources/images/icons/icon-header-03-3.png'"
				onmouseout="this.src='/ot/resources/images/icons/icon-header-03.png'">
		</a></button>
		</c:if>

		<c:if test="${ !empty sessionScope.loginMember }">
			<button style="width:88%;height:12%;background:snow;margin-top:-210%;margin-left:-88%;border-radius:10%;" href="/web/index.jsp">
			<a class="symbol-btn-back-to-top" href="${wishlist }" >
			
				<img style="border-radius:10%;" src="<c:url value="/resources/images/icons/icon-header-04.png"/>" class="header-icon1" alt="ICON"
					onmouseover="this.src='/ot/resources/images/icons/icon-header-04-4.png'"
					onmouseout="this.src='/ot/resources/images/icons/icon-header-04.png'">
			</a></button>
		</c:if>
		
		<c:if test="${ empty sessionScope.loginMember }">
		<button style="width:88%;height:12%;background:snow;margin-top:-210%;margin-left:-88%;border-radius:10%;" href="/web/index.jsp">
			<a id="wishlist" class="symbol-btn-back-to-top" href="${loginView }" >
				<img style="border-radius:10%;" src="<c:url value="/resources/images/icons/icon-header-04.png"/>" class="header-icon1" alt="ICON"
					onmouseover="this.src='/ot/resources/images/icons/icon-header-04-4.png'"
					onmouseout="this.src='/ot/resources/images/icons/icon-header-04.png'">
			</a></button>
		</c:if>
		
		
		<c:if test="${ !empty sessionScope.loginMember }">	
		<button style="width:88%;height:12%;background:snow;margin-top:10%;margin-left:-88%;border-radius:10%;"href="/web/index.jsp">
			<a class="header-wrapicon1 dis-block"href="${MyPage }" >
				<img style="border-radius:10%;" src="<c:url value="/resources/images/icons/icon-header-01.png"/>" class="header-icon1" alt="ICON"
				onmouseover="this.src='/ot/resources/images/icons/icon-header-01-1.png'"
				onmouseout="this.src='/ot/resources/images/icons/icon-header-01.png'">
			</a></button>
		</c:if>
		<c:if test="${ empty sessionScope.loginMember }">	
		<button style="width:88%;height:12%;background:snow;margin-top:10%;margin-left:-88%;border-radius:10%;"href="/web/index.jsp">
			<a id="mypage" class="header-wrapicon1 dis-block"href="${loginView }" >
				<img style="border-radius:10%;" src="<c:url value="/resources/images/icons/icon-header-01.png"/>" class="header-icon1" alt="ICON"
				onmouseover="this.src='/ot/resources/images/icons/icon-header-01-1.png'"
				onmouseout="this.src='/ot/resources/images/icons/icon-header-01.png'">
			</a></button>
		</c:if>
		
		<button class="chatBtn" style="width:88%;height:12%;margin-top:230%;margin-left:-88%;border-radius:10%;">
			<img  style="border-radius:10%;" src="/ot/resources/images/icons/icon-header-05.png" class="header-icon1" alt="ICON"
				onmouseover="this.src='/ot/resources/images/icons/icon-header-05-5.png'"
				onmouseout="this.src='/ot/resources/images/icons/icon-header-05.png'">
		</button>
		<button style="width:88%;height:12%;background:snow;margin-top:450%;margin-left:-88%;border-radius:10%;"href="/web/index.jsp">
		<a class="symbol-btn-back-to-top" href="index.jsp" >
			<img  style="border-radius:10%;" src="<c:url value="/resources/images/icons/icon-header-06-6.png"/>" class="header-icon1" alt="ICON"
				>
		</a></button>
	
		
		<span class="symbol-btn-back-to-top"href="index.jsp" style="margin-top:700%;margin-left:-35%;">
			<i class="fa fa-angle-double-up" aria-hidden="true"style="margin-top:-100%;margin-left:-75%;"></i>
		</span>
		
	</div>
	
	<!-- Container Selection1 -->
	<div  id="dropDownSelect1" >
	<div class="btn-back-to-top bg0-hov" id="chat_container" style="cursor:default;">
            <div class="portlet portlet-default" style="width: 440px;">
               <div class="portlet-heading"  style="background: #333330; border-radius:25%; margin-bottom:-10px;  height: 40px; ">
                  <div class="portlet-title" style="background: #333330; border-radius:60%;margin-bottom:-5px;">
                     <h4 style="padding-left: 2%; float:left; color: white;padding-top: 10px;font-size: 15px;"><img  style="width: 13px;height: 11px;
                     margin-bottom: 6px;margin-right: 10px;" 
                     src="<c:url value="/resources/images/icons/favicon.png"/>"></img>실시간 문의</h4><button class="chatBtn" style="color:white; margin-left:64%; margin-top:1.2%">X</button>
                  </div>
                  <div class="clearfix"></div>
               </div>
               <div id="chat" >
                  <div id="chatList"  style="background:#f3f3f3;overflow-y:auto;  width: auto; height: 450px;
                  border-right: 6px solid #333330;border-left: 6px solid #333330;">
                   <!--메세지 샘플창 시작 -->
             <!--      <div> 
                  <span style="font-size:12px; margin-left: 18px">상담사</span>
                 <div style="display:flex">
                  <div style="color:black;width:270px;border-radius: 10px;background:white;margin-left:3.5%;margin-top:1%;">
                  <pre  style="resize:none; font-size:12px;background:none;
                  margin-left:3%;margin-top:3%;border:none;">상담사 메세지창 샘플입니다만????</pre>
                  </div>
                  <span style="font-size:7px;margin-left:15px;margin-top: auto;">06:10 am</span>
                  </div>
                  </div> -->
                  <!--메세지 샘플창 끝 -->
                  
                  
                  </div>
                    <div class="portlet-footer" style="border-radius:15%;">
                      <div class="row">
                      </div>
                      <div style="height: 90px;padding: 2%;background: #333330;border-radius:3%;margin-top:-10px;">
                         <div class="form-group col-xs-10" style="width: 100%;padding: 0px; display: inline-flex;">
                  
                             <textarea onkeyPress="keyevent();" style=" resize:none; font-size:15px; margin-top:3%;height: 110%;
                             border-radius:4%;width: 89%;" id="chatContent" class="form-control"  
                             placeholder="메세지를 입력하세요." maxlength="100" ></textarea>
                 <button id="addChat" style="margin-left: 2%;background: white; width: 16%;height: 30%;margin-top: 6%;" 
                 type="button" class="btn btn-default pull-right" onclick="addChat();" >전송</button>
                         </div>
                         <div class="form-group col-xs-2">
                              <div class="clearfix"></div>
                        </div>
                     </div>
                  </div>      
               </div>
            </div>
   		</div>
	</div>
	
	

	<!-- Modal Video 01-->
	<div class="modal fade" id="modal-video-01" tabindex="-1" role="dialog" aria-hidden="true">

		<div class="modal-dialog" role="document" data-dismiss="modal">
			<div class="close-mo-video-01 trans-0-4" data-dismiss="modal" aria-label="Close">&times;</div>

			<div class="wrap-video-mo-01">
				<div class="w-full wrap-pic-w op-0-0"><img src="<c:url value="/resources/images/icons/video-16-9.jpg"/>" alt="IMG"></div>
				<div class="video-mo-01">
					<iframe src="https://www.youtube.com/embed/Nt8ZrWY2Cmk?rel=0&amp;showinfo=0" allowfullscreen></iframe>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="chat-test" value="문태환">
	
<!--===============================================================================================-->
	<script src="http://localhost:82/socket.io/socket.io.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
	<!-- 리모콘 장바구니 -->
	
	
	<script>
	$(document).ready(function(){
		
		var socket = io("http://localhost:82");
	
		if("${ !empty sessionScope.loginMember}" && "${loginMember.memId}" !='') {
			socket.emit("login_member", {id:"${loginMember.memId}"})
		}

		 $('#addChat').click(function(){
			 
				if(!$('#chatContent').val()==""){
	   	 
			var today = new Date();   
			var hours = today.getHours(); // 시
			var minutes = today.getMinutes();  // 분
			  var ampm = hours >= 12 ? 'pm' : 'am';
			  hours = hours % 12;
			  hours = hours ? hours : 12; // the hour '0' should be '12'
			  minutes = minutes < 10 ? '0'+minutes : minutes;
			  var strTime = ampm + ' '+hours + ' : ' + minutes;
			
			var content = document.getElementById('chatContent').value;
		//내가 말한 내용 + 보낼내용
			  $('#chatList').append('<div align="right" style="text-align: right;"><span style="font-size:12px; margin-right: 10px">나</span>'+
                      '<div style="display:flex; margin-left:4.5%;">'+
                      '<span style="font-size:7px;margin-left:55px;margin-top: auto;">'+strTime+'</span>'+
                      '<div style="text-align: left; width: 270px;margin-left:3.5%;margin-top: 1%;margin-bottom: 1%;background: aliceblue;border-radius: 10px;">' +
                      '<pre style="color:black;word-break:break-all;word-wrap:break-word;white-space:pre-wrap;font-size:12px;background:none;'+
                      'margin-left:3%;margin-top:3%;border:none;">'+content+'</pre>'+
                      '</div>'+
                      '</div>' + 
                      '</div>')
              $('#chatList').scrollTop($('#chatList')[0].scrollHeight)
                      
			
			socket.emit("send_msg", {id:"${loginMember.memId}",msg:content,Time:strTime,type:"user"});
		
			document.getElementById('chatContent').value = "";
			
	                          
				}
		});
		//소켓 서버로 부터 send_msg를 통해 이벤트를 받을 경우 
			socket.on('send_msg', function(data) {
				if(data.id == "${loginMember.memId}"){
					if(data.type == "admin"){	
				
				 $('#chatList').append('<div>'+ 
                 '<span style="font-size:12px; margin-left: 18px">상담사</span>'+
                 '<div style="display:flex">'+
                 '<div style="color:black;width:270px;border-radius: 10px;background:white;margin-left:3.5%;margin-top:1%;">'+
                 '<pre  style="resize:none; font-size:12px;background:none;'+
                 'margin-left:3%;margin-top:3%;border:none;">'+data.msg+'</pre>'+
                  '</div>'+
                  '<span style="font-size:7px;margin-left:15px;margin-top: auto;">'+data.Time+'</span>'+
                  '</div>'+
                  '</div>')
			    }
				}
			});
	});
	

	
	</script>
	
	
	<script>
	function keyevent(){
	
		if(event.keyCode==13){addChat();}

	}
	function reviewReply(){
		
		if(event.keyCode==13){addChat();}

	}
	var check = true
	
	$('.chatBtn').click(function(e){
		
			   $('#chat_container').css('display','block');
			   
				var socket = io("http://localhost:82");
			   
			       userId = "${loginMember.memId}";
				//클릭한 아이디 서버로 보내기
				socket.emit("userId2",userId);
				//몽고디비에서 find한 값 가져오기
				
				
				socket.on("chatOne2",function(chatOne){
					if(chatOne[0].userId == userId){
					console.log("chatOne : "+chatOne)
				var chatList="";
				for(var i=1;i<chatOne[0].message.length;i++){
					if(chatOne[0].type[i] == "user"){
					
					 var chat='<div align="right" style="text-align: right;"><span style="font-size:12px; margin-right: 10px">'+chatOne[0].userId+'</span>'+
		                     '<div style="display:flex; margin-left:4.5%;">'+
		                     '<span style="font-size:7px;margin-left:55px;margin-top: auto;">'+chatOne[0].Time[i]+'</span>'+
		                     '<div style="text-align: left; width: 270px;margin-left:3.5%;margin-top: 1%;margin-bottom: 1%;background: aliceblue;border-radius: 10px;">' +
		                     '<pre style="color:black;word-break:break-all;word-wrap:break-word;white-space:pre-wrap;font-size:12px;background:none;'+
		                     'margin-left:3%;margin-top:3%;border:none;">'+chatOne[0].message[i]+'</pre>'+
		                     '</div>'+
		                     '</div>' + 
		                     '</div>'; 
		             
					}else if(chatOne[0].type[i] == "admin"){
						var chat='<div>'+ 
							     '<span style="font-size:12px; margin-left: 18px">상담사</span>'+
							     '<div style="display:flex">'+
							     '<div style="color:black;width:270px;border-radius: 10px;background:white;margin-left:3.5%;margin-top:1%;">'+
							     '<pre  style="resize:none; font-size:12px;background:none;'+
							     'margin-left:3%;margin-top:3%;border:none;word-break:break-all;word-wrap:break-word;white-space:pre-wrap;">'+chatOne[0].message[i]+'</pre>'+
							     '</div>'+
							     '<span style="font-size:7px;margin-left:15px;margin-top: auto;">'+chatOne[0].Time[i]+'</span>'+
							     '</div>'+
							     '</div>'
					}
				     chatList += chat;
				}
					}
				
				   $('#chatList').html(chatList);
			 $('#chat-box').scrollTop($('#chat-box')[0].scrollHeight)
				});
		e.stopPropagation();
		if(check == true){
		$('#chat_container').fadeIn(100);
		check=false;
		}else{
		$('#chat_container').fadeOut(100);
		check=true;
		}
			
	});
	
	</script>


<!--==============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/animsition/js/animsition.min.js"/>"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/bootstrap/js/popper.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/select2/select2.min.js"/>"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/slick/slick.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/slick-custom.js"/>"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/countdowntime/countdowntime.js"/>"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/lightbox2/js/lightbox.min.js"/>"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/sweetalert/sweetalert.min.js"/>"></script>
	<script type="text/javascript">
	
	function wish(arguments){
	
			
			var nameProduct = $('#'+arguments+'a').parent().parent().parent().find('.block2-name').html();
			var productId = arguments;
				if("${loginMember.memId}"==""){
					alert('로그인후 이용해주세요');
					location.href="loginView.do";
					
				}else{
					
					$.ajax({
						url:"wishInsert.do",
						type:"post",
						data:{prdtNo:productId},
						success:function(data){
							if(data =="ok"){
								swal(nameProduct, "관심상품에 등록되었습니다 !", "success");
							}else if(data == "fail"){
								swal(nameProduct, "이미 관심상품에 등록되어있는 상품입니다.");
							}
						}
					});
					
				
				}
		};

		/* $('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "Like 되었습니다 !", "success");
			});
		}); */
	
	</script>

<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/vendor/parallax100/parallax100.js"/>"></script>
	<script type="text/javascript">
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/js/main.js"/>"></script>
	<script>
//숫자 타입에서 쓸 수 있도록 format() 함수 추가
Number.prototype.format = function(){
    if(this==0) return 0;

    var reg = /(^[+-]?\d+)(\d{3})/;
    var n = (this + '');

    while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');

    return n;
};

// 문자열 타입에서 쓸 수 있도록 format() 함수 추가
String.prototype.format = function(){
    var num = parseFloat(this);
    if( isNaN(num) ) return "0";

    return num.format();
};

jQuery('.format-money').text(function() {
    jQuery(this).text(
        jQuery(this).text().format()
    );	
});
</script>

<script>
$('#orderlist').click(function(){
	alert("로그인 후 이용해주세요.");
})

$('#wishlist').click(function(){
	alert("로그인 후 이용해주세요.");
})

$('#mypage').click(function(){
	alert("로그인 후 이용해주세요.");
})


</script>

</body>
</html>

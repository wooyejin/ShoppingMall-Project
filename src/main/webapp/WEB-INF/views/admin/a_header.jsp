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

    <!--===============================================================================================-->
   <link rel="icon" type="image/png" href="<c:url value="/resources/images/icon/favicon.png"/>"/>
   
    <!-- Title Page-->
    <title>oT. ADMIN</title>
    	    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

    <!-- Fontfaces CSS-->
    <link href="<c:url value="/resources/acss/font-face.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/font-awesome-4.7/css/font-awesome.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/font-awesome-5/css/fontawesome-all.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/mdi-font/css/material-design-iconic-font.min.css"/>" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="<c:url value="/resources/avendor/bootstrap-4.1/bootstrap.min.css" />"rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<c:url value="/resources/avendor/animsition/animsition.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" />"rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/wow/animate.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/css-hamburgers/hamburgers.min.css" />"rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/slick/slick.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/select2/select2.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/avendor/perfect-scrollbar/perfect-scrollbar.css"/>" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<c:url value="/resources/acss/theme.css"/>" rel="stylesheet" media="all">
      <!-- chat -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script> 
    <!-- chat -->
 <style>
 #chat-list{
     position: absolute;
        margin-top: 390px; 
           margin-left: -500px;
 }
 
#chat_container{
      position: absolute;
      margin-top: 440px;
    margin-left: -1000px;
    display: none;
   
    
} 
 .portlet .portlet-footer{
 padding-right: 0px;
 padding-left: 0px;
 }
 .portlet .portlet-heading .portlet-title {
    float: none;
}
#chatlist-close{
	color:white; 
	margin-left:74%;

}
#chatList{
overflow-y:auto; padding:0%;overflow-y: auto; width: auto;height: 555px;

}
#chat-user{
list-style: none; padding-left: 0%
}
.user-icon{
border: 1px solid black;border-radius: 44px;height: 70px;
}
.user-text{
overflow:hidden; text-overflow:ellipsis; white-space:nowrap;
}
.massege-count{
background: orangered;color: white; border-radius: 100%;text-align: center;width: 38%;

}
a:cursor{
	hand;
}
 </style>
</head>
<body class="animsition">
    <div>
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="
                        index.jsp">
                            <img src="/ot/resources/aimages/icon/ot.png" alt="OT" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i> &nbsp; &nbsp; 통계</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="adminmain.html">당일현황</a>
                                </li>
                                <li>
                                    <a href="chart.html">월별매출량</a>
                                </li>
                                <li>
                                    <a href="table.html">상품판매순위</a>
                                </li>
                            </ul>
                        </li>
                       
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-shopping-cart"></i> &nbsp; &nbsp; 상품관리</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="productAdd.html">상품등록</a>
                                </li>
                                <li>
                                    <a href="productList.html">상품관리</a>
                                </li>
                            </ul>
                        </li>
    
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-tasks"></i> &nbsp; &nbsp; 관리</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="">회원관리</a>
                                </li>
                                <li>
                                    <a href="">주문관리</a>
                                </li>
                                <li>
                                    <a href="">재고관리</a>
                                </li>
                                <li>
                                    <a href="">쿠폰관리</a>
                                </li>
                                <li>
                                    <a href="">이벤트관리</a>
                                </li>
                                <li>
                                    <a href="">교환신청관리</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-truck"></i> &nbsp; &nbsp; 반품</a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fas fa-calendar-alt"></i> &nbsp; &nbsp; Q & A</a>
                        </li>
                       
                    </ul>
                </div>
            </nav>
        </header>
        <!--END HEADER MOBILE-->

       
       
       
         <!-- PAGE CONTAINER-->
         <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <div class="header-button">
                                <div class="noti-wrap">
                                <div>
                            <button id="chat-icon"><img style="width: 10%;margin-left: 7%;" src="/ot/resources/images/icons/chat_icon.png"></button>
                                </div>
                                <div id="chat-list" class="container bootstrap snippet" style=" display: none">
      <div class=row >
         <div class="col-xs-12" style="width: 530px;">
            <div class="portlet portlet-default" style="position: relative;left: -30px;top: 3px;background: #333330;">
               <div class="portlet-heading" style="background-color: #333330;">
                  <div class="portlet-title" style="    display: flex;">
                     <h4><i class="fa fa-circle text-green"></i>회원목록</h4><button id="chatlist-close">X</button>
                  </div>
                  <div class="clearfix"></div>
               </div>
               <div id="chat" class="panel-collapse collapse in">
                  <div id="chatList" class="portlet-body chat-widget" style="">
                  <ul id="chat-user">
             <!--     	 <li style="padding: 2%;">
                 	   <div style="display:flex">
						  <img src="/ot/resources/aimages/icons/user.png" alt="회원사진" class="user-icon">
						  <div style="width: 70%;">                
					  	  <h4 style="margin-left: 4%; font-weight: bold;">고객명</h4>
					  	  <p class="user-text"  style="margin-left: 5%;">안녕하세요~~!! 문의드립니다</p>
					  	  </div>
					  	  <div>
					  	  	<p style="margin-bottom: 22%;">오후 12:30</p>
					  	  	<p class="massege-count">1</p>	
					  	  </div>
					  	</div>
					 </li> -->
				 </ul>
                  </div>
                    <div class="portlet-footer" style="background: #333330;height: 80px;">
                      <div class="row">
                      </div>
                      <div class="row" style="height: 90px">
                     </div>
                  </div>      
               </div>
            </div>
         </div>
      </div>
   </div>
   
	<div class="btn-back-to-top bg0-hov" id="chat_container" style="cursor:default;">
            <div class="portlet portlet-default" style="width: 440px;">
               <div class="portlet-heading"  style="background: #333330; margin-bottom:-10px; ">
                  <div class="portlet-title" style="background: #333330; border-radius:60%;margin-bottom:-5px;height: 50px;">
                     <h4 style="padding-left: 2%; float:left; color: white;padding-top: 10px;font-size: 15px;"><img  style="width: 13px;height: 11px;
                     margin-bottom: 6px;margin-right: 10px;" 
                     src="/ot/resources/images/icons/favicon.png"></img>실시간 문의</h4><button id="chat-close" class="chatBtn" style="color:white; margin-left:68%; margin-top:4.2%">X</button>
                  </div>
  
               </div>
               <div id="chat" >
                  <div id="chat-box"  style="background:#f3f3f3;overflow-y:auto;  width: auto; height: 450px;
                  border-right: 6px solid #333330;border-left: 6px solid #333330;width: 100%">
                   <!--메세지 샘플창 시작 -->
                 <!--  <div> 
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
                           </div>
                        </div>
                    </div>
                </div>
            </header>
         <!-- PAGE CONTENT-->
         <div class="page-content--bgf7">
        <!-- BREADCRUMB-->
        <section class="au-breadcrumb2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="au-breadcrumb-content">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END BREADCRUMB -->

        <!-- Common HEADER , SIDEBAR -->
        
        
       <!-- COPYRIGHT-->
       <!--  <section class="p-t-60 p-b-20">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright">
                            <p>Copyright © 2020 ItSeOhYuN. All rights reserved. Template by <a href="https://colorlib.com">ItSeOhYuN</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!-- END COPYRIGHT-->
    </div>
            
        </div></div>



    <!-- Jquery JS-->
  
    <!-- Bootstrap JS-->
    <script src="<c:url value="/resources/avendor/bootstrap-4.1/popper.min.js"/>"></script>
    <script src="<c:url value="/resources/avendor/bootstrap-4.1/bootstrap.min.js"/>"></script>
    <!-- Vendor JS       -->
    <script src="<c:url value="/resources/avendor/slick/slick.min.js"/>">
    </script>
    <script src="<c:url value="/resources/avendor/wow/wow.min.js"/>"></script>
    <script src="<c:url value="/resources/avendor/animsition/animsition.min.js"/>"></script>
    <script src="<c:url value="/resources/avendor/bootstrap-progressbar/bootstrap-progressbar.min.js"/>">
    </script>
    <script src="<c:url value="/resources/avendor/counter-up/jquery.waypoints.min.js"/>"></script>
    <script src="<c:url value="/resources/avendor/counter-up/jquery.counterup.min.js"/>">
    </script>
    <script src="<c:url value="/resources/avendor/circle-progress/circle-progress.min.js"/>"></script>
    <script src="<c:url value="/resources/avendor/perfect-scrollbar/perfect-scrollbar.js"/>"></script>
    <script src="<c:url value="/resources/avendor/chartjs/Chart.bundle.min.js"/>"></script>
    <script src="<c:url value="/resources/avendor/select2/select2.min.js"/>">
    </script>

    <!-- Main JS-->
    <script src="http://192.168.20.3:82/socket.io/socket.io.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
<script>
// 소켓 접속시 채팅 회원리스트 불러오기
   $(document).ready(function(){
	   var socket = io("http://192.168.20.3:82");	
	   
	   socket.on('chats', function(data){
		   console.log(data);
		   
	var userList="";	   
		   
	for(var i=0;i<data.length;i++){
		
		var last = data[i].message.length-1;
		   if(last > -1){
			   
 		 var user = '<li style="padding: 2%;">'+
				   '<div style="display:flex">'+
				  '<img src="/ot/resources/images/icons/user.png" alt="회원사진" class="user-icon">'+
				  '<div style="width: 70%;">'+                
			  	  '<button  onclick="chatBtn(this)" style="margin-left: 4%; font-weight: bold;">'+data[i].userId+'</button>'+
			  	  '<p class="user-text"  style="margin-left: 5%;">'+data[i].message[last]+'</p>'+
			  	  '</div>'+
			  	  '<div>'+
			  	  	'<p style="margin-bottom: 22%;">'+data[i].Time[last]+'</p>'+
			  	  	'<p class="massege-count">'+data[i].count.length+'</p>'+
			  	  '</div>'+
			  	'</div>'+
			 	'</li>';
 		 userList += user;
		   }
    }
		$('#chat-user').html(userList)   
	
		
	 	 });
   });
   
  </script>
	
<script>
	
	var check = true
	
	
	$('#chat-icon').click(function(){
		if(check == true){
		$('#chat-list').fadeIn(100);;	
		check=false;
		}else{
			$('#chat-list').fadeOut(100);		
		check=true;
		}	
		
	})
	$('#chatlist-close').click(function(){
		$('#chat-list').fadeOut(100);		
		check=true;
	})
	
	/* function keyevent(){
	
		if(event.keyCode==13){addChat();}
	} */
	$('#chat-close').click(function(){
		$('#chat_container').css('display','none');
		
	});
	
</script>
	
 <script>
   
   //아이디별 채팅 리스트 가져오기
   		var userId ='';
   
   function chatBtn(en){
	   $('#chat_container').css('display','block');
	   
		var socket = io("http://192.168.20.3:82");
	   
	       userId = $(en).text();
		//클릭한 아이디 서버로 보내기
		socket.emit("userId",userId);
		//몽고디비에서 find한 값 가져오기
		socket.on("chatOne",function(chatOne){
			console.log("chatOne : "+chatOne)
		var chatList="";
		for(var i=0;i<chatOne[0].message.length;i++){
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
		
		   $('#chat-box').html(chatList);
	 $('#chat-box').scrollTop($('#chat-box')[0].scrollHeight)
		});
   };
   
   $(document).ready(function(){
	   var socket = io("http://192.168.20.3:82");	
	   
	   socket.on('send_msg', function(data){
		   console.log(data)
		 if(userId == data.id && data.type == "user"){
			 // 타입이 user인 data만 받아오기
			 $('#chat-box').append('<div align="right" style="text-align: right;"><span style="font-size:12px; margin-right: 10px">'+data.id+'</span>'+
                '<div style="display:flex; margin-left:4.5%;">'+
                '<span style="font-size:7px;margin-left:55px;margin-top: auto;">'+data.Time+'</span>'+
                '<div style="text-align: left; width: 270px;margin-left:3.5%;margin-top: 1%;margin-bottom: 1%;background: aliceblue;border-radius: 10px;">' +
                '<pre style="color:black;word-break:break-all;word-wrap:break-word;white-space:pre-wrap;font-size:12px;background:none;'+
                'margin-left:3%;margin-top:3%;border:none;">'+data.msg+'</pre>'+
                '</div>'+
                '</div>'+
                '</div>'); 
			    $('#chat-box').scrollTop($('#chat-box')[0].scrollHeight)
			 }
	   	});
	   });
	   
  $('#chat_exit').click(function(){
	  $('#chat_container').css('display','none');
  });
  
 

/* $(document).ready(function(){
var socket = io("http://192.168.20.3:82");
  
	 
 }); */
 
$(document).ready(function(){
	var socket = io("http://192.168.20.3:82");
	
	
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
	//내가 보내는 내용 + 서버로 보내기
     $('#chat-box').append('<div>'+ 
     '<span style="font-size:12px; margin-left: 18px">상담사</span>'+
     '<div style="display:flex">'+
     '<div style="color:black;width:270px;border-radius: 10px;background:white;margin-left:3.5%;margin-top:1%;">'+
     '<pre  style="resize:none; font-size:12px;background:none;'+
     'margin-left:3%;margin-top:3%;border:none;word-break:break-all;word-wrap:break-word;white-space:pre-wrap;">'+content+'</pre>'+
     '</div>'+
     '<span style="font-size:7px;margin-left:15px;margin-top: auto;">'+strTime+'</span>'+
     '</div>'+
     '</div>')
              $('#chat-box').scrollTop($('#chat-box')[0].scrollHeight)
					 
     socket.emit("send_msg", {id:userId,msg:content,Time:strTime,type:"admin"});
		 document.getElementById('chatContent').value = "";
		}
     });
});
</script>

</body>
</html>
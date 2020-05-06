<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송후교환/반품 패스워드</title>
   <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    
    <style>
    .xans-board-title .title h2 {
    display: inline-block;
    font-size: 20px;
    padding: 10px 20px;
    font-weight: 400;
    letter-spacing: 2px;
}
    
.xans-board-secure .secret .info {
    margin: 0 0 50px 0;
    line-height: 150%;
    color: #757575;
}

.xans-board-secure .secret {
    width: 440px;
    margin: 0 auto;
    padding: 40px 50px 10px 50px;
    border: 1px solid #eee;
    border-radius: 10px;
   }
   
   .xans-board-title .title h2 {
    display: inline-block;
    font-size: 20px;
    padding: 10px 20px;
    font-weight: 400;
    letter-spacing: 2px;
  }
  
  .yg_btn3 {
    background: #fff;
    color: #444!important;
    border-color: #ddd!important;
}
.yg_btn5 {
    background: #888;
    color: #fff!important;
    border-color: #888!important;
}

input[type=password] {
    height: 29px !important;
    width: 207px;
    line-height: 22px !important;
    padding: 2px 4px !important;
    border: 1px solid #eaeaea !important;
    color: #222 !important;
    font-size: 12px !important;
    margin-top: 31px;
    margin-left: 9px;
}

.ec-base-button {
    padding: 43px 0 !important;
    text-align: center !important;
    font-family: 'HelveticaLTPro-bold';
    position: relative !important;
}
    
    </style>

</head>

<body>
   <%@include file="header.jsp" %>


    <div id="container" style="margin-top: -70px;">
        <div id="contents" style="margin-top:11.5%; margin-bottom:12.5%;">
         <div class="mypage_top_outer">

         </div>

         <div class="titleArea">
             <h2 style="display: inline-block;
   				 font-size: 20px;
   				 padding: 35px 20px;
   				 font-weight: 400;
    			letter-spacing: 2px;
    			margin-left: 44.8%;">배송후교환/반품</h2>
         </div>
         
        <!--  <form id="boardSecureForm" name="" action="/exec/front/Board/secure/6" method="post" target="_self" enctype="multipart/form-data"> -->
<div class="xans-element- xans-board xans-board-secure-4 xans-board-secure xans-board-4 ">
<div class="secret">            
            <fieldset>
				<input type="hidden" name="pna_no" id="qna_no" value="${qna_no}">
				
                <span id="idMsg14">이 글은 비밀글입니다.</span>
                <span id="idMsg15">비밀번호를 입력하여 주세요.</span><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span id="idMsg14">관리자는 확인버튼만 누르시면 됩니다.</span>
                <p class="password" style="margin-left: 10px;">
                <label for="secure_password" style="font-size:12px;">PASSWORD</label> 
                <input id="qna_password" name="qna_password" type="password">
                </p>
                <div class="ec-base-button gBlank30">
                    <a href="product_change.do" class="yg_btn_140 yg_btn3" alt="목록">LIST</a>
                   <button  onclick="passwordCheck()" class="yg_btn_140 yg_btn5" alt="확인">OK</button>
                </div>
            </fieldset>
</div>
</div>
<!-- </form> -->
</div>
</div>


         
 <%@include file="footer.jsp" %>
 
 <script>
	function passwordCheck(){
			
		var qna_no = $('#qna_no').val();
		var password = $("#qna_password").val();
		
		$.ajax({
			url:"passwordCheck.do",
			data : {qna_no : qna_no , password : password},
			success : function(data){
				if(data =="ok"){
					location.href="product_change_detail.do?qna_no="+qna_no;
				}else{
					alert("비밀번호를 확인해 주세요");
				}
			},
			error:function(){
				alert("에러다");	
			}
		})
	}

</script>

</body>

</html>
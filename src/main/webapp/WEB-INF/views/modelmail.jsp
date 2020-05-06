<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>oT &#8482;</title>

   <link rel="stylesheet" href="./css/Login_style.css">
   
<style>

#sendBtn a:hover{
	background: snow;
	color: black !important;
}
#login_mark{
font-family: 'HelveticaLTPro;
  font-size: 50px;
    color: black;
    line-height: 1.2;
    text-transform: uppercase;
    font-weight: 900;
 	margin-top: 10%;margin-bottom: 0%;
}
#subject{
    margin-top: 10%;
    border: none;
    border-bottom: 1px solid #999990;
width: 80%;
}
#body{
margin-top:1%;
width: 80%;
padding-left: 1%;
padding-top: 1%;
font-size: 11px;

}
#filrdiv{
	border-top:1px solid #999990;
	font-size: 14px;
	margin-left: 10%;
    width: 80%;
    margin-top: 1%;

	
}

</style>
</head>
<body >
 <%@include file="header.jsp" %>
    <h2 id="login_mark" align="center";>모델지원</h2>
    <br><br>
   	<p align="center">지원시 반드시 본인의 사진을 첨부하셔야 하며 <br>
   						  압축파일을(대표사진10장이내) 첨부해 주시기 바랍니다<br>
   	   	등록하신 핸드폰번호 또는 이메일로 결과를 보내드립니다.<br>
   	</p>
 <form action="modelmail.do" method="post" id="frm" enctype="multipart/form-data">
	<div align="center">
	<input type="text" name="subject" id="subject" placeholder="subject"><br>
	
	<textarea name="body" id="body" rows="25%">
＊이름    :
 
＊아이디 :
 
＊연락처 :
 
＊이메일 : 
------------------------------------------------------------------------------------------------

	</textarea>
	</div>

<div align="left" id="filrdiv">
&nbsp;&nbsp;&nbsp;&nbsp; FILE <input style="margin-top:3%; margin-left: 3%;" name="attachment" type="file" value="파일선택">
</div>

<div id="sendBtn" style=" margin-top: 5%;margin-bottom: 5%; padding-right: 7%;" align="right" >
	<button id="SendBtn" class="more yg_btn_24 yg_btn4">
								보내기
							</button>
<!-- 	<button id="" class="btn_3">
								목록
							</button> -->
	
</div>

</form>
<script>
	$('#SendBtn').click(function(){
		
		$('#frm').submit();
		
	});
</script>


<!--Example End-->
 <%@include file="footer.jsp" %>
</body>
</html>
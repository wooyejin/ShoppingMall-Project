<%@page import="com.kh.ot.member.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="UTF-8">
<title>ot</title>
	<link rel="stylesheet" href="/ot/resources/css/dailyCheck.css">
	 <link rel="stylesheet" href="/ot/resources/css/Login_style.css">	
</head>
<body>
<jsp:include page="header.jsp"/>
		<div align="center" style="margin-top: 5%;background: #f9f9f9;padding: 5%;">
		<h2 style="font-size: 70px;font-weight: bold;">Daily Check Event!!</h2><br><br>
		<p style="font-size: 22px; color: black;">하단의 출석체크 버튼을 눌러주세요! <br>
		누적 7일이상 출석하시면 Ot.에서 사용하실수 있는 쿠폰을 드립니다!
		</p>
		</div>
		
<div class="container" style="margin-top: -5%;max-width: 80%; padding-right: 35px;" align="center">

  <div class="my-calendar clearfix">
  
    <div class="clicked-date">
      <div class="cal-day"></div>
      <div class="cal-date"></div>
    </div>
    
    <div class="calendar-box" >
      <div class="ctr-box clearfix" >
        <button type="button" title="prev" class="btn-cal prev">
        </button>

        <span class="cal-year"style="font-size: 30px;"></span>
        <span style="font-size: 30px;">-</span>
        <span class="cal-month" style="font-size: 30px;"></span>
        <span style="font-size: 30px;">월</span>
        <button type="button" title="next" class="btn-cal next">
        </button>
      </div>
             <button id="take-coupon" class="btn_3" style=" display: none">쿠폰발급</button>
        	<button id="dailyCheck" class="btn_3" style="margin-bottom: 4%;">출석체크</button>
      <table class="cal-table">
        <thead  style="border-top:1px solid lightgray;">
          <tr>
            <th style="color: red;text-align:center;">일</th>
            <th style="text-align:center;">월</th>
            <th style="text-align:center;">화</th>
            <th style="text-align:center;">수</th>
            <th style="text-align:center;">목</th>
            <th style="text-align:center;">금</th>
            <th style="text-align:center;">토</th>
          </tr>
        </thead>
        <tbody class="cal-body"></tbody>
      </table>
    </div>
  </div>
  <!-- // .my-calendar -->
</div>
	<input type="hidden" id=memNo value="<%= ((Member)session.getAttribute("loginMember")).getMemNo() %>">
<jsp:include page="footer.jsp"/>
	<script type="text/javascript" src="/ot/resources/js/dailyCheck.js"></script>


<script>
 	
var today = $('.day.today').data("fdate");
var memNo=$('#memNo').val();
var checkmark = document.getElementsByClassName('checkmark');
 	
$(function(){
	
	for(var i = 0;i < 30;i++){
	 var day = document.getElementsByName('day');
	 	"<c:forEach var='m' items='${list}'>"
	 	if(day[i].dataset.fdate == "${m.tdDate}"){
	 		day[i].innerHTML= '<img class="checkmark" src="/ot/resources/images/icons/ot.png" ' 
	 														+'alt="로고"style="position:relative;left: 20%;height: auto;width: 60px;">';
	 		}
		"</c:forEach>" 
	 }
	
});

$('#dailyCheck').click(function(){

	if( !memNo ){
		alert("로그인후 이용하세요")
	}else if( $('.day.today').data("date") == $('.day.today').text() ){
		
		alert("출석체크 완료!");
		location.href="insertdailyCheck.do?memNo="+memNo+"&tdDate="+today;
		
	}else{
		alert('이미출석체크 하였습니다');
	}
});

window.onload=function(){
	console.log(checkmark.length);
	if( checkmark.length > 0  &&  checkmark.length % 7 == 0){
		$('#take-coupon').css('display','inline');
	}
}

$('#take-coupon').click(function(){
	$.ajax({
		url:"couponInsert.do",
		data : {memNo : memNo,today:today},
		success:function(data){
			if(data == "ok"){
				alert('쿠폰이 지급되었습니다. 쿠폰함을 확인해 주세요');
			}else{
			
			}
		},error:function(){
			alert('이미 쿠폰이 발급되었습니다.');
		}
	})
	
})

$('.next').click(function(){
	
	for(var i = 0;i < 30;i++){
		 var day = document.getElementsByName('day');
		 	"<c:forEach var='m' items='${list}'>"
		 	if(day[i].dataset.fdate == "${m.tdDate}"){
		 		day[i].innerHTML= '<img class="checkmark" src="/ot/resources/images/icons/ot.png" ' 
		 														+'alt="로고"style="position:relative;left: 20%;height: auto;width: 60px;">';
		 		}
			"</c:forEach>" 
		 }
	
});

$('.prev').click(function(){
	
	for(var i = 0;i < 30;i++){
		 var day = document.getElementsByName('day');
		 	"<c:forEach var='m' items='${list}'>"
		 	if(day[i].dataset.fdate == "${m.tdDate}"){
		 		day[i].innerHTML= '<img class="checkmark" src="/ot/resources/images/icons/ot.png" ' 
		 														+'alt="로고"style="position:relative;left: 20%;height: auto;width: 60px;">';
		 		}
			"</c:forEach>" 
		 }
	
})
</script>

<style>
.clicked-date{
display: none;
}
 .cal-body tr td:first-child{color:red}
 
 
</style>
</body>
</html>
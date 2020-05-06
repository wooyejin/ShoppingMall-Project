<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Ot</title>
    <link rel="icon" href="/ot/resources/img/favicon.png">
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="/ot/resources/css/Login_bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="/ot/resources/css/Login_style.css">
    <link rel="stylesheet" href="/ot/resources/css/popup.css">
 <style>
#check,#findpwd{
	display: none;
}
    </style>    
</head>

<body class="bg-white">
  <%@include file="header.jsp" %>
   <section class="login_part section_padding">
        <div class="container" align="center">
            <div class="row align-items-center" style="position: relative; right: 26%;">
                <div class="col-lg-6 col-md-6">
                   
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner" style="text-align: center;">
                            <h2 id="login_mark">FIND PASSWORD</h2>
                            가입당시의 회원님의 <br>이름,아이디와 이메일(e_mail)을 입력해 주세요<br><br>
                       
                            <div style=" border: 1px solid gray; padding-top: 35px;" class="row contact_form">
                               
                               <div class="col-md-12 form-group p_star">
                                    <span style="padding-right: 20px;">&nbsp; 이름 :</span> <input style="display: inline-block;
                                    width: 50%;" type="text" class="form-control" id="memName" name="memName" value="">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <span style="padding-right: 20px;">아이디 :</span> <input style="display: inline-block;
                                    width: 50%;" type="text" class="form-control" id=memId name="memId" value="">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                   <span style="padding-right: 20px;">이메일 :</span><input style="display: inline-block;
                                   width: 50%;" type="email" class="form-control" id="memEmail" name="memEmail" value="">
                                </div>
                                
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                     
                                    </div>
                                    <a href="#layer2" id="sendemail" class="btn_3">
                                 		       인증번호 발송
                                    </a> 
                                    
                                </div>
                            </div>
                            <br><br>
                              <div id="check" style=" border: 1px solid gray; padding-top: 35px;" class="row contact_form">
                                <div class="col-md-12 form-group p_star" >
                                   <span style="padding-right: 20px;">인증번호 :</span><input style="display: inline-block;
                                   width: 50%;" type="text" class="form-control" id="checktext" name="checktext" value="">
                                	   <a href="#layer2" id="findpwd" class="btn_3">
                                 		인증
                                    </a> 
                                	
                                	</div>
                                  
                              </div>
                      
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        
    </section>
       <%@include file="footer.jsp" %>
   <script>
   
   var passKey;
   	
   $('#sendemail').click(function(){
	   var $href = $(this).attr('href');
        layer_popup($href);
	  
        $.ajax({
		  url : "findpassword.do",
		  data : {memName : $('#memName').val(), memId : $('#memId').val(), memEmail : $('#memEmail').val()},
		  success : function(data){
			  
			  if(data != 'fail'){
			 $('#check_ment').html('이메일로 인증문자가 발송되었습니다  <br>인증문자를 확인해 주세요.'); 	
			 $('#check').css('display','block');
			 $('#findpwd').css('display','block');
			 passKey = data;
			 }else{
			  $('#check_ment').html('입력하신 정보를 확인해 주세요.'); 	
			  }
		  },
		  error : function(){
		  }
	   });
   });
   $('#findpwd').click(function(){
	   var $href = $(this).attr('href');
	   
	   if(passKey == $('#checktext').val()){
		   location.href="changePwdView.do?memId="+$('#memId').val();
	   }else{
		   layer_popup($href);
		   $('#check_ment').html("인증번호가 일치 하지 않습니다."); 	
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
       
       
       
       
</body>

</html>
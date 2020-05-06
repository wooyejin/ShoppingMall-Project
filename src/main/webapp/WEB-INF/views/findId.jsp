<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Ot.</title>
    <link rel="icon" href="/ot/resources/img/favicon.png">
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="/ot/resources/css/Login_bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="/ot/resources/css/Login_style.css">
    <link rel="stylesheet" href="/ot/resources/css/popup.css">

</head>

<body class="bg-white">
	<jsp:include page="header.jsp"/>
   <section class="login_part section_padding">
        <div class="container" align="center">
            <div class="row align-items-center" style="position: relative; right: 26%;">
                <div class="col-lg-6 col-md-6">
                   
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner" style="text-align: center;">
                            <h2 id="login_mark">FIND ID</h2>
                            가입당시의 회원님의 <br>이름과 생년월일(6자리)을 입력해 주세요<br><br>
                            <div>
                            <div style=" border: 1px solid gray; padding-top: 35px;" class="row contact_form" >
                               
                                <div class="col-md-12 form-group p_star">
                                    <span style="padding-right: 20px;">회원이름 :</span> <input style="display: inline-block;
                                    width: 50%;" type="text" class="form-control" id="memName" name="name" value="">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                  <span style="padding-right: 27px;">생년월일 :</span>
                     <input id="birth_year"  name="birth_year" class="inputTypeText" placeholder="" maxlength="4" value="" type="text"
                   style="position: relative;width: 86px;">
                      <span id="idMsg">년</span>
                      <input id="birth_month" name="birth_month"  class="inputTypeText" placeholder="" maxlength="2" value="" type="text"
                      style="position: relative;width: 30px;">
                      <span id="idMsg">월</span>
                      <input id="birth_day" name="birth_day" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"
                      style="position: relative;width: 30px;">
                      <span id="idMsg">일</span>
                                
                                 <!--   <span style="padding-right: 20px;">생년월일 :</span><input style="display: inline-block;
                                   width: 50%;" type="text" class="form-control" id="memSsn" name="birthday" value="" maxlength="6"> -->
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                     
                                    </div>
                                    <a href="#layer2" id="findid" class="btn_3">
                                 		       확인
                                    </a> 
                                  
                                </div>
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
      <jsp:include page="footer.jsp"/>

       <script>
     
       $('#findid').click(function(){
    	   
    	   var $href = $(this).attr('href');
	        layer_popup($href);
    	  
	        var birth_year = $('#birth_year').val();
	        var birth_month = $('#birth_month').val();
	        var birth_day = $('#birth_day').val();
	        var memSsn = birth_year+","+birth_month+","+birth_day;
	        
	        $.ajax({
    		  url : "findId.do",
			  dataType:"json",
    		  data : {memName : $('#memName').val(), memSsn : memSsn},
    		  success : function(data){
    			  console.log(data)
    			  if(data.msg != "error"){
    			 $('#check_ment').html(''+data.memName+'님의 아이디는 '+data.memId+'입니다.'); 	
    			  }
    			  else if(data.msg == "error"){
    			  $('#check_ment').html('아이디가 존재하지 않습니다.'); 	
    			  }
    		  },
    		  error : function(){
    			  
    		  }
    	   });
       });
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
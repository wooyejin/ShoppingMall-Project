<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>oT.</title>
	<link rel="icon" type="image/png" href="ot/resources/images/icons/favicon.png"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/ot/resources/css/Login_bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="/ot/resources/css/Login_style.css">
     <link rel="stylesheet" href="/ot/resources/css/popup.css">
</head>

<body class="bg-white">

	<jsp:include page="header.jsp"/>
    <!--================login_part Area =================-->
    <section class="login_part section_padding">
        <div class="container" align="center">
            <div class="row align-items-center" style="position: relative; right: 26%;">
                <div class="col-lg-6 col-md-6">
                   
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner" style="text-align: center;">
                            <h2 id="login_mark">Login</h2>
                                <div class="col-md-12 form-group p_star"style="padding: 0px;">
                                    <input type="text" class="form-control" id="name" name="name" value=""
                                        placeholder="Username" style="height: 45px;">
                                </div>
                                <div class="col-md-12 form-group p_star" style="padding: 0px;">
                                    <input type="password" class="form-control" id="password" name="password" value=""
                                        onkeyup="enterkey();" placeholder="Password" style="    padding-left: 4%;height: 45px;">
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">Remember me</label>
                                    </div><br><br>
                                      <a href="#layer2"  id="loginBtn"  class="btn_3">
                                        log in
                                    </a> 
                                    <a href="joinView.do" style="margin: 0px; background: white;
                                    color: black;" type="submit"  class="btn_3">
                                        join us
                                    </a>
                                    <div style="display: flex">
                                    <a style="margin : 10px 15% 0 8%" class="lost_pass" href="findIdView.do">forget ID?</a>
                                    <a style="margin-top: 10px;" class="lost_pass" href="findpasswordView.do">forget Password?</a>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script>
        function enterkey() { if (window.event.keyCode == 13) { // 엔터키가 눌렸을 때 실행할 내용 
        	$href = $(this).attr('href');
			
			 
			  $.ajax({
				url : "login.do",
				type:"post",
				data : {id : $('#name').val(),  pwd : $('#password').val() },
				success : function(data){
					if(data == "ok"){
					     location.href="home.do"
					}else{
						 layer_popup($href);
					  $('#check_ment').html('아이디/비밀번호를 확인 하세요.'); 	
					}
				},error : function(){
					alert('에러다');
				}
			});} }
        </script>
    </section>
    <!--================login_part end =================-->

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
<jsp:include page="footer.jsp"/>
</body>
	<script>
	
		$('#loginBtn').click(function(){
			   $href = $(this).attr('href');
				
				 
			  $.ajax({
				url : "login.do",
				type:"post",
				data : {id : $('#name').val(),  pwd : $('#password').val() },
				success : function(data){
					if(data == "ok"){
					     location.href="home.do"
					}else{
						 layer_popup($href);
					  $('#check_ment').html('아이디/비밀번호를 확인 하세요.'); 	
					}
				},error : function(){
					alert('에러다');
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

</html>
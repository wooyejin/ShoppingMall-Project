<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ot</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>winter</title>
    <link rel="icon" href="/ot/resources/img/favicon.png">
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="/ot/resources/css/Login_bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="/ot/resources/css/Login_style.css">
    <link rel="stylesheet" href="/ot/resources/css/popup.css">
</head>
<body>
<%@include file="header.jsp"%>
   <section class="login_part section_padding">
        <div class="container" align="center">
            <div class="row align-items-center" style="position: relative; right: 26%;">
                <div class="col-lg-6 col-md-6">
                   
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner" style="text-align: center;">
                            <h2 id="login_mark">CHANGE PASSWORD</h2>
                            		새로 사용하실 비밀번호를 입력해 주세요 <br><br><br>
                            <div>
                            <div style=" border: 1px solid gray; padding-top: 35px;" class="row contact_form" >
                           
                               <form id="updatepwd" action="updatepwd.do" method="post">
                                <div class="col-md-12 form-group p_star">
                                   <span style="padding-right: 54px;">신규 비밀번호</span> <input style="display: inline-block;
                                    width: 50%;" type="password" class="form-control" id="firstpwd" name="firstpwd" value="">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                   <span style="padding-right: 20px;">신규 비밀번호 확인 </span><input style="display: inline-block;
                                   width: 50%;" type="password" class="form-control" id="secondpwd" name="secondpwd" value="" >
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                    </div>
                                    <a href="#layer2" id="findpwd" class="btn_3" >
                                 		     변경
                                    </a>
                                </div>
                                <input type="hidden" name="memId" value="${requestScope.memId}">
                                </form>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          </section>
   
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
       <%@include file="footer.jsp" %>
</body>

	<script>
		$('#findpwd').click(function(){
			   var $href = $(this).attr('href');
			 if($('#firstpwd').val() != $('#secondpwd').val()){
				  layer_popup($href);
					 $('#check_ment').html('비밀번호가 일치 하지 않습니다. <br>다시 입력해 주세요'); 	
			 }else{
				 alert("비밀번호가 변경되었습니다. 로그인해 주세요")
				$('#updatepwd').submit();
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

</html>
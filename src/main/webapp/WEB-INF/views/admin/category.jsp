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
   <link rel="icon" type="image/png" href="/ot/resources/aimages/icon/favicon.png"/>

    <!-- Title Page-->
    <title>oT. ADMIN</title>

    <!-- Fontfaces CSS-->
    <link href="/ot/resources/acss/font-face.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="/ot/resources/avendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
   <link href="/ot/resources/avendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/ot/resources/acss/theme.css" rel="stylesheet" media="all">

</head>
<body class="animsition">
   <div class="page-wrapper">

      <jsp:include page="a_header.jsp"/>
 <!-- MENU SIDEBAR-->
    
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="todayMain.ad">
                    <img src="/ot/resources/aimages/icon/ot.png" alt="OT" style="max-height: 35px;"/>
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="has-sub"> 
                            <%-- <!-- active has-sub 파란색 --> --%>
                            <a class="js-arrow" href="#">
                                <i class="fa fa-bar-chart-o"></i>통계</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="todayMain.ad">당일현황</a>
                                </li>
                                <li>
                                    <a href="todayChart.ad">매출그래프</a>
                                </li>
                                <li>
                                    <a href="best.ad">상품판매순위</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-users"></i>회원 </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="customer.ad">회원 관리</a>
                                </li>
                            </ul>
                        </li>
                         <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-truck"></i>주문 </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="order.ad">주문확인 관리</a>
                                </li>
                                <li>
                                   <a href="order_2.ad">배송대기 관리</a>
                                </li>
                                 <li>
                                   <a href="order_3.ad">배송중 관리</a>
                                </li>
                                 <li>
                                   <a href="order_4.ad">배송완료 관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-shopping-cart"></i>상품관리</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                               <li>
                                    <a href="category.ad">카테고리관리</a>
                                </li>
                                <li>
                                    <a href="productAdd.ad">상품등록</a>
                                </li>
                                <li>
                                    <a href="productList.ad">상품관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-bullhorn"></i>이벤트&nbsp;/&nbsp;쿠폰</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="eventAdd.ad">이벤트/쿠폰 등록</a>
                                </li>
                                <li>
                                    <a href="eventList.ad">이벤트/쿠폰 관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        
                        <li>
                            <a class="js-arrow" href="productReturnList.ad">
                        <i class="fa fa-credit-card"></i>교환 &nbsp;/&nbsp;반품</a>
                        </li>
                       <li>
                           <a href="DesignEdit.ad">
                               <i class="fa fa-desktop"></i>디자인</a>
                       </li>
                         <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-question"></i>Q & A</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                               <li>
                                    <a href="QnA_Product.ad">상품문의</a>
                                </li>
                                 <li>
                                    <a href="QnA_del.ad">배송 문의</a>
                                </li>
                                <li>
                                    <a href="QnA_delivery_cancel.ad">배송전 문의</a>
                                </li>
                                <li>
                                    <a href="QnA_delivery_after.ad">배송후 문의</a>
                                </li>
                                 <li>
                                    <a href="QnA_bank_insert.ad">입금확인/입급자 변경 문의</a>
                                </li>
                                 <li>
                                    <a href="QnA_bad_product.ad">상품불량 및 오배송 문의</a>
                                </li>
                            </ul>
                          </li>
                       <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-pencil-square-o"></i>리뷰</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                               <li>
                                    <a href="review_list.ad">리뷰관리</a>
                                </li>
                                <li>
                                    <a href="review_report_list.ad">신고된 리뷰관리</a>
                                </li>
                                
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
        

      <!-- WELCOME-->
      <div style="padding-left:300px">
      <section class="welcome p-t-10">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <h1 class="title-4">
                       &nbsp; &nbsp; 카테고리 관리
                      </h1>
                      <hr class="line-seprate">
                  </div>
              </div>
          </div>
       </section>
       <!-- END WELCOME-->
       
       
       <!-- 카테고리관리 내용 -->
       
  <form role="form" method="post" autocomplete="off">
       <div style="align:center;">
       <table style="width:90%;">
        <tr>
            <td style="width:50%;">
                <H2 align="center"> &nbsp;&nbsp;대분류</H2>
                <br>
                
                <select id="sel" name="sel" style="WIDTH: 50%; HEIGHT: auto; margin-left:30%; margin-top:-5%; font-size:20px;" 
                         size=13 multiple class="UpCategory">
                   <option value="">선택</option>
                </select>
              
                 <br>
                
               <input type="text" id="addOption"  style="margin-left:30%; width:50%;"/>
               <br><br>
                <input class="btn btn-primary" type="button" value="추가" id="btnAdd" style="margin-left:40%;"/>
                <input class="btn btn-danger" type="button" value="삭제" id="btnRemoveLeft" />
            
            </td>
            <td>
               <H2 align="center">중분류</H2>
               <br>
               
               <select id="sel2" name="sel2" style="WIDTH: 50%; HEIGHT: auto; margin-left:25%; margin-top:-5%; font-size:20px;" 
                  size="13" multiple class="DownCategory">
               </select>
                
                <br>       

               <input type="text" id="addOption2"  style="margin-left:25%; width:50%;"/>
               <br><br>
               
               <input class="btn btn-primary" type="button" value="추가" id="btnAdd2" style="margin-left:40%;"/>
               <input class="btn btn-danger" type="button" value="삭제" id="btnRemoveRight"/>
            </td>
        </tr>
    </table>
   </div>
   </form>
   
   <input type=hidden id="hid">
     </div></div>
     
     <!-- 카테고리 CRUD  -->
     <script>
     function test(val){
        document.getElementById('hid').value=val.value;
     }
    
     
     var sendnum = new Array();
     $(function(){
         UpCategorySelect();
      });
      
      setInterval(function(){
         
         UpCategorySelect();
      },4000);
      function UpCategorySelect(){
         
         var upl = document.getElementsByName('uplength').length+1;         
         $.ajax({
            url:"UpCategorySelect.ad",
            success:function(data){
                  var darr = new Array();
                  $('#sel').find('option').remove();
                  for(var i=0;i<data.length;i++){
                  $('#sel').append('<option name="uplength" onclick="test(this);" value="'+data[i].up_no+'">'+data[i].up_name+'</option>');
                  
                  darr.push(data[i].up_no);
                  sendnum = darr;
          
                  }
               },error:function(){
                  console.log("에러발생");
               }
            });
            }
      
      
      $(function(){
          DownCategorySelect();
       });
       
       setInterval(function(){
          DownCategorySelect();
       },4000);
       function DownCategorySelect(){
          $.ajax({
             url:"DownCategorySelect.ad",
             success:function(data){
                var earr = new Array();
                
                   $('#sel2').find('option').remove();
                   for(var i=0;i<data.length;i++){
                      console.log(data[i].up_no);
                      if(data[i].up_no==document.getElementById('hid').value){
                         $('#sel2').append('<option name="downlength" value="'+data[i].down_no+'">'+data[i].down_name+'</option>')
                      }
                   }
             },error:function(){
                console.log("에러발생");
             }
          });
      }
       
       
      /* 카테고리 추가 버튼  */
     $('#btnAdd').click(function(){
    	   
    	   var addOption  = $('#addOption').val();
    	   var Uple = document.getElementsByName('uplength').length;

    	   $.ajax({
    		   url:"UpCategoryInsert.ad",
    		   data : {addOption:addOption, Uple :Uple},
    		   success : function(data){
    			   if(data == "ok"){
    				   alert('대분류가 등록되었습니다.');
    			   }else{
    				   alert('다시해')
    			   }
    		   },error:function(){
    			   alert("다시 입력해주세요.");
    		   }
    	   }); 
       });
       
        $('#btnAdd2').click(function(){
           var up_no  = $('#hid').val();
          var addOption2  = $('#addOption2').val();
          var dole = document.getElementsByName('downlength').length;
          console.log(addOption2);
          $.ajax({
             url:"DownCategoryInsert.ad",
             data : {addOption2:addOption2,up_no:up_no,dole:dole},
             success : function(data){
                if(data == "ok"){
                /*  console.log("hid : " +document.getElementById('hid').value); */
                 up_no =  document.getElementById('hid').value;
                 /* console.log("up_no : " + up_no); */
                 alert('중분류가 등록되었습니다. ');
                 
                }else{
                   alert('다시해')
                }
             },error:function(){
                alert("에러다");
             }
          })
       })
       
   /*카테고리 삭제 버튼*/
      $('#btnRemoveLeft').click(function(){
         var up_no  = $('#hid').val();
           console.log($('#hid').val());
           
             $.ajax({
                url:"UpCategoryDelete.ad",
                data : {up_no:up_no},
                success : function(data){
                   if(data == "ok"){
                      alert('대분류 삭제되었습니다.');
                   }else{
                      alert('대분류 삭제되었습니다.')
                   }
                },error:function(){
                   alert("대분류가 삭제되었습니다.");
                }
             });
          });
      
      
        $('#btnRemoveRight').click(function(){

		// 	var up_no  = $('#hid').val();
	    // 	console.log($('#hid').val());
	    	 
	    // 	var down_no = $('#sel2 option:selected').val();
	    // 	console.log($('#sel2 option:selected').val());
	    	
	    // 	   $.ajax({
	    // 		   url:"DownCategoryDelete.ad",
	    // 		   data : {up_no:up_no, down_no:down_no},
	    // 		   success : function(data){
	    // 			   if(data == "ok"){
	    // 				   alert('중분류 삭제되었습니다.');
	    // 			   }else{
	    // 				   alert('중분류 삭제되었습니다.')
	    // 			   }
	    // 		   },error:function(){
	    // 			   alert("에러발생");
	    // 		   }
	    // 	   });
	    //    });

         var up_no  = $('#hid').val();
          console.log($('#hid').val());
           
          var down_no = $('#sel2 option:selected').val();
          console.log($('#sel2 option:selected').val());
          
             $.ajax({
                url:"DownCategoryDelete.ad",
                data : {up_no:up_no, down_no:down_no},
                success : function(data){
                   if(data == "ok"){
                      alert('중분류 삭제되었습니다.');
                   }else{
                      alert('중분류 삭제되었습니다.')
                   }
                },error:function(){
                   alert("에러발생");
                }
             });
          });
       
       
     </script>
   <!--  <script type="text/javascript">

        $(function(){
            $("#btnRemoveLeft").on("click",function(){
                $('#sel option:selected').each( function() {
                    $(this).remove();
                });
            });
 
            $("#btnRemoveRight").on("click",function(){
                $('#sel2 option:selected').each( function() {
                    $(this).remove();
                });
            });
 
            $("#btnMoveRight").on("click",function(){
                $('#sel option:selected').each( function() {
                    $(this).remove().appendTo('#sel2');
                });
            });
 
            $("#btnMoveLeft").on("click",function(){
                $('#sel2 option:selected').each( function() {
                    $(this).remove().appendTo('#sel');
                });
            });
 
            $("#getValue").on("click",function(){
                var values = "";
                $('#sel option').each( function() {
                    values= values + "/" + $(this).val();
                });
                alert(values);
            });
 
            $("#getValue2").on("c   lick",function(){
                var values = "";
                $('#sel2 option').each( function() {
                    values= values + "/" + $(this).val();
                });
                alert(values);
            });
 
            $("#getSelectedValue").on("click",function(){
                var values = "";
                $('#sel option:selected').each( function() {
                    values= values + "/" + $(this).val();
                });
                alert(values);
            });
 
            $("#getSelectedValue2").on("click",function(){
                var values = "";
                $('#sel2 option:selected').each( function() {
                    values= values + "/" + $(this).val();
                });
                alert(values);
            });
 
            $("#btnCopyLeft").on("click",function(){
                $('#sel option:selected').each( function() {
                    $(this).clone().appendTo('#sel2');
                });
            });
 
            $("#btnCopyLeft2").on("click",function(){
                $('#sel2 option:selected').each( function() {
                    $(this).clone().appendTo('#sel');
                });
            });
 
            $("#btnAdd").on("click",function(){
                if($('#sel').find("[value='"+$('#addOption').val().replace('"','\'')+"']").length == 0)
                {
                    $('#sel').append('<option value="'+$('#addOption').val().replace('"','\'')+'">'+$('#addOption').val()+"</option>");
                }else{
                    alert("존재하는 카테고리입니다. 다시입력해주세요");
                }
            });
 '
            $("#btnAdd2").on("click",function(){
                if($('#sel2').find("[value='"+$('#addOption2').val().replace('"','\'')+"']").length == 0)
                {
                    $('#sel2').append('<option value="'+$('#addOption2').val().replace('"','\'')+'">'+$('#addOption2').val()+"</option>");
                }else{
                    alert("존재하는 카테고리입니다. 다시입력해주세요");
                }
            });
        });
 
     $(window).load(function(e){
 
        }); 
    </script> -->
 
       <!-- Jquery JS-->
    <script src="/ot/resources/avendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="/ot/resources/avendor/bootstrap-4.1/popper.min.js"></script>
    <script src="/ot/resources/avendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="/ot/resources/avendor/slick/slick.min.js">
    </script>
    <script src="/ot/resources/avendor/wow/wow.min.js"></script>
    <script src="/ot/resources/avendor/animsition/animsition.min.js"></script>
    <script src="/ot/resources/avendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="/ot/resources/avendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="/ot/resources/avendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="/ot/resources/avendor/circle-progress/circle-progress.min.js"></script>
    <script src="/ot/resources/avendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="/ot/resources/avendor/chartjs/Chart.bundle.min.js"></script>
    <script src="/ot/resources/avendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="/ot/resources/ajs/main.js"></script>
    

</body>
</html>
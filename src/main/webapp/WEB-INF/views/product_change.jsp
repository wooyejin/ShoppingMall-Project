<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>배송후 교환반품</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="./css/Login_style.css"> -->
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
<link rel="stylesheet" href="/ot/resources/css/popup.css">
</head>
<style>
.ec-base-table td{
  border-top: 1px solid #EEE !important;
}
.ec-base-table.typeList .center td.left {
    padding-left: 3px;
    text-align: left !important;
 }
 .ec-base-paginate1 {
    margin: 30px auto;
    text-align: center;
    line-height: 0;
    display: table;
}
 
 
.thumb{
 text-align: left !important;
	padding-left: 1% !important;
}

a{
	cursor:pointer;
}
</style>
<body>
	<%@include file="header.jsp" %>	
 	
	
    <div id="container">
        <div id="contents" style="margin-top:11.5%;">
			<div class="mypage_top_outer">
			 
			</div>

			<div class="titleArea">
    			<h2>배송후 교환반품</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
			<!--
        		$login_page = /member/login.html
       		    $count = 10
  			-->
				<table border="1" summary>
					<caption style="display:none;">관심상품 목록</caption>
       				<colgroup>
						<col style="width:6%;">
						<col style="width:85%">
						<col style="width:auto">
						<col style="width:17%">



					</colgroup>
					<thead>
						<tr>
			                <th scope="col">NO</th>
			                <th scope="col">SUBJECT</th>
			                <th scope="col">WRITER</th>
			                <th scope="col">DATE</th>
            			</tr>
          			</thead>

					<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
					<tr style="background-color:#F9F9F9; color:#555555;" class="xans-record-">
				<td style="font-weight:600;"> 공지</td>
                    <td class="displaynone"></td>
                    <td class="subject left txtBreak">
                        <strong> <a href="#" style="color:#555555; font-size:12px;">▶ 상품 불량/오배송 관련 안내입니다.</a></span></strong>
                    </td>
                    <td>관리자</td>
                    <td class=""><span class="txtNum">2020-03-09</span></td>
                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
                </tr>
		</tbody>	
		
				<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
          			<c:forEach var="b" items="${ list }">
          				<tr class="xans-record-">
							<td>
								<!-- no 공지번호 들어갈 곳 -->
									<span id="idMsg4">${b.qna_no }</span>
							</td>
               				
               					
                        <!-- 상품명 이름 들어갈 곳 -->
                         <td class="thumb">
                           
                            <div class="ppro">
                            	<c:if test="${b.qna_secure=='T'}">
                            <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif" alt="비밀글" class="ec-common-rwd-image"> 
                            		 	<c:if test="${b.qna_chk  == 'N'}">
                                 <a id="idMsg10" style="color:#555555;"onclick="prdtDetail(this)">
                                 [답변 전]</a> 
                                 <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                             		</c:if>
                             			<c:if test="${b.qna_chk  == 'Y'}">
                                 <a id="idMsg10" style="color:#555555;"onclick="prdtDetail(this)">
                                 [답변 완료]</a> 
                                 <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                             		</c:if>
                             	</c:if>
                             	
                             		<c:if test="${b.qna_secure=='F'}">
                            		 	<c:if test="${b.qna_chk  == 'N'}">
                                 <a id="idMsg10" style="color:#555555;"onclick="prdtDetail2(this)">
                                 [답변 전]</a> 
                                 <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                             		</c:if>
                             			<c:if test="${b.qna_chk  == 'Y'}">
                                 <a id="idMsg10" style="color:#555555;"onclick="prdtDetail2(this)">
                                 [답변 완료]</a> 
                                 <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                             		</c:if>
								</c:if>                               
                            </div>
                         </td>
                           <td class="left">
                               <!-- writer 내용들어갈곳 -->
                        <span id="idMsg11">${b.qna_writer }</span>
                            <td class="price center"><span id="idMsg4">${b.qna_date }</span></td>
                            <td class="button">

                            </td>
                          
                          
                          </c:forEach>
               </tbody>
               
					<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
          				<!-- <tr class="xans-record-">
							<td>
								no 공지번호 들어갈 곳
									<span id="idMsg4">141262</span>
							</td>
               				<td class="subject left txtBreak">
                        &nbsp;&nbsp;&nbsp;<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_re.gif" alt="답변" class="ec-common-rwd-image"> 
                        <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif" alt="비밀글" class="ec-common-rwd-image"> 
                        <a id="idMsg10" style="color:#555555;" href="product_change_reply.do">답변완료 :)</a> <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                    </td>
  
               				<td class="left">
                   				writer 내용들어갈곳
								<span id="idMsg11">홍길동</span>
                				<td class="price center"><span id="idMsg4">2020-03-19</span></td>
				                <td class="button">
				                  
				                </td>
           					</tr> -->
					</tbody>
					
        		</table>
        		
		
			</div>
			
		<!-- 레어어 팝업  --> 
		<a href="#layer2" id="submitBtn" class="hov1 s-text1 trans-0-4 yg_btn_145">
        <span style="position: relative;top: -2px;">write</span></a>
	
			<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 "><fieldset class="boardSearch">
			<legend>게시물 검색</legend>
			<form action="pc_search.do">
            <p><select id="search_date" name="search_date">
				<option value="week">일주일</option>
				<option value="month">한달</option>
				<option value="month3">세달</option>
				<option value="all">전체</option>
				</select> 
				<select id="search_key" name="search_key">
				<option value="subject">제목</option>
				<option value="content">내용</option>
				<option value="writer_name">글쓴이</option>
				</select> 
		<input id="search" name="search" class="inputTypeText" type="text">
      <a href="#none" onclick="pbSearch();" class="yg_btn_28 yg_btn318">
      <span id="idMsg9">SEARCH</span></a></p>
      </form>
       	 </fieldset>
	</div>
			
		  <div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate1">
            <!-- <a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="first"> -->

               <img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">


 				<c:if test="${empty sc }">
                  <c:url var="before" value="product_change.do">
                  <c:param name="currentPage" value="${pi.currentPage -1 }"/>
                  </c:url>
                      </c:if>
					<c:if test="${!empty sc }">
                  <c:url var="before" value="pc_search.do">
                  <c:param name="currentPage" value="${pi.currentPage -1 }"/>
                  <c:param name="search_date" value="${sc.search_date }"/>
                  <c:param name="search_key" value="${sc.search_key }"/>
                  <c:param name="search" value="${sc.search }"/>
                  </c:url>
                      </c:if>
                                            
                  <a href="${before}">
                  <img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
                  </a> &nbsp;
             

               <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                     <c:if test="${ p eq pi.currentPage }">
                        <font color="red" style="font-size: 13px;font-weight: 900;font-family: 'arial',serif;line-height: 35px;">
                        <b>${ p }</b> &nbsp;&nbsp;</font>
                     </c:if>
					
					 <c:if test="${empty sc }">	
                     <c:if test="${ p ne pi.currentPage }">
                        <c:url var="pagination" value="product_change.do">
                           <c:param name="currentPage" value="${ p }"/>
                     </c:url>
                     <a href="${ pagination }" style="font-family: 'arial',serif;line-height: 35px;font-size: 13px;">
                     ${ p }</a> &nbsp;
                  </c:if>
                  </c:if>
                  
                  	 <c:if test="${!empty sc }">	
                     <c:if test="${ p ne pi.currentPage }">
                        <c:url var="pagination" value="pc_search.do">
                           <c:param name="currentPage" value="${ p }"/>
                           <c:param name="search_date" value="${sc.search_date }"/>
		                  <c:param name="search_key" value="${sc.search_key }"/>
		                  <c:param name="search" value="${sc.search }"/>
                     </c:url>
                     <a href="${ pagination }" style="font-family: 'arial',serif;line-height: 35px;font-size: 13px;">
                     ${ p }</a> &nbsp;
                  </c:if>
                  </c:if>
                  
                  
               </c:forEach>

				     <c:if test="${empty sc }">	
                    <c:url var="after" value="product_change.do">
                     <c:param name="currentPage" value="${pi.currentPage +1 }"/>
                    </c:url>
                     </c:if>
                     
                  <c:if test="${!empty sc }">
                  <c:url var="after" value="pc_search.do">
                  <c:param name="currentPage" value="${pi.currentPage +1 }"/>
                  <c:param name="search_date" value="${sc.search_date }"/>
                  <c:param name="search_key" value="${sc.search_key }"/>
                  <c:param name="search" value="${sc.search }"/>
                  </c:url>
                      </c:if>
                  
                  <a href="${after}">
               <img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
               </a>


               <img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">

         </div>

        </div>
		<hr class="layout">
	</div>
	
	<input id="q_no" type="hidden" value="${b.qna_no}">
<!-- 레이어 팝업 -->
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
<input type="hidden" id="memId" value="${loginMember.memId }">
	
 <%@include file="footer.jsp" %>
 
 <script>
 function prdtDetail(en){
		
		var q_no = $(en).parents('tr').children('td').eq(0).children('span').text();	 

		 location.href='product_change_detailView.do?qna_no='+q_no; 
		
	 }
	 
	 function prdtDetail2(en){
			
			var q_no = $(en).parents('tr').children('td').eq(0).children('span').text();	 

			 location.href='product_change_detail.do?qna_no='+q_no; 
			
		 }
	 
	 function pbSearch() {
		 var search_key = $('#search_key').val();
		 var search_date = $('#search_date').val();
		 var search = $('#search').val();
		 
		 location.href="pc_search.do?search_key="+search_key+"&search="+search+"&search_date="+search_date;
	 }
	 
	 
	 $('#submitBtn').click(function(e){
		 e.stopPropagation();
		 var memId = $('#memId').val();	
		 
		 if(memId==""){
			 $('#check_ment').html('<br>로그인후 이용해 주세요!<br>');
			 var $href = $(this).attr('href');
			 layer_popup($href);
		 }else{
			 location.href="product_change_write.do";
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
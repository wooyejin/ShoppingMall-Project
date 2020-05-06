<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>oT.</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="/ot/resources/css/Login_style.css"> -->
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png" />

<style>
a{
	font-size : 13px !important;
	cursor : pointer;
}

.ec-base-paginate1 img {
    vertical-align: none !important;
}
.ec-base-paginate1 {
    margin: 30px auto;
    text-align: center;
    line-height: 0;
    display: table;
}

</style>
	<jsp:include page="header.jsp"/>
</head>
<body>

	<c:url var="mWishlist" value="mWishlist.do"/>
	<c:url var="mPoint" value="mPoint.do"/>
	<c:url var="mCoupon" value="mCoupon.do"/>
	
	<div id="container">
 		<div id="memberInf1">
			<div class="xans-myshop-bankbook " style="width: 80%;">
    			<p class="xans-element- xans-myshop xans-myshop-asyncbenefit mypage_top ">
    				<strong>
    					<span><span class="xans-member- var-name">${loginMember.memName }</span></span>
    				</strong>
 					님은 현재 
					<strong>
						<span class="xans-member- var-group_name" style="color:rgba(230,106,87,1);">
							<c:if test="${loginMember.memSumMoney < 100000}" >
								MEMBER
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 100000 && loginMember.memSumMoney < 300000}" >
								IRON
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 300000 && loginMember.memSumMoney < 500000}" >
								BRONZE
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 500000 && loginMember.memSumMoney < 700000}" >
								SILVER
							</c:if>
							<c:if test="${loginMember.memSumMoney >= 700000}" >
								GOLD
							</c:if>
						</span>
						<span class="myshop_benefit_ship_free_message"></span>
					</strong>
  					입니다.
				</p>
		
				<ul style="float: right;width: 350px; height: 60px;margin-right: 100px;margin-top: -34px;">
					<li class="xans-layout-shoppinginfo ">
						<strong class="title">WISH</strong>
  						<br>
						<strong class="data ">
							<a href="${mWishlist }">
									<span id="xans_myshop_interest_prd_cnt">${WishList }개</span>
							</a>
						</strong>
					</li>
				
               		<li>
	                    <strong class="title">POINT</strong>
	                    <br>
	                    <strong class="data">
	                    	<a href="${mPoint }">
	                  <span>${resultPoint}</span>원</a>
	                    </strong>
	                </li>
                
	                <li class="etc ">
	                    <strong class="title">COUPON</strong>
	                    <br>
	                    <strong class="data">
	                    	<a href="${mCoupon }">${CouponCount}<span>개</span></a>
	                    </strong>
	                </li>
	            </ul>
			</div>
		</div>

		<div id="contents">
			<div class="titleArea">
				<h2>BOARD LIST</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
				<!--
			    $url = /member/login.html
			-->
			</div>

			<div class="xans-element- xans-myshop xans-myshop-boardpackage ">
				<div class="xans-element- xans-myshop xans-myshop-boardlist ec-base-table typeList gBorder gBlank10">
					<!--
            $count = 10
            $relation_post = yes
        -->
					<table border="1" summary="">
						<caption>게시물 관리 목록</caption>
						<colgroup
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<col style="width: 100px;">
							<col style="width: 200px;">
							<col style="width: auto;">
							<col style="width: 200px;">
							<col style="width: 200px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">NO</th>
								<th scope="col">BOARD CATEGORY</th>
								<th scope="col">SUBJECT</th>
								<th scope="col">WRITER</th>
								<th scope="col">DATE</th>
							</tr>
						</thead>
						<tbody>
						<c:if test="${ empty list }">
							<tr>
								<td colspan="6" class="message">게시물이 없습니다.</td>
							</tr>
						</c:if>
						</tbody>
						
						<tbody class=" center">
								<c:url var="mBoard_view" value="mBoard_view.do">
									<c:param name="mBoard_view" value="Board"/>
								</c:url>
								
								<c:url var="mBoard_adminreply" value="mBoard_adminreply.do">
									<c:param name="mBoard_adminreply" value="mReply"/>
								</c:url>
								
							<c:if test="${ !empty list }">
								<c:forEach var="b" items="${list }">
								
							<tr class="xans-record-" id="catecheck">
							<input id="b_cate_no" name="b_cate_no"  class="b_cate_no" type="hidden" value="${b.b_cate_no}"/>
							<input id="q_no" name="q_no" class="q_no" type="hidden" value="${b.qna_no}"/>
								<td>${b.qna_no }</td>
								<td>
									<a onclick="boardmove(this); "id="cate">${b.b_cate_name }
									</a>
								</td>
								
								<c:if test="${b.b_cate_no eq 1 }">
								<td class="left">
                            		<span id="prd_name">${b.prdt_name}</span>
                           		 	<br>
                            		<div class="ppro">
                            			<c:if test="${b.qna_secure=='T'}">
                           					<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif" alt="비밀글" class="ec-common-rwd-image"> 
                            		 		<c:if test="${b.qna_chk  == 'N'}">
	                                 			<a id="idMsg10" style="color:#555555;"onclick="prdtDetail(this)">
	                                 				${b.qna_title }
	                                 			</a> 
	                                		 	<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image">
	                                		 	<span class="txtEm"></span>
                             				</c:if>
                             				
                             				<c:if test="${b.qna_chk  == 'Y'}">
                                 				<a id="idMsg10" style="color:#555555;" onclick="prdtDetail(this)">
                                 					${b.qna_title }
                                				</a> 
                                 				<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image">
                                 				<span class="txtEm"></span>
                           					</c:if>
                           				</c:if>
                             	
                             			<c:if test="${b.qna_secure=='F'}">
                            		 		<c:if test="${b.qna_chk  == 'N'}">
                                 				<a id="idMsg10" style="color:#555555;" onclick="prdtDetail2(this)">
                                 					${b.qna_title }
                               					</a> 
                                				<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image">
                                				<span class="txtEm"></span>
                             				</c:if>
                             				<c:if test="${b.qna_chk  == 'Y'}">
                                 			<a id="idMsg10" style="color:#555555;"onclick="prdtDetail2(this)">
                                 					${b.qna_title }
                          					</a> 
                                 			<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image">
                                 			<span class="txtEm"></span>
                             				</c:if>
										</c:if>                               
                           		 	</div>
                         		</td>
                         		</c:if>
								
								<c:if test="${b.b_cate_no ne 1 }">
								<td class="left">
                            		<div class="ppro">
                            			<c:if test="${b.qna_secure=='T'}">
                           					<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif" alt="비밀글" class="ec-common-rwd-image"> 
                            		 		<c:if test="${b.qna_chk  == 'N'}">
	                                 			<a id="idMsg10" style="color:#555555;"onclick="prdtDetail(this)">
	                                 				${b.qna_title }
	                                 			</a> 
	                                		 	<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image">
	                                		 	<span class="txtEm"></span>
                             				</c:if>
                             				
                             				<c:if test="${b.qna_chk  == 'Y'}">
                                 				<a id="idMsg10" style="color:#555555;"onclick="prdtDetail(this)">
                                 					${b.qna_title }
                                				</a> 
                                 				<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image">
                                 				<span class="txtEm"></span>
                           					</c:if>
                           				</c:if>
                             	
                             			<c:if test="${b.qna_secure=='F'}">
                            		 		<c:if test="${b.qna_chk  == 'N'}">
                                 				<a id="idMsg10" style="color:#555555;"onclick="prdtDetail2(this)">
                                 					${b.qna_title }
                               					</a> 
                                				<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image">
                                				<span class="txtEm"></span>
                             				</c:if>
                             				<c:if test="${b.qna_chk  == 'Y'}">
                                 			<a id="idMsg10" style="color:#555555;"onclick="prdtDetail2(this)">
                                 					${b.qna_title }
                          					</a> 
                                 			<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image">
                                 			<span class="txtEm"></span>
                             				</c:if>
										</c:if>                               
                           		 	</div>
                         		</td>
                         		</c:if>
                         		
								<td>${b.qna_writer }</td>
								<td><span class="txtNum">${b.qna_date }</span></td>
								
							</tr>
							
							</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
				<input id="board_sort" name="board_sort" value="" type="hidden" style="width:100px;">
				<div class="xans-element- xans-myshop xans-myshop-boardlistsearch ">
					<fieldset class="boardSearch">
						<legend>게시물 검색</legend>
						
					<form action="mBoardsearch.do">
						<p style="font-size:12px;">
							<select id="search_key" name="search_key" style="width:80px;">
								<option value="title">제목</option>
								<option value="writer">글쓴이</option>
							</select> 
							<input id="search" name="search" class="inputTypeText" type="text"> 
							<a href="#none" class="yg_btn_28 yg_btn3" onclick="pbSearch();" alt="찾기">SEARCH</a>
						</p>
						</form>
					</fieldset>
				</div>

			<!-- 페이징 처리 -->
			<div class="xans-element- xans-myshop xans-myshop-couponlistpaging ec-base-paginate1">
			<c:if test="${ !empty list }">
				<c:if test="${empty sc }">
					<c:if test="${pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</c:if>
					<c:if test="${pi.currentPage ne 1 }">
						<c:url var="start" value="mBoard.do">
							<c:param name="currentPage" value="1"/>
						</c:url>
					<a href="${start }" class="first">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</a>
					</c:if>
				</c:if>
				
				<c:if test="${ !empty sc }">
					<c:if test="${pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</c:if>
					<c:if test="${pi.currentPage ne 1 }">
						<c:url var="start" value="mBoardsearch.do">
							<c:param name="currentPage" value="1"/>
							<c:param name="search_key" value="${sc.search_key }"/>
	                 		<c:param name="search" value="${sc.search }"/>
						</c:url>
					<a href="${start }" class="first">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</a>
					</c:if>
				</c:if>
				
				<c:if test="${empty sc }">
					<c:if test="${ pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지"> &nbsp;
					</c:if>
					
					<c:if test="${ pi.currentPage ne 1 }">
						<c:url var="before" value="mBoard.do">
	                  		<c:param name="currentPage" value="${pi.currentPage - 1 }"/>
	                    </c:url>
	               	<a href="${before}">
	                  	<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
	                </a> &nbsp;
	                </c:if>
				</c:if>
					
				<c:if test="${ !empty sc }">
					<c:if test="${ pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지"> &nbsp;
					</c:if>
					
					<c:if test="${ pi.currentPage ne 1 }">
						<c:url var="before" value="mBoardsearch.do">
			                <c:param name="currentPage" value="${pi.currentPage - 1 }"/>
			                <c:param name="search_key" value="${sc.search_key }"/>
			                <c:param name="search" value="${sc.search }"/>
		                </c:url>
	                <a href="${before}">
	                	<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
	                </a> &nbsp;
	       			</c:if>
	       		</c:if>
	            
				 
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
			   		<c:if test="${ p eq pi.currentPage }">
	                        <font color="red" style="font-size: 13px;font-weight: 900;font-family: 'arial',serif;line-height: 35px;">
	                        <b>${ p }</b> &nbsp;&nbsp;</font>
	                </c:if>
						
				 	<c:if test="${ empty sc }">	
	                     <c:if test="${ p ne pi.currentPage }">
	                        <c:url var="pagination" value="mBoard.do">
	                           <c:param name="currentPage" value="${ p }"/>
	                     	</c:url>
	                     	<a href="${ pagination }" style="font-family: 'arial',serif;line-height: 35px;font-size: 13px;">
	                     	${ p }</a> &nbsp;
	                  	 </c:if>
	                </c:if>
	                  
	               	 <c:if test="${ !empty sc }">	
	                     <c:if test="${ p ne pi.currentPage }">
	                        <c:url var="pagination" value="mBoardsearch.do">
		                        <c:param name="currentPage" value="${ p }"/>
			                    <c:param name="search_key" value="${sc.search_key }"/>
			                    <c:param name="search" value="${sc.search }"/>
	                        </c:url>
	                     	<a href="${ pagination }" style="font-family: 'arial',serif;line-height: 35px;font-size: 13px;">
	                     	${ p }</a> &nbsp;
	                  	 </c:if>
	                </c:if>
	          	</c:forEach>
	               
               	<c:if test="${ empty sc }">
               		<c:if test="${ pi.currentPage eq pi.maxPage }">
						<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
					</c:if>
				
					<c:if test="${ pi.currentPage ne pi.maxPage }">
						<c:url var="after" value="mBoard.do">
		                   	<c:param name="currentPage" value="${pi.currentPage +1 }"/>
	                 	</c:url>
	                 	<a href="${after}">
	              			<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
	              		</a>
	              	</c:if>
               </c:if>
               
               <c:if test="${ !empty sc }">
               		<c:if test="${ pi.currentPage eq pi.maxPage }">
						<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
					</c:if>
					
					<c:if test="${ pi.currentPage ne pi.maxPage }">
						<c:url var="after" value="mBoardsearch.do">
	                     	<c:param name="currentPage" value="${pi.currentPage +1 }"/>
	                     	<c:param name="search_key" value="${sc.search_key }"/>
	           		     	<c:param name="search" value="${sc.search }"/>
                  		</c:url>
                  		<a href="${after}">
               				<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
               			</a>
             		</c:if>
               </c:if>
               
               <c:if test="${empty sc }">
               		<c:if test="${ pi.currentPage eq pi.maxPage }">
               			<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
               		</c:if>
               		
               		<c:if test="${ pi.currentPage ne pi.maxPage }">
	               		<c:url var="end" value="mBoard.do">
	               			<c:param name="currentPage" value="${pi.maxPage }"/>
	               		</c:url>
						<a href="${end }" class="last">
							<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
						</a>
               		</c:if>
               </c:if>
               
               <c:if test="${ !empty sc }">
	               <c:if test="${ pi.currentPage eq pi.maxPage }">
	               		<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
	               </c:if>
	               
	               <c:if test="${ pi.currentPage ne pi.maxPage }">
	               		<c:url var="end" value="mBoardsearch.do">
	               			<c:param name="currentPage" value="${pi.maxPage }"/>
	               			<c:param name="search_key" value="${sc.search_key }"/>
	           		     	<c:param name="search" value="${sc.search }"/>	
	               		</c:url>
						<a href="${end }" class="last">
							<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
						</a>
	               </c:if>
               </c:if>
               </c:if>
			</div>
			<hr class="layout">
		</div>
	<jsp:include page="footer.jsp"/>
	</div>
	
	
	
	<script>
		 function pbSearch() {
			 var search_key = $('#search_key').val();
			 var search = $('#search').val();
			 
			 location.href="mBoardsearch.do?search_key="+search_key+"&search="+search;
		 }
		 
 		 function boardmove(bm){
			 
 			var b_cate_no=$(bm).parents('tr').find('.b_cate_no').val();
 			
 			console.log(b_cate_no);
 			
 			if(b_cate_no == 1){
 				location.href="product_board.do";
 			} else if(b_cate_no == 2) {
 				location.href="delivery_board.do";
 			} else if(b_cate_no == 3) {
 				location.href="delivery_cancel.do";
 			} else if(b_cate_no == 4) {
 				location.href="product_change.do";
 			} else if(b_cate_no == 5) {
 				location.href="bank_insert_board.do";
 			} else if(b_cate_no == 6) {
 				location.href="bad_product_board.do";
 			}
			
		 }
		 
		 function prdtDetail(pd) {
			 var q_no = $(pd).parents('tr').find('.q_no').val();
			 console.log(q_no);
			 
			 location.href="product_board_detailView.do?qna_no="+q_no;
		 }
		 			 
		 function prdtDetail2(pd) {
			 var q_no = $(pd).parents('tr').find('.q_no').val();
			 console.log(q_no);
			 
			 location.href="product_board_detail.do?qna_no="+q_no;
		 }
	</script>
	


</body>
</html>
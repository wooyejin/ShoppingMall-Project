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
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
	<jsp:include page="header.jsp"/>	
<style>
.ec-base-paginate1 img {
    vertical-align: none !important;
}
.ec-base-paginate1 {
    margin: 30px auto;
    text-align: center;
    line-height: 0;
    display: table;
}
a {
	cursor : pointer;
}

</style>	
	
	
	
</head>



<body>
	<c:url var="mWishlist" value="mWishlist.do"/>
	<c:url var="product_detail" value="product_detail.do">
		<c:param name="product_detail" value="p1"/>
	<c:url var="mPoint" value="mPoint.do"/>
	<c:url var="mCoupon" value="mCoupon.do"/>
	</c:url>
	<c:url var="order" value="buynow.do">
		<c:param name="order" value="p1"/>
	</c:url>
	<c:url var="cart" value="cartbutton.do"/>

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
    			<h2>WISH LIST</h2>
			</div>

			<div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
			<!--
        		$login_page = /member/login.html
       		    $count = 10
  			-->
				<table id="wishtable" border="1" summary>
					<caption style="display:none;">관심상품 목록</caption>
       				<colgroup>
						<col style="width:40px;">
						<col style="width:110px">
						<col style="width:auto">
						<col style="width:105px">
						<col style="width:100px">
						<col style="width:100px">
						<col style="width:85px">
						<col style="width:105px">
						<col style="width:110px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">
								<input type="checkbox" id="pro_wish" >
							</th>
			                <th scope="col">IMAGE</th>
			                <th scope="col">PRODUCT NAME</th>
			                <th scope="col">PRICE</th>
			                <th scope="col">POINT<!--적립금--></th>
			                <th scope="col">DELIVERY</th>
			                <th scope="col">CHARGE</th>
			                <th scope="col">TOTAL</th>
			                <th scope="col">ORDER</th>
            			</tr>
          			</thead>

          			<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
						<c:set var="i" value="0"/>
          				<c:forEach var="d" items="${list }">
          				<tr class="xans-record-">
          				<input id="memno" name ="memno" value="${loginMember.memNo }" type="hidden"/>
          				<input id="prdt_no" name="prdt_no" class="prdt_no" value="${d.prdt_no }" type="hidden"/>
          				<input type="hidden" name="dibsno" class="dibsno" value="${d.dibsno }"/>
          				<input type="hidden" name="dibs_color" class="dibsno" value="${d.dibs_color }"/>
          				<input type="hidden" name="dibs_size" class="dibsno" value="${d.dibs_size }"/>
          				<input type="hidden" name="dibs_count" class="dibsno" value="${d.dibs_count }"/>
							<td>
								<input name="wishCheck" id="wish_idx_0" type="checkbox">
							</td>
               				<td class="thumb">
            					<a onclick="prdtmove(this);"href="#">
               						<img src="${d.path}${d.image}" alt=""></a>
       						</td>
							<td class="left"><a onclick="prdtmove(this);" href="#" style="font-size: 13px;">${d.prdt_name }</a>
							
							<br>
							<c:if test="${ d.dibs_color ne null or d.dibs_size ne null }">
							<span class="aaaaa" id="idMsg7">[옵션 : ${d.dibs_color }/${d.dibs_size }/${d.dibs_count}개]</span>
							</c:if>
								<ul class="xans-element- xans-myshop xans-myshop-optionall option">
									<li class="xans-record-">
										 <br> 
										<a href="#none" onclick="optionchange(this);" id="optionchange1" class=" yg_btn_80 yg_btn3 optionclose" alt="옵션변경">옵션변경하기</a> <!-- 참고 : 옵션변경 레이어 -->
										
										<div id="detail1" class="optiondetail" style="display: none;">
											<div class="optionheader">
												<h3 class="optiontitle">옵션 변경하기</h3>
												<a href="#none" class="option_close" onclick="$('.optionModify').hide();">
													<img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기">
												</a>
											</div>
											
											<div class="optionbody">
												<h4>상품옵션</h4>
												<ul class="ec-base-desc typeDot gLarge rightDD">
													<li>
														<strong class="optiontype">QUANTITY</strong>
														<div class="flex-w bo5 of-hidden w-size17" style="left:24%;">
														<button class="num-product-down1 color1 flex-c-m size7 bg8 eff2"  style="border-radius:5px;">
															<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
														</button>
														<input class="size8 m-text18 t-center num-product" id="quantity" type="number" name="num-product2" value="1">
														<button class="num-product-up1 color1 flex-c-m size7 bg8 eff2"  style="border-radius:5px;">
															<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
														</button>
														</div>
													</li>
												<div id="detail2" class="option_scroll" style= position: relative; top: 5px; margin: 5px 0 0 0; height:120px; width:105%;">
													<div id="option1o" style=" margin: 5px 0 0 0; border-top: 1px solid #ddd; ">
														<li>
															<strong class="optiontype">COLOR</strong> 
															<select class="select1" id="select1"></select>
														</li>
														<li>
															<strong class="optiontype">SIZE</strong> 
															<select class="select2" id="select2"></select>
														</li>
													</div>
												</div>
												</ul>
											</div>
											<div class="option_btn">
												<a href="#none" class=" yg_btn yg_btn1" onclick="add(this, ${i});" alt="추가">추가</a>
												<a href="#none" class="yg_btn yg_btn3" onclick="update(this, ${i});" alt="변경">변경</a>
											</div>
										</div>
									</li>
								</ul>
							</td>
							<td class="price center">
									<span class=""><fmt:formatNumber value="${d.dibs_price }" pattern="#,###"/> won</span>
									<br>
							</td>
               				<td><span class="txtInfo"><img src="/ot/resources/images/point.png" class="icon_img" alt="적립금">3%</span></td>
               				<td>
                				<div class="txtInfo">기본배송</div>
							</td>
               				<td>
							<span class="">2,500 won<br></span>
							</td>
               				<td class="price center"><fmt:formatNumber value="${d.dibs_sumprice }" pattern="#,###"/> won</td>
               				
               				<c:if test="${ d.dibs_color ne null or d.dibs_size ne null }">
			                <td class="button">
			                    <a id="BuyNow"  class=" yg_btn_100 yg_btn1 add-to-cart BuyNow" alt="담기">BUY NOW</a>
			                    <a id="selectDelete" class="btn_wishlist_del yg_btn_100 yg_btn4 selectDelete" alt="삭제">DELETE</a>
			                </td>
			                </c:if>
			                
			                <c:if test="${ d.dibs_color eq null or d.dibs_size eq null }">
		                	<td class="button">
		                		<a id="selectDelete" class="btn_wishlist_del yg_btn_100 yg_btn4 selectDelete" alt="삭제">DELETE</a>
			                </td>
			                </c:if>
				                
           					</tr>
           					<c:set var ="i" value="${i+1 }"/>
           					</c:forEach>
					</tbody>
        		</table>
				<c:if test="${ empty list }">
					<p class="message">관심상품 내역이 없습니다.</p>
				</c:if>
			</div>
			<c:if test="${ !empty list }">
			<div class="xans-element- xans-myshop xans-myshop-wishlistbutton ec-base-button xans-record-">
				<span class="gLeft">
      				<strong class="text">선택상품을</strong>
       				<a id="WishListDelete" class="yg_btn_24 yg_btn5" alt="삭제하기">삭제하기</a>
        			<a id="Insertbasket" class="yg_btn_24 yg_btn3" alt="장바구니 담기">장바구니 담기</a>
    			</span>
				<span class="gRight">
       				<a href="#" id="AllBuyNow" class="yg_btn_140 AllBuyNow" alt="전체상품주문">전체상품주문</a>
       	 			<a href="${cart }" class="yg_btn_140 yg_btn4" alt="장바구니 가기" style="background:#f4f4f4">장바구니 가기</a>
       	 			<a id="deleteAll" class="yg_btn_140 yg_btn4" alt="관심상품 비우기" style="background:#f4f4f4">전체 비우기</a>
    			</span>
			</div>
			</c:if>
			
			<!-- 페이징 처리 -->
			<c:if test="${ !empty list }">
			<div class="xans-element- xans-myshop xans-myshop-couponlistpaging ec-base-paginate1">
				<c:if test="${pi.currentPage eq 1 }">
					<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
				</c:if>
				<c:if test="${pi.currentPage ne 1 }">
					<c:url var="start" value="mCoupon.do">
						<c:param name="currentPage" value="1"/>
					</c:url>
				<a href="${start }" class="first">
					<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
				</a>
				</c:if> 
				
				<c:if test="${ pi.currentPage eq 1 }">
					<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지"> &nbsp;
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
				<c:url var="before" value="mWishlist.do">
                  <c:param name="currentPage" value="${pi.currentPage - 1 }"/>
                  </c:url>
                  <a href="${before}">
                  <img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
                  </a> &nbsp;
                 </c:if>
                  
				 <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                     <c:if test="${ p eq pi.currentPage }">
                        <font color="red" style="font-size: 13px;font-weight: 900;font-family: 'arial',serif;line-height: 35px;">
                        <b>${ p }</b> &nbsp;&nbsp;</font>
                     </c:if>

                     <c:if test="${ p ne pi.currentPage }">
                        <c:url var="pagination" value="mWishlist.do">
                           <c:param name="currentPage" value="${ p }"/>
                     </c:url>
                     <a href="${ pagination }" style="font-family: 'arial',serif;line-height: 35px;font-size: 13px;">
                     ${ p }</a> &nbsp;
                  </c:if>
               </c:forEach>
               
               <c:if test="${ pi.currentPage eq pi.maxPage }">
					<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
				<c:url var="after" value="mWishlist.do">
                     <c:param name="currentPage" value="${pi.currentPage +1 }"/>
                  </c:url>
                  <a href="${after}">
               <img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
               </a>
               </c:if>
               
               <c:if test="${ pi.currentPage eq pi.maxPage }">
               		<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
               </c:if>
               <c:if test="${ pi.currentPage ne pi.maxPage }">
               		<c:url var="end" value="mWishlist.do">
               			<c:param name="currentPage" value="${pi.maxPage }"/>
               		</c:url>
					<a href="${end }" class="last">
					<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지"></a>
               </c:if>
			</div>
		</c:if>
		
        </div>
		<hr class="layout">
	</div>
	
	

	<script>
	
		var prdt_no=0;
		
		var dibsno =0;
		
		var dibsli="";
	
		function optionchange(oc){
			$('.optiondetail').css('display', 'none');
			$(oc).parents('ul').find('.optiondetail').css('display', 'block');
			dibsno = $(oc).parents('ul').parents('td').parents('tr').find('.dibsno').val();
		    prdt_no = $(oc).parents('ul').parents('td').parents('tr').find('.prdt_no').val();
			dibsli= $(oc).parents('tr');
			console.log(dibsli);	
		
			$.ajax({
				url:"optiondetail.do",
				data:{prdt_no:prdt_no},
				dataType:"json",
				async: false,
				success:function(data){
						
					var color="";
					for(var i=0; i<data.length; i++){
						color +="<option>"+data[i].prdt_color+"</option>";
					}
					$('#detail1 #detail2 select[id=select1]').html(color);
					
					optionchange2(prdt_no);
				}
			})
		}
		
		function optionchange2(arguments){
			/* $('.optiondetail').css('display', 'none'); */
			console.log("arguments"+arguments);
			$.ajax({
				url:"optiondetail2.do",
				data:{prdt_no:arguments},
				dataType:"json",
				async: false,
				success:function(data){
						
					var size="";
					
					for(var i=0; i<data.length; i++){
						size +="<option>"+data[i].prdt_size+"</option>";
					}
					$('#detail1 #detail2 select[id=select2]').html(size);
				}
			})
			
		}
		
		function add(A,i){
			var quantity = document.getElementsByName("num-product2")[i].value;
			var color = document.getElementsByClassName("select1")[i].value;
			var size = document.getElementsByClassName("select2")[i].value;
			console.log(quantity);
			console.log(color);
			console.log(size);
			console.log(prdt_no);
			console.log(dibsno);
			

			
			location.href="insertwishlist.do?prdt_no="+prdt_no+"&dibs_count="+quantity+"&dibs_size="+size+"&dibs_color="+color;
			alert('관심상품에 추가되었습니다.');
			 
			}
			/* $.ajax({
				url:"insertwishlist.do",
				data:{prdt_no : prdt_no, dibs_count : quantity, dibs_size : size, dibs_color : color },
				dataType:"json",
				success : function(data){

					dibsli.after('<tr class="xans-record-">'+
	          				'<input id="prdt_no" name="prdt_no" class="prdt_no" value='+data.d1.prdt_no+'type="hidden"/>'+
	              				'<input type="hidden" class="dibsno" value='+data.d1.dibsno+'/>'+
	    							'<td>'+
	    								'<input name="wish_idx[]" id="wish_idx_0" enable-order="" reserve-order="N" enable-purchase="1" class="" is-set-product="F" value="658007" type="checkbox">'+
	    							'</td>'+
	                   				'<td class="thumb">'+
	                					'<a href="product_detail.do?product_detail='+data.d1.prdt_no+'">' +
	                   						'<img name="d1img" src='+data.d1.path+data.d1.image+' alt=""></a>'+
	           						'</td>'+
	    							'<td class="left"><a href="product_detail.do?product_detail='+data.d1.prdt_no+'>" style="font-size: 13px;">'+data.d1.prdt_name+'</a>'+
	    							'<br><span id="idMsg7">[옵션 : '+data.d1.dibs_color+ '/' + data.d1.dibs_size +'/' + data.d1.dibs_count + '개]</span>'+
	    								'<ul class="xans-element- xans-myshop xans-myshop-optionall option">'+
	    									'<li class="xans-record-">'+
	    										 '<br>'+
	    										'<a href="#none" onclick="optionchange(this);" id="optionchange1" class=" yg_btn_80 yg_btn3 optionclose" alt="옵션변경">옵션변경하기</a> <!-- 참고 : 옵션변경 레이어 -->'+
	    										'<div id="detail1" class="optiondetail" style="display: none;">'+
	    											'<div class="optionheader">'+
	    												'<h3 class="optiontitle">옵션 변경하기</h3>'+
	    												'<a href="#none" class="option_close" onclick="$(.optionModify).hide();>'+
	    													'<img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기">'+
	    												'</a>'+
	    											'</div>'+
	    											'<div class="optionbody">'+
	    												'<h4>상품옵션</h4>'+
	    												'<ul class="ec-base-desc typeDot gLarge rightDD">'+
	    													'<li>'+
	    														'<strong class="optiontype">QUANTITY</strong>'+
	    														'<div class="flex-w bo5 of-hidden w-size17" style="left:24%;">'+
	    														'<button class="num-product-down1 color1 flex-c-m size7 bg8 eff2"  style="border-radius:5px;">'+
	    															'<i class="fs-12 fa fa-minus" aria-hidden="true"></i>'+
	    														'</button>'+
	    														'<input class="size8 m-text18 t-center num-product" id="quantity" type="number" name="num-product2" value="1">'+
	    														'<button class="num-product-up1 color1 flex-c-m size7 bg8 eff2"  style="border-radius:5px;">'+
	    															'<i class="fs-12 fa fa-plus" aria-hidden="true"></i>'+
	    														'</button>'+
	    														'</div>'+
	    													'</li>'+
	    												'<div id="detail2" class="option_scroll" style= position: relative; top: 5px; margin: 5px 0 0 0; height:120px; width:105%;">'+
	    													'<div id="option1o" style=" margin: 5px 0 0 0; border-top: 1px solid #ddd; ">'+
	    														'<li>'+
	    															'<strong class="optiontype">COLOR</strong>'+
	    															'<select id="select1"></select>'+
	    														'</li>'+
	    														'<li>'+
	    															'<strong class="optiontype">SIZE</strong>'+
	    															'<select id="select2"></select>'+
	    														'</li>'+
	    													'</div>'+
	    												'</div>'+
	    												'</ul>'+
	    											'</div>'+
	    											'<div class="option_btn">'+
	    												'<a href="#none" class=" yg_btn yg_btn1" onclick="add(this);" alt="추가">추가</a>'+
	    												'<a href="#none" class="yg_btn yg_btn3" onclick="NewWishlist.modify(this);" alt="변경">변경</a>'+
	    											'</div>'+
	    										'</div>'+
	    									'</li>'+
	    								'</ul>'+
	    							'</td>'+
	    							'<td class="price center">'+
	    									'<span class=""><fmt:formatNumber value='' pattern="#,###"/>'+data.d1.prdt_price+' won</span>'+
	    									'<br>'+
	    								'</td>'+
	                    				'<td><span class="txtInfo"><img src="/ot/resources/images/point.png" class="icon_img" alt="적립금">3%</span></td>'+
	                    				'<td>'+
	    	                				'<div class="txtInfo">기본배송'+
	    	                					'<div class="">(해외배송가능)'+
	    	                					'</div>'+
	    									'</div>'+
	    								'</td>'+
	                    				'<td>'+
	    								'<span class="">2,500 won<br></span>'+
	    								'</td>'+
	                    				'<td class="price center"><fmt:formatNumber value='' pattern="#,###"/> won</td>'+
	    				                '<td class="button">'+
	    				                    '<a href="#none" onclick="" class=" yg_btn_100 yg_btn1 add-to-cart" alt="담기">ADD TO CART</a>'+
	    				                    '<!-- <a href="#none" onclick="" class=" yg_btn_100 yg_btn4 add-to-cart" alt="주문">BUY IT NOW</a> -->'+
	    				                    '<a href="#none" class="btn_wishlist_del yg_btn_100 yg_btn4" rel="10550||||" alt="삭제">DELETE</a>'+
	    				                '</td>'+
	               					'</tr>');
					alert("관심상품에 추가되었습니다.");
					/* $('.optiondetail').css('display', 'none'); 
				}
			}) */
		
		function update(A, i){
			var quantity = document.getElementsByName("num-product2")[i].value;
			var color = document.getElementsByClassName("select1")[i].value;
			var size = document.getElementsByClassName("select2")[i].value;
			location.href="updatewishlist.do?dibsno="+dibsno+"&prdt_no="+prdt_no+"&dibs_count="+quantity+"&dibs_size="+size+"&dibs_color="+color;
			alert('관심 상품 옵션이 변경되었습니다.');
			
		}
		
		  var $pro_wish = $('#pro_wish');
		    $pro_wish.change(function () {
		        var $this = $(this);
		        var checked = $this.prop('checked');
		        $('input[name="wishCheck"]').prop('checked', checked);

		    });
		    
	    $('#AllBuyNow').click(function(){
	    	var wishArr = new Array($('#wishtable tbody tr').length);
			var colorArr = new Array();
			var countArr = new Array();
			var sizeArr = new Array();
			var dibs_color = document.getElementsByName('dibs_color');		// 체크박스
			var dibs_size = document.getElementsByName('dibs_size');		// 체크박스
			var dibs_count = document.getElementsByName('dibs_count');		// 체크박스
			var dibsno = document.getElementsByName('dibsno'); // 위시리스트 번호
			
			var count = 0;
			var colorCount = 0;
			var sizeCount = 0;
			var quantityCount=0;
			
			for(var i=0; i<wishArr.length; i++){
					wishArr[count] = dibsno[i].value
					colorArr[count] =  dibs_color[i].value
					countArr[count] =  dibs_size[i].value
					sizeArr[count] =  dibs_count[i].value
					count++;
				}
			
			console.log(wishArr);

		for(var i=0; i<wishArr.length;i++){
			if(countArr[i] == ""){
				quantityCount++;
			}
		}
		for(var i=0; i<wishArr.length;i++){
			if(colorArr[i] == ""){
				colorCount++;
			}
		}		
		for(var i=0; i<wishArr.length;i++){
			if(sizeArr[i] == ""){
				sizeCount++;
			}
		}
			if(colorCount > 0){
				alert('옵션을 확인해 주세요');
			}else if(quantityCount > 0 ){
				alert('옵션을 확인해 주세요');
			}else if(sizeCount > 0){
				alert('옵션을 확인해 주세요');
			} else {
				console.log("성공");
				console.log(colorCount);
				console.log(quantityCount);
				console.log(sizeCount);
				console.log(wishArr);
				location.href="Insertbasket.do?wishArr="+wishArr;
			}
			
		});    
		    
		$('#Insertbasket').click(function(){
			var wishArr = new Array();
			var colorArr = new Array();
			var countArr = new Array();
			var sizeArr = new Array();
			var wishCheck = document.getElementsByName('wishCheck');		// 체크박스
			var dibs_color = document.getElementsByName('dibs_color');		// 체크박스
			var dibs_size = document.getElementsByName('dibs_size');		// 체크박스
			var dibs_count = document.getElementsByName('dibs_count');		// 체크박스
			
			console.log(wishCheck);
			var dibsno = document.getElementsByName('dibsno'); // 위시리스트 번호
			var count = 0;
			for(var i=0; i<wishCheck.length; i++){
				if(wishCheck[i].checked == true) {
					wishArr[count] = dibsno[i].value
					colorArr[count] =  dibs_color[i].value
					countArr[count] =  dibs_size[i].value
					sizeArr[count] =  dibs_count[i].value
					count++;
					}
				}
			if(count == 0) {
				alert("상품을 선택해주세요.");	
			} else {
		
		var colorCount = 0;
		var sizeCount = 0;
		var countCount=0;
			
		for(var i=0; i<wishArr.length;i++){
			if(countArr[i] == ""){
				countCount++;
			}
		}
		for(var i=0; i<wishArr.length;i++){
			if(colorArr[i] == ""){
				colorCount++;
			}
		}		
		for(var i=0; i<wishArr.length;i++){
			if(sizeArr[i] == ""){
				sizeCount++;
			}
		}
		
			if(colorCount > 0){
				alert('옵션을 확인해 주세요');
			}else if(countCount > 0 ){
				alert('옵션을 확인해 주세요')
			}else if(sizeCount > 0){
				alert('옵션을 확인해 주세요')
			} else{
			alert('장바구니에 추가되었습니다.');
			console.log(wishArr);
			location.href="Insertbasket.do?wishArr="+wishArr;
			}
		}
	});
		    
		
		
		
		$('.option_close').click(function() {
			$('.optiondetail').css('display', 'none');
		});
		
		$('.add-to-cart').click(function(){
			$('.add-cart').css('display', 'block');
		});
		
		$('.option_close').click(function() {
			$('.add-cart').css('display', 'none');
		});
		
		
		$('#deleteAll').click(function(){
			var memno = $('#memno').val();
			
			if(confirm("전체 상품을 삭제하시겠습니까?") == true){
				
				$.ajax({
					url:"deletewishAll.do",
					data:{memno : memno},
					success : function(data){
						if(data == "ok") {
							location.href="mWishlist.do";
						}
					}
				});
			}
		});
		
		$('.BuyNow').click(function(){
			dibsno = $(this).parents('tr').find('.dibsno').val();
			
			console.log(dibsno);
			
			location.href="wishBuynow.do?dibsno="+dibsno;
		});
		
		
		
		$('.selectDelete').click(function(){
			dibsno = $(this).parents('tr').find('.dibsno').val();
			
			console.log(dibsno);
			
		 	if(confirm("선택 상품을 삭제하시겠습니까?") == true){
				$.ajax({
					url:"selectDelete.do",
					data:{dibsno : dibsno},
					success : function(data){
						if(data == "ok") {
							location.href="mWishlist.do";
						}
					}
				});
			}
		});
		
		
		$('#WishListDelete').click(function(){
			
			if(confirm("선택 상품을 삭제하시겠습니까?") == true){
				var wishArr = new Array();
				var wishCheck = document.getElementsByName('wishCheck');
				console.log(wishCheck);
				var dibsno = document.getElementsByName('dibsno');
				
				var count = 0;
				
				for(var i=0; i<wishCheck.length; i++){
					if(wishCheck[i].checked == true){
						wishArr[count] = dibsno[i].value
						count++;
					}
				}
			console.log(wishArr);
			
			$.ajax({
				url:"wishlistdelete.do",
				traditional : true,
				data : { 'wishArr' : wishArr},
				success : function(data){
					if(data =="ok"){
					location.href="mWishlist.do";
				}else{
					alert('삭제실패')
				}
			},error : function(){
				alert('상품을 선택해주세요.');
			}
			});
		}
	});

		function prdtmove(pm) {
				prdt_no = $(pm).parents('tr').find('.prdt_no').val();
				
				location.href ="product_detail.do?product_detail="+ prdt_no;
			}
		
								
	/*[ +/- num product ]
	   ===========================================================*/
	   $('.num-product-down1').on('click', function(e){
	       e.preventDefault();
	       var numProduct = Number($(this).next().val());
	       if(numProduct > 1) $(this).next().val(numProduct - 1);
	   });
	
	   $('.num-product-up1').on('click', function(e){
	       e.preventDefault();
	       var numProduct = Number($(this).prev().val());
	       $(this).prev().val(numProduct + 1);
	   });
</script>

 <%@include file="footer.jsp" %>
</body>
</html>
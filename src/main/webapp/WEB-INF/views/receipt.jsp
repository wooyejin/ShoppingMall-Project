<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영수증</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ot/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="/ot/resources/css/main.css">
	<link rel="stylesheet" type="text/css" href="/ot/resources/css/receipt.css">
	<link rel="stylesheet" href="/ot/resources/css/popup.css">
<!--===============================================================================================-->
<style>
p {
    font-family: Montserrat-Regular;
    font-size: 12px;
    line-height: 1.7;
    color: #888888;
    margin: 0px;
}
</style>
</head>
<body id="popup" style="margin:0;">

	<div id="readFrame">
	<table align="center" class="outsideBorder" width="700" border="0" cellpadding="0" cellspacing="0" 
	style=" border:1px solid #bbc0c4;">
	<tbody>
	<tr>
		<td style="padding:24px 14px 0;">
            <table width="670" border="0" cellpadding="0" cellspacing="0">
            <tbody><!-- 상단메인배너 --><tr><td>
            <img src="http://m-img.cafe24.com/images/template/admin/kr/img_visual_customer_3.jpg" alt="" loading="lazy">
		</td>
    </tr>
    
    <!-- //상단메인배너 -->
    <!-- 인사말 -->
    <tr>
    	<td style="padding:50px 0 0 10px; font-size:12px; font-family:Gulim; color:#393939; line-height:19px;">
            <p>안녕하세요. <strong>ot</strong> 입니다.<br>
                        저희 쇼핑몰을 이용해주셔서 진심으로 감사드립니다.</p>
            <p style="margin-top:13px;">
             <strong>${loginMember.memName }(${loginMember.memId})</strong> 고객님께서 저희 쇼핑몰에서 주문하신 내역입니다.</p>
        </td>
    </tr>
    <!-- //인사말 -->
    
    <tr>
    	<td>
             <!-- 컨텐츠 -->
              <table width="670" border="0" cellpadding="0" cellspacing="0" style="font-size:12px; font-family:Gulim; color:#393939; line-height:19px;">
                 <tbody>
               		 <tr>
                		 <td style="padding:23px 0 0;">
                    	 <p style="margin:0 0 25px 10px">고객님께서는 
                    	 <strong>2020-03-16 23:32:35</strong> 
                    	  에 <strong>ot</strong>에서 아래와 같은 상품을 주문하셨고,<br>
                         <strong>21,500 won 무통장 입금</strong> 
                                                  결제방법으로 선택하셨습니다.</p>
              <table class="tableColor" width="100%" border="0" cellpadding="0" cellspacing="0" 
              style="font-size:12px; font-family:Gulim; line-height:15px;  border-top:1px solid #d5d5d5;">
                 <thead>
                 	<tr>
                 		<th colspan="1" rowspan="1" scope="col" width="33%" 
                 		style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#80878d;">주문자</th><th colspan="1" rowspan="1" scope="col" width="33%" style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#80878d;">주문번호</th>
                 		<th colspan="1" rowspan="1" scope="col" width="34%" style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#80878d;">주문일자</th></tr></thead>
                            <tbody>
                            <c:forEach var="o" items="${olist}">
                               <tr>
                              	 <td align="center" valign="middle" 
                              	 style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#393939;">${loginMember.memId }(${loginMember.memName })</td>
                              	 <td align="center" valign="middle" style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5;border-right:1px solid #d5d5d5; color:#393939;">${o.ord_no }</td>
                              	 <td align="center" valign="middle" style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">${o.ord_date }</td>
                              	 </tr>
                               </c:forEach>
                              	 </tbody>
               </table>
              </td>
           </tr>
           
           			<tr>
           				<td height="40">&nbsp;</td>
           		    </tr>
           		    <!-- 컨텐츠 공통 여백 -->
           		    <!-- 주문 상품 정보 -->
           		    <tr>
           		    	<td>
                          	<table width="100%" border="0" cellpadding="0" cellspacing="0" 
                          	style="margin:0 0 20px;">
                            	<tbody>
                     				<tr>
                     				<td valign="middle" width="19">
                     				<img src="http://m-img.cafe24.com/images/template/admin/kr/ico_title.gif" alt="" loading="lazy"></td><td valign="middle"><strong style=" font-size:13px; font-family:Gulim; color:#1c1c1c;">주문 상품 정보</strong></td></tr></tbody>
                            </table>
                                    
							<table class="tableColor" width="100%" border="0" cellpadding="0" cellspacing="0" 
							style="font-size:12px; font-family:Gulim; line-height:15px; border-top:1px solid #d5d5d5;">
								<thead>
									<tr>	
										<th colspan="1" rowspan="1" scope="col" width="50%" 
										style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#80878d;">
										상품명</th>
										<th colspan="1" rowspan="1" scope="col" width="10%" 
										style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#80878d;">
										수량</th>
										<th colspan="1" rowspan="1" scope="col" width="20%" 
										style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#80878d;">
										판매가</th>
										<th colspan="1" rowspan="1" scope="col" width="20%" 
										style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#80878d;">
										상품구매금액</th>
										</tr>
								</thead>
								
								<tbody>
								<c:forEach  var = "c" items="${list}">
									<tr>
									<td align="left" valign="middle" style="padding:13px 10px 10px; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#393939;">
       								${c.prdt_name}<br>[COLOR: ${c.prdt_color }(${c.prdt_price } won)]
    								</td>
    								
    								<td align="center" valign="middle" style="padding:13px 10px 10px; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
        							${c.prdt_count }
   									</td>
   									
   									<td align="center" valign="middle" style="padding:13px 10px 10px; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
        							${c.prdt_price } won
    								</td>
    								
    								<td align="center" valign="middle" style="padding:13px 10px 10px; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
        							${c.prdt_price } won
    								</td>
    								</tr>
    								
    								</c:forEach>
    								<tr>
    								<td align="right" valign="middle" colspan="4" style="padding:13px 10px 10px; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#393939;">
            						<span id="rec">총 상품구매금액</span>
            						<strong id="allprice2">50000 won</strong> 
            						+ 총 배송비 <strong>2,500 won</strong> 
            						- 총 할인금액 <strong>0 won</strong>
            						<strong id="resultPrice">= 총 결제금액 21,500 won</strong>
        							</td>
        							</tr>
        							
        							
        					</tbody>
					</table>

                     </td>
                     </tr>
                     <!-- //주문 상품 정보 -->
                     <tr>
                     <td height="40">&nbsp;</td>
                     </tr>
                     <!-- 컨텐츠 공통 여백 -->
                     <tr><!-- 결제 정보 -->
                     <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="0" 
                        style="margin:0 0 20px;">
                        	<tbody>
                        		<tr>
                        		<td valign="middle" width="19">
                        		<img src="http://m-img.cafe24.com/images/template/admin/kr/ico_title.gif" alt="" loading="lazy"></td>
                        		<td valign="middle">
                        		<strong style=" font-size:13px; font-family:Gulim; color:#1c1c1c;">결제 정보</strong>
                        		</td>
                        		</tr>
                        	</tbody>
                         </table>
                                    
            			<table class="tableColor" width="100%" border="0" cellpadding="0" cellspacing="0" 
            			style="font-size:12px; font-family:Gulim; line-height:15px;  border-top:1px solid #d5d5d5;">
            				<tbody>
            					<tr>
            					<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" 
            					style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#80878d;">총 결제금액
            					</th>
            					<td align="left" valign="middle" width="28%" style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
            					<strong>21,500 won</strong>
            					</td>
            					<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#80878d;">
            					결제수단
            					</th>
            					<td id="pCategory" align="left" valign="middle" width="28%" style="width:179px; padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
            					
            					</td>
            					</tr>
            					
            					<tr>
            					<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" 
            					style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#80878d;">
            					쿠폰할인
            					</th>
            					<td id="coupon-point" align="left" valign="middle" width="28%" style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
            					
            					</td>
            					<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" style="padding:13px 10px 10px; font-weight:normal; background-color:#f5f6f5;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#80878d;">
            					지급예정 적립금
            					</th>
            					<td align="left" valign="middle" width="28%" style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
            					100원
            					</td>
            					</tr>
            					
            					<tr>
            					<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" 
            					style="padding:13px 10px 10px; background-color:#f5f6f5; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; font-weight:normal; color:#80878d;">
            					사용 적립금
            					</th>
            					<td align="left" valign="middle" width="" style="padding:13px 10px 10px; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
            					0원
            					</td>
            					<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" style="padding:13px 10px 10px; background-color:#f5f6f5; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; font-weight:normal; color:#80878d;">
            					사용 예치금
            					</th>
            					<td align="left" valign="middle" width="28%" style="padding:13px 10px 10px; border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
            					0원
            					</td>
            					</tr>
            				</tbody>
           			 </table>
            
                     </td>
                    </tr>
                    
                    	<tr>
                    	</tr>
                    	
                    	<tr>
                    	<td height="30">&nbsp;</td>
                    	</tr>
                    	
                    	<tr>
                    	<td>
                            <p style="margin-top:0; margin-left:10px;">
                                                         무통장 입금 결제를 신청하신 경우 상기 결제 금액을 아래의 해당 입금 계좌로 입금해주시기 바랍니다.<br>
                             <span style="">무통장 입금 주문시 입력하신 입금자명
                             <strong>(${loginMember.memName })</strong>과 실제 입금하신 분의 성함이 동일해야 합니다.<br>
                             </span>
                             
                             <strong>농협 : 301-0231-3595-51 
                             <span style="">[예금주: (주)ot]</span></strong><br>
                                                          입금이 확인된 이후에 주문상품의 배송이 이루어집니다.
                            </p>
                            
                             <p style="margin:13px 0 0 10px; font-size:11px;">
                                                                          ※택배(으)로 상품을 배송합니다. 결제완료 후 2일 ~ 7일 정도 소요됩니다.<br>
                                                                          ※주문후 7일안에 입금하지않으면 주문자동취소됩니다.
                             </p>
                          </td>
                          </tr>
                          
                          <!-- //결제 정보 -->
                          <tr>
                          <td height="40">&nbsp;</td>
                          </tr>
                          
                          <!-- 컨텐츠 공통 여백 --><tr>
                          <!-- 배송지 정보 --><td>
                          <table width="100%" border="0" cellpadding="0" cellspacing="0" 
                          style="margin:0 0 20px;">
                           	<tbody>
                           		<tr>
	                           		<td valign="middle" width="19">
	                           		<img src="http://m-img.cafe24.com/images/template/admin/kr/ico_title.gif" loading="lazy">
                           			</td>
                           		
                           			<td valign="middle">
                           			<strong style=" font-size:13px; font-family:Gulim; color:#1c1c1c;">
                           			배송지 정보
                           			</strong>
                           			</td>
                           		</tr>
                           	</tbody>
                          </table>
                                    <table class="tableColor" width="100%" border="0" cellpadding="0" cellspacing="0" 
                                    style="font-size:12px; font-family:Gulim; line-height:15px;  border-top:1px solid #d5d5d5;">
                                    <tbody>
                                    	<tr>
                                    	<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" 
                                    	style="padding:13px 10px 10px; font-weight:normal;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#80878d; background-color:#f5f6f5;">
                                    	받으시는분
                                    	</th>
                                    	<td align="left" valign="middle" width="78%" colspan="3" 
                                    	style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
                                    	우예진
                                    	</td>
                                    	</tr>
                                    	<tr>
                                    	<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" 
                                    	style="padding:13px 10px 10px; font-weight:normal;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#80878d; background-color:#f5f6f5;">
                                    	주소
                                    	</th>
                                    	<td align="left" valign="middle" width="78%" colspan="3" 
                                    	style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
                                    	경기도 김포시 풍무로96번길 100 (풍무동) 풍무자이 517동 1802호
                                    	</td>
                                    	</tr>
                                    	
                                    	<tr>
                                    	<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" 
                                    	style="padding:13px 10px 10px; font-weight:normal;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#80878d; background-color:#f5f6f5;">
                                    	일반전화
                                    	</th>
                                    	<td align="left" valign="middle" width="28%" 
                                    	style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
                                    	02--
                                    	</td>
                                    	<th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" 
                                    	style="padding:13px 10px 10px; font-weight:normal;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#80878d; background-color:#f5f6f5;">
                                    	휴대전화
                                    	</th>
                                    	<td align="left" valign="middle" width="28%" 
                                    	style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">
                                    	010-9865-8485
                                    	</td>
                                    	</tr>
                                    	
                                    	<tr><th align="left" colspan="1" rowspan="1" scope="row" valign="middle" width="22%" style="padding:13px 10px 10px; font-weight:normal;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; border-left:1px solid #d5d5d5; color:#80878d; background-color:#f5f6f5;">배송메세지</th><td align="left" valign="middle" width="78%" colspan="3" style="padding:13px 10px 10px;  border-bottom:1px solid #d5d5d5; border-right:1px solid #d5d5d5; color:#393939;">-</td></tr></tbody>
                                    	
                                    </table>
                                </td>
                                </tr>
                                <!-- //배송지 정보 -->
                                </tbody>
                        	</table>
                       			 <!-- //컨텐츠 -->
                    		</td>
                    	</tr>
                    	<!-- 맺음말 -->
                    	<tr>
                    	<td style="padding:30px 0 60px 10px; font-size:12px; font-family:Gulim; color:#393939; line-height:19px;">
                        <p>주문내역에 착오가 있거나, 주문내역을 변경하실 경우, 그외 기타 문의사항이 있으시면<br>
                                                      저희 쇼핑몰 고객 서비스 센터로 연락 주십시오.</p>
                        <p style="margin-top:13px;">다시 한번 저희 쇼핑몰을 이용해주신 
                        <strong>${loginMember.memName }(${loginMember.memId })</strong> 
                       	 고객님께 진심으로 감사드립니다.</p>
                    	</td>
                    	</tr>
                    	<!-- //맺음말 -->
                  </tbody>
           		</table>
        		</td>
        	</tr>
        	<!-- 회사소개 -->
        	<tr>
        	<td style="padding:24px 34px; font-family:Gulim; font-size:12px; line-height:18px; background-color:#cacdd4;  color:#fff;">
            <p style="{COMPANY_INFO_DISPLAY}">
                Tel : <strong>1566-6813</strong> | Fax : <br>
                121819 서울특별시 강남구 테헤란로<br>
                대표이사 : 이대윤 | 개인정보보호책임자 : 이대윤 | 사업자 등록번호 [419-87-00807] | 통신판매업 신고 : 제 2017-테헤란로-2273호
           </p>
           <p>Copyright(c) ot all rights reserved. 
           <a href="index.jsp" target="_blank" style="color:#fff; text-decoration:none;" rel="noreferrer noopener">ot.kr</a></p>
        </td></tr><!-- //회사소개 --></tbody>
</table>



</div>
</body>


<script>
$(function() {
	var today = new Date();   
	var year = today.getFullYear();
	var month = (today.getMonth()+1);
	var day  = today.getDate();
	var hours = today.getHours(); // 시
	var minutes = today.getMinutes();  // 분
	  var ampm = hours >= 12 ? 'pm' : 'am';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  var strTime = year+'-'+month+'-'+day+' '+ampm+' '+hours +':' + minutes;
	  
	  $('#today').text(strTime);
	var totalPrice = 0;
	var pCategory="";
	
	  "<c:forEach var ='p' items='${plist}'>"
	  			totalPrice +=Number("${p.sumprice}")
	  			pCategory = "${p.pay_category}"
	  "</c:forEach>"
	  
	  $('#totalPrice').text(totalPrice);
	  		if(pCategory == "card"){
	  			$('#pCategory').text("카드 결제");
	  		}else if(pCategory == "phone"){
	  			$('#pCategory').text("핸드폰 결제");
	  		}else if(pCategory == "kakaopay"){
	  			$('#pCategory').text("카카오 페이 결제");
	  		}else if(pCategory == "cash"){
	  			$('#pCategory').text("무통장 입금");
	  		}
	  		
 	  "<c:forEach var ='o' items='${olist}'>"
	  		$('#ord_receiver').text("${o.ord_receiver}");
	  	 	 $('#ord_address').text("${o.ord_address}");
	  	 	$('#ord_phone').text("${o.ord_phone}");
	  	 	$('#ord_message').text("${o.ord_message}");
	   "</c:forEach>" 
	   
	  	  var sum;
	  	  var price=0;
	  	  var point;
	  	  var delivry = 2500;
	  	  
	  	  
	     price = Number($('#coupon-price').text());
		$('#coupon-point').val(price);
	  	  
	  
});




</script>
</html>
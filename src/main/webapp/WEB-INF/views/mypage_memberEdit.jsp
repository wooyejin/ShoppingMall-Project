<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>oT.</title>
<!--  <link href="/ot/css/join.css" rel="stylesheet">
 -->
<link href="/ot/resources/css/mypage_list.css" rel="stylesheet">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<link rel="stylesheet" href="/ot/resources/css/popup.css">

<style>
.yg_btn1 {
    background: #444 !important;
    color: #fff!important;
    border-color: #444!important;
}

.yg_btn1:hover {
    color: #fff;
    background: #777 !important;
    border-color: #777!important;
}

.yg_btn4 {
    background: #f4f4f4 !important;
    color: #444!important;
    border-color: #ddd!important;
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
				<h2>EDIT PROFILE</h2>
			</div>


			<c:if test="${ !empty sessionScope.loginMember }">
			<form id="editForm" name="editForm" action="mUpdate.do" method="post">
				<div class="xans-element- xans-member xans-member-edit">
					<!--
        				$login_page = /member/login.html
     				-->
					<h3 class=" ">기본정보</h3>
					<p class="required " style="font-size: 12px;">
						<img src="/ot/resources/images/req_check.png" alt="필수"> 필수입력사항
					</p>
					<div class="ec-base-table typeWrite">
						<table border="1" summary="">
							<caption>회원 기본정보</caption>
							<colgroup>
								<col style="width: 150px;">
								<col style="width: auto;">
							</colgroup>
							<tbody style="font-size:13px;">
								<tr>
									<th scope="row">아이디 
										<img src="/ot/resources/images/req_check.png" alt="필수">
									</th>
									<td>
										<input id="memId" name="memId" readonly="readonly" value="${loginMember.memId }" type="text"> (영문소문자/숫자,4~16자)
									</td>
								</tr>
								<tr>
									<th scope="row">비밀번호 
										<img src="/ot/resources/images/req_check.png" class="" alt="필수">
									</th>
									<td>
									<input id="pwd1" name="pwd1" type="password" onchange="pwdCheck();"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)
									</td>
								</tr>
								<tr class="">
									<th scope="row">비밀번호 확인 
										<img src="/ot/resources/images/req_check.png" alt="필수">
									</th>
									<td>
										<input id="pwd2" name="pwd2" type="password"> 
										<span id="pwConfirm"></span>
									</td>
								</tr>
								
								<tr>
									<th scope="row" id="">이름 
										<img src="/ot/resources/images/req_check.png" alt="필수">
									</th>
									<td>
										<input id="memName" name="memName" readonly="readonly" value="${loginMember.memName }" type="text">
									</td>
								</tr>
								
								<!-- 주소 -->
								<c:if test="${ !empty loginMember.memAddress }">
											<tr>
												<th scope="row">주소
													<img src="/ot/resources/images/req_check.png" class="" alt="필수">
												</th>
												
											<c:forTokens var="addr" items="${ loginMember.memAddress }" delims="," varStatus="status">
												<c:if test="${ status.index eq 0 }">
												<td>
													<input id="postcode1" name="postcode1" class="inputTypeText" placeholder="" readonly="readonly" value="${addr }" type="text"> 
													<a href="#none" id="postBtn" onclick="addrSearch();" class="yg_btn_28 yg_btn5" alt="우편번호">우편번호</a><br>
												</c:if>
													
												<c:if test="${ status.index eq 1 }">
													<input id="address1" name="address1" class="inputTypeText" readonly="readonly" value="${addr }" type="text"> 기본주소<br>
												</c:if>
													
												<c:if test="${ status.index eq 2 }">
													<input id="address2" name="address2" class="inputTypeText" placeholder="" value="${addr }" type="text"> 나머지주소<br>
												</td>
												</c:if>
											</c:forTokens>
										</tr>
								</c:if>
								
								
								<!-- 핸드폰번호 -->
								<c:if test="${ !empty loginMember.memPhone }">
									<tr>
										<th scope="row">휴대전화 
											<img src="/ot/resources/images/req_check.png" class="" alt="필수">
										</th>
										
										<c:forTokens var="phone" items="${ loginMember.memPhone }" delims="-" varStatus="status">
											<c:if test="${ status.index eq 0 }">
										<td>
											<select id="mobile1" name="mobile1">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
											</select>-
											</c:if>
											
											<c:if test="${status.index eq 1 }">
												<input id="mobile2" name="mobile2" maxlength="4" value="${phone }" type="text">-
											</c:if>
											
											<c:if test="${status.index eq 2 }">
												<input id="mobile3" name="mobile3" maxlength="4" value="${phone }" type="text">
												</td>
											</c:if>
										</c:forTokens>
									</tr>
								</c:if>
								
								<tr>
									<th scope="row">이메일 
										<img src="/ot/resources/images/req_check.png" alt="필수">
									</th>
									<td>
										<input id="memEmail" name="memEmail" value="${loginMember.memEmail }" type="text"> 
										<span id="emailMsg"></span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					
					<h3 class=" ">추가정보</h3>
					<div class="ec-base-table typeWrite ">
						<table border="1" summary="">
							<caption>회원 추가정보</caption>
							<colgroup>
								<col style="width: 150px;">
								<col style="width: auto;">
							</colgroup>
							<tbody style="font-size:13px;">
							
							<!-- 생년월일 -->
							<c:if test="${!empty loginMember.memSsn }">
								<tr class="">
									<th scope="row">생년월일 
										<img src="/ot/resources/images/req_check.png" class="" alt="필수">
									</th>
									
									<c:forTokens var="ssn" items="${loginMember.memSsn }" delims="," varStatus="status">
										<c:if test="${status.index eq 0 }">
											<td>
											<input id="birth_year" name="birth_year" class="inputTypeText"  maxlength="4" value="${ssn}" type="text" readonly="readonly"> 년 
										</c:if>
											
										<c:if test="${status.index eq 1 }">
											<input id="birth_month" name="birth_month" class="inputTypeText" maxlength="2" value="${ssn }" type="text" readonly="readonly"> 월
										</c:if>
										
										<c:if test="${status.index eq 2 }">
											<input id="birth_day" name="birth_day" class="inputTypeText" maxlength="2" value="${ssn }" type="text" readonly="readonly"> 일 
											</td>
										</c:if>
									</c:forTokens>
								</tr>
							</c:if>
								
								<tr class="">
								<c:url var="mAccount" value="mAccount.do"/>
									<th scope="row">환불계좌 
										<img src="/ot/resources/images/req_check.png" class="displaynone" alt="필수">
									</th>
									<td>
										<span id="id_bank_info">
											[${loginMember.bank}] ${loginMember.returnBank } / 예금주 : ${loginMember.memOwner }
										</span> 
										<a href="#none" onclick="window.open('${mAccount }','bank_account','width=600,height=460');return false;">
										<img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_account_change.gif"
										alt="환불계좌변경" id="id_has_bank_img" class="">
										<img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_account.gif"
										alt="환불계좌등록" id="id_reg_bank_img" class="displaynone"></a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="ec-base-button justify">
						<a href="#none" class="yg_btn_140 yg_btn1 yg_btn_border_444" onclick="update();" alt="회원정보수정">회원정보수정</a> 
						<a href="#" onclick="location.href='index.jsp'" class="yg_btn_140 yg_btn4" alt="취소">취소</a> 
							<span class="gRight"> 
								<a href="#none" class="yg_btn_140 yg_btn3" id="memberdel" onclick="memberDelAction(2000, 0, -1)" alt="회원탈퇴">회원탈퇴</a>
							</span>
					</div>
					</form>
					
					<form action="mDelete.do" method="post" name="memdelete" id="memdelete">
					<div class="layerLeave ec-base-layer" id="eLeaveLayer">
						<div class="header" style="height:35px; padding: 7px 35px 7px 19px;">
							<h3 style="margin : 0;">회원탈퇴</h3>
						</div>
						<div class="content">
							<div class="ec-base-box typeMember">
								<div class="information">
									<strong class="title" style="padding : 0 0 0 15px;">혜택 내역</strong>
									<div class="description">
										<ul>
											<li id="eLeaveLayerMileageText">탈퇴시 보유하고 있는 적립금은 모두
												삭제됩니다.</li>
											<li>현재 적립금 : <strong id="eLeaveLayerMileage"
												class="txtEm">0</strong>
											</li>
											<li id="eLeaveLayerDepositTextarea">현재 예치금 : <strong
												id="eLeaveLayerDeposit" class="txtEm">0</strong>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<h4 style="font-size: 12px; font-weight: bold;">회원탈퇴 사유</h4>
							<div class="ec-base-table typeWrite">
								<table border="1" summary="">
									<caption>회원탈퇴 사유</caption>
									<colgroup>
										<col style="width: 140px;">
										<col style="width: auto;">
									</colgroup>
									<tbody style="font-size:13px;">
										<tr>
											<th scope="row">선택</th>
											<td>
												<select id="leave_reason" name="leave_reason" style="width:auto;">
													<option value="" selected="selected">-선택하세요-</option>
													<option value="상품종류가 부족하다">상품종류가 부족하다</option>
													<option value="상품가격이 비싸다">상품가격이 비싸다</option>
													<option value="상품가격에 비해 품질이 떨어진다">상품가격에 비해 품질이
														떨어진다</option>
													<option value="배송이 느리다">배송이 느리다</option>
													<option value="반품/교환이 불만이다">반품/교환이 불만이다</option>
													<option value="상담원 고객응대 서비스가 불만이다">상담원 고객응대 서비스가
														불만이다</option>
													<option value="쇼핑몰 혜택이 부족하다 (쿠폰, 적립금,할인 등)">쇼핑몰
														혜택이 부족하다 (쿠폰, 적립금,할인 등)</option>
													<option value="이용빈도가 낮다">이용빈도가 낮다</option>
													<option value="개인정보 유출이 염려된다">개인정보 유출이 염려된다</option>
													<option value="기타">기타</option>
												</select>
											</td>
										</tr>
										<tr id="eLeaveLayerEtcTextarea">
											<th scope="row">기타</th>
											<td>
												<textarea id="subjective_leave_reason" name="subjective_leave_reason" rows="3" cols="60"></textarea>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="ec-base-button">
							<a href="#none" onclick="document.getElementById('memdelete').submit();" id="eLeaveLayerBtn" class="yg_btn_30" alt="탈퇴">탈퇴</a>
							<a href="#none" onclick="$('#eLeaveLayer').hide();"
								class="yg_btn_30 yg_btn3" alt="취소">취소</a>
						</div>
						<a href="#none"  class="close" style="top:-7px; right:-7px;" onclick="$('#eLeaveLayer').hide();">
							<img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기">
						</a>
					</div>
				</form>
			</c:if>
		</div>
	<hr class="layout">
	</div>
	<%@include file="footer.jsp"%>
	
	<script>

	function update(){
		
		var pwd1 = document.getElementById('pwd1');
		var pwd2 = document.getElementById('pwd2');
		
		if(pwd1.value == pwd2.value){
			alert("회원 정보가 변경되었습니다.");
			document.getElementById('editForm').submit();
		}
		else if(pwd1.value != pwd2.value || pwd1.value == null || pwd1.value == "" || pwd2.value == null || pwd2.value == ""){
			alert("비밀번호를 확인해주세요.")
			return false;
		}
	}
	
     $('#pwd2').change(function(){
         if($('#pwd1').val() == $(this).val()){
             $('#pwConfirm').html("비밀번호가 일치합니다.").css('color','green');
         }else{
             $('#pwConfirm').html("비밀번호 값이 일치하지 않습니다.").css('color','red');
             $('#pwd2').val('');
             $(this).select();
         }
     });      
	
		function pwdCheck(){ //패스워드 유효성 검사
	         
	    	   var passRule = /^[a-zA-Z](?=.*[a-zA-Z])(?=.*[0-9]).{7,15}$/;//숫자와 문자 포함 형태의 8~16자리 이내의 암호 정규식
	    	   
	    	   var pwd = document.getElementById("pwd1");
	    	   
	    	   if(!passRule.test(pwd.value)) {
	    	       //경고
	    	       alert("비밀번호를 다시 입력하세요.");
	    	       pwd.value="";
	    	       pwd.focus();    	       
	    	     }
	    	   }
			
	</script>




	<script>
		var $sAgreeAllChecked = $('#sAgreeAllChecked');
		$sAgreeAllChecked.change(function() {
			var $this = $(this);
			var checked = $this.prop('checked');
			$('input[name="checkRow"]').prop('checked', checked);

		});

		$('#idCheck').click(function() {

			var $href = $(this).attr('href');
			layer_popup($href);

			$.ajax({
				url : "idDuplicate.me",
				type : "post",
				data : {
					userId : $('#userId').val()
				},
				success : function(data) {
					if (data == "ok") {

						$('#check_ment').html('<br>사용 가능한 아이디 입니다.<br>');
					} else {
						$('#check_ment').html('<br>이미 사용중인 아이디 입니다.<br>');
					}
				},
				error : function(data) {
					$('#checkMassege').text('에러 입니다.').css('color', 'red');
				}
			});
		});

		function layer_popup(el) {

			var $el = $(el); //레이어의 id를 $el 변수에 저장
			var isDim = $el.prev().hasClass('dimBg'); //dimmed 레이어를 감지하기 위한 boolean 변수

			isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

			var $elWidth = ~~($el.outerWidth()), $elHeight = ~~($el
					.outerHeight()), docWidth = $(document).width(), docHeight = $(
					document).height();

			// 화면의 중앙에 레이어를 띄운다.
			if ($elHeight < docHeight || $elWidth < docWidth) {
				$el.css({
					marginTop : -$elHeight / 2,
					marginLeft : -$elWidth / 2
				})
			} else {
				$el.css({
					top : 0,
					left : 0
				});
			}

			$el.find('a.btn-layerClose').click(function() {
				isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
				return false;
			});

			$('.layer .dimBg').click(function() {
				$('.dim-layer').fadeOut();
				return false;
			});

		}

		function addrSearch() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = ''; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수

					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						fullAddr = data.roadAddress;

					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						fullAddr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
					if (data.userSelectedType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					$('#postcode1').val(data.zonecode); //5자리 새우편번호 사용

					$('#address1').val(fullAddr);

					// 커서를 상세주소 필드로 이동한다.
					$('#address2').val('');
					$('#address2').focus();
				}
			}).open();
		};
		function validateEmail(email) {
			var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			return re.test(email);
		}
	</script>
	
	
	<script>
	$('#memberdel').click(function() {
		$('#eLeaveLayer').css('display', 'block');
	});

	$('.memberclose').click(function() {
		$('#eLeaveLayer').css('display', 'none');
	});
	</script>

</body>
</html>
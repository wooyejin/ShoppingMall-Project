<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
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
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png" />
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



</head>
<body id="popup" style="margin:0;">
	<form action="mUpdateAccount.do" id="accountForm" name="accountForm" method="POST"
		enctype="multipart/form-data">
		<div
			class="xans-element- xans-myshop xans-myshop-orderhistoryaccount ec-base-layer xans-record-">
			<div class="header">
				<h1>
					환불계좌 <span class="displaynone">등록</span><span class="">변경</span>
				</h1>
			</div>
			<div class="content">
				<div class="ec-base-table typeWrite">
					<table border="1" summary="">
						<caption>
							환불계좌 <span class="displaynone">등록</span><span class="">변경</span>
						</caption>
						<colgroup>
							<col style="width: 140px">
							<col style="width: auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">예금주</th>
									<td>
									<input id="acc_depositor" name="acc_depositor" class="inputTypeText" 
									value="${loginMember.memOwner}" type="text">
										<p class="txtInfo gBlank10">예금주명은 주문자명과 동일해야 합니다.</p>
									</td>
							</tr>
							<tr>
								<th scope="row">은행선택</th>
								<td>
									<select id="acc_bank" name="acc_bank">
										<option value=""
											<c:if test="${loginMember.bank eq ''}"> selected="selected"</c:if>>-은행선택 -
										</option>
						                <option value="산업은행"
						                 	<c:if test="${loginMember.bank eq '산업은행'}"> selected="selected"</c:if>>산업은행</option>
						                <option value="기업은행"
						                	<c:if test="${loginMember.bank eq '기업은행'}"> selected="selected"</c:if>>기업은행</option>
						                <option value="국민은행"
						                	<c:if test="${loginMember.bank eq '국민은행'}"> selected="selected"</c:if>>국민은행</option>
						                <option value="외환은행"
										 	<c:if test="${loginMember.bank eq '외환은행'}"> selected="selected"</c:if>>외환은행</option>
						                 <option value="수협중앙회"
						                 	<c:if test="${loginMember.bank eq '수협중앙회'}"> selected="selected"</c:if>>수협중앙회</option>
						                 <option value="농협중앙회"
						                 	<c:if test="${loginMember.bank eq '농협중앙회'}"> selected="selected"</c:if>>농협중앙회</option>
						                 <option value="농협개인"
						                 	<c:if test="${loginMember.bank eq '외환은행'}"> selected="selected"</c:if>>농협개인</option>
						                 <option value="농협"
						                 	<c:if test="${loginMember.bank eq '농협'}"> selected="selected"</c:if>>농협</option>
						                 <option value="우리은행"
						                 	<c:if test="${loginMember.bank eq '우리은행'}"> selected="selected"</c:if>>우리은행</option>
						                 <option value="유안타증권"
						                 	<c:if test="${loginMember.bank eq '유안타증권'}"> selected="selected"</c:if>>유안타증권</option>
						                 <option value="KB증권"
						                 	<c:if test="${loginMember.bank eq 'KB증권'}"> selected="selected"</c:if>>KB증권</option>
						                 <option value="SC제일은행"
						                 	<c:if test="${loginMember.bank eq 'SC제일은행'}"> selected="selected"</c:if>>SC제일은행</option>
						                 <option value="미래에셋증권"
						                 	<c:if test="${loginMember.bank eq '미래에셋증권'}"> selected="selected"</c:if>>미래에셋증권</option>
						                 <option value="대우증권"
						                	<c:if test="${loginMember.bank eq '대우증권'}"> selected="selected"</c:if>>대우증권</option>
						                 <option value="삼성증권"
						                 	<c:if test="${loginMember.bank eq '삼성증권'}"> selected="selected"</c:if>>삼성증권</option>
						                 <option value="한국투자증권"
						                 	<c:if test="${loginMember.bank eq '한국투자증권'}"> selected="selected"</c:if>>한국투자증권</option>
						                 <option value="신한은행"
						                 	<c:if test="${loginMember.bank eq '신한은행'}"> selected="selected"</c:if>>신한은행</option>
						                 <option value="교보증권"
						                 	<c:if test="${loginMember.bank eq '교보증권'}"> selected="selected"</c:if>>교보증권</option>
						                 <option value="하이투자증권"
						                 	<c:if test="${loginMember.bank eq '하이투자증권'}"> selected="selected"</c:if>>하이투자증권</option>
						                 <option value="현대차증권"
						                 	<c:if test="${loginMember.bank eq '현대차증권'}"> selected="selected"</c:if>>현대차증권</option>
						                 <option value="SK증권"
						                 	<c:if test="${loginMember.bank eq 'SK증권'}"> selected="selected"</c:if>>SK증권</option>
						                 <option value="대신증권"
						                 	<c:if test="${loginMember.bank eq '대신증권'}"> selected="selected"</c:if>>대신증권</option>
						                 <option value="한화증권"
						                 	<c:if test="${loginMember.bank eq '한화증권'}"> selected="selected"</c:if>>한화증권</option>
						                 <option value="하나대투증권"
						                 	<c:if test="${loginMember.bank eq '하나대투증권'}"> selected="selected"</c:if>>하나대투증권</option>
						                 <option value="신한금융투자"
						                 	<c:if test="${loginMember.bank eq '신한금융투자'}"> selected="selected"</c:if>>신한금융투자</option>
						                 <option value="등부증권"
						                 	<c:if test="${loginMember.bank eq '등부증권'}"> selected="selected"</c:if>>동부증권</option>
						                 <option value="유진투자증권"
						                 	<c:if test="${loginMember.bank eq '유진투자증권'}"> selected="selected"</c:if>>유진투자증권</option>
										 <option value="메리츠증권"
						                 	<c:if test="${loginMember.bank eq '메리츠증권'}"> selected="selected"</c:if>>메리츠증권</option>
						                 <option value="NH투자증권"
						                 	<c:if test="${loginMember.bank eq 'NH투자증권'}"> selected="selected"</c:if>>NH투자증권</option>
						                 <option value="신영증권"
						                 	<c:if test="${loginMember.bank eq '신영증권'}"> selected="selected"</c:if>>신영증권</option>
						                 <option value="케이뱅크"
						                 	<c:if test="${loginMember.bank eq '케이뱅크'}"> selected="selected"</c:if>>케이뱅크</option>
						                 <option value='카카오뱅크'
											<c:if test="${loginMember.bank eq '카카오뱅크'}"> selected="selected"</c:if>>카카오뱅크</option>
						                 <option value="OK저축은행"
						                 	<c:if test="${loginMember.bank eq 'OK저축은행'}"> selected="selected"</c:if>>OK저축은행</option>
						                 <option value="대구은행"
						                 	<c:if test="${loginMember.bank eq '대구은행'}"> selected="selected"</c:if>>대구은행</option>
						                 <option value="부산은행"
						                 	<c:if test="${loginMember.bank eq '부산은행'}"> selected="selected"</c:if>>부산은행</option>
						                 <option value="광주은행"
						                 	<c:if test="${loginMember.bank eq '광주은행'}"> selected="selected"</c:if>>광주은행</option>
						                 <option value="제주은행"
						                 	<c:if test="${loginMember.bank eq '제주은행'}"> selected="selected"</c:if>>제주은행</option>
						                 <option value="전북은행"
						                 	<c:if test="${loginMember.bank eq '전북은행'}"> selected="selected"</c:if>>전북은행</option>
					                  	 <option value="경남은행"
					                  	 	<c:if test="${loginMember.bank eq '경남은행'}"> selected="selected"</c:if>>경남은행</option>
					                  	 <option value="씨티은행"
					                  	 	<c:if test="${loginMember.bank eq '씨티은행'}"> selected="selected"</c:if>>씨티은행</option>
					                  	 <option value="우체국"
					                  	 	<c:if test="${loginMember.bank eq '우체국'}"> selected="selected"</c:if>>우체국</option>
					                  	 <option value="KEB하나은행"
					                  	 	<c:if test="${loginMember.bank eq 'KEB하나은행'}"> selected="selected"</c:if>>KEB하나은행</option>
						                 <option value="새마을금고"
						                 	<c:if test="${loginMember.bank eq '새마을금고'}"> selected="selected"</c:if>>새마을금고</option>
								</select></td>
							</tr>
							<tr>
								<th scope="row">계좌번호</th>
								<td>
								<input id="acc_no" name="acc_no"
									value="${loginMember.returnBank }" type="text">
									<p class="txtInfo gBlank10">'-' 없이 숫자만 입력해 주세요.</p></td>
							</tr>
							<tr>
								<th scope="row">비밀번호 확인</th>
								<td>
								<input id="check_password" name="check_password" type="password">
									<p class="txtInfo gBlank10">등록된 비밀번호를 확인합니다.</p></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="ec-base-button">
					<a href="#none" class="displaynone yg_btn yg_btn1" style="text-decoration: none;"
						onclick="submit();" alt="등록">등록</a>
						
					<a href="#" id="accountchange"class="yg_btn yg_btn1" style="text-decoration: none;" onclick="accountchange();">변경</a> 
					<a href="#none" class="yg_btn yg_btn3" style="text-decoration: none;" onclick="window.close();">취소</a>
				</div>
			</div>
		</div>
	</form>
	
	<script>
	function accountchange() {
		$('#accountForm').submit();
	}
	</script>

</body>
</html>
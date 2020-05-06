<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>상품문의상세보기</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="./css/Login_style.css"> -->
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
</head>
<style>
.ec-base-table td{
  border-top: 1px solid #EEE !important;
  font-size:13px;
}
.ec-base-table.typeList .center td.left {
    padding-left: 3px;
    text-align: left !important;
 }
 .xans-board .ec-base-table tbody th {
    padding: 15px 10px 14px 18px;
    border-right: 0;
    border-left: 0;
    background: 0;
    font-weight: 400;
    color: #666;
     border-top: 1px solid #EEE !important;
    font-size: 13px;
  
    }
    
.ec-base-table.typeWrite td {
    padding: 0px 0px 0px !important;
}
.ec-base-table.typeWrite{
	border: none;
}
.xans-board-read .ec-base-table .etcArea li {
    display: inline-block;
    margin-right: 20px;
    padding: 8px 0 10px;
    vertical-align: top;
    line-height: 22px;
    color: #666;
  }
  .xans-board-read .ec-base-table .detail {
    padding: 30px 18px;
    margin: -9px 0 0;
    font-size: 12px;
    word-break: break-all;
    line-height: 1.8em;
   }

 
.thumb{
 text-align: left !important;
	padding-left: 1% !important;
}
</style>
<body>
	<jsp:include page="header.jsp"/>
 	
	
    <div id="container">
        <div id="contents" style="margin-top:11.5%;">
			<div class="mypage_top_outer">
			 
			</div>

			<div class="titleArea">
    			<h2>문의</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-board xans-board-writepackage-1002 xans-board-writepackage xans-board-1002 "><div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 "><div class="title">
      
        </div>
</div>
<form id="boardWriteForm" name="" action="/exec/front/Board/write/3001" method="post" target="_self" enctype="multipart/form-data">
		<input id="board_no" name="board_no" value="3001" type="hidden">
		<input id="product_no" name="product_no" value="0" type="hidden">
		<input id="move_write_after" name="move_write_after" type="hidden">
		<input id="cate_no" name="cate_no" value="" type="hidden">
		<input id="bUsePassword" name="bUsePassword" value="" type="hidden">
		<input id="order_id" name="order_id" value="" type="hidden">
		<input id="is_post_checked" name="is_post_checked" value="" type="hidden">
		<input id="22a52e1f2ba700edbc6c" name="22a52e1f2ba700edbc6c" value="be72b6700c2bb10ea29aac31702af80d" type="hidden">
		<input id="fix_title_form_0" name="fix_title_form_0" value="[문의]" type="hidden">
		<input id="bulletin_type" name="bulletin_type" value="title" type="hidden">
		<input id="fix_content_0" name="fix_content_0" value="▶ 오전에는 입고 작업중으로 오후 2시정도에 문의주시는게 더 정확합니다.<br/>
		<br />
		당일 주문건은 재고가 있을 시 당일 배송처리 되고 보통 다음날부터 입고가 되기 때문에 바로 안내가 어렵습니다.<br />
		<br />
		* 배송전 교환/취소시 [배송전 부분취소/변경] 제목선택을 안해주시면 상품교환/주문취소는 당일 처리되지 않습니다 *<br />
		<br />
		비회원으로 문의주실 경우엔 동명이인으로 인해 주문정보와 함께 남겨주셔야 바로 처리 가능합니다.<br />
		<br />
----------------------------------------------------------------------" type="hidden">
	<input id="fix_add_content" name="fix_add_content" value="" type="hidden">
	<div class="xans-element- xans-board xans-board-write-1002 xans-board-write xans-board-1002">
		<!--
            $login_page_url = /member/login.html
            $deny_access_url = /index.html
        -->
	<div class="ec-base-table typeWrite ">
            <table border="1" summary="">
		<caption>글쓰기 폼</caption>
            <colgroup>
				<col style="width:150px;">
				<col style="width:auto;">
			</colgroup>
		<tbody>
		
	<tr>
		<th scope="row">SUBJECT</th>
           <td>[상품문의]	
		   </td>
    </tr>
    
	<tr>
		<th scope="row">WRITER</th>
           <td>홍길동</td>
    </tr>
    
    <tr>
			<td colspan="2" style="height: 388px;">
                        <ul class="etcArea">
					<li class="displaynone">
                                <span>POINT</span> <img src="/web/upload/yangji_pc_crumb/ico_point0.gif" alt="0점">
                            &nbsp;</li>
                            <li class="" style="text-align: right;">
                                <span>DATE</span> <span class="txtNum">2020-03-26</span>
                            </li>
                            <li class="displaynone">
                                <span>RECOMMEND</span> <span class="txtNum"><a href="#none" onclick="BOARD_READ.article_vote('/exec/front/Board/vote/6?no=821687&amp;board_no=6&amp;page=&amp;return_url=%2Farticle%2F%EC%83%81%ED%92%88%EB%AC%B8%EC%9D%98%2F6%2F821687%2F');"> <img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_recommend.gif" alt="추천하기"></a></span>
                            </li>
                            <li class="displaynone">
                                <span>VIEWED</span> <span class="txtNum">1</span>
                            </li>
                        </ul>
<div class="detail">
<div style="font-weight:600;">
▶ 상품 기본 설명은 상품 페이지 하단에 기재되어있습니다. <br>
사이즈는 잘 맞는 상품의 상세사이즈와 저희가 올려드린 상세사이즈를 비교 해주시는게 좋습니다.<br>
<br>
야외촬영or스태프촬영의경우 야외촬영이나 조명에 따라 약간씩 컬러가 다를 수 있어서 디테일컷으로 보시는게 가장 정확 합니다. (해상도에 따라 약간씩 차이 날 수 있습니다.)<br>
<br>
* 배송전 교환/취소시 [배송전 부분취소/변경] 제목선택을 안해주시면 상품교환/주문취소는 당일 처리되지 않습니다 *<br>
<br>
비회원으로 문의주실 경우엔 동명이인으로 인해 주문정보와 함께 남겨주셔야 바로 처리 가능합니다.<br>
<br>
</div>
----------------------------------------------------------------------<br>			

<div class="detail_text">
이옷 개이쁜데 하나주면 안됨?
</div>
</div>
                    </td>
                </tr>
	
            	
		
	</tbody>
	
		<tbody class="">
			
	</tbody>
	<tbody>
			
            
		</tbody>
	</table>
</div>
		<div class="ec-base-button ">
            <span class="gLeft">
                <span class="displaynone"><a href="#none" onclick="" class="yg_btn_30 yg_btn4" alt="관리자답변보기">관리자답변보기</a></span>
                <a href="product_board.jsp" class="yg_btn_30 yg_btn4" alt="목록">LIST</a>
            </span>
            <span class="gRight">
                <a href="product_board.jsp" onclick="BOARD_WRITE.form_submit('boardWriteForm');" class="yg_btn_30 yg_btn4" alt="등록">UPDATE</a>
                <a href="product_board.jsp" class="yg_btn_30 yg_btn4" alt="취소">DELETE</a>
            </span>
        </div>
	</div>
</form>
</div>

	</div>
	
 <jsp:include page="footer.jsp" />
</body>
</html>
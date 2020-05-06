<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden;">
<head>
<style type="text/css">
body {
	font-family: 'Jua', sans-serif;
}

#container {
	width: 100%;
	height: 100%;
	text-align: center;
	position: absolute;
	left: 0px;
}

#profile {
	width: 850px;
	height: 280px;
	padding: 10px;
	padding-top: 25px;
	border: none;
	display: inline-block;
	margin-bottom: 0px;
}

.post {
	width: 260px;
	margin: 7px;
}

#show-profile {
	width: 850px;
	height: 280px;
	border-radius: 9px;
	position: absolute;
	background: none;
}

#profilebackgound {
	width: 850px;
	height: 280px;
	background-color: lightgrey;
	border-radius: 9px;
	display: inline-block;
	position: absolute;
	margin-left: -425px;
	z-index: -1;
	-webkit-box-shadow: 0 5px 10px -6px #222;
	-moz-box-shadow: 0 5px 10px -6px #222;
	box-shadow: 0 5px 10px -6px #222;
}

#profileimgbox {
	width: 170px;
	height: 165px;
	border-radius: 100%;
	float: left;
	margin-top: 110px;
	margin-left: 60px;
	text-align: center;
	background-color: white;
	box-shadow: 1px 3px 6px 0px #222;
}

#profileimg {
	border-radius: 100%;
	width: 160px;
	height: 155px;
	float: left;
	padding: 5px;
	text-align: center;
	display: inline-block;
}

.profile {
	font-size: 25px;
	margin: 10px;
	margin-top: 1px;
}

#hr1 {
	margin: 0px 0px 5px 0px;
	width: 850px;
	display: inline-block;
}

#settingimg {
	width: 50px;
	height: 50px;
}

#profilename {
	width: 300px;
	height: 140px;
	margin-top: 130px;
	border: none;
	border-radius: 6px;
	padding: 5px;
	float: left;
	margin-left: 10px;
	text-align: left;
	padding-left: 10px;
	color: white;
}

#name {
	font-size: 50px;
}

#memo {
	font-size: 25px;
}

#profileright {
	width: 130px;
	height: 280px;
	float: right;
	border-radius: 15px;
	text-align: left;
	font-size: 18px;
	color: white;
	padding: 10px;
}

#profileSetbtn {
	font-family: 'Jua', sans-serif;
	margin-top: 10px;
	font-size: 15px;
	border: none;
	border-radius: 10px;
	width: 100px;
	height: 28px;
	opacity: 70%;
}

#settingbtn {
	font-family: 'Jua', sans-serif;
	font-size: 15px;
	width: 70px;
	height: 27px;
	border: none;
	border-radius: 10px;
	margin-left: 25px;
	opacity: 70%;
}

#userprofilshow {
	background-color: whitesmoke;
	border: none;
	width: 300px;
	height: 50px;
}

#modal {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	text-align: center;
}

#modalcontent {
	width: 900px;
	height: 500px;
	font-size: 25px;
	margin-top: 4%;
	display: inline-block;
}

.contentimgs {
	width: auto;
	height: 800px;
	float: left;
}

#dotbox {
	position: absolute;
	background-color: rgba(0, 0, 0, 0.4);
	bottom: 0px;
	left: 200px;
}

#modalimg {
	width: auto;
	height: 100%;
	float: left;
}

#coments {
	background-color: white;
	width: 400px;
	height: 800px;
	float: left;
	padding: 20px;
	overflow: hidden;
}

.coments {
	float: left;
}

#innercoment {
	height: 150px;
}

#closebtn {
	margin-left: 1050px;
	width: 40px;
	height: 40px;
	background-color: transparent;
	border: 1px solid transparent;
	font-size: 45px;
}

#comentarea {

}

#comentinput {
	width: 245px;
	height: 25px;
	float: left;
}

#rvComment {
	width: 245px;
	height: 25px;
	float: left;
}

#comentsend {
	height: 25px;
	background-color: lightslategray;
	border: 0px;
	font-size: 18px;
}

#setting {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	text-align: center;
}

#settinglist {
	height: 490px;
	width: 250px;
	border: none;
	background-color: white;
	border-radius: 15px;
	font-size: 20.5px;
	margin: 120px auto;
	padding-top: 2px;
	display: inline-block;
}

#profileModal {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	text-align: center;
}

#profileSet {
	height: 530px;
	width: 260px;
	border: none;
	background-color: white;
	border-radius: 15px;
	font-size: 18px;
	margin: 85px auto;
	padding-top: 2px;
	text-align: center;
	display: inline-block;
}

#Public_scope {
	height: 320px;
	width: 250px;
	border: none;
	background-color: white;
	border-radius: 15px;
	font-size: 23px;
	margin: 150px auto;
	padding-top: 10px;
	text-align: center;
	display: inline-block;
}

#Public_Scope_Modal {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	text-align: center;
}

#comentSet {
	height: 320px;
	width: 250px;
	border: none;
	background-color: white;
	border-radius: 15px;
	font-size: 23px;
	margin: 150px auto;
	padding-top: 10px;
	text-align: center;
	display: inline-block;
}

#comentSetModal {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	text-align: center;
}

#comenttextarea {
	height: 100px;
	width: 230px;
}

#nameSet {
	height: 250px;
	width: 250px;
	border: none;
	background-color: white;
	border-radius: 15px;
	font-size: 23px;
	margin: 150px auto;
	padding-top: 10px;
	text-align: center;
	display: inline-block;
}

#nameSetModal {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	text-align: center;
	/* display: inline-block; */
}

#nametextarea {
	height: 25px;
	width: 230px;
}

.checkBox {
	border-radius: 100%;
	width: 15px;
	height: 15px;
}

#proImgSet {
	height: 250px;
	width: 250px;
	border: none;
	background-color: white;
	border-radius: 15px;
	font-size: 23px;
	margin: 150px auto;
	padding-top: 10px;
	text-align: center;
	display: inline-block;
}

#proImgModal {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	text-align: center;
	/* display: inline-block; */
}

#proimgarea {
	height: 25px;
	width: 230px;
}

#proBackSet {
	height: 250px;
	width: 250px;
	border: none;
	background-color: white;
	border-radius: 15px;
	font-size: 23px;
	margin: 150px auto;
	padding-top: 10px;
	text-align: center;
	display: inline-block;
}

#proBackModal {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	text-align: center;
	/* display: inline-block; */
}

#probackarea {
	height: 25px;
	width: 230px;
}

.ec-base-paginate1 a {
	display: inline-block;
	float: none;
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

a {
	cursor: pointer;
}
</style>
<title>review</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/ot/resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/ot/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="/ot/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="header.jsp" />

	<!-- breadcrumb -->
	<br>
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m"
		style="background-image: /ot/resources/images/heading-pages-01.jpg;">
		<h1 class="l-text2 t-center w3-center w3-animate-bottom">Review</h1>
	</section>
	<div class="container bgwhite " style="max-width: 95%;">
		<div class="flex-w flex-sb" style="width: 80%; margin-left: 13%;">


			<style class="modalcss">
.page {
	transition: opacity 0.3s ease-out;
	font-size: 12px;
}

.modal {
	position: relative;
	top: -10%;
}

.reviews_index__no_data_message {
	display: none;
	text-align: center;
	color: #9e9e9e;
	margin-top: 30px;
	font-weight: bold;
}

.reviews_index--gallery .reviews_index__reviews:after {
	clear: both;
	content: ".";
	display: block;
	font-size: 0;
	height: 0;
	line-height: 0;
	visibility: hidden;
}

.photo_review_thumbnail__author_name {
	margin-right: 75px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.reviews_index_gallery_review__review_product:after {
	clear: both;
	content: ".";
	display: block;
	font-size: 0;
	height: 0;
	line-height: 0;
	visibility: hidden;
}

.reviews_index_gallery_review {
	cursor: pointer;
	float: left;
	font-family: "나눔고딕", "NanumGothic", "맑은 고딕", "Malgun Gothic", "돋움",
		"Dotum", "굴림", "Helvetica Neue", Helvetica, Arial, sans-serif;
	width: 215px;
	border: 1px solid #e5e5e5;
	padding: 0;
	margin: 0 10px 50px 10px;
	box-shadow: 0 3px 3px #fafafa;
	position: relative;
}

.reviews_index__foot {
	text-align: center;
	padding-top: 25px;
}

.reviews_index_gallery_review__review_product {
	padding: 13px 11px;
	height: 40px !important;
	cursor: pointer;
	*min-height: 0;
}
</style>





			<div class="wrap-dropdown-content p-t-15 bo7 p-b-14 modalcss"
				style="width: 98%; height: 100%; margin-top: 60px; margin-left: 3.2%;">


				<div class="page">

					<img class="." alt="best_review"
						src="/ot/resources/images/oT/common/review.jpg" width="90%"
						height="auto" style="margin-left: 1%;"> <br>
					<br>
					<div class="products_reviews_form__title"
						style="float: left; font-size: 12px;">
						<strong>REVIEW</strong><span class="divider">|</span><span
							class="weak">문의글 혹은 악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^</span>

					</div>
					<br>
					<br>

					<style>
.products_reviews_form {
	padding-bottom: 44px;
}

.products_reviews_form__head {
	padding-bottom: 10px;
	margin-bottom: 3px;
	font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림,
		"Helvetica Neue", Helvetica, Arial, sans-serif;
	height: 11px;
	line-height: 20px;
}

.products_reviews_form__title {
	font-size: 12px;
	float: left;
}

.products_reviews_form__button {
	float: right;
	width: auto;
	line-height: 20px;
	background-color: rgb(48, 48, 48);
	color: rgb(255, 255, 255);
	text-align: center;
	font-size: 10px;
	cursor: pointer;
	white-space: nowrap;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(16, 16, 16);
	border-image: initial;
	border-radius: 3px;
	padding: 0px 2px;
}

.products_reviews_summary {
	padding: 20px 0px 20px 29px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(218, 218, 218);
	border-image: initial;
}

.products_reviews_summary__inner {
	position: relative;
}

.products_reviews_summary__lcontent {
	margin-right: 263px;
	padding: 9px 20px 9px 0px;
	border-right: 1px solid rgb(237, 237, 237);
}

.products_reviews_summary__rcontent {
	position: absolute;
	right: 0px;
	top: 0px;
}

.score_summary {
	min-width: 90px;
}

.score_summary__footer {
	font-size: 14px;
	margin-top: 16px;
}

.score_summary__avg_score {
	width: 96px;
	float: left;
}

.score_summary__score_filters {
	padding-left: 120px;
}

.score_summary__average {
	line-height: 77px;
	text-align: center;
	color: white;
	font-size: 50px;
	background: rgb(37, 37, 37);
}

.score_summary__reviews_count {
	text-align: center;
	color: rgb(118, 118, 118);
	padding: 7px;
}

.score_summary__score_filter {
	display: inline-block;
	margin-bottom: 9px;
	height: 14px;
	width: 100%;
}

.score_summary__score_filter a {
	display: block;
	color: rgb(157, 157, 157);
}

.score_summary__score_filter__title {
	float: left;
	width: 50px;
}

.score_summary__score_filter__status {
	float: right;
	width: 64px;
	margin-left: 6px;
}

.score_summary__score_filter__gauge {
	margin-left: 54px;
	margin-right: 70px;
	position: relative;
	background: rgb(244, 244, 244);
}

.score_summary__score_filter__count {
	float: left;
	text-align: right;
	color: rgb(157, 157, 157);
	width: 42px;
}

.score_summary__score_filter__check {
	float: left;
	visibility: hidden;
	margin-left: 10px;
}

.sprites-check {
	vertical-align: middle;
	background-image: url(//assets.cre.ma/latte/assets/sprites-9f78e5e….png);
	width: 12px;
	height: 12px;
	background-repeat: no-repeat;
	background-position: -35px -88px;
}

.score_summary__score_filter a {
	display: block;
	color: rgb(157, 157, 157);
}

.score_summary__score_filter__gauge .percentile {
	width: 0px;
	height: 14px;
	background: rgb(255, 76, 35);
}

.score_summary__footer {
	font-size: 14px;
	margin-top: 16px;
}

.score_summary__footer .percentage {
	color: rgb(110, 182, 126);
}

.products_reviews_summary__rcontent {
	position: absolute;
	right: 0px;
	top: 0px;
}

.products_reviews_summary_thumbnail_small_with_score {
	width: 245px;
}

.products_reviews_summary_thumbnail_small_with_score__items {
	text-align: center;
	font-size: 0px;
	margin-top: 8px;
}

.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews
	{
	text-align: center;
	margin-top: 18px !important;
}

.products_reviews_summary_thumbnail_small_with_score__item_row:first-child
	{
	margin-top: 0px;
}

.products_reviews_summary_thumbnail_small_with_score__item_row {
	margin-top: 8px;
	display: inline-block;
}

.products_reviews_summary_thumbnail_small_with_score__item:first-child {
	margin-left: 0px;
}

.products_reviews_summary_thumbnail_small_with_score__item {
	float: left;
	margin-left: 4px;
	background: rgb(237, 237, 237);
}

.products_reviews_summary_thumbnail_small_with_score__item_link {
	display: inline-block;
	font-size: 0px;
	position: relative;
}

.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews
	{
	text-align: center;
	margin-top: 18px !important;
}

.widget_reviews {
	padding: 44px 0px;
}

.products_reviews_header {
	font-size: 16px;
}

.widget_reviews__body {
	border-bottom: 1px solid rgb(218, 218, 218);
}

.products_reviews_header__upper {
	font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림,
		"Helvetica Neue", Helvetica, Arial, sans-serif;
	position: relative;
}

.products_reviews_header__separator {
	height: 1px;
	background: rgb(218, 218, 218);
	margin: 10px 0px;
}

.products_reviews_header__lower {
	padding-top: 10px;
	padding-bottom: 15px;
}

.products_reviews_header__sort_type--selected {
	color: rgb(51, 51, 51);
	font-size: 16px;
}

.products_reviews_header__sort_type {
	color: rgb(148, 148, 148);
	font-size: 13px;
	letter-spacing: -1px;
}

.products_reviews_header__sort_type_divider {
	font-size: 13px;
	padding: 0px 13px;
}

.products_reviews_header__upper {
	font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림,
		"Helvetica Neue", Helvetica, Arial, sans-serif;
	position: relative;
}

.reviews_manager--absolute {
	position: absolute;
	top: 0px;
	right: 0px;
}

.products_reviews_header__separator {
	height: 1px;
	background: rgb(218, 218, 218);
	margin: 10px 0px;
}

.review_options_search__option_types {
	float: right;
}

.widget_reviews__body {

}

.products_reviews_summary__lcontent {
	margin-right: 263px;
	padding: 9px 20px 9px 0px;
	border-right: 1px solid rgb(237, 237, 237);
}

.score_summary__avg_score {
	width: 96px;
	float: left;
}

.score_summary__average {
	line-height: 77px;
	text-align: center;
	color: white;
	font-size: 50px;
	background: rgb(37, 37, 37);
}

.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews_icon
	{
	display: none;
	position: absolute;
	right: -15px;
}

.sprites-check {
	vertical-align: middle;
	background-image: url(//assets.cre.ma/latte/assets/sprites-9f78e5e….png);
	width: 12px;
	height: 12px;
	background-repeat: no-repeat;
	background-position: -35px -88px;
}

.top_menu {
	position: relative;
	border: 1px solid #e1e1e1;
	margin-top: 18px;
	margin-bottom: 33px;
	box-shadow: 2px 3px 3px 0px rgba(0, 0, 0, 0.03);
	filter: progid:DXImageTransform.Microsoft.Shadow(color='#f7f7f7',
		Direction=90, Strength=3);
	height: 51px;
	box-sizing: content-box;
	width: 1037px;
}

.top_menu__ul--rpane {
	float: right;
	position: absolute;
	top: 0;
	right: 0;
}

.top_menu__li--sort_container {
	padding: 0;
	width: 121px;
	font-family: "나눔고딕", "NanumGothic", "맑은 고딕", "Malgun Gothic", "돋움",
		"Dotum", "굴림", "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 0;
}

.top_menu__li--sort_container .select2-container#s2id_sort {
	font-size: 14px;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	height: 51px;
	width: 100%;
}

.top_menu__li--sort_container .select2-container .select2-choice {
	padding: 13px 15px;
	position: relative;
	box-sizing: content-box;
}

.select2-drop {
	width: 100%;
	margin-top: -1px;
	position: absolute;
	z-index: 9999;
	top: 100%;
	background: #fff;
	color: #000;
	border: 1px solid #aaa;
	border-top: 0;
}

.top_menu__li {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	height: 51px;
	border-left: 1px solid #e1e1e1;
	padding: 0 15px;
	float: left;
}

.top_menu__search_container {
	padding: 0;
	position: relative;
}

select {
	height: 36px !important;
	border: 1px solid #ddd !important;
	width: 850px !important;
	position: relative;
	left: 106px;
	top: -10px;
}
</style>
					<br>

					<div class="top_menu">
						<ul class="top_menu__ul top_menu__ul--lpane">
							<li class="top_menu__li top_menu__li--categories_container">
								<span class="top_menu__categories_container_title"
								style="position: relative; top: 18px;">카테고리별 보기</span>
								<div class="select2-container select2" id="s2id_category">
									<a href="javascript:void(0)" onclick="return false;"
										class="select2-choice" tabindex="-1"> <abbr
										class="select2-search-choice-close"></abbr> <span
										class="select2-arrow"><b></b></span> <span
										class="sprites-icon-drop-down select2__dropdown_icon"></span></a>
								</div> <select name="category" id="category"
								class="select2 select2-offscreen"
								data-url="/black-up.kr/reviews?aloading=.page&amp;app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fwww.black-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;widget_env=100&amp;widget_id=29"
								tabindex="-1">
									<option value="0">카테고리를 선택해주세요</option>
									<c:forEach var="u" items="${ulist}">
										<option value="${u.upNo }">${u.upName }</option>
									</c:forEach>
							</select>
								<button id="category_ok" class="more yg_btn_24 yg_btn3"
									style="top: -12px; cursor: pointer; left: 108px; height: 36px;">검색</button>
								<input type="hidden" name="up_no" value="${u.upNo }"> <input
								type="hidden" name="up_name" value="${u.upName }">

							</li>
						</ul>
					</div>


					<div id=sortButton>
						<!-- 카테고리 셀렉트 -->
						<%-- <select style="margin-bottom:3.2%;background:none;outline: 0;width:80px;"
									id="review_category">

									<option>카테고리</option>
									<c:forEach var="u" items="${ulist}">
									<option value="${u.upNo }">${u.upName }</option>
							        </c:forEach>
									</select>
									<!-- 카테고리 셀렉트 -->
									<input type="hidden" name="up_no" value="${u.upNo }">
									<input type="hidden" name="up_name" value="${u.upName }">
									<!-- 검색 -->

									<form class="submitSearch" action="#" style="margin-top:-5%;position:relative;left:7%;">
										<input type="text"  name="search"
										 style="border: 1px solid lightgray !important; background: none;"
											placeholder="Search..">
										<button id="searchBtn" >
											<i class="fa fa-search"></i>
										</button>
									</form><br> --%>
						<!-- 검색 -->
						<!-- 정렬 부분 버튼 -->
						<!-- Button -->
						<button id="allSort" class=" bg4 bo-rad-23 hov1 s-text1 trans-0-4"
							href="#none"
							style="height: 20px; font-size: 12px; background: white; color: gray;">
							<Strong>평점순</Strong> <small></small>
						</button>

						&nbsp;|

						<!-- Button -->
						<button id="recommandSort"
							class="bg4 bo-rad-23 hov1 s-text1 trans-0-4" href="#none"
							style="width: 4%; height: 20px; font-size: 12px; background: white; color: gray;">
							<Strong>좋아요순</Strong>
						</button>

						&nbsp;|

						<!-- Button -->
						<button id="newSort" class=" bg4 bo-rad-23 hov1 s-text1 trans-0-4"
							href="#none"
							style="width: 4%; height: 20px; font-size: 12px; background: white; color: gray;">
							<Strong>최신순</Strong>
						</button>

						<!-- 정렬 부분 버튼 -->
					</div>


					<div class="products_reviews_header__lower">

						<div class="review_options_search js-review-options-search">

							<ul class="review_options_search__option_types"
								style="border: 2px solid lightgray; margin-top: 17px; margin-left: -40px; color: #c3b798; width: 10%; font-size: 14px;">
								<br>
								<li class="review_options_search__option_type"><a
									class="review_options_search__option_type_link js-link-review-option-type">
										<div class="review_options_search__option_type_name" title="키">
											<small><strong>&nbsp;키</strong></small>
										</div>
										<br>
										<div
											class="review_options_search__option_type_dropdown_button">
											<i
												class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
										</div>
								</a>
									<div
										class="review_options_search__dropdown_menu js-dialog-iframe-height">

										<ul class="review_options_search__values"
											style="margin-left: 30px;">

											<li class="review_options_search__value"><input
												type="checkbox" name="option_3" id="option_149" value="1"
												class="checkbox-review-option-search" style="border: none;"
												id="review_option_type_3_0"> <label
												for="review_option_type_3_0">149 cm 이하</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_3" value="2" id="option_150"
												class="checkbox-review-option-search" style="border: none;"
												id="review_option_type_3_1"> <label
												for="review_option_type_3_1">150 - 154 cm</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_3" value="3" id="option_155"
												class="checkbox-review-option-search" style="border: none;"
												id="review_option_type_3_2"> <label
												for="review_option_type_3_2">155 - 159 cm</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_3" value="4" id="option_160"
												class="checkbox-review-option-search" style="border: none;"
												id="review_option_type_3_3"> <label
												for="review_option_type_3_3">160 - 164 cm</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_3" value="5" id="option_165"
												class="checkbox-review-option-search" style="border: none;"
												id="review_option_type_3_4"> <label
												for="review_option_type_3_4">165 - 169 cm</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_3" value="6" id="option_170"
												class="checkbox-review-option-search" style="border: none;"
												id="review_option_type_3_4"> <label
												for="review_option_type_3_5">170 cm 이상</label></li>


										</ul>

									</div></li>
								<br>
								<br>
								<li class="review_options_search__option_type"><a
									class="review_options_search__option_type_link js-link-review-option-type">
										<div class="review_options_search__option_type_name"
											title="몸무게">
											<small><strong>&nbsp;몸무게</strong></small>
										</div>
										<br>
										<div
											class="review_options_search__option_type_dropdown_button">
											<i
												class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
										</div>
								</a>
									<div
										class="review_options_search__dropdown_menu js-dialog-iframe-height">

										<ul class="review_options_search__values"
											style="margin-left: 32px;">

											<li class="review_options_search__value"><input
												type="checkbox" name="option_4" value="7"
												class="checkbox-review-option-search2" style="border: none;"
												id="review_option_type_4_0"> <label
												for="review_option_type_4_0">39 kg 이하</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_4" value="8"
												class="checkbox-review-option-search2" style="border: none;"
												id="review_option_type_4_1"> <label
												for="review_option_type_4_1">40 - 44 kg</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_4" value="9"
												class="checkbox-review-option-search2" style="border: none;"
												id="review_option_type_4_2"> <label
												for="review_option_type_4_2">45 - 49 kg</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_4" value="10"
												class="checkbox-review-option-search2" style="border: none;"
												id="review_option_type_4_3"> <label
												for="review_option_type_4_3">50 - 54 kg</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_4" value="11"
												class="checkbox-review-option-search2" style="border: none;"
												id="review_option_type_4_4"> <label
												for="review_option_type_4_4">55 - 59 kg</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_4" value="12"
												class="checkbox-review-option-search2" style="border: none;"
												id="review_option_type_4_5"> <label
												for="review_option_type_4_5">60 kg 이상</label></li>



										</ul>

									</div></li>
								<br>
								<br>
								<li class="review_options_search__option_type"><a
									class="review_options_search__option_type_link js-link-review-option-type">
										<div class="review_options_search__option_type_name"
											title="평소사이즈-상의">
											<small><strong>&nbsp;평소사이즈</strong></small>
										</div>
										<br>
										<div
											class="review_options_search__option_type_dropdown_button">
											<i
												class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
										</div>
								</a>
									<div
										class="review_options_search__dropdown_menu js-dialog-iframe-height">

										<ul class="review_options_search__values"
											style="margin-left: 46px;">

											<li class="review_options_search__value"><input
												type="checkbox" name="option_5" value="13"
												class="checkbox-review-option-search3" style="border: none;"
												id="review_option_type_5_0"> <label
												for="review_option_type_5_0">XS</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_5" value="14"
												class="checkbox-review-option-search3" style="border: none;"
												id="review_option_type_5_1"> <label
												for="review_option_type_5_1">S</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_5" value="15"
												class="checkbox-review-option-search3" style="border: none;"
												id="review_option_type_5_2"> <label
												for="review_option_type_5_2">M</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_5" value="16"
												class="checkbox-review-option-search3" style="border: none;"
												id="review_option_type_5_3"> <label
												for="review_option_type_5_3">L</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_5" value="17"
												class="checkbox-review-option-search3" style="border: none;"
												id="review_option_type_5_4"> <label
												for="review_option_type_5_4">XL</label></li>

											<li class="review_options_search__value"><input
												type="checkbox" name="option_5" value="18"
												class="checkbox-review-option-search3" style="border: none;"
												id="review_option_type_5_4"> <label
												for="review_option_type_5_4">F</label></li>

										</ul>

									</div></li>
								<br>
							</ul>
						</div>


					</div>



					<hr style="border: 1px solid lightgray; margin-top: 2px;">
					<br>
					<br>
					<!-- modal시작!!!!!!!!!!!!!!!!!!!!!!!! -->
					<div id="modal" style="overflow-y: hidden;">
						<div id="modalcontent"
							style="width: 100%; height: 100%; margin-left: 18.5%; margin-top: 80px !important;">



							<div id="modalpost">
								<div id="modalimg" class="slideshow-container"
									style="position: relative; top: -20px;">

									<div
										style="width: 10px; height: 10px; position: relative; top: 400px; left: 5px;">
										<a id="movePage1" class="prev" onclick="plusSlides(-1);"
											style="font-size: 25px; background: gray; opacity: 0.6;"><strong>
												&#10094;</strong></a>
									</div>
									<div id="nextPh"
										style="width: 10px; height: 10px; position: relative; top: 390px; left: 780px;">
										<a id="movePage2" class="next" onclick="plusSlides(1);"
											style="font-size: 25px; background: gray; opacity: 0.6;"><strong>
												&#10095; </strong></a>
									</div>

									<!--       <div class="mySlides" style="display: block;">
                            <div class="numbertext" ><font style="font-size:14px;">1 / 2</font></div>
                            <img class="contentimgs" id="contentimgs1" src="" alt="sample1" style="margin-top:-5%;">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext"><font style="font-size:14px;">2 / 2</font></div>
                            <img class="contentimgs" id="contentimgs2" src="" alt="sample2" style="margin-top:-5%;" >
                        </div>  -->


									<div id="dotbox" style="text-align: center">
										<span class="dot" onclick="currentSlide(1);"></span> <span
											class="dot" onclick="currentSlide(2);"></span>

									</div>


								</div>

							</div>
							<button class="close1" onclick="modalclose();"
								style="position: relative; right: 365px; bottom: 37px; color: ivory;">&times;</button>
							<!-- 모달창 시작점 -->
							<div id="coments" style="margin-top: -3px; overflow-y: scroll;">

								<br>
								<div
									style="position: relative; top: -6%; font-size: 14px; margin: 0px 0px -20px 0px;"
									class="reviews_index_gallery_review__review_product js-link-iframe "
									data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
									<div
										class="reviews_index_gallery_review__review_product_thumbnail">
										<img class="" id="pImage" width="55" height="55"
											src="${r.prdtPath }${r.prdtImg}"
											style="padding-right: 3%; opacity: 1; float: left;">

									</div>
									<div class="reviews_index_gallery_review__review_product_info">
										<div class="reviews_index_gallery_review__product_info_title"
											id="prDetail" style="padding-top: 6px;">
											<!-- MODAL 창에 뜨는 DETAIL 상품명 -->

										</div>
										<div id="starstarArea"
											class="reviews_index_gallery_review__product_info_feedbacks"
											style="margin-top: 3px;">
											<i class="fa fa-fw fa-star" id="starstar"></i> <span
												class="reviews_index_gallery_review__reviews_count"
												style="color: gray;"> <small><a id="memName"></a></small>
											</span>
										</div>
									</div>
								</div>
								<hr>
								<div
									style="color: gray; border: 1px solid lightgray; font-size: 15px;">
									<small style="margin-left: -44px;">이 리뷰를 <strong
										style="color: black;"> <span id="likeCount"></span></strong>명이
										좋아합니다.
									</small>
								</div>
								<hr>
								<div
									style="color: gray; border: 2px dotted lightgray; font-size: 15px;">
									선택한 옵션 <br> <small>color : <strong
										style="color: black;" id="rColor"></strong></small><br> <small>size
										: <strong style="color: black;" id="rSize"></strong>
									</small>
								</div>
								<hr>
								<div id="innercoment">
									<div class="coments"
										style="font-size: 12px; text-align: left; padding: 10px; letter-spacing: 1px;"
										id="rInfo">
										<!-- 리뷰내용 -->
									</div>
									<br>


								</div>
								<div style="color: lightgray; font-size: 12px; float: right;"
									id="rDate2"></div>
								<div>
									<hr>
									<div style="margin-top: -4px;">
										<font style="font-size: 13px; color: gray;">이 리뷰가</font>
										&nbsp; <a id="heartClick"
											style="font-size: 12px; border: none; color: white; width: 60px; height: 30px;">
											<img src="/ot/resources/images/icons/like-noncheck.png"
											id="nonHeart"
											style="width: 33px; margin-left: -11px; margin-top: -3px;">
											<input type="hidden" id="likeCheck" value=""> <input
											type="hidden" id="rv_no2" value="">
										</a>
									</div>
								</div>
								<hr>

								<!-- 댓글 forEach 시작점 -->
								<div id="comentarea">
									<div style="margin-bottom: 14px;">


										<input onkeyPress="reviewReply();" type="text" id="rvComment"
											placeholder="댓글을 작성해주세요 :)" maxlength="80"
											style="resize: none; /* border-radius: 5px 0px 0px 5px;  */ border: 0.5px solid lightgray; background-color: whitesmoke; padding: 2px; height: 40px; width: 85%;">
										<button onclick="" id="comentsend"
											style="font-size: 15px; background: white; border: 1px solid lightgray; /* border-radius:0px 5px 5px 0px; */ width: 50px; height: 40px; position: relative; bottom: 2px;">등록</button>
									</div>


								</div>

							</div>
							<!-- 모달창 끝나는 점 -->
						</div>
					</div>
					<!-- modal끝!!!!!!!!!!!!!!!!!!!!!!!! -->

					<div class="reviews_index__no_data_message">아직 작성한 리뷰가 없습니다.</div>
					<ul id="review_list" class="reviews_index__reviews reviews"
						id="reviewArea" style="margin-top: 10px; margin-left: -3%;">


						<!-- 리뷰1줄 시작 -->

						<!-- 리뷰1 -->
						<!-- foreach문 시작점 -->
						<c:forEach var="r" items="${rlist }">

							<li class="reviews_index_gallery_review review1"
								style="width: 15.5%; height: 367px; font-size: 11px; border: 1px solid lightgray; border-radius: 2%; margin-right: -1.2%; margin-left: 3%">
								<input type="hidden" class="rv_no" value="${r.rvNo }">
								<div class="photo_review_thumbnail js-link-fullscreen-popup"
									data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
									<div class="photo_review_thumbnail__thumbnail_container">
										<ul>
											<li class="photo_review_thumbnail__review_image_thumbnail">
												<a onclick="review10(this)">
											   <img
													class="js-review-image"
													alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="${r.rvImage }"
													style="width: 100%; height: 224px; opacity: 1; border-bottom: 2px solid lightgray;"></a>
											</li>
										</ul>
										<div class="photo_review_thumbnail__review_info">
											<div
												class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
												<div
													class="photo_review_thumbnail__media_count_indicator_dot"></div>
											</div>
										</div>
									</div>
									<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
										class="photo_review_thumbnail__review_author_info">

										<div style="margin-top: 2%; border-radius: 2%;"
											class="photo_review_thumbnail__review_title js-translate-review-message">

											${r.rvInfo }</div>
										<br>
										<div style="margin-top: -2%; color: gray;"
											class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
											<div class="photo_review_thumbnail__author_name"
												style="float: left;">
												<!-- 작성자 -->
												<strong>${r.memName }</strong>
											</div>

											<div class="photo_review_thumbnail__created_at"
												style="position: relative; left: 5%;">${r.rvDate }</div>
											<!-- 내가 리뷰 작성한 내용 -->
											<hr>
										</div>
									</div>
								</div>

								<div style="position: relative; top: -6%;"
									class="reviews_index_gallery_review__review_product js-link-iframe "
									data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
									<div
										class="reviews_index_gallery_review__review_product_thumbnail">
										<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55"
											id="pImage" height="55" src="${r.prdtPath }${r.prdtImg}"
											style="padding-right: 3%; opacity: 1; float: left;">

									</div>
									<div class="reviews_index_gallery_review__review_product_info">
										<div class="reviews_index_gallery_review__product_info_title">
											<!-- 내가 구매한 상품명 -->
											<a style="font-size: 12px;" id="${r.prdtCode }"
												onclick="prdtGo(this.id);">${r.prdtName }</a>
										</div>


										<div
											class="reviews_index_gallery_review__product_info_feedbacks">
											<c:forEach var="rc" items="${rc}">
												<c:if test="${r.prdtCode eq rc.prdt_code}">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">${rc.count }</strong></span>
												</c:if>
											</c:forEach>
											<br> <span
												class="reviews_index_gallery_review__display_score"
												style="color: #c3b798;">평점 <strong
												style="color: black;" id="starArea">${r.rvPoint }</strong></span>
											<c:if test="${r.rvPoint==1 }">
												<i class="fa fa-fw fa-star"></i>
											</c:if>
											<c:if test="${r.rvPoint==2 }">
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
											</c:if>
											<c:if test="${r.rvPoint==3 }">
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
											</c:if>
											<c:if test="${r.rvPoint==4 }">
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
											</c:if>
											<c:if test="${r.rvPoint==5 }">
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
												<i class="fa fa-fw fa-star"></i>
											</c:if>

										</div>


									</div>
								</div>
							</li>
						</c:forEach>
						<!-- foreach문 마감줄 -->
						<!-- 리뷰1 끝 -->
						<!-- 리뷰1 -->
					</ul>
				</div>

			</div>
			<br>
			<br>
			<br>


			<!-- 페이징 처리 할 부분 -->
			<c:if test="${!empty rlist }">
				<div
					class="xans-element- xans-myshop xans-myshop-couponlistpaging ec-base-paginate1">
					<c:if test="${pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
					</c:if>
					<c:if test="${pi.currentPage ne 1 }">
						<c:url var="start" value="review.do">
							<c:param name="currentPage" value="1" />
							<c:param name="Sort" value="${Sort}" />
						</c:url>
						<a href="${start }" class="first"> <img
							src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지">
						</a>
					</c:if>


					<c:if test="${ pi.currentPage eq 1 }">
						<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지"> &nbsp;
				</c:if>
					<c:if test="${ pi.currentPage ne 1 }">
						<c:url var="before" value="review.do">
							<c:param name="currentPage" value="${pi.currentPage - 1 }" />
							<c:param name="Sort" value="${Sort}" />
						</c:url>
						<a href="${before}"> <img
							src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지">
						</a> &nbsp;
                 </c:if>

					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:if test="${ p eq pi.currentPage }">
							<font color="red"
								style="font-size: 13px; font-weight: 900; font-family: 'arial', serif; line-height: 35px;">
								<b>${ p }</b> &nbsp;&nbsp;
							</font>
						</c:if>

						<c:if test="${ p ne pi.currentPage }">
							<c:url var="pagination" value="review.do">
								<c:param name="currentPage" value="${ p }" />
								<c:param name="Sort" value="${Sort}" />
							</c:url>
							<a href="${ pagination }"
								style="font-family: 'arial', serif; line-height: 35px; font-size: 13px;">
								${ p }</a> &nbsp;
                  </c:if>
					</c:forEach>


					<c:if test="${ pi.currentPage eq pi.maxPage }">
						<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
					</c:if>
					<c:if test="${ pi.currentPage ne pi.maxPage }">
						<c:url var="after" value="review.do">
							<c:param name="currentPage" value="${pi.currentPage +1 }" />
							<c:param name="Sort" value="${Sort}" />
						</c:url>
						<a href="${after}"> <img
							src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지">
						</a>
					</c:if>

					<c:if test="${ pi.currentPage eq pi.maxPage }">
						<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지">
					</c:if>
					<c:if test="${ pi.currentPage ne pi.maxPage }">
						<c:url var="end" value="review.do">
							<c:param name="currentPage" value="${pi.maxPage }" />
							<c:param name="Sort" value="${Sort}" />
						</c:url>
						<a href="${end }" class="last"> <img
							src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지"></a>
					</c:if>
				</div>
			</c:if>

		</div>

	</div>
	<hr>
	<br>
	<br>
	<style>
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	padding: 20px;
	border: 1px solid #888;
	width: 100%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.close1 {
	color: #aaa;
	align: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
	<c:url var="bi1" value="product_detail.do">
		<c:param name="bi" value="bi1" />
	</c:url>
	<c:url var="bi2" value="product_detail.do">
		<c:param name="bi" value="bi2" />
	</c:url>
	<!-- <c:url var="bi3" value="productDetail.do">
						<c:param name="bi" value="bi3"/>
					</c:url>
					<c:url var="bi4" value="productDetail.do">
						<c:param name="bi" value="bi4"/>
					</c:url>
					<c:url var="bi5" value="productDetail.do">
						<c:param name="bi" value="bi5"/>
					</c:url>
					<c:url var="bi6" value="productDetail.do">
						<c:param name="bi" value="bi6"/>
					</c:url>
					<c:url var="bi7" value="productDetail.do">
						<c:param name="bi" value="bi7"/>
					</c:url>
					<c:url var="bi8" value="productDetail.do">
						<c:param name="bi" value="bi8"/>
					</c:url> -->

	<!-- Relate Product -->
	<section class="relateproduct bgwhite p-t-45 p-b-138">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">Best Item</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">

					<c:forEach var="p" items="${plist }">
						<!-- 기본프로덕트블록 샘플 -->
						<div class="item-slick2 p-l-15 p-r-15">
							<div class="block2">
								<c:if test="${61999 gt p.prdtNo and p.prdtNo gt 60000}">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">

										<img src="${p.prdtImagePath }${p.prdtImage }"
											alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">


											<div id="${p.prdtNo }a"
												class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
													style="width: 60%; margin-left: 20%"
													onclick="wish('${p.prdtNo }');">
													<small>관심상품 담기</small>
												</button>
											</div>
										</div>
									</div>
								</c:if>
								<c:if test="${p.prdtNo gt 62000}">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">

										<img src="${p.prdtImagePath }${p.prdtImage }"
											alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">


											<div id="${p.prdtNo }a"
												class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
													style="width: 60%; margin-left: 20%"
													onclick="wish('${p.prdtNo }');">
													<small>관심상품 담기</small>
												</button>
											</div>
										</div>
									</div>
								</c:if>


								<c:if test="${p.prdtNo lt 60000}">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">

										<img src="${p.prdtImagePath }${p.prdtImage }"
											alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">


											<div id="${p.prdtNo }a"
												class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
													style="width: 60%; margin-left: 20%"
													onclick="wish('${p.prdtNo }');">
													<small>관심상품 담기</small>
												</button>
											</div>
										</div>
									</div>
								</c:if>


								<div class="block2-txt p-t-20">
									<span class="block2-price m-text6 p-r-5"> <c:forEach
											var="po" items="${ polist }">

											<c:if test="${ p.prdtNo eq po.prdtNo }">

												<c:forEach var="pc" items="${ pclist }">

													<c:if test="${ po.optColor eq pc.pcName }">
														<div
															style="width:14px;height:14px;background:${pc.pcRgb};display:inline-block;border:1px solid gray;margin-left:0.5px;"></div>
													</c:if>

												</c:forEach>

											</c:if>

										</c:forEach>
									</span> <br>

									<c:url var="product_detail" value="product_detail.do">
										<c:param name="product_detail" value="${p.prdtNo }" />
									</c:url>
									<a href="${product_detail }" id="${p.prdtNo }"
										class="block2-name dis-block s-text3 p-b-5"
										style="font-size: 12px"> ${p.prdtName } </a> <span
										class="block2-price m-text6 p-r-5"> <c:if
											test="${p.prdtSale ne 0 }">
											<small><font class="format-money"
												style="text-decoration: line-through">${ p.prdtPrice}</font>-><font
												class="format-money">${ p.prdtPrice-((p.prdtPrice/100)*p.prdtSale)}</font>
												won</small>&nbsp;&nbsp;
										</c:if> <c:if test="${p.prdtSale eq 0 }">
											<small><font class="format-money">${ p.prdtPrice}</font>
												won</small>&nbsp;&nbsp;
										</c:if> <font style="font-size: 9px; color: gray">리뷰 :
											${p.prdtReview}</font>
									</span>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>
	</section>



	<!-- Footer -->
	<jsp:include page="footer.jsp" />




	<!--===============================================================================================-->
	<script type="text/javascript"
		src="/ot/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="/ot/resources/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="/ot/resources/vendor/select2/select2.min.js"></script>

	<!--===============================================================================================-->
	<script type="text/javascript"
		src="/ot/resources/vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="/ot/resources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="/ot/resources/vendor/sweetalert/sweetalert.min.js"></script>


	<!--===============================================================================================-->
	<script src="/ot/resources/js/main.js"></script>


	<script>

		$('#comentsend').on("click", function() {
			var rvComment = $('#rvComment').val();
			 var rv_no = $('#rv_no2').val();
			 var rvc_no = $('.rvc_no').val();




			if(rvComment == ""){
					alert("댓글을 작성해주세요");
			}else{
				 $('#comentarea').children('.replyDiv').remove();
				 $('#comentarea').children('br').remove();


			$.ajax({
				url:"addReply.do",
				data : {rvComment : rvComment, rv_no : rv_no},
				success:function(data) {
					if(data=="success") {
						//getReplyList();
						 $.ajax({

							url:"rList.do",
							dataType:"json",
							data : {rv_no:rv_no},
							success:function(data) {
							 console.log(data.rplist[0]);
								 for(var i=0;i<data.rplist.length;i++) {

									 if(data.rplist[i].memNo =="${loginMember.memNo}"){
									 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
									 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
					                          	'<small>'+data.rplist[i].rvComment+'</small>'+
					                          	'<button style="">&times;</button><br>'+
					                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)"></button>'+
					                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
					                          	 )
									 }else{

					                  $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
									 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
					                          	'<small>'+data.rplist[i].rvComment+'</small>'+
					                          	'<button style=""></button><br>'+
					                          	'<button style="float:right;font-size:10px;color:#e65540;"onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
					                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
					                          	 )
									 }






								 }
							},error:function() {
								alert("에러임에러임");
							}
			 })
						$('#rvComment').val("");
					}
				},error:function() {
					console.log("등록실패");
				}
			})




				}
			});

		function getReplyList() {

			 var rv_no = $('#rv_no2').val();

			//comentarea

			$.ajax({
				url:"rList.do",
				data:{rv_no:rv_no},
				dataType:"json",
				success:function(data) {

				}

			})
		}


	</script>


	<script>
	<!-- 평점순 정렬 -->

	$('#allSort').click(function() {
		var point="point";


		$.ajax({
			url:"LikeSort.do",
			data:{Sort : point},
			dataType:"json",
			success:function(data) {
				 $('#review_list').children('li').remove();
				 $('#review_list').children('div').remove();
				 console.log(data);
				 var count = 0;
				 for(var i=0;i<data.rlist.length;i++) {
					 var src = data.rlist[i].prdtPath+data.rlist[i].prdtImg;
					  for(var j=0;j<data.rc.length;j++){
							if(data.rlist[i].prdtCode == data.rc[j].prdt_code){
					 $('#review_list').append('<li class="reviews_index_gallery_review review1" style=" width: 15.5%; height: 367px; font-size: 11px; border: 1px solid lightgray; border-radius: 2%; margin-right: -1.2%;margin-left:3%">'+
									  '<input type="hidden" class="rv_no"  value="'+data.rlist[i].rvNo+'">'+
									  '<div class="photo_review_thumbnail js-link-fullscreen-popup"data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">'+
									  '<div class="photo_review_thumbnail__thumbnail_container">'+
									  '<ul>'+
									  '<li class="photo_review_thumbnail__review_image_thumbnail">'+
									  '<a onclick="review10(this)"><img class="js-review-image"alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="'+data.rlist[i].rvImage+'"style="width: 100%; height: 224px; opacity: 1; border-bottom: 2px solid lightgray;"></a>'+
									  '</li>'+
									  '</ul>'+
									  '<div class="photo_review_thumbnail__review_info">'+
									  '<div class="photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">'+
									  '<div class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
									  '</div></div></div>'+
									  '<div style="border-radius: 2%; width: 90%; margin-left: 5%;"class="photo_review_thumbnail__review_author_info">'+
									  '<div style="margin-top: 2%; border-radius: 2%;" class="photo_review_thumbnail__review_title js-translate-review-message">'+
									  ''+data.rlist[i].rvInfo+'</div>'+
							          '<br>'+
									  '<div style="margin-top: -2%; color: gray;"class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
									  '<div class="photo_review_thumbnail__author_name"style="float: left;">'+
									  '<strong>'+data.rlist[i].memName+'</strong>'+
									  '</div>'+
								      '<div class="photo_review_thumbnail__created_at" style="position: relative; left: 5%;">'+data.rlist[i].rvDate+'</div>'+
									  '<hr>'+
									  '</div>'+
									  '</div>'+
									  '</div>'+
								      '<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe " data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">'+
									  '<div class="reviews_index_gallery_review__review_product_thumbnail">'+
									  '<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="'+src+'"style="padding-right: 3%; opacity: 1; float: left;">'+
									  '</div>'+
									  '<div class="reviews_index_gallery_review__review_product_info">'+
									  '<div class="reviews_index_gallery_review__product_info_title">'+
									  '<a style="font-size:12px;" id="'+data.rlist[i].prdtCode+'" onclick="prdtGo(this.id);">'+data.rlist[i].prdtName+'</a></div>'+
									  '<div class="reviews_index_gallery_review__product_info_feedbacks">'+
									  '<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰<strong style="color: black;">'+data.rc[j].count+'</strong></span><br>'+
									  '<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점 '+
									  '<strong style="color: black;display:inline-block;"id="starArea'+i+'o">'+data.rlist[i].rvPoint+'</strong>&nbsp;</span>'+
							          '</div></div></div></li>')

					 var star1 = '<i class="fa fa-fw fa-star"></i>'
					   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 if(data.rlist[i].rvPoint==1){
					   	 $('#starArea'+i+'o').after(star1);
					   	 }else if(data.rlist[i].rvPoint==2){
					   		 $('#starArea'+i+'o').after(star2);
					   	 }else if(data.rlist[i].rvPoint==3){
					   		 $('#starArea'+i+'o').after(star3);
					   	 }else if(data.rlist[i].rvPoint==4){
					   		 $('#starArea'+i+'o').after(star4);
					   	 }else if(data.rlist[i].rvPoint==5){
					   		 $('#starArea'+i+'o').after(star5);
					 }

						}
							   	 }
					 }
					},error:function() {
						alert("에러임에러임");
					}


		})

	})

	</script>

	<script>
	<!-- 좋아요 순으로 정렬 -->
	$('#recommandSort').click(function() {
		var like="like";


		$.ajax({
			url:"LikeSort.do",
			data:{Sort : like},
			dataType:"json",
			success:function(data) {
				 $('#review_list').children('li').remove();
				 $('#review_list').children('div').remove();
				 for(var i=0;i<data.rlist.length;i++) {
					 var src = data.rlist[i].prdtPath+data.rlist[i].prdtImg;
					 for(var j=0;j<data.rc.length;j++){
							if(data.rlist[i].prdtCode == data.rc[j].prdt_code){
					 $('#review_list').append('<li class="reviews_index_gallery_review review1" style=" width: 15.5%; height: 367px; font-size: 11px; border: 1px solid lightgray; border-radius: 2%; margin-right: -1.2%;margin-left:3%">'+
									  '<input type="hidden" class="rv_no"  value="'+data.rlist[i].rvNo+'">'+
									  '<div class="photo_review_thumbnail js-link-fullscreen-popup"data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">'+
									  '<div class="photo_review_thumbnail__thumbnail_container">'+
									  '<ul>'+
									  '<li class="photo_review_thumbnail__review_image_thumbnail">'+
									  '<a onclick="review10(this)"><img class="js-review-image"alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="'+data.rlist[i].rvImage+'"style="width: 100%; height: 224px; opacity: 1; border-bottom: 2px solid lightgray;"></a>'+
									  '</li>'+
									  '</ul>'+
									  '<div class="photo_review_thumbnail__review_info">'+
									  '<div class="photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">'+
									  '<div class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
									  '</div></div></div>'+
									  '<div style="border-radius: 2%; width: 90%; margin-left: 5%;"class="photo_review_thumbnail__review_author_info">'+
									  '<div style="margin-top: 2%; border-radius: 2%;" class="photo_review_thumbnail__review_title js-translate-review-message">'+
									  ''+data.rlist[i].rvInfo+'</div>'+
							          '<br>'+
									  '<div style="margin-top: -2%; color: gray;"class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
									  '<div class="photo_review_thumbnail__author_name"style="float: left;">'+
									  '<strong>'+data.rlist[i].memName+'</strong>'+
									  '</div>'+
								      '<div class="photo_review_thumbnail__created_at" style="position: relative; left: 5%;">'+data.rlist[i].rvDate+'</div>'+
									  '<hr>'+
									  '</div>'+
									  '</div>'+
									  '</div>'+
								      '<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe " data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">'+
									  '<div class="reviews_index_gallery_review__review_product_thumbnail">'+
									  '<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="'+src+'"style="padding-right: 3%; opacity: 1; float: left;">'+
									  '</div>'+
									  '<div class="reviews_index_gallery_review__review_product_info">'+
									  '<div class="reviews_index_gallery_review__product_info_title">'+
									  '<a style="font-size:12px;" id="'+data.rlist[i].prdtCode+'" onclick="prdtGo(this.id);">'+data.rlist[i].prdtName+'</a></div>'+
									  '<div class="reviews_index_gallery_review__product_info_feedbacks">'+
									  '<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰<strong style="color: black;">'+data.rc[j].count+'</strong></span><br>'+
									  '<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점 '+
									  '<strong style="color: black;display:inline-block;"id="starArea'+i+'o">'+data.rlist[i].rvPoint+'</strong>&nbsp;</span>'+
							          '</div></div></div></li>')

					 var star1 = '<i class="fa fa-fw fa-star"></i>'
					   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 if(data.rlist[i].rvPoint==1){
					   	 $('#starArea'+i+'o').after(star1);
					   	 }else if(data.rlist[i].rvPoint==2){
					   		 $('#starArea'+i+'o').after(star2);
					   	 }else if(data.rlist[i].rvPoint==3){
					   		 $('#starArea'+i+'o').after(star3);
					   	 }else if(data.rlist[i].rvPoint==4){
					   		 $('#starArea'+i+'o').after(star4);
					   	 }else if(data.rlist[i].rvPoint==5){
					   		 $('#starArea'+i+'o').after(star5);
					 }
				 }
					}
					}
				 },error:function() {
						alert("에러임에러임");
				 }
		})

	})


	</script>


	<script>
	$('#newSort').click(function() {
		var date="date";


		$.ajax({
			url:"LikeSort.do",
			data:{Sort : date},
			dataType:"json",
			success:function(data) {
				 $('#review_list').children('li').remove();
				 $('#review_list').children('div').remove();
				 for(var i=0;i<data.rlist.length;i++) {
					 var src = data.rlist[i].prdtPath+data.rlist[i].prdtImg;
					 for(var j=0;j<data.rc.length;j++){
							if(data.rlist[i].prdtCode == data.rc[j].prdt_code){
					 $('#review_list').append('<li class="reviews_index_gallery_review review1" style="width: 15.5%; height: 367px; font-size: 11px; border: 1px solid lightgray; border-radius: 2%; margin-right: -1.2%; margin-left:3%">'+
									  '<input type="hidden" class="rv_no"  value="'+data.rlist[i].rvNo+'">'+
									  '<div class="photo_review_thumbnail js-link-fullscreen-popup"data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">'+
									  '<div class="photo_review_thumbnail__thumbnail_container">'+
									  '<ul>'+
									  '<li class="photo_review_thumbnail__review_image_thumbnail">'+
									  '<a onclick="review10(this)"><img class="js-review-image"alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="'+data.rlist[i].rvImage+'"style="width: 100%; height: 224px; opacity: 1; border-bottom: 2px solid lightgray;"></a>'+
									  '</li>'+
									  '</ul>'+
									  '<div class="photo_review_thumbnail__review_info">'+
									  '<div class="photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">'+
									  '<div class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
									  '</div></div></div>'+
									  '<div style="border-radius: 2%; width: 90%; margin-left: 5%;"class="photo_review_thumbnail__review_author_info">'+
									  '<div style="margin-top: 2%; border-radius: 2%;" class="photo_review_thumbnail__review_title js-translate-review-message">'+
									  ''+data.rlist[i].rvInfo+'</div>'+
							          '<br>'+
									  '<div style="margin-top: -2%; color: gray;"class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
									  '<div class="photo_review_thumbnail__author_name"style="float: left;">'+
									  '<strong>'+data.rlist[i].memName+'</strong>'+
									  '</div>'+
								      '<div class="photo_review_thumbnail__created_at" style="position: relative; left: 5%;">'+data.rlist[i].rvDate+'</div>'+
									  '<hr>'+
									  '</div>'+
									  '</div>'+
									  '</div>'+
								      '<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe " data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">'+
									  '<div class="reviews_index_gallery_review__review_product_thumbnail">'+
									  '<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="'+src+'"style="padding-right: 3%; opacity: 1; float: left;">'+
									  '</div>'+
									  '<div class="reviews_index_gallery_review__review_product_info">'+
									  '<div class="reviews_index_gallery_review__product_info_title">'+
									  '<a style="font-size:12px;" id="'+data.rlist[i].prdtCode+'" onclick="prdtGo(this.id);">'+data.rlist[i].prdtName+'</a></div>'+
									  '<div class="reviews_index_gallery_review__product_info_feedbacks">'+
									  '<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰<strong style="color: black;">'+data.rc[j].count+'</strong></span><br>'+
									  '<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점 '+
									  '<strong style="color: black;display:inline-block;"id="starArea'+i+'o">'+data.rlist[i].rvPoint+'</strong>&nbsp;</span>'+
							          '</div></div></div></li>')

					 var star1 = '<i class="fa fa-fw fa-star"></i>'
					   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
					   	 if(data.rlist[i].rvPoint==1){
					   	 $('#starArea'+i+'o').after(star1);
					   	 }else if(data.rlist[i].rvPoint==2){
					   		 $('#starArea'+i+'o').after(star2);
					   	 }else if(data.rlist[i].rvPoint==3){
					   		 $('#starArea'+i+'o').after(star3);
					   	 }else if(data.rlist[i].rvPoint==4){
					   		 $('#starArea'+i+'o').after(star4);
					   	 }else if(data.rlist[i].rvPoint==5){
					   		 $('#starArea'+i+'o').after(star5);
					 }
							}
					 }
				 }
					},error:function() {
						alert("에러임에러임");
					}


		})

	})


	</script>

	<script>
	$('#heartClick').click(function() {
		 var rv_no = $('#rv_no2').val();
		 var likeCheck = $('#likeCheck').val();

		 console.log("rv___no: " + rv_no);
		 var count = 0;

		  $.ajax({
			 url:"reviewLike.do",
			 dataType:"json",
			 data : {rv_no : rv_no, likeCheck : likeCheck},
			 success : function(r) {
				 console.log(r)
				 console.log(r.r.rvLike)
				 $('#likeCheck').val(r.lhl.likeCheck);
				 $('#likeCount').text(r.r.rvLike);
				 if(r.lhl.likeCheck == "N"){
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-noncheck.png") ;
				 }else{
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-check.png");
				 }
			 }
		 })
	})



	</script>

	<!--============================================리뷰모달===================================================-->
	<script>

	<!--리뷰 모달 디테일 스크립트-->
	function review10(en){
		 if("${loginMember.memId}"==""){
			 alert("로그인 후 이용해주세요!");
			 location.href="loginView.do";
		 }else{

		 $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();
	     $('.mySlides').remove();

		 var rv_no = $(en).parents('li').find('.rv_no').val();
		 $("#rv_no2").val(rv_no);

		var rvc_no = $('.rvc_no').val();
		 var like_img="";
		 var count = 0;
		 console.log(rv_no);
		 $('.prdetail').remove();

		 $.ajax({
			 url:"reviewDetail.do",
			 dataType:"json",
			 data : {rv_no : rv_no},
			 success : function(r){
				 console.log(r)
				 $('#prDetail').append('<a class="prdetail" style="font-size:12px;" id="'+r.r.prdtCode+'" onclick="prdtGo(this.id)">'+r.r.prdtName+'</a>');
				 $('#memName').text(r.r.memName);
				 $('#rColor').text(r.r.rvColor);
				 $('#rSize').text(r.r.rvSize);
				 $('#rInfo').text(r.r.rvInfo);
				 $('#rDate2').text(r.r.rvDate2);
				 $('#pImage').attr("src",r.r.prdtPath+r.r.prdtImg);
				 $('#likeCheck').val(r.lhl.likeCheck);
				 $('#likeCount').text(r.r.rvLike);
				/* if(r.ph.length == 1){
					 $('#contentimgs1').attr("src",r.ph[0].rpPhoto);
				 }else{
					 $('#contentimgs1').attr("src",r.ph[0].rpPhoto);
					 $('#contentimgs2').attr("src",r.ph[1].rpPhoto);
				 } */
				if(r.ph.length == 1){
					$('#movePage1').css("display","none");
					$('#movePage2').css("display","none");
				}else{
					$('#movePage1').css("display","block");
					$('#movePage2').css("display","block");
				}

				$('#starstarArea').children('#starstar1').remove();
				for(var i=1; i<r.r.rvPoint;i++){
					$('#starstar').after('<i class="fa fa-fw fa-star" id="starstar1"></i>')
				}

			  for(var i =0; i<r.ph.length;i++){
				  if(i == 0){
						$('#nextPh').after(' <div id="img1" class="mySlides" style="display: block;">'+
	                            '<div class="numbertext" ><font style="font-size:14px;">1/ '+r.ph.length+'</font></div>'+
	                            '<img class="contentimgs" id="contentimgs1" src="'+r.ph[0].rpPhoto+'" alt="sample1" style="margin-top:-5%;width:800px;">'+
	                            '</div>')
				  }else{
						$('#img1').after(	'<div class="mySlides" style="display: none;">'+
			                      '<div class="numbertext"><font style="font-size:14px;">2 / '+r.ph.length+'</font></div>'+
			                      '<img class="contentimgs" id="contentimgs2" src="'+r.ph[1].rpPhoto+'" alt="sample2" style="margin-top:-5%;width:800px;" >'+
			                  '</div>')
				  }
			 }


				 if(r.lhl.likeCheck == "N"){
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-noncheck.png") ;
				 }else if(r.lhl.likeCheck == "Y"){
					 $('#nonHeart').attr("src","/ot/resources/images/icons/like-check.png");
				 }
				/*  $('#pImage').text(r.r.prdtImage); */
				 console.log(r.r.prdtName);
			 },error : function(){
					alert('리뷰에러')
			}
		 });

		  $.ajax({

				url:"rList.do",
				dataType:"json",
				data : {rv_no:rv_no},
				success:function(data) {
				 console.log(data.rplist[0]);
					 for(var i=0;i<data.rplist.length;i++) {

						 if(data.rplist[i].memNo =="${loginMember.memNo}"){
							 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
							 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
			                          	'<small>'+data.rplist[i].rvComment+'</small>'+
			                        	'<button style="" onclick="DeleteReply(this);">&nbsp;&times;</button><br>'+
			                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)"></button>'+
			                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
			                          	 )
							 }else{

			                  $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
							 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
			                          	'<small>'+data.rplist[i].rvComment+'</small>'+
			                          	'<button style=""></button><br>'+
			                          	'<button style="float:right;font-size:10px;color:#e65540;"onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
			                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
			                          	 )
							 }
					 }
				},error:function() {
					alert("에러임에러임");
				}

			 })

        var ulr = $(this).attr("src");
        $("#modalimg").attr("src", ulr);
        $('#modal').show();

		 }
    }


      function modalclose(){
          $('#modal').css("display","none");
      }

      var slideIndex = 1;


      showSlides(slideIndex);

      function plusSlides(n) {
          showSlides(slideIndex += n);
      }

      function currentSlide(n) {
          showSlides(slideIndex = n);
      }

      function showSlides(n) {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          if (n > slides.length) {slideIndex = 1}
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";
          dots[slideIndex-1].className += " active";
      }
	</script>

	<script>
	function DeleteReply(dr) {
		var rvcNo=$(dr).parents('.replyDiv').find('.rvc_no').val();
		 var rv_no = $('#rv_no2').val();
		 $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();

		$.ajax({
			url:"DeleteReply.do",
			dataType:"json",
			data : {rvcNo : rvcNo, rv_no : rv_no},
			success:function(data) {
				 console.log(data.rplist[0]);
				 for(var i=0;i<data.rplist.length;i++) {

					 if(data.rplist[i].memNo =="${loginMember.memNo}"){
						 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
						 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
		                          	'<small>'+data.rplist[i].rvComment+'</small>'+
		                        	'<button style="" onclick="DeleteReply(this);">&nbsp;&times;</button><br>'+
		                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)"></button>'+
		                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
		                          	 )
						 }else{

		                  $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
						 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
		                          	'<small>'+data.rplist[i].rvComment+'</small>'+
		                          	'<button style=""></button><br>'+
		                          	'<button style="float:right;font-size:10px;color:#e65540;"onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
		                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
		                          	 )
						 }
				 }
				},error:function() {
					alert("에러임에러임");
				}

		})


	}

	</script>

	<script>
	function Warning(wa) {

		if(confirm('댓글을 신고 하겠습니까?') ==true){
		var rvcNo=$(wa).parents('.replyDiv').find('.rvc_no').val();

		 var rv_no = $('#rv_no2').val();
		 $('#comentarea').children('.replyDiv').remove();
		 $('#comentarea').children('br').remove();

		 $.ajax({
				url:"WarningReply.do",
				dataType:"json",
				data : {rvcNo : rvcNo, rv_no : rv_no},
				success:function(data) {
					 console.log(data.rplist[0]);
					 for(var i=0;i<data.rplist.length;i++) {

						 if(data.rplist[i].memNo =="${loginMember.memNo}"){
							 $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
							 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
			                          	'<small>'+data.rplist[i].rvComment+'</small>'+
			                        	'<button style="" onclick="DeleteReply(this);">&nbsp;&times;</button><br>'+
			                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)"></button>'+
			                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
			                          	 )
							 }else{

			                  $('#comentarea').append('<div class="replyDiv" style="color:gray; border:1px solid lightgray;font-size:16px;">'+
							 			'<input type="hidden" class="rvc_no" value='+data.rplist[i].rvcNo+'>'+
			                          	'<small>'+data.rplist[i].rvComment+'</small>'+
			                          	'<button style=""></button><br>'+
			                          	'<button style="float:right;font-size:10px;color:#e65540;" onclick="Warning(this)">&nbsp;&nbsp;신고하기</button>'+
			                          	 '<div style="color:lightgray;font-size:11px;float:right;"><font>'+data.rplist[i].memName+'</font>+&nbsp;&nbsp;'+data.rplist[i].rvDate+'</div></div><br>'
			                          	 )
							 }
					 }
					},error:function() {
						alert("에러임에러임");
					}

			})
		}

	}





	function prdtGo(arguments){
		prdtNo=arguments;
		location.href="http://moon1:8888/ot/product_detail.do?product_detail="+prdtNo
	}


	</script>
	<!-- 키 정렬  스크립트 -->
	<script>
	  $(".checkbox-review-option-search").click(function() {
			var optionHeightArr=document.getElementsByName('option_3');
			var optionHeight = 0;

			for(var i=0; i<optionHeightArr.length;i++) {
				if(optionHeightArr[i].checked==true){
					optionHeight = optionHeightArr[i].value;
				}
			}
			console.log(optionHeight);



			$.ajax({
				url : "checkSort.do",
				data : { optionHeight : optionHeight},
				dataType:"json",
				success : function(data) {
					 $('#review_list').children('li').remove();
					 if(data.rlist.length == 0) {
						 $('#review_list').children('div').remove();
						 $('#review_list').append('<div align="center"><strong style="color: #888888;position: relative;top: -52px;font-size: 15px;">아직 작성한 리뷰가 없습니다.</strong></div>')
					 } else {
						 $('#review_list').children('div').remove();
					 for(var i=0;i<data.rlist.length;i++) {
						 var src = data.rlist[i].prdtPath+data.rlist[i].prdtImg;
						 for(var j=0;j<data.rc.length;j++){
								if(data.rlist[i].prdtCode == data.rc[j].prdt_code){
						 $('#review_list').append('<li class="reviews_index_gallery_review review1" style="width: 15.5%; height: 367px; font-size: 11px; border: 1px solid lightgray; border-radius: 2%; margin-right: -1.2%;margin-left:3%">'+
										  '<input type="hidden" class="rv_no"  value="'+data.rlist[i].rvNo+'">'+
										  '<div class="photo_review_thumbnail js-link-fullscreen-popup"data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">'+
										  '<div class="photo_review_thumbnail__thumbnail_container">'+
										  '<ul>'+
										  '<li class="photo_review_thumbnail__review_image_thumbnail">'+
										  '<a onclick="review10(this)"><img class="js-review-image"alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="'+data.rlist[i].rvImage+'"style="width: 100%;height: 224px; opacity: 1; border-bottom: 2px solid lightgray;"></a>'+
										  '</li>'+
										  '</ul>'+
										  '<div class="photo_review_thumbnail__review_info">'+
										  '<div class="photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">'+
										  '<div class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
										  '</div></div></div>'+
										  '<div style="border-radius: 2%; width: 90%; margin-left: 5%;"class="photo_review_thumbnail__review_author_info">'+
										  '<div style="margin-top: 2%; border-radius: 2%;" class="photo_review_thumbnail__review_title js-translate-review-message">'+
										  ''+data.rlist[i].rvInfo+'</div>'+
								          '<br>'+
										  '<div style="margin-top: -2%; color: gray;"class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
										  '<div class="photo_review_thumbnail__author_name"style="float: left;">'+
										  '<strong>'+data.rlist[i].memName+'</strong>'+
										  '</div>'+
									      '<div class="photo_review_thumbnail__created_at" style="position: relative; left: 5%;">'+data.rlist[i].rvDate+'</div>'+
										  '<hr>'+
										  '</div>'+
										  '</div>'+
										  '</div>'+
									      '<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe " data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">'+
										  '<div class="reviews_index_gallery_review__review_product_thumbnail">'+
										  '<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="'+src+'"style="padding-right: 3%; opacity: 1; float: left;">'+
										  '</div>'+
										  '<div class="reviews_index_gallery_review__review_product_info">'+
										  '<div class="reviews_index_gallery_review__product_info_title">'+
										  '<a style="font-size:12px;" id="'+data.rlist[i].prdtCode+'" onclick="prdtGo(this.id);">'+data.rlist[i].prdtName+'</a></div>'+
										  '<div class="reviews_index_gallery_review__product_info_feedbacks">'+
										  '<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰<strong style="color: black;">'+data.rc[j].count+'</strong></span><br>'+
										  '<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점 '+
										  '<strong style="color: black;display:inline-block;"id="starArea'+i+'o">'+data.rlist[i].rvPoint+'</strong>&nbsp;</span>'+
								          '</div></div></div></li>')

						 var star1 = '<i class="fa fa-fw fa-star"></i>'
						   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 if(data.rlist[i].rvPoint==1){
						   	 $('#starArea'+i+'o').after(star1);
						   	 }else if(data.rlist[i].rvPoint==2){
						   		 $('#starArea'+i+'o').after(star2);
						   	 }else if(data.rlist[i].rvPoint==3){
						   		 $('#starArea'+i+'o').after(star3);
						   	 }else if(data.rlist[i].rvPoint==4){
						   		 $('#starArea'+i+'o').after(star4);
						   	 }else if(data.rlist[i].rvPoint==5){
						   		 $('#starArea'+i+'o').after(star5);
						 }
								}
						 }
					 }
					 }
						},error:function() {
							alert("에러임에러임");
					}
		});






	});
	  </script>

	<script>
	  <!--몸무게 정렬 스크립트-->
	  $(".checkbox-review-option-search2").click(function() {

			var optionWeightArr = document.getElementsByName('option_4');
			var optionWeight = 0;



			for(var i=0; i<optionWeightArr.length;i++) {
				if(optionWeightArr[i].checked==true){
					optionWeight = optionWeightArr[i].value;
				}
			}

			console.log(optionWeight);

			$.ajax({
				url : "WeightSort.do",
				data : { optionWeight : optionWeight},
				dataType:"json",
				success : function(data) {
					 $('#review_list').children('li').remove();
					 if(data.rlist.length == 0) {
						 $('#review_list').children('div').remove();
						 $('#review_list').append('<div align="center"><strong style="color: #888888;position: relative;top: -52px;font-size: 15px;">아직 작성한 리뷰가 없습니다.</strong></div>')
					 } else {
						 $('#review_list').children('div').remove();
					 for(var i=0;i<data.rlist.length;i++) {
						 var src = data.rlist[i].prdtPath+data.rlist[i].prdtImg;
						 for(var j=0;j<data.rc.length;j++){
								if(data.rlist[i].prdtCode == data.rc[j].prdt_code){
						 $('#review_list').append('<li class="reviews_index_gallery_review review1" style="width: 15.5%; height: 367px; font-size: 11px; border: 1px solid lightgray; border-radius: 2%; margin-right: -1.2%;margin-left:3%">'+
										  '<input type="hidden" class="rv_no"  value="'+data.rlist[i].rvNo+'">'+
										  '<div class="photo_review_thumbnail js-link-fullscreen-popup"data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">'+
										  '<div class="photo_review_thumbnail__thumbnail_container">'+
										  '<ul>'+
										  '<li class="photo_review_thumbnail__review_image_thumbnail">'+
										  '<a onclick="review10(this)"><img class="js-review-image"alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="'+data.rlist[i].rvImage+'"style="width: 100%;height: 224px; opacity: 1; border-bottom: 2px solid lightgray;"></a>'+
										  '</li>'+
										  '</ul>'+
										  '<div class="photo_review_thumbnail__review_info">'+
										  '<div class="photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">'+
										  '<div class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
										  '</div></div></div>'+
										  '<div style="border-radius: 2%; width: 90%; margin-left: 5%;"class="photo_review_thumbnail__review_author_info">'+
										  '<div style="margin-top: 2%; border-radius: 2%;" class="photo_review_thumbnail__review_title js-translate-review-message">'+
										  ''+data.rlist[i].rvInfo+'</div>'+
								          '<br>'+
										  '<div style="margin-top: -2%; color: gray;"class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
										  '<div class="photo_review_thumbnail__author_name"style="float: left;">'+
										  '<strong>'+data.rlist[i].memName+'</strong>'+
										  '</div>'+
									      '<div class="photo_review_thumbnail__created_at" style="position: relative; left: 5%;">'+data.rlist[i].rvDate+'</div>'+
										  '<hr>'+
										  '</div>'+
										  '</div>'+
										  '</div>'+
									      '<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe " data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">'+
										  '<div class="reviews_index_gallery_review__review_product_thumbnail">'+
										  '<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="'+src+'"style="padding-right: 3%; opacity: 1; float: left;">'+
										  '</div>'+
										  '<div class="reviews_index_gallery_review__review_product_info">'+
										  '<div class="reviews_index_gallery_review__product_info_title">'+
										  '<a style="font-size:12px;" id="'+data.rlist[i].prdtCode+'" onclick="prdtGo(this.id);">'+data.rlist[i].prdtName+'</a></div>'+
										  '<div class="reviews_index_gallery_review__product_info_feedbacks">'+
										  '<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰<strong style="color: black;">'+data.rc[j].count+'</strong></span><br>'+
										  '<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점 '+
										  '<strong style="color: black;display:inline-block;"id="starArea'+i+'o">'+data.rlist[i].rvPoint+'</strong>&nbsp;</span>'+
								          '</div></div></div></li>')

						 var star1 = '<i class="fa fa-fw fa-star"></i>'
						   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 if(data.rlist[i].rvPoint==1){
						   	 $('#starArea'+i+'o').after(star1);
						   	 }else if(data.rlist[i].rvPoint==2){
						   		 $('#starArea'+i+'o').after(star2);
						   	 }else if(data.rlist[i].rvPoint==3){
						   		 $('#starArea'+i+'o').after(star3);
						   	 }else if(data.rlist[i].rvPoint==4){
						   		 $('#starArea'+i+'o').after(star4);
						   	 }else if(data.rlist[i].rvPoint==5){
						   		 $('#starArea'+i+'o').after(star5);
						 }
								}
					    	 }
				    	 }
					 }
						},error:function() {
							alert("에러임에러임");
					}
		});


	  });

	  </script>


	<script>
	  <!-- 사이즈 정렬 스크립트 -->

	  $(".checkbox-review-option-search3").click(function() {

			var optionSizeArr = document.getElementsByName('option_5');
			var optionSize = 0;


			for(var i=0; i<optionSizeArr.length;i++) {
				if(optionSizeArr[i].checked==true){
					optionSize = optionSizeArr[i].value;
				}
			}

			console.log(optionSize);


			$.ajax({
				url : "SizeSort.do",
				data : { optionSize : optionSize},
				dataType:"json",
				success : function(data) {
					 $('#review_list').children('li').remove();
					 if(data.rlist.length == 0) {
						 $('#review_list').children('div').remove();
						 $('#review_list').append('<div align="center"><strong style="color: #888888;position: relative;top: -52px;font-size: 15px;">아직 작성한 리뷰가 없습니다.</strong></div>')
					 } else {
						 $('#review_list').children('div').remove();
					 for(var i=0;i<data.rlist.length;i++) {
						 var src = data.rlist[i].prdtPath+data.rlist[i].prdtImg;
						 for(var j=0;j<data.rc.length;j++){
								if(data.rlist[i].prdtCode == data.rc[j].prdt_code){
						 $('#review_list').append('<li class="reviews_index_gallery_review review1" style="width: 15.5%; height: 367px; font-size: 11px; border: 1px solid lightgray; border-radius: 2%; margin-right: -1.2%;margin-left:3%">'+
										  '<input type="hidden" class="rv_no"  value="'+data.rlist[i].rvNo+'">'+
										  '<div class="photo_review_thumbnail js-link-fullscreen-popup"data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">'+
										  '<div class="photo_review_thumbnail__thumbnail_container">'+
										  '<ul>'+
										  '<li class="photo_review_thumbnail__review_image_thumbnail">'+
										  '<a onclick="review10(this)"><img class="js-review-image"alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="'+data.rlist[i].rvImage+'"style="width: 100%;height: 224px; opacity: 1; border-bottom: 2px solid lightgray;"></a>'+
										  '</li>'+
										  '</ul>'+
										  '<div class="photo_review_thumbnail__review_info">'+
										  '<div class="photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">'+
										  '<div class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
										  '</div></div></div>'+
										  '<div style="border-radius: 2%; width: 90%; margin-left: 5%;"class="photo_review_thumbnail__review_author_info">'+
										  '<div style="margin-top: 2%; border-radius: 2%;" class="photo_review_thumbnail__review_title js-translate-review-message">'+
										  ''+data.rlist[i].rvInfo+'</div>'+
								          '<br>'+
										  '<div style="margin-top: -2%; color: gray;"class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
										  '<div class="photo_review_thumbnail__author_name"style="float: left;">'+
										  '<strong>'+data.rlist[i].memName+'</strong>'+
										  '</div>'+
									      '<div class="photo_review_thumbnail__created_at" style="position: relative; left: 5%;">'+data.rlist[i].rvDate+'</div>'+
										  '<hr>'+
										  '</div>'+
										  '</div>'+
										  '</div>'+
									      '<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe " data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">'+
										  '<div class="reviews_index_gallery_review__review_product_thumbnail">'+
										  '<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="'+src+'"style="padding-right: 3%; opacity: 1; float: left;">'+
										  '</div>'+
										  '<div class="reviews_index_gallery_review__review_product_info">'+
										  '<div class="reviews_index_gallery_review__product_info_title">'+
										  '<a style="font-size:12px;" id="'+data.rlist[i].prdtCode+'" onclick="prdtGo(this.id);">'+data.rlist[i].prdtName+'</a></div>'+
										  '<div class="reviews_index_gallery_review__product_info_feedbacks">'+
										  '<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰<strong style="color: black;">'+data.rc[j].count+'</strong></span><br>'+
										  '<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점 '+
										  '<strong style="color: black;display:inline-block;"id="starArea'+i+'o">'+data.rlist[i].rvPoint+'</strong>&nbsp;</span>'+
								          '</div></div></div></li>')

						 var star1 = '<i class="fa fa-fw fa-star"></i>'
						   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 if(data.rlist[i].rvPoint==1){
						   	 $('#starArea'+i+'o').after(star1);
						   	 }else if(data.rlist[i].rvPoint==2){
						   		 $('#starArea'+i+'o').after(star2);
						   	 }else if(data.rlist[i].rvPoint==3){
						   		 $('#starArea'+i+'o').after(star3);
						   	 }else if(data.rlist[i].rvPoint==4){
						   		 $('#starArea'+i+'o').after(star4);
						   	 }else if(data.rlist[i].rvPoint==5){
						   		 $('#starArea'+i+'o').after(star5);
						 }
								}
						 }
					 }
					}
						},error:function() {
							alert("에러임에러임");
					}
		});
	  });

	  </script>

	<script>
	  <!-- 카테고리 선택 스크립트 -->

	  $('#category_ok').click(function() {





		  var upNo = $('#category').val();
			console.log(upNo);
			$.ajax({
				url : "CategorySelect.do",
				data : { upNo : upNo},
				dataType:"json",
				success : function(data) {
					 $('#review_list').children('li').remove();
					 if(data.rlist.length == 0) {
						 $('#review_list').children('div').remove();
						 $('#review_list').append('<div align="center"><strong style="color: #888888;position: relative;top: -52px;font-size: 15px;">아직 작성한 리뷰가 없습니다.</strong></div>')
					 } else {
						 $('#review_list').children('div').remove();
					 for(var i=0;i<data.rlist.length;i++) {
						 var src = data.rlist[i].prdtPath+data.rlist[i].prdtImg;
						 for(var j=0;j<data.rc.length;j++){
								if(data.rlist[i].prdtCode == data.rc[j].prdt_code){
						 $('#review_list').append('<li class="reviews_index_gallery_review review1" style="width: 15.5%; height: 367px; font-size: 11px; border: 1px solid lightgray; border-radius: 2%; margin-right: -1.2%;margin-left:3%">'+
										  '<input type="hidden" class="rv_no"  value="'+data.rlist[i].rvNo+'">'+
										  '<div class="photo_review_thumbnail js-link-fullscreen-popup"data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">'+
										  '<div class="photo_review_thumbnail__thumbnail_container">'+
										  '<ul>'+
										  '<li class="photo_review_thumbnail__review_image_thumbnail">'+
										  '<a onclick="review10(this)"><img class="js-review-image"alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했" src="'+data.rlist[i].rvImage+'"style="width: 100%; height: 224px; opacity: 1; border-bottom: 2px solid lightgray;"></a>'+
										  '</li>'+
										  '</ul>'+
										  '<div class="photo_review_thumbnail__review_info">'+
										  '<div class="photo_review_thumbnail__media_count_indicator photo_review_thumbnail__media_count_indicator--total_count_1">'+
										  '<div class="photo_review_thumbnail__media_count_indicator_dot"></div>'+
										  '</div></div></div>'+
										  '<div style="border-radius: 2%; width: 90%; margin-left: 5%;"class="photo_review_thumbnail__review_author_info">'+
										  '<div style="margin-top: 2%; border-radius: 2%;" class="photo_review_thumbnail__review_title js-translate-review-message">'+
										  ''+data.rlist[i].rvInfo+'</div>'+
								          '<br>'+
										  '<div style="margin-top: -2%; color: gray;"class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">'+
										  '<div class="photo_review_thumbnail__author_name"style="float: left;">'+
										  '<strong>'+data.rlist[i].memName+'</strong>'+
										  '</div>'+
									      '<div class="photo_review_thumbnail__created_at" style="position: relative; left: 5%;">'+data.rlist[i].rvDate+'</div>'+
										  '<hr>'+
										  '</div>'+
										  '</div>'+
										  '</div>'+
									      '<div style="position: relative; top: -6%;" class="reviews_index_gallery_review__review_product js-link-iframe " data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">'+
										  '<div class="reviews_index_gallery_review__review_product_thumbnail">'+
										  '<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="55" id="pImage" height="55" src="'+src+'"style="padding-right: 3%; opacity: 1; float: left;">'+
										  '</div>'+
										  '<div class="reviews_index_gallery_review__review_product_info">'+
										  '<div class="reviews_index_gallery_review__product_info_title">'+
										  '<a style="font-size:12px;" id="'+data.rlist[i].prdtCode+'" onclick="prdtGo(this.id);">'+data.rlist[i].prdtName+'</a></div>'+
										  '<div class="reviews_index_gallery_review__product_info_feedbacks">'+
										  '<span class="reviews_index_gallery_review__reviews_count" style="color: #c3b798;">리뷰<strong style="color: black;">'+data.rc[j].count+'</strong></span><br>'+
										  '<span class="reviews_index_gallery_review__display_score" style="color: #c3b798;">평점 '+
										  '<strong style="color: black;display:inline-block;"id="starArea'+i+'o">'+data.rlist[i].rvPoint+'</strong>&nbsp;</span>'+
								          '</div></div></div></li>')

						 var star1 = '<i class="fa fa-fw fa-star"></i>'
						   	 var star2 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star3 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star4 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 var star5 = '<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>'
						   	 if(data.rlist[i].rvPoint==1){
						   	 $('#starArea'+i+'o').after(star1);
						   	 }else if(data.rlist[i].rvPoint==2){
						   		 $('#starArea'+i+'o').after(star2);
						   	 }else if(data.rlist[i].rvPoint==3){
						   		 $('#starArea'+i+'o').after(star3);
						   	 }else if(data.rlist[i].rvPoint==4){
						   		 $('#starArea'+i+'o').after(star4);
						   	 }else if(data.rlist[i].rvPoint==5){
						   		 $('#starArea'+i+'o').after(star5);
						 }
								}
						 }
					 }
					}
						},error:function() {
							alert("에러임에러임");
					}
		});
	  })
	  </script>



</body>


</html>

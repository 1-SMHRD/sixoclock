<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>카테고리 선택-프로필1</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
function setParentText(){   
	  openWin.document.getElementById("cInput").value = document.getElementById("pInput").value;
}   
</script>

<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
}

/* Style the header */
.header {
	color: #000000;
	background-color: #f1f1f1;
	padding: 20px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}

/* Style the top navigation bar */
.topnav {
	overflow: hidden;
	background-color: #ffffff;
	width: 458px;
	height: 65px;
	margin: 29px 0 10px;
	margin-top: 29px;
	margin-right: 0px;
	margin-bottom: 10px;
	margin-left: 0px;
	padding: 20px 20px;
	padding-top: 20px;
	padding-right: 20px;
	padding-bottom: 20px;
	padding-left: 20px;
	word-break: break-all;
}

/* Style the topnav links */
.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.column {
	float: left;
	width: 33.33%;
	padding: 6px 19px 0px 11px;
	width: 160px;
	margin: 6px 19px 0px 11px;
	color: #000000;
	background: #fafafa;
	overflow: auto; width: 160px%; height: 350px; padding: 10px;
}
.column1 {
	float: left;
	width: 33.33%;
	padding: 6px 19px 0px 11px;
	width: 160px;
	margin: 6px 19px 0px 11px;
	color: #000000;
	background: #fafafa;
	overflow: auto; width: 160px%; height: 350px; padding: 10px;
	
}
.column1>ul>li {
display:none;
}




.column>ul>li {
	padding-left: 7px;
	color: #767676;
	font-size: 13px;
	line-height: 15px;
	padding: 18%;
	
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width:600px) {
	.column {
		width: 100%;
	}
}

/* 3단 */
nav {
	width: 150px;
}

ul {
	padding: 0;
}

li {
	list-style: none;
	line-height: 34px;
}

a {
	display: block; /* 범위 확장 */
	text-decoration: none;
	color: #616161;
	text-align: center;
}

.snd_menu {
	background: #efefef;
}

.trd_menu {
	background: #ddd;
}

.sub_menu {
	display: none;
} /* 서브메뉴들 숨김 */
.selec {
	background: #c45;
	color: #efefef;
} /* 임시 클래스(선택) */
.btnArea {
	align: center;
	margin-left: 30%;
}

.column-webkit-scrollbar {
	width: 10px;
	background-color: black;
}
#popupPage .sumPop h2, #popupPage .paymentPop h2, #popupPage .myservicePop h2, #popupPage .loginPop h2 {
    height: 25px;
    margin-bottom: 15px;
    padding: 29px 54px 30px;
    border-bottom: none;
    background-color: #79a3d6;
}
#popupPage h2 {
    position: relative;
    border-bottom: 2px solid #333;
    color: #fff;
    font-size: 25px;
    font-family: NanumSquareRound;
    line-height: 25px;
}
#popupPage .sumPop h2:after, #popupPage .paymentPop h2:after, #popupPage .myservicePop h2:after, #popupPage .loginPop h2:after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 1px;
    background: #79a3d6 url(../img/카테고리.png) repeat -5px 0;
}
#popupPage .sumPop h1, #popupPage .paymentPop h1, #popupPage .myservicePop h1, #popupPage .loginPop h1 {
    top: 26px;
    right: 50px;
    }
    #popupPage h1 {
    position: absolute;
    z-index: 1;
}
</style>
</head>
<body id="popupPage">
<div id="popupWrap" class="myservicePop threeDeps" style="width:600px";>
		<h1><img src="../img/티켓베이카테고리.gif" alt="티켓베이"></h1>
		<h2>카테고리 선택
		<style>
		::after
		</style>
		</h2>
	
	<div>
		<ul>
			<li>등록할 상품의 카테고리를 선택하세요.</li>
		</ul>
	</div>

	<div class="topnav">
		<strong> <img alt="../img/찐카테고리.gif" src="카테고리">
		</strong>
	</div>
	<script type="text/javascript">
 	let btn = document.getElementsByTagName('button')[0]
 console.log('btn',btn)

 btn.addEventListener('click',()=>{
  console.log('ck')

  let span = document.getElementsByTagName('span')[0]
  // 바꿔줄요소.style.속성이름 = '속성값'
  span.style.color ='tomato'
  span.style.fontSize = '25px'
  span.style.fontWeight='900'
  span.style.marginLeft='30px'
 })
 </script>


	<div class="row">
		<div class="column">
			<ul class="bulListSqGray" id="cInput">

				<li><a href="#" data-depth="1" data-index="0"
					data-category-seq="3" data-category-name="콘서트"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="/real/2016/20160307/76e7016a-f30a-41d0-9c6f-be75b3d8c8bf.jpg"
					data-below-commision="0.0" data-below-used="true">콘서트</a></li>
				<li><a href="#" data-depth="1" data-index="1"
					data-category-seq="5" data-category-name="스포츠"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="/real/2018/20180430/5fa0cda2-9a77-4764-b42b-ba1d76717606.jpg"
					data-below-commision="0.0" data-below-used="true"> 스포츠 </a></li>
				<li><a href="#" data-depth="1" data-index="2"
					data-category-seq="2" data-category-name="뮤지컬/연극"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="/real/2017/20170508/cbb1fcae-5589-4d3b-b80c-52e9d466ac69.jpg"
					data-below-commision="0.0" data-below-used="true"> 뮤지컬/연극 </a></li>
				<li><a href="#" data-depth="1" data-index="3"
					data-category-seq="4" data-category-name="영화/전시"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="/real/2017/20170417/6bf6ee2d-03c3-4740-9658-a71181dd9c49.jpg"
					data-below-commision="0.0" data-below-used="true"> 영화/전시 </a></li>


			</ul>

		</div>

		<div class="column1">
			<ul>
				<li><a href="#" data-depth="2" data-index="0"
					data-category-seq="2446" data-category-name="더팩트 뮤직 어워즈"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 더팩트 뮤직 어워즈 </a></li>

				<li><a href="#" data-depth="2" data-index="1"
					data-category-seq="177" data-category-name="아이유"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 아이유 </a></li>

				<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
				<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
				<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					<li><a href="#" data-depth="2" data-index="2"
					data-category-seq="2695" data-category-name="김호중"
					data-commision="10.0" data-admin-reg-cate-yn="Y"
					data-admin-reg-cate-img-path="NOIMAGE" data-below-commision="0.0"
					data-below-used="true"> 김호중 </a></li>
					


				
			</ul>
		</div>

		<div class="column">
			<h2>BTS</h2>
		</div>
	</div>
	<br>
	<div class="btnArea">
		<input type="image" src="../img/적용.gif" alt="적용"
			onclick="setParentText().close();"> <input type="image"
			alt="닫기" src="../img/닫기.gif" onclick="window.close();">
	</div>
</div>
</body>
</html>
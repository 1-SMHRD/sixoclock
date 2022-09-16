<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>카테고리 선택-프로필1</title>
<link rel="stylesheet" href="../css/sales.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
function setParentText(){   
	  openWin.document.getElementById("cInput").value = document.getElementById("pInput").value;
}   
</script>
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
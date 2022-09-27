<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>카테고리 선택</title>
<link rel="stylesheet" href="${cpath}/css/category.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
window.onload = function (){
        document.getElementById("clickme").onclick = function(){
            
        	parent =  window.parentWindow
            parent.location.href = "${cpath}/salesWrite_page.do"
            window.close();
            
            
            
            
        	/* var userid = document.getElementById("userid").value;
            var username = document.getElementById("username").value;
            window.opener.document.getElementById("userid").value = userid;
            window.opener.document.getElementById("username").value = username; */
     }
}

</script>
</head>
<body id="popupPage">
	<!-- popupWrap -->
	<div id="popupWrap" class="myservicePop threeDeps"
		style="width: 600px;">
		<form name="major" action="${cpath}/category.do">
			<input type="hidden" name="deps1CateSeq"> <input
				type="hidden" name="categorySeq"> <input type="hidden"
				name="categoryFullName"> <input type="hidden"
				name="commision"> <input type="hidden" name="adminRegCateYn">
			<input type="hidden" name="adminRegCateImgPath"> <input
				type="hidden" name="BELOW_COST_UESD"> <input type="hidden"
				name="BC_COMMISION"> <input type="hidden" name="BC_FANPOWER">

			<h1>
				<img src="img/category/티켓베이카테고리.gif" alt="티켓베이">
			</h1>
			<h2>카테고리 선택</h2>
			<!-- popupCont -->
			<div class="popupCont">
				<p class="bulSqGray">등록할 상품을 작성하세요.</p>
				<!-- myFavList -->
				<div class="boxStyle depsList">
					<strong><img src="img/category/lbl_resultdl05.gif"
						alt="카테고리"></strong>
				</div>
				<!-- //favList -->
				<!-- areaPreferList -->
				<script type="text/javascript">
				
				</script>
				<div class="areaDeps deps1 boxStyle2 js-scroll">
					<ul class="bulListSqGray"
						style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
					  <li>
					    <a>콘서트</a>
					  </li>
					  <li>
					    <a>스포츠</a>
					  </li>
					  <li>
					    <a>뮤지컬/연극</a>
					  </li>
					  <li>
					    <a>영화/전시</a>
					  </li>
					  <li>
					    <a>굿즈</a>
					  </li>
					</ul>
					<div class="iScrollVerticalScrollbar iScrollLoneScrollbar"
						style="overflow: hidden; visibility: hidden; height: 345px;">
						<div class="iScrollIndicator"
							style="transition-duration: 0ms; display: none; height: 351px; transform: translate(0px, 0px) translateZ(0px); transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1);"></div>
					</div>
				</div>
				<!-- //areaPreferList -->
				<!-- favList -->
				<div class="areaDeps deps2 boxStyle2 js-scroll selectCategory">
					<ul class="bulListSqGray"
						style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
					  <li style="display: none;">
					    <a>아이유</a>
					  </li>
					</ul>


					<div class="iScrollVerticalScrollbar iScrollLoneScrollbar"
						style="overflow: hidden; visibility: hidden; height: 345px;">
						<div class="iScrollIndicator"
							style="transition-duration: 0ms; display: none; height: 351px; transform: translate(0px, 0px) translateZ(0px); transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1);"></div>
					</div>
				</div>
				<div class="areaDeps deps3 dimDeps boxStyle2 js-scroll">

					<!-- 세번째 카테고리 -->
					<!-- <input
						style="width: 120px !important; height: 30px !important; text-align: center !important;"
						center !important; type="text" class="form-control" id="c3"
						name="c3" placeholder="Enter title"> -->
					<!-- formWrap(city01) -->
					<div class="formWrap"
						style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
						<!-- fav02 -->
						<div class="PreferListCnt">
							<ul class="bulListSqGray">
								<input type="text" class="form-control" name="c3"
									placeholder="장소&시간">

							</ul>
						</div>
					</div>
					<!-- //formWrap(city01) -->
					<div class="iScrollVerticalScrollbar iScrollLoneScrollbar"
						style="overflow: hidden; visibility: hidden; height: 345px;">
						<div class="iScrollIndicator"
							style="transition-duration: 0ms; display: none; height: 351px; transform: translate(0px, 0px) translateZ(0px); transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1);"></div>
					</div>
				</div>
			</div>
			<div class="btnArea">
				<input id="clickme" type="image" src="${cpath}/img/category/적용.gif" value="적용"> <a
					href="javascript:window.close();"> <img
					src="${cpath}/img/category/닫기.gif" alt="닫기"></a>
			</div>
		</form>
	</div>

</body>
</html>
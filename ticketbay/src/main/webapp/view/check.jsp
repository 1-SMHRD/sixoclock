<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.List" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${cpath}/css/check.css">
<link rel="stylesheet" href="${cpath}/css/style.css">
<link rel="stylesheet" href="${cpath}/css/sheet3.css">
<link rel="stylesheet" href="${cpath}/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="${cpath}/css/font-awesome.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>본인인증 | 티켓베이</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	


<header id="checkChoice">

		<b id="acheck"> 최초 구매, 판매 시 본인 확인을 위해서 1회에 한해 본인인증을 실행합니다 </b>

		<div id="container" class="check">
			<div id="checkbox1">
				<a href="RequestVerifyAuth.jsp"><b id="kakao">카카오 인증</b></a> <img  src="${cpath}/img/sheet/payment_icon_yellow_small.png">
			</div>
		</div>
	</header>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

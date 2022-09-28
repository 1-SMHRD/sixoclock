<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/check.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/contents.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/style_v2.css">
<link rel="stylesheet" href="resources/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Mart - HTML5 Resoponsive onepage e-commerce template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="kr/img">
<link rel="stylesheet" href="../css/style.css">

</head>
<body>
	<section class="header-top-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6"></div>
				<div class="col-md-6">
					<div class="header-top-menu">
						<ul class="nav nav-pills navbar-right">
							<li><a href="#"><i class="pe-7s-gift">이벤트/혜택존</i></a></li>
							<li><a href="#"><i class="pe-7s-ticket">MY티켓베이</i></a></li>
							<li><a href="#"><i class="pe-7s-unlock"></i>로그인</a></li>
							<li><a href="#"><i class="pe-7s-user"></i>회원가입</a></li>
							<li><a href="#"><i class="pe-7s-box1"></i>판매등록</a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<header class="header-section">
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false"></button>
					<a class="navbar-brand" href="#"><b>T</b>icketbay</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">콘서트</a></li>
						<li><a href="#">스포츠</a></li>
						<li><a href="#">뮤지컬/연극</a></li>
						<li><a href="#">영화/전시</a></li>
						<li><a href="#">굿즈</a></li>
						<li><a href="#">정가이하</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right cart-menu">
						<li><a href="#" class="search-btn"><i
								class="fa fa-search" aria-hidden="true"></i></a></li>
						<li><a href="#"><span> Cart &nbsp;</span> <span
								class="shoping-cart">0</span></a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</header>

	<section class="search-section">
		<div class="container">
			<div class="row subscribe-from">
				<div class="col-md-12">
					<form class="form-inline col-md-12 wow fadeInDown animated">
						<div class="form-group">
							<input type="email" class="form-control subscribe" id="email"
								placeholder="티켓을 검색해보세요!">
							<button class="suscribe-btn">
								<i class="pe-7s-search"></i>
							</button>
						</div>
					</form>
					<!-- end /. form -->
				</div>
			</div>
			<!-- end of/. row -->
		</div>
		<!-- end of /.container -->
	</section>
	<!-- end of /.news letter section -->



<header id="checkChoice">

		<b id="acheck"> 최초 구매, 판매 시 본인 확인을 위해서 1회에 한해 본인인증을 실행합니다 </b>

		<div id="container" class="check">
			<div id="checkbox1">
				<a href="RequestVerifyAuth.jsp"><b id="kakao">카카오 인증</b></a> <img  src="webapp/img/sheet/payment_icon_yellow_small.png">
			</div>
		</div>
	</header>



	<!-- footer -->
	<footer id="footer">
		<div class="social-media">
			<ul>
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-instagram"></i></a></li>
			</ul>
		</div>
		<!-- footerNav -->
		<div class="tb_foot">
			<ul class="footer_menu">
				<li><a href="/web/info/terms">이용약관</a></li>
				<li><a href="https://www.ticketbay.co.kr/web/info/privacy"
					class="txt_01">개인정보처리방침</a></li>
				<li><a href="/web/info/youthprotect_20180424">청소년보호정책</a></li>
				<li><a href="/web/info/email_20180424">이메일무단수집거부</a></li>
				<li><a
					href="javascript:onPopCertMar('fe0bde5c89c7af2163a5719f5aa57d86')"
					class="">NH에스크로이체 정보</a></li>
				<li><a href="/web/info/company">회사소개</a></li>
				<li><a href="/web/info/pr/pressReleases">PR</a></li>
			</ul>
			<div class="clear"></div>
			<!-- //footerNav -->
			<!-- address -->
			<style>
#footer address span {
	margin-right: 18px !important;
}
</style>
			<address>
				<p>
					<span> <font class="google_off">(주)6시떙</font> <font
						class="google_on" style="padding-right: 5px;"></font><font
						class="google_on mr_10"></font> 광주광역시 남구 송암로 60 광주CGI센터 3층
					</span>
				</p>
				<p>
					<span>고객감동센터 : +82-655-3506/span> <span class="txt_mail">E-MAIL
							: 9to6@gmail.com</span> <span>FAX : 02-2138-1110</span> <span
						class="txt_mail">제휴문의 : 9to6@gmail.com</span>
				</p>
				<p>
					<span>대표이사 : 장해라</span> <span>사업자등록번호 : 000-94-00000</span> <span>통신판매업신고
						: 제 2022-광주동구-0831호</span>
				</p>


				<p>
					<em style="color: #8c8c8c !important;">티켓베이는 통신판매 중개자이며, 통신판매의
						당사자가 아닙니다. 따라서 티켓베이는 상품 거래정보 및 거래에 대하여 책임을 지지 않습니다.</em>
				</p>
				<!-- <p class="copyright">COPYRIGHT © TICKETBAY. ALL RIGHTS RESERVED.</p> -->
				<p class="copyright">© TICKETBAY. ALL RIGHTS RESERVED.</p>
				<!-- 2016-10-06 수정 -->
			</address>
			<!-- //address -->
		</div>
	</footer>

	<!-- JQUERY -->
	<script src="js/vendor/jquery-1.11.2.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>

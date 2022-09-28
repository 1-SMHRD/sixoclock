<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WebStandard example</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" type="text/javascript"
	src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
</head>

<body>
	<header>
		<div id="container">
			<span id="title">결제정보를 입력해주세요</span>
			<form id="orderPay.view" name="" method="POST">
				<div id="goodname">
					<input type="text" name="goodname" value="${ovo.pd_code}">
				</div>
				<div id="name">
					<input type="text" name="buyername" value="" placeholder="이름">
				</div>
				<div id="phone">
					<input type="text" name="buyertel" value="" placeholder="전화번호">
				</div>
				<div id="mail">
					<input type="text" name="buyeremail" value="" placeholder="Email">
				</div>
				<div id="money">
					<input type="text" name="price" value="${ovo.p_buy_immed}">
				</div>
				<input type="hidden" name="mid" value="INIpayTest">
				<!-- 에스크로테스트 : iniescrow0, 빌링(정기과금)테스트 : INIBillTst -->
				<input type="hidden" name="gopaymethod" value="Card"> <input
					type="hidden" name="mKey"
					value="3a9503069192f207491d4b19bd743fc249a761ed94246c8c42fed06c3cd15a33">
				<input type="hidden" name="signature"
					value="d43a61f71f92fe71a5beaf8b8a1d6b7dc82f3e4ca99e0b59cdefad948da5344b">
				<input type="hidden" name="oid" value="INIpayTest_1663116215423">
				<input type="hidden" name="timestamp" value="1663116215423">
				<input type="hidden" name="version" value="1.0"> <input
					type="hidden" name="currency" value="WON"> <input
					type="hidden" name="acceptmethod" value="below1000">
				<!-- 에스크로옵션 : useescrow, 빌링(정기과금)옵션 : BILLAUTH(Card) -->
				<input type="hidden" name="returnUrl"
					value="http://localhost/stdpay/INIStdPayReturn_simple.asp">
				<input type="hidden" name="closeUrl"
					value="http://localhost/stdpay/close.asp">

			</form>
			<div>
				<button onclick="INIStdPay.pay('SendPayForm_id')"
					style="padding: 10px; margin-left: 2.5%">결제요청</button>
				
			</div>
	</header>
</body>
</html>
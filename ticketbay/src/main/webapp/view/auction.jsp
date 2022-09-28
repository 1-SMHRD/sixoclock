<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="kr.dao.MyBatisDAO"%> 
<%@page import="kr.dao.MemberVO"%>    
<%@page import="kr.dao.DeliveryVO"%>
<%@page import="java.util.List"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% MyBatisDAO dao = new MyBatisDAO(); %>

<c:set var="newLine" value="<%='\n' %>"/>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<h1>판매 완료 일자 : 2022년 9월 27일까지</h1>
	<h2 id="sample02"></h2>

	<div>
		<form method="post" action="${cpath}/chatroom.do?u_id=${mvo.u_ID}">
			<span id="seller" name="seller" value="qwer">판매자 : qwer</span><br>
			<button type="submit">대화하기</button>
		</form>
	</div>

	<c:if test="${empty mvo}">

		<div id="auction_area">
			<form>
				<p>${mvo.u_ID }</p>
				<span>시작입찰가</span><br>
				<span>현재 최고가 : </span> <span id="maxbid_area"></span><br>
				<span>최소입찰가 : </span>	<input id="minbid" name="minbid" type="number" readonly>
				<input id="btn_minbid" onclick="minbidmoney()" value="즉시입찰" type="button" disabled><br>
				<span>입찰가 입력</span> <input id="bidamount" name="bidamount" type="number" min='0' step='1'>
				<input id="btn_bidamount" onclick="amountbidmoney()" value="입찰" type="button" disabled><br>
				<span>즉시 구매가</span> <input id="imm" name="immbid" value="1234" readonly>
				<input id="btn_imm" onclick="imm_purchase()" value="즉시구매" type="button" disabled><br>
				<span>소지금 : </span><span id="user_money">${mvo.u_MONEY} 원</span><br>
			</form>
			<br />
			<!-- 콘솔 메시지의 역할을 하는 로그 텍스트 에리어.(수신 메시지도 표시한다.) -->
			<textarea id="messageTextArea" rows="10" cols="50"></textarea>
		</div>

	</c:if>
	<c:if test="${!empty mvo}">

		<div id="auction_area">
			<form>
				<p>${mvo.u_ID }</p>
				<span>시작입찰가</span><br>
				<span>현재 최고가 : </span> <span id="maxbid_area"></span><br>
				<span>최소입찰가 : </span>	<input id="minbid" name="minbid" type="number" readonly>
				<input id="btn_minbid" onclick="minbidmoney()" value="즉시입찰" type="button" ><br>
				<span>입찰가 입력</span> <input id="bidamount" name="bidamount" type="number" min='0' step='1'>
				<input id="btn_bidamount" onclick="amountbidmoney()" value="입찰" type="button" ><br>
				<span>즉시 구매가</span> <input id="imm" name="immbid" value="1234" readonly>
				<input id="btn_imm" onclick="imm_purchase()" value="즉시구매" type="button" ><br>
				<span>소지금 : </span><span id="user_money">${mvo.u_MONEY} 원</span><br>
			</form>
			<br />
			<!-- 콘솔 메시지의 역할을 하는 로그 텍스트 에리어.(수신 메시지도 표시한다.) -->
			<textarea id="messageTextArea" rows="10" cols="50"></textarea>
		</div>

	</c:if>




	<script>
	
		let temp_count = 0;
		let set_time = 0;
		let check_bid = 0;
		let bidmoney = 0;
		let user_money = parseInt("${mvo.u_MONEY}");
		console.log(user_money);
	
		const countDownTimer = function(id, date) {
			var _vDate = new Date(date); // 전달 받은 일자
			var _second = 1000;
			var _minute = _second * 60;
			var _hour = _minute * 60;
			var _day = _hour * 24;
			var timer;

			console.log("_vDate", _vDate)
			
			function showRemaining() {
				var now = new Date();
				var distDt = _vDate - now;
				
				// console.log("_vDate", _vDate)
				// console.log("now", now)
				
				if (temp_count == 1) {
					clearInterval(timer);
					timer = setInterval(showRemaining, 1000);
					_vDate = new Date(set_time);
					temp_count = 0;
					console.log("temp_count", temp_count);
				} else if (temp_count == -1) { // 즉시 구매시
					console.log("temp_count", temp_count);
					distDt = -1;
					temp_count = 0;
				}
				//console.log("temp_count",temp_count);
				//console.log("_vDate", _vDate)
				//console.log(distDt);

				if (distDt < 0) {
					clearInterval(timer);
					document.getElementById(id).style.color = "red"
					document.getElementById(id).textContent = '해당 상품 판매가 종료 되었습니다!';
					
					// 버튼 비활성화
					document.getElementById("minbid").disabled = true;
					document.getElementById("btn_minbid").disabled = true;
					document.getElementById("bidamount").disabled = true;
					document.getElementById("btn_bidamount").disabled = true;
					document.getElementById("btn_imm").disabled = true;
					
					return;
				} else if (distDt < 300000) {
					document.getElementById(id).style.color = "red"
				}

				var days = Math.floor(distDt / _day);
				var hours = Math.floor((distDt % _day) / _hour);
				var minutes = Math.floor((distDt % _hour) / _minute);
				var seconds = Math.floor((distDt % _minute) / _second);
				
				// console.log(distDt);
				
				//document.getElementById(id).textContent = date.toLocaleString() + "까지 : ";
				document.getElementById(id).textContent = days + '일 ';
				document.getElementById(id).textContent += hours + '시간 ';
				document.getElementById(id).textContent += minutes + '분 ';
				document.getElementById(id).textContent += seconds + '초';
				
				
				document.getElementById("auction_area").value = distDt;
				
			}

			timer = setInterval(showRemaining, 1000);
		}
		
		countDownTimer('sample02', '09/28/2022 09:25 PM');

		var dateObj = new Date();
		dateObj.setDate(dateObj.getDate() + 1);

	 	// 2024년 4월 1일까지, 시간을 표시하려면 01:00 AM과 같은 형식을 사용한다.
		
		// 「WebSocketEx」는 프로젝트 명
		// 「broadsocket」는 호스트 명
		// WebSocket 오브젝트 생성 (자동으로 접속 시작한다. - onopen 함수 호출)
		var webSocket = new WebSocket("ws://210.223.239.139:8081/ticketbay/auction");
		
		// 콘솔 텍스트 에리어 오브젝트
		var messageTextArea = document.getElementById("messageTextArea");
		const maxbidArea = document.getElementById("maxbid_area");
		
		// WebSocket 서버와 접속이 되면 호출되는 함수
		webSocket.onopen = function(message) {
			// 콘솔 텍스트에 메시지를 출력한다.
			messageTextArea.value += "Server connect...\n";
		};
		
		// WebSocket 서버와 접속이 끊기면 호출되는 함수
		webSocket.onclose = function(message) {
			// 콘솔 텍스트에 메시지를 출력한다.
			messageTextArea.value += "Server Disconnect...\n";
		};
		
		// WebSocket 서버와 통신 중에 에러가 발생하면 요청되는 함수
		webSocket.onerror = function(message) {
			// 콘솔 텍스트에 메시지를 출력한다.
			messageTextArea.value += "error...\n";
		};
		
		/// WebSocket 서버로 부터 메시지가 오면 호출되는 함수
		webSocket.onmessage = function(message) {
			// 콘솔 텍스트에 메시지를 출력한다.
			console.log(message.data);
			let msg = message.data;
			console.log(msg);

			let username = msg.split(",")[0];
			let user_bid = parseInt(msg.split(",")[1]);
			set_time = msg.split(",")[2];
			temp_count = parseInt(msg.split(",")[3]);
			
			console.log("username : ", username);
			console.log("user_bid : ", user_bid);
			console.log("set_time : ", set_time);
			console.log("temp_count : ", temp_count);
						
			messageTextArea.value += username + " : " + user_bid + "\n";
			maxbidArea.innerHTML = user_bid + "원";
			document.getElementById("minbid").value = parseInt(user_bid * 1.1);
			
			if (check_bid == 1) {
				user_money += parseInt(bidmoney);
				
				$.ajax({
					url : "${cpath}/bidcancel.do",
					type : "post",
					data : {"u_id" : "${mvo.u_ID}", "m_now_money" : user_money, "m_plus" : parseInt(bidmoney)},
					success : () => {
						document.getElementById("user_money").innerHTML = user_money + "원";
					},
					error : () => {alert("ajax error")}
				});
				
			}
			check_bid = 0;
		};
		
		const minbidmoney = () => {
			
			if (check_bid == 0) {
				bidmoney = minbid.value;
				
				if (user_money < parseInt(bidmoney)) {
					alert("소지 금액이 부족합니다");
					return ;
				} else {
					sendMessage(bidmoney);
					check_bid = 1;					
				}
			} else {
				alert("상회 입찰자 입니다.");
				return ;
			}
		}
		
		const amountbidmoney = () => {
			console.log("bidamount.value :", bidamount.value);
			console.log("minbid.value :", minbid.value);
			
			if (bidamount.value.trim() == "") {
				alert("금액을 입력해 주세요");
				return ;
			} else {
				if (check_bid == 0) {
					if (parseInt(minbid.value) > parseInt(bidamount.value)) {
						alert("최소입찰가보다 높은 금액을 입력해주세요");
						bidamount.value = "";
					} else {
						bidmoney = bidamount.value;
						
						if (user_money < parseInt(bidmoney)) {
							alert("소지 금액이 부족합니다");
							return ;
						} else {
							sendMessage(bidmoney);
							check_bid = 1;						
						}
					}
				} else {
					alert("상회 입찰자 입니다.");
					return ;
				}
			}
			
		}
		
		const imm_purchase = () => {
			bidmoney = document.getElementById("imm").value;
			
			if (confirm(bidmoney + "원, 즉시 구매 하시겠습니까?")) {
				if (user_money < parseInt(bidmoney)) {
					alert("소지 금액이 부족합니다");
					return ;
				} else {
					check_bid = 1;
					temp_count = -1;
					sendMessage(bidmoney);
				} 
			} 
		}
		
		// Send 버튼을 누르면 호출되는 함수
		function sendMessage(bidmoney) {
			
			let remaining_time = parseInt(document.getElementById("auction_area").value);
			console.log("remaining_time" + remaining_time);
			
			set_time = new Date();
			set_time.setSeconds(set_time.getSeconds() + 62);

			// temp_count = 1;
			
			if (remaining_time < 60000) {
				console.log("------------");
				if (temp_count != -1) {
					temp_count = 1;
				}
			}
			
			// 유저명 텍스트 박스 오브젝트를 취득
			//var user = document.getElementById("user");
			let user = "${mvo.u_ID}";
			console.log("user", user);
			
			
			// 송신 메시지를 작성하는 텍스트 박스 오브젝트를 취득
			// var message = document.getElementById("textMessage");
			
			bidmoney = parseInt(bidmoney);
			console.log(bidmoney);
			
			
			// 콘솔 텍스트에 메시지를 출력한다.
			messageTextArea.value += user + "(me) => " + bidmoney + "\n";
			maxbidArea.innerHTML = bidmoney + "원";
			
			document.getElementById("minbid").value = parseInt(bidmoney * 1.1);
			
			user_money -= bidmoney;
			document.getElementById("user_money").innerHTML = user_money + "원";
			
			// WebSocket 서버에 메시지를 전송(형식 「{{유저명}}메시지」)
			// webSocket.send("{{" + user + "}}" + bidmoney);
			let send_msg = user + "," + bidmoney + "," + set_time + "," + temp_count + "," + user_money;
			webSocket.send( send_msg );
			
			// 송신 메시지를 작성한 텍스트 박스를 초기화한다.
			// message.value = "";
			bidamount.value = "";
			
		}
		// Disconnect 버튼을 누르면 호출되는 함수
		function disconnect() {
			// WebSocket 접속 해제
			webSocket.close();
		}

	</script>
</body>

</html>
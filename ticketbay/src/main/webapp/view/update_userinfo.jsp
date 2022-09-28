<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="kr.dao.DeliveryVO"%>
<%@page import="java.util.List"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

<!-- 왼쪽 배너 -->
<div>
	<span><a href="javascript:displayCheckUserdiv()">회원정보수정</a></span>
</div>

<!-- 비밀번호 확인 페이지 -->
<div id="check_user" style="display:none">

	<div>
		<p>비밀번호 확인</p>
	</div>
	
	<div>
		<p>아이디 : ${mvo.u_ID }</p>
	</div>
	
	<div>
		<span>비밀번호 : </span>
		<input type="password" id="CHECK_PW" name="CHECK_PW">
		<button onclick="checkPW()">확인</button>
	</div>

</div>

<!-- 비밀번호 확인 후 정보 수정 페이지 -->
<div id="update_info" style="display:none">


    <!-- boxStyle -->
		<div class="prodViewDetail separateTab">
			<!-- tabStyle -->
			<ul class="tabStyle">
				<li><a href="javascript:display_u_info()">개인정보수정</a></li>
				<li><a href="javascript:display_d_list()">배송지관리</a></li>
				<li><a href="javascript:display_u_delete()">회원탈퇴</a></li>
			</ul>
			<!-- //tabStyle -->
			<!-- u_info_tab -->
			<div id="u_info_tab" class="feTabCont prodViewTab" style="display:block">
			u_info_tab
				<!-- boxStyle -->
				<form action="${cpath}/updateUser.do?ID=${mvo.u_ID}" method="post">
					<div class="boxStyle tabTop">
						<!-- tableStyle -->
						<table class="tableStyle infoTable topInfo">
							<caption>필수정보</caption>
							<colgroup>
								<col style="width: 135px;">
								<col style="width: 260px;">
								<col style="width: 135px;">
								<col style="width: auto;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="rName">가입일자</label></th>
									<!--// 220718 수정 by J. -->
									<td>${mvo.u_JOINDATE}</td>
									<!-- 220718 수정 by J. //-->

								</tr>
							</tbody>
						</table>
						<!-- //tableStyle -->
						<!-- boxTitle -->
						<h3 class="boxTitle">
							<i class="bulNumber01">01</i> <span class="subTitle">필수정보</span>
						</h3>
						<!-- //boxTitle -->
						<!-- tableStyle -->
						<table class="tableStyle infoTable">
							<caption>필수정보</caption>
							<colgroup>
								<col style="width: 135px;">
								<col style="width: 260px;">
								<col style="width: 135px;">
								<col style="width: auto;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="sAddr">아이디</label></th>
									<td colspan="3"><span>${mvo.u_ID}</span></td>
								</tr>
								<tr>
									<th scope="row"><label for="rName" >이름</label></th>
									<td colspan="3">
										<div class="btnTxt">
											<span id="memberNm">${mvo.u_NAME}</span> <span
												class="tableMsg">* 개명 후 실명확인기관에 등록된 경우 이름 변경이 가능합니다.</span>
											<span class="btn"><a href="javascript:void(0);"
												onclick="btn_changeName();"><img
													src="/resources/img/button/btn_table_sNameModi.gif"
													alt="실명변경"></a></span>
										</div>
									</td>
								</tr>

								<tr>
									<th class="multiLineWr" scope="row">비밀번호</th>
									<td colspan="3">
										<!-- addrWrap -->
										<div class="addrWrap">
											<i class="inpLabel">현재 비밀번호</i> <input type="password"
												id="oldPassword" name="oldPassword" class="textInp03"
												title="현재 비밀번호" placeholder="기존에 사용하시던 비밀번호를 입력하세요"
												value="${mvo.u_PW }">
										</div>
										<div class="addrWrap">
											<i class="inpLabel">새 비밀번호</i> <input type="password"
												id="newPW" name="newPW" class="textInp03"
												title="새 비밀번호"
												placeholder="6~20자 이내 영문/숫자/특문 중 2가지 이상으로 입력하세요.">
										</div>
										<div class="addrWrap">
											<i class="inpLabel">새 비밀번호 확인</i> <input type="password"
												id="newPWCheck" name="newPWCheck"
												class="textInp03" title="새 비밀번호 확인"
												placeholder="새로운 비밀번호를 다시한번 입력하세요."> <span
												class="btn"></span>
										</div> <!-- //addrWrap -->
									</td>
								</tr>
								<tr>
									<th scope="row">휴대폰</th>
									<td colspan="3"><input id="mobile" name="mobile" value="${mvo.u_MOBILE}"><span
										class="btn"></span></td>
								</tr>
								<tr>
									<th scope="row">이메일</th>
									<td colspan="3" class="emaiForm">
										<!-- formWrap -->
										<div class="formWrap">
											<input type="text" id="email1" name="email1"
												class="textInp02 emailElId" title="이메일 아이디" value="">
											<i class="inpBar">@</i> <input type="text" id="email2"
												name="email2" class="textInp02" title="이메일 도메인" value="">
											<select id="email2Select" class="stFormEl02" title="이메일 도메인"
												val="naver.com">
												<option value="">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="chol.com">chol.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="empal.com">empal.com</option>
												<option value="freechal.com">freechal.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="hanafos.com">hanafos.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="korea.com">korea.com</option>
												<option value="lycos.co.kr">lycos.co.kr</option>
												<option value="nate.com">nate.com</option>
												<option value="netian.com">netian.com</option>
												<option value="paran.com">paran.com</option>
												<option value="yahoo.com">yahoo.com</option>
												<option value="yahoo.co.kr">yahoo.co.kr</option>
											</select>
										</div> <!-- //formWrap -->
									</td>
								</tr>
							</tbody>
						</table>
						<!-- //tableStyle -->
					</div>
					<button type="submit">정보수정</button>
				</form>
			</div>
			<!-- //u_info_tab -->
			
			<!-- d_list_tab -->
			<div id="d_list_tab" style="display:none">
			d_list_tab
			
			<div id="printdlist">
				<c:forEach var="dvo" items="${dlist }">
					<p>${dvo.u_id} / ${dvo.d_default} / ${dvo.d_name} / ${dvo.d_post_code} / ${dvo.d_addr} / ${dvo.d_recipient} / ${dvo.d_mobile} / </p>
				</c:forEach>
			</div>
			
			


					<h3 class="boxTitles mt_40">
						<span>받는 주소</span>
					</h3>
					<table class="tableStyle shippingAddr">
						<caption>받는 주소 정보</caption>
						<colgroup>
							<col style="width: 43px;">
							<col style="width: 75px;">
							<col style="width: 75px;">
							<col style="width: auto;">
							<col style="width: 109px;">
							<col style="width: 83px;">
						</colgroup>
						<thead>
							<tr>
								<th class="th_txt_style_01" scope="col">선택</th>
								<th class="th_txt_style_01" scope="col">주소분류</th>
								<th class="th_txt_style_01" scope="col">받으시는분</th>
								<th class="th_txt_style_01" scope="col">주소</th>
								<th class="th_txt_style_01" scope="col">연락처</th>
								<th class="th_txt_style_01" scope="col">수정/삭제</th>
							</tr>
						</thead>
						<tbody>


						</tbody>
					</table>
					<div style="text-align: right;">
						<button onclick="window.open('${cpath}/addDeliverypage.do?u_id=${mvo.u_ID}', '_blank', 'width=800 height=600')">주소 추가</button>
					</div>


			</div>
			<!-- //d_list_tab -->
			
			<!-- u_delete_tab -->
			<div id="u_delete_tab" style="display:none">
			u_delete_tab
			<form action="${cpath}/deleteUser.do?ID=${mvo.u_ID}" method="post">
			<!-- feTabCont -->
			<div id="dtailTab03" class="feTabCont prodViewTab">
				<!-- boxStyle -->
				<div class="boxStyle tabTop">
					<!-- head -->
					<div class="head">
						<h2><span class="tit">고객님께서 느끼셨던 부족한 점, 아쉬웠던 점에대해 남겨주시면<br/> 보완하여 더 나은 서비스를 마련하겠습니다.</span></h2>
					</div>
					<!--// head -->
					<!-- tableStyle -->
					<table class="tableStyle infoTable">
						<caption>탈퇴</caption>
						<colgroup>
							<col style="width: 195px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="reason">탈퇴사유</label></th>
								<td>
									<!-- formWrap -->
									<div class="formWrap large">	
										<span>
											<select id="CHANGE_TYPE" class="stFormEl01">
											
											<option value="1">더 이상 티켓베이 사이트를 이용하지 않게 되어서</option>
											
											<option value="2">이용에 대한 혜택사항이 적어서</option>
											
											<option value="3">재가입을 하기 위해서</option>
											
											<option value="4">사이트 이용 방법이 어려워서</option>
											
											<option value="0">기타</option>
											</select>										
										</span>
									</div>
									<!-- //formWrap -->									
								</td>
							</tr>
							<tr id="CHANGE_REASON_AREA">
								<th scope="row"><label for="object">내용</label></th>
								<td>
									<!-- formWrap -->
									<div class="formWrap">
										<textarea id="CHANGE_REASON" name="CHANGE_REASON"cols="5" rows="5"></textarea>
									</div>
									<!-- //formWrap -->
								</td>
							</tr>
							<tr>
								<th scope="row">탈퇴주의사항 <br/>및 탈퇴동의</th>
								<td>
									<div class="warnBox">
										<p>정상회원 또는 거래중인 물품이 없는 경우 즉시 탈퇴 가능합니다.</p>
										<div class="warn">
											<strong>* 주의사항</strong>
											<ul class="bulListSqGray">
												<li>등록 중인 물품이 있는 경우, 등록된 물품을 삭제하셔야 탈퇴가 가능합니다.</li>
												<li>거래중인 판매 또는 구매 미확정 건이 있는 경우, 거래 종료 후 탈퇴가 가능합니다.</li>
												<li>이용정지 회원의 경우, 정지 해제후 탈퇴가 가능합니다.</li>
												<li>예치금 잔액이 남아 있는 경우, 예치금을 모두 출금하셔야 탈퇴가 가능합니다.</li>
												<li>탈퇴와 함께 미사용 쿠폰 및 등록권, 팬파워 내역이 삭제되어 이용이 불가하며,
												<br>재가입하더라고 복구되지 않습니다.</li>
												<li>전자상거래 등에서의 소비자 보호에 관한 법률 제6조(거래기록의 보전 등)에 의거,
												<br>거래정보는 회원탈퇴 후 5년 간 보존됩니다. (다른 용도로 절대 사용불가)</li>
											</ul>
										</div>
										<div class="warn">
											<strong>* 소비자 보호 법률에 따른 정보 보존 기간</strong>
											<ul class="bulListSqGray">
												<li>표시·광고에 관한 기록: 6개월</li>
												<li>계약 또는 청약철회 등에 관한 기록 5년</li>
												<li>대금결제 및 재화 등의 공급에 관한 기록 5년</li>
												<li>소비자 불만 또는 분쟁처리에 관련 기록 3년</li>
											</ul>
										</div>
										<!-- formWrap -->
										<div class="formWrap">
											<label><input type="checkbox" name="secessionYn" id="secessionYn" class="stFormEl01"><span>상기 사항을 모두 확인하였습니다.</span></label><!-- 150327_modi -->
										</div>
										<!-- //formWrap -->
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- //tableStyle -->
				</div>
				<!-- //boxStyle -->
				<!-- btnArea -->
				<div class="btnArea">
					<button type="submit">탈 퇴</button>
				</div>
				<!-- //btnArea -->
			</div>
			<!-- //feTabCont -->
			</form>
			</div>
			<!-- //u_delete_tab -->

		</div>

	</div>

<script type="text/javascript">
	const displayCheckUserdiv = () => {
		console.log("displayCheckUserdiv()");
		$("#check_user").css("display", "block");
		$("#update_info").css("display", "none");
		
	}
	
	const checkPW = () => {
		console.log("checkPW()");
		console.log("${mvo.u_PW}");
		console.log($("#CHECK_PW").val());
		
		let input_cpw = $("#CHECK_PW").val();
		
		if (input_cpw == "${mvo.u_PW}") {
			console.log("eq")
			$("#check_user").css("display", "none");
			$("#update_info").css("display", "block");
			$("#u_info_tab").css("display", "block");
			
			parseEmail();
		}
	}
	
	// 개인정보수정, 배송지관리, 회원탈퇴 탭 display
	const display_u_info = () => {
		console.log("display_u_info()");
		$("#u_info_tab").css("display", "block");
		$("#d_list_tab").css("display", "none");
		$("#u_delete_tab").css("display", "none");
	}
	
	const display_d_list = () => {
		console.log("display_d_list()");
		$("#u_info_tab").css("display", "none");
		$("#d_list_tab").css("display", "block");
		$("#u_delete_tab").css("display", "none");
		
		
		
	}
	
	const display_u_delete = () => {
		console.log("display_u_delete()");
		$("#u_info_tab").css("display", "none");
		$("#d_list_tab").css("display", "none");
		$("#u_delete_tab").css("display", "block");
	}
	
	
	
	
	
	
	
	const parseEmail = () => {
		let email1 = "${mvo.u_EMAIL}".split('@')[0];
		let email2 = "${mvo.u_EMAIL}".split('@')[1];
		console.log(email1, email2);
		
		$('#email1').attr('value', email1);
		$('#email2').attr('value', email2);
		
	}
	
	$('#email2Select').change(() => {
		let e_addr = $('#email2Select').val();
	    console.log(e_addr);
	    $('#email2').attr('value', e_addr);
	});
</script>




</body>
</html>
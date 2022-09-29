<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="kr.dao.DeliveryVO"%>
<%@page import="java.util.List"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="newLine" value="<%='\n' %>"/>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${cpath}/css/productListView.css?after">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/contents.css">
<link rel="stylesheet" href="${cpath}/css/header_sales.css">
<link rel="stylesheet" href="${cpath}/css/styleList.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<!-- 아이디값을 어떻게 넘겨주지? / 아이디 넘겨주고 이름 전화번호 가져와서 value -->
	<form action="${cpath}/addDelivery.do?u_id=${mvo.u_ID}" method="post">
		
       	
		<h2>배송지 추가</h2>
		
		
		
		<!-- popupCont -->
		<div class="popupCont">
			<!-- tableStyle -->
			<table class="tableStyle">
				<caption>배송지 정보 수정</caption>
				<colgroup>
					<col style="width: 100px;">
					<col style="width: 190px;">
					<col style="width: auto;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="addType">주소분류</label></th>
						<td><input type="text" id="d_name" name="d_name" class="textInp03" maxlength=10></td>

					</tr>
					<tr>
						<th scope="row"><label for="rName">받으시는분</label></th>
						<td colspan="2"><input type="text" id="d_recipient" name="d_recipient" class="textInp03" maxlength=10></td>
					</tr>

					<tr class="address_stdT">
						<th class="multiLineWr" scope="row"><label for="zipCode">우편번호</label></th>
						<td colspan="2">
							<input type="text" id="d_postcode" name="d_postcode" class="textInp03" placeholder="우편번호" readonly>
							<input type="button" class="btn" onclick="kakaoPostcode()" value="우편번호 찾기">
						</td>
					</tr>
					<tr class="address_stdM">
						<th class="multiLineWr" scope="row"><label for="zipCode"><span class="bul_txt">주소</span></label></th>
						<td colspan="2">
							<input type="text" id="d_address" name="d_address" class="textInp03" placeholder="주소"><br>
							<input type="text" id="detailAddress" name="detailAddress" class="textInp03" placeholder="상세주소">
							<input type="text" id="extraAddress" name="extraAddress" class="textInp03" placeholder="참고항목"> <br>
						</td>
					</tr>

					<tr>
						<th scope="row"><label for="mobile">휴대폰</label></th>
						<td colspan="2">
							<input type="text" id="d_mobile" name="d_mobile" class="textInp03">
						</td>
					</tr>
				</tbody>
			</table>
			<!-- //tableStyle -->
		</div>
		<!-- //popupCont -->
		<!-- btnArea -->
		<div class="btnArea">
			<button type="submit" class="btn" onclick="reload()">배송지 추가</button>
		</div>
		<!-- //btnArea -->
	</div>
	<!-- //popupWrap -->
	</form>

	<script type="text/javascript">
	
	function reload(){
	    window.opener.location.reload();
	    window.close();
	}
	</script>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function kakaoPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

							var addr = '';
							var extraAddr = '';

							if (data.userSelectedType === 'R') {
								addr = data.roadAddress;
							} else {
								addr = data.jibunAddress;
							}

							if (data.userSelectedType === 'R') {
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								document.getElementById("extraAddress").value = extraAddr;

							} else {
								document.getElementById("extraAddress").value = '';
							}

							document.getElementById('d_postcode').value = data.zonecode;
							document.getElementById("d_address").value = addr;
							document.getElementById("detailAddress").focus();
						}
					}).open();
		}
	</script>

</body>
</html>
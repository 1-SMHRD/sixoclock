<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="newLine" value="<%='\n'%>" />
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<!-- 아이디값을 어떻게 넘겨주지? / 아이디 넘겨주고 이름 전화번호 가져와서 value -->
	<form action="${cpath}/addDelivery.do?u_id=${mvo.u_ID}" method="post">
	${mvo.u_ID}
		주소분류 <input type="text" id="d_name" name="d_name"><br>
		받으시는분 <input type="text" id="d_recipient" name="d_recipient"><br>
		우편번호<input type="text" id="d_postcode" name="d_postcode" placeholder="우편번호">
		<input type="button" onclick="kakaoPostcode()" value="우편번호 찾기"><br>
		주소<input type="text" id="d_address" name="d_address" placeholder="주소"><br>
		상세주소<input type="text" id="detailAddress" name="detailAddress" placeholder="상세주소">
		참고항목<input type="text" id="extraAddress" name="extraAddress" placeholder="참고항목"> <br>
		휴대전화번호 <input type="text" id="d_mobile" name="d_mobile">
		<button type="submit">배송지 추가</button>
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
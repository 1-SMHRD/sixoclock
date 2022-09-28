<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="kr.dao.MemberVO"%>
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

<!-- LoginWithNaverId Javscript SDK -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
</head>
<body>

<div>
</div>

<script type="text/javascript">
	let naverID = "";
	let naverPW = "";
	
	var naverLogin = new naver.LoginWithNaverId({
		    clientId : 'c8CFZn94kcCbExnTPJ7j',
		    callbackUrl : 'http://210.223.239.139:8081/ticketbay/naveridLogin.do',
		    callbackHandle: true
	});
		
	// 설정 정보를 초기화하고 연동 준비
	naverLogin.init();
	
	// callback 처리
	naverLogin.getLoginStatus((status) => {
	    if (status) {
	        // 필수적으로 받아야할 정보는 callback 처리 시점에서 체크
	        console.log(naverLogin.user);
	
	        const name = naverLogin.user.getName();
	        const email = naverLogin.user.getEmail();
	        const mobile = naverLogin.user.getMobile();
	
	        if (name == undefined || name == null) {
	            alert('이름은 필수정보 입니다. 정보제공에 동의 해주세요');
	            // 재동의를 위한 네아로 동의페이지 이동
	            naverLogin.reprompt();
	            return ;
	        } else if (email == undefined || email == null) {
	            alert('이메일은 필수정보 입니다. 정보제공에 동의 해주세요');
	            // 재동의를 위한 네아로 동의페이지 이동
	            naverLogin.reprompt();
	            return ;
	        } else if (mobile == undefined || mobile == null) {
	            alert('휴대폰 번호는 필수정보 입니다. 정보제공에 동의 해주세요');
	            // 재동의를 위한 네아로 동의페이지 이동
	            naverLogin.reprompt();
	            return ;
	        } else {
	        	
	        	let check_info = 0;
	        	
	        	<c:forEach var="mvo" items="${list }">
	    			console.log("${mvo.u_EMAIL}")
	    			console.log(email)
	    			
	    			if (email == "${mvo.u_EMAIL}") {
	    				check_info = 1;
	    				console.log("${mvo.u_ID}")
	    				console.log("${mvo.u_PW}")
	    				
	    				naverID = "${mvo.u_ID}";
	    				naverPW = "${mvo.u_PW}";
	    				
	    			}
	    			console.log("check : " + check_info)
	    		</c:forEach>
	        	
	    			console.log("check : " + check_info)
	    		if (check_info == 0) {
	        		// 최초 로그인시 회원가입 페이지 이동
	    			location.href = "${cpath}/signuppage.do";
	    		} else {
	            	// 이미 가입된 회원이면 메인페이지로 이동
	    			location.href = "${cpath}/signin.do?ENTER_ID=" + naverID + "&ENTER_PW=" + naverPW;
	    		}
	        }
	    } else {
	        console.log('callback 처리에 실패');
	    }
	});
</script>

</body>
</html>
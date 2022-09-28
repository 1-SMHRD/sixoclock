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
<!-- LoginWithNaverId Javscript SDK -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<title>Insert title here</title>
</head>
<body>
    <div>
        <!-- enter id pw -->
        <form method="post" action="${cpath}/signin.do">
        <div>
        	<div class="input_box">
        		<input type="text" name="ENTER_ID" maxlength="12" class="input_text" placeholder="ID">
       		</div>
       		<div class="input_box">
        		<input type="text" name="ENTER_PW" maxlength="12" class="input_text" placeholder="PW">
       		</div>
       		<div>
	       		<button type="submit">signin</button>
       		</div>
        </div>
        </form>
        
        
        

        <!-- google, naver, kakao login area -->
        <!-- <div>
            <div id="naverIdLogin"></div>
        </div> -->
        
        <div id="naverIdLogin">
        </div>
        	<!-- <img alt="dd" src="${cpath}/img/btnG_완성형.png" width="150px" height="40px">  -->
    </div>
    
    <div>
    	<c:forEach var="mvo" items="${list }">
    		<p>${mvo.u_ID} / ${mvo.u_PW} / ${mvo.u_NAME} / ${mvo.u_EMAIL} / ${mvo.u_MOBILE} / ${mvo.u_MONEY} / ${mvo.u_JOINDATE} / ${mvo.u_ROLE}</p>
    	</c:forEach>
    </div>

    <script type="text/javascript">
    
 	// 네이버 아이디 로그인 초기화
 	var naverLogin = new naver.LoginWithNaverId({
 		    clientId : 'c8CFZn94kcCbExnTPJ7j',
 		    callbackUrl : 'http://210.223.239.139:8081/ticketbay/naveridLogin.do',
 	       	loginButton: { color: 'green', type: 3, height: 60 } /* 로그인 버튼의 타입을 지정 */,
 	});
 		
 	// 설정 정보를 초기화하고 연동 준비
 	naverLogin.init();
    </script>
</body>
</html>
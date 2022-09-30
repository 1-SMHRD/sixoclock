<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>카카오 본인인증 | 티켓베이</title>
  </head>

<%@ include file="common.jsp" %>

<%@page import="com.kakaocert.api.verifyauth.RequestVerifyAuth"%>
<%@page import="com.kakaocert.api.KakaocertException"%>

  <body>
    <div>
      <fieldset>
        <legend>본인인증 요청</legend>
        <ul>
          <div>핸드폰 번호로 본인인증을 요청합니다.</div>
          <button onclick="sendMS();">${mvo.u_MOBILE}</button>
        </ul>
      </fieldset>
     </div>
     <script>

const sendMS =()=>{
	alert("인증메세지를 발송하였습니다.");
	alert("인증이 확인되었습니다.");	
}

</script>
  </body>
</html>
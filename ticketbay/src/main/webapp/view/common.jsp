<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- kakaoCert 클래스 빈 생성 --%>
<jsp:useBean id="kakaocertService" scope="application" class="com.kakaocert.api.KakaocertServiceImp"/>

<%-- 링크아이디(LinkID) - 연동신청시 발급받은 정보로 수정 --%>
<jsp:setProperty name="kakaocertService" property="linkID" value="TESTER"/>

<%-- 비밀키(SecretKey) - 연동신청시 발급받은 정보로 수정, 사용자 인증에 사용되는 정보이므로 유출에 주의 --%>
<jsp:setProperty name="kakaocertService" property="secretKey" value="SwWxqU+0TExEXy/9TVjKPExI2VTUMMSLZtJf3Ed8q3I="/>

<%-- 인증토큰 발급 IP 제한 On/Off, ture-제한기능 사용(기본값-권장),  false-제한기능 미사용 --%>
<jsp:setProperty name="kakaocertService" property="IPRestrictOnOff" value="true"/>

<%-- 카카오써트 API 서비스 고정 IP 사용여부, true-사용, false-미사용, 기본값(false) --%>
<jsp:setProperty name="kakaocertService" property="useStaticIP" value="false"/>

<%-- 로컬시스템 시간 사용여부 true-사용, false-미사용, 기본값(true) --%>
<jsp:setProperty name="kakaocertService" property="useLocalTimeYN" value="true"/>

</body>
</html>
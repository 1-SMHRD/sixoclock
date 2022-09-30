<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.inicis.std.util.ParseUtil"%>
<%@ page import="com.inicis.std.util.SignatureUtil"%>
<%@ page import="com.inicis.std.util.HttpUtil"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<% 

try{

//#############################
// 인증결과 파라미터 일괄 수신
//#############################
request.setCharacterEncoding("UTF-8");
Map<String,String> paramMap = new Hashtable<String,String>();
Enumeration elems = request.getParameterNames();
String temp = "";
while(elems.hasMoreElements())
{
temp = (String) elems.nextElement();
paramMap.put(temp, request.getParameter(temp));
}
System.out.println("paramMap : "+ paramMap.toString());
            
// STEP2 에 이어 인증결과가 성공일 경우 STEP2 에서 받은 인증결과로 아래 승인요청 진행

        
            //############################################
            // 1.전문 필드 값 설정(***가맹점 개발수정***)
            //############################################
        
            $mid = $_REQUEST["mid"];     // 가맹점 ID 수신 받은 데이터로 설정
            $timestamp = $util->getTimestamp();   // util에 의해서 자동생성
            $charset = "UTF-8";        // 리턴형식[UTF-8,EUC-KR](가맹점 수정후 고정)
            $format = "JSON";        // 리턴형식[XML,JSON,NVP](가맹점 수정후 고정)
            $authToken = $_REQUEST["authToken"];   // 취소 요청 tid에 따라서 유동적(가맹점 수정후 고정)
            $authUrl = $_REQUEST["authUrl"];    // 승인요청 API url(수신 받은 값으로 설정, 임의 세팅 금지)       
            $mKey = hash("sha256", $signKey); // 가맹점 확인을 위한 signKey를 해시값으로 변경 (SHA-256방식 사용)
           
         
            //#####################
            // 2.signature 생성
            //#####################
            $signParam["authToken"] = $authToken;  // 필수
            $signParam["timestamp"] = $timestamp;  // 필수
            // signature 데이터 생성 (모듈에서 자동으로 signParam을 알파벳 순으로 정렬후 NVP 방식으로 나열해 hash)
            $signature = $util->makeSignature($signParam);
        
        
            //#####################
            // 3.API 요청 전문 생성
            //#####################
            $authMap["mid"] = $mid;   // 필수
            $authMap["authToken"] = $authToken; // 필수
            $authMap["signature"] = $signature; // 필수
            $authMap["timestamp"] = $timestamp; // 필수
            $authMap["charset"] = $charset;  // default=UTF-8
            $authMap["format"] = $format;  // default=XML
        
            
           $httpUtil = new HttpClient();
        
            //#####################
            // 4.API 통신 시작
            //#####################
            
            $authResultString = "";
            if ($httpUtil->processHTTP($authUrl, $authMap)) {
            $authResultString = $httpUtil->body;
        
            $result =  str_replace (",", "<br/>",  $authResultString);
        
                //PRINT DATA
            
            
            //############################################################
            //5.API 통신결과 처리(***가맹점 개발수정***)
            //############################################################
            
           echo "<p><b>승인결과 내용 :</b> $result</p>";
        
            }

        
%>


			
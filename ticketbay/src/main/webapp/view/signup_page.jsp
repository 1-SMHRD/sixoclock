<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="kr.dao.MemberVO"%>
<%@page import="java.util.List"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="newLine" value="<%='\n' %>"/>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${cpath}/css/회원가입.css">
    <title>Document</title>
</head>
<body>


    <script>
        // 로그인 후 넘어온 사용자의 정보를 담을 객체
        
        
        
        let user_info = {
            user_id : null,
            user_pw : null,
            user_name : null,
            user_email : null,
            user_mobile : null,
        };

        // 네아로를 이용한 사용자의 정보
        var naverLogin = new naver.LoginWithNaverId({
            clientId: 'c8CFZn94kcCbExnTPJ7j'
        });

        naverLogin.getLoginStatus((status) => {
            console.log(naverLogin.user);
            console.log('----------------');

            // 네이버로 부터 받은 사용자 정보 객체에 담기
            user_info.user_name = naverLogin.user.name;
            user_info.user_email = naverLogin.user.email;
            user_info.user_mobile = naverLogin.user.mobile;

            console.log(user_info.user_name);
            console.log(user_info.user_email);
            console.log(user_info.user_mobile);

			if (user_info.user_email != null) {
	            registration_user();
				
			}

        });

        // 최초 로그인시 회원가입 창에 문자를 자동 입력하기 위한 함수
        const registration_user = () => {
            // 문자를 자동 입력받는 선택자들을 담은 임시 변?
            let temp_uinfo = document.querySelectorAll('.white_list_line input');

            // 휴대전화 번호 파싱 ( '-' 문자 지우기)
            if (user_info.user_mobile != undefined || user_info.user_mobile != null) {
                user_info.user_mobile = user_info.user_mobile.replace(/-/g, '');
            }

            console.log(user_info);
            
            // 반복문에 쓰일 임시 인덱스
            let count = 0;
            // 객체 정보가 undefined or null값이 아닐시 회원가입창에 자동 입력
            for (const key in user_info) {
                console.log(key, user_info[key], count, temp_uinfo[count]);
                if (user_info[key] != undefined || user_info[key] != null) {
                    temp_uinfo[count].value = user_info[key];
                    // console.log(key, user_info[key], count, temp_uinfo[count])
                }
                count++;
            }

            
            document.getElementById("MEMBER_NAME").disabled = true;
			document.getElementById("MEMBER_EMAIL").disabled = true;
			document.getElementById("MEMBER_MOBILE_NO").disabled = true;
        }
        
        user_info.user_id = "";
        user_info.user_pw = "";
        user_info.user_name = "";
        user_info.user_email = "";
        user_info.user_mobile = "";
        
        
        
        // 입력 조건에 맞지 않은 input 값이 있을시 form 전송 막기
        //document.querySelector(".form").addEventListener("submit", function (e) {
       	//	if () {
        // 		e.preventDefault();
        //	}  
        //})
    </script>
    
    
    <div class="type_all_box_gr">
        <h2>티켓 굿딜!<br>티켓베이에 와주셨군요!</h2> 
            <div class="login_ch_01"></div>
            <p class="txt_style_01">아래 원하시는 가입 방법을 선택해 주세요</p>
    </div>

    <div class="mem_join_tab">
        <ul>
            <li class="on personal"><a href="#"><span>일반회원 가입하기</span></a></li>
            
            <li>
                <a href="#">
                    <span>기업회원 가입하기</span>
                </a>
            </li>
        </ul>
    </div>
    <div id="container">
        <div class="mem_join_size_wrap">
            <!-- tab -->


            <!-- //tab -->
            <div class="layer_pop_parent">
                <form action="${cpath}/signup.do" method="post">
                    <!-- write_list_area -->
                    <div>
                        <ul class="white_list_line">
                            <li class="id">
                                <div class="input_box">
                                    <input type="text" name="MEMBER_ID" maxlength="12" class="input_text">
                                    <span class="placeholder"></span>
                                    <span class="iconbox"></span>
                                </div>
                                <p class="notice">  <span>↑아이디</span>는 4~12자 이내 영문(소문자)/숫자로 입력해주세요</p>
                            </li>
                            <li class="pw">
                                <div class="input_box">
                                    <input type="password" name="MEMBER_PW" maxlength="20" class="input_text">
                                    <span class="placeholder"></span>
                                    <span class="iconbox"></span>
                                </div>
                              
                                <p class="notice"> <span>↑비밀번호</span>는 영문 숫자 특수문자 2가지 이상 6~20자 이내로 입력하세요</p>
                            </li>
                            <li>
                                <div class="input_box">
                                    <input type="text" name="MEMBER_NAME" id="MEMBER_NAME" value="" maxlength="50" class="input_text">
                                    <span class="placeholder"></span>
                                    <span class="iconbox"></span>
                                </div>
                                <p class="notice warning"><span>↑이름</span>을 입력해 주세요</p>
                            </li>
                            <li id="email">
                                <div class="input_box">
                                    <input type="text" name="MEMBER_EMAIL" id="MEMBER_EMAIL" value="" maxlength="100" class="input_text" list="email_options_MEMBER_EMAIL"><ul id="email_options_MEMBER_EMAIL" class="email_options" style="display: none;"></ul>
                                    <span class="placeholder"></span>
                                    <span class="iconbox"></span>
                                </div>
                                <p class="notice"><span>↑이메일 정보</span>를 정확히 입력해 주세요</p>
                            </li>
                            <li>
                                <div class="input_box">
                                    <input type="text" name="MEMBER_MOBILE_NO" value="" maxlength="13" class="input_text">
                                    <span class="placeholder"></span>
                                    <span class="iconbox"></span>
                                </div>
                                <p class="notice"><span>↑휴대폰 번호</span> 숫자만 입력해주세요</p>
                            </li>
                        </ul>
                    </div>
                    
                    
                    <!-- btn -->
                    <div class="mem_btn_wrap">
                        <input type="submit" class="btn_signUp_ty_01 btn_signUp_st_01" id="btnWait" style="display:block;" value="회원가입">
                    </div>
                    <!-- //btn -->
                    <p class="years_14_pc">* 만 14세 이상 회원만 가입할 수 있습니다.</p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
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
<meta charset="EUC-KR">
<title>My티켓베이 | 티켓베이</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body class="goog-te-combo_in">
<div id="container">
<!-- MY 티켓베이 -->
<div class="contentsMenu">
  <!-- 티켓팅 예매내역 확인 FORM -->
  <form name="frmMypage" id="frmMypage" method="post" target="popup_mypage">
	<input type="hidden" name="q" id="q2" value="">
  </form>
  <div class="contentsMenuWrap">
    <!-- MY티켓베이 대쉬보드 -->
	<div class="myBay">
  	  <div class="logo"><a href="/web/myservice/myserviceMain"><img src="${cpath}/img/productListView/tit_myservice07.png" alt="my 티켓베이"></a></div>
	  <div class="my_info_box">
	    <h3>어서오세요 <strong><span>${mvo.u_NAME }</span> 회원님</strong></h3>
		  <p>* 충만한 팬파워! 혜택으로 보답할께요~</p>
		  <a href="/web/couponzone/couponZoneView" class="rankDetail member"><img src="${cpath}/img/productListView/btn_mem_benefit_v2.png" alt="혜택 보러가기"></a>
	  </div>
	  <ul class="rankPointList">
		  <li>
			<a href="/web/mycash/depositHistoryListView">
			  <span class="tit"><img src="${cpath}/img/productListView/예치금.gif" alt="예치금"></span>
			  <strong class="point"><span>0</span> 원</strong>
			</a>
 		  </li> 
		  <li>
			<a href="/web/mycoupon/useableCouponListView">
			  <span class="tit"><img src="${cpath}/img/productListView/쿠폰.gif" alt="쿠폰"></span>
		 	  <strong class="point"><span>0</span> 장</strong>
			</a>  
		  </li>
		  <li>
			<a href="/web/mycash/fanPowerHistoryListView">
			  <span class="tit"><img src="${cpath}/img/productListView/팬파워.gif" alt="팬파워"></span>
			  <strong class="point"><span>0</span> FP</strong>
			</a>
		  </li>
		  <li>
			<a href="/web/mymsg/messageListView">
			  <span class="tit"><img src="${cpath}/img/productListView/알림메시지.gif" alt="알림메시지"></span>
			  <strong class="point"><span>1</span> 개</strong>
			</a>
		  </li>
		  <li>
			<a href="/web/mymsg/receivePinNumberListView">
			  <span class="tit"><img src="${cpath}/img/productListView/pin번호함.gif" alt="pin번호함"></span>
			  <strong class="point"><span>0</span> 개</strong>
			</a>
		  </li>
	  </ul>
	  <ul class="itemSell">
		  <li>
			<a href="/web/myorder/orderListView" style="display:block;">
			  <span><img src="${cpath}/img/productListView/구매진행.gif" alt="구매 진행"></span>
			  <em>0</em>건
			</a>
		  </li>
		  <li>
			<a href="/web/mysell/sellProductListView" style="display:block;">
			  <span><img src="${cpath}/img/productListView/판매진행.gif" alt="판매 진행"></span>
			  <em>0</em>건
			</a>
		  </li>
	  </ul>
	</div>
	<!-- //MY티켓베이 대쉬보드 -->
		
	<!-- MY티켓베이 개인회원 레프트메뉴 -->
	
	
	<div class="boxStyle01 myServiceLnb">
	  <ul class="myClass6">
		  <li class="nth1 order">
			<a href="#">내가 구매한 상품</a>
			<ul id="click01" class="subLnb feTabCont" style="display: none;">
			  <!-- 2017-05-15 Left Menu 변경 -->
			  <li><a href="/web/myorder/orderListView">거래 진행 상품</a></li>
			  <li><a href="/web/myorder/completeOrderListView">거래 완료 상품</a></li>
			  <li><a href="/web/myorder/cancelOrderListView">거래 취소 상품</a></li>
			</ul>
		  </li>
		  <li class="nth2 sell">
			<a href="javascript:void(0);">내가 판매한 상품</a>
			<ul id="click02" class="subLnb feTabCont" style="display: none;">
 			  <!-- 2017-05-15 Left Menu 변경 -->
			  <li class="current"><a href="/web/myproduct/productListView">상품 등록 관리</a></li>
			  <li><a href="/web/mysell/sellProductListView">거래 진행 상품</a></li>
			  <li><a href="/web/mysell/completeProductListView">거래 완료 상품</a></li>
			  <li><a href="/web/mysell/cancelProductListView">취소승인 / 취소</a></li>
			</ul>
		  </li>
		  <li class="nth3 benefit">
			<a href="javascript:void(0);">혜택 관리</a>
			<ul id="click03" class="subLnb feTabCont" style="display: none;">
			  <li><a href="/web/mycash/depositHistoryListView">예치금 관리</a></li>
			  <li><a href="/web/mycoupon/useableCouponListView">쿠폰 내역</a></li>
			  <li><a href="/web/mycash/fanPowerHistoryListView">팬파워 내역</a></li>
			  <li><a href="/web/couponzone/couponZoneView">혜택존</a></li>
			  <li><a href="/web/mycoupon/useablePremiumCouponListView">부가 서비스</a></li>
			</ul>
		  </li>
		  <li class="nth4 message">
			<a href="javascript:void(0);">메시지</a>
			<ul id="click04" class="subLnb feTabCont" style="display: none;">
			  <li><a href="/web/mymsg/messageListView">알림메시지</a></li>
			  <li><a href="/web/mymsg/receivePinNumberListView">PIN번호함</a></li>
			  <li><a href="/web/mymsg/keepMessageListView">메시지 보관함</a></li>
			</ul>
		  </li>
		  <li class="nth5 activity">
			<a href="javascript:void(0);">활동현황</a>
			<ul id="click05" class="subLnb feTabCont" style="display: none;">
			  <li><a href="/web/mywant/wishProductListView">상품비교</a></li>
			  <li><a href="/web/mycart/productListView">장바구니</a></li>
			  <li><a href="/web/cs/inquireListView">1:1문의</a></li>
			</ul>
		  </li>
		  <li data-tab="click06" class="nth6 member"><a href="javascript:'javascript:void(0);" onclick="displayUserinfoTab();">회원정보수정</a></li>
			<!-- 2018-05-16 추가 및 수정시작 -->
		  <li class="nth7 cscenter"><a href="#">고객센터</a></li>
		  <div style="line-height: 0; margin: 0 0 0 -1px; position: relative;">
			  <img src="${cpath}/img/productListView/my_service_lnb_p01_v2.jpg" alt="전화상담 평일 09시~19시">
			  <a href="/web/cs/inquireUpdateView"><img src="${cpath}/img/productListView/my_service_lnb_p02_v2.jpg" alt="1:1 문의하기"></a>
			  <a style="margin-top:-3px; display: block;" href="http://pf.kakao.com/_xchBxkj/chat" target="_blank">
			  <img src="${cpath}/img/productListView/my_service_lnb_kakao.png" alt="카카오톡 문의하기"></a>
		  </div>
	  </ul>
	</div>
  </div>
</div>

<!-- main -->
<main id="contents" class="myservice">
<div id="tempdiv" style="display: none">
  <div class="prdTracking">
    <div>
      <table>
        <colgroup>
          <col style="width: auto;">
          <col style="width: 145px;">
          <col style="width: 145px;">
          <col style="width: 145px;">
          <col style="width: 145px;">
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">
              <div class="purchase">
                <strong>상품구매현황</strong>
              </div>
            </th>
            <td>
              <div class="complete area">
				<strong>결제완료</strong>
				<a href="#" class="mT4 bgbox">0</a>
				<a href="#" class="payStandby">결제대기 0건</a>
              </div>
            </td>
            <td>
              <div class="complete">
                <strong>상품전달 완료</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
            <td>
              <div class="complete">
                <strong>거래완료</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
            <td>
              <div class="cancel">
                <strong>거래취소</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <div>
      <table>
        <colgroup>
          <col style="width: auto;">
          <col style="width: 145px;">
          <col style="width: 145px;">
          <col style="width: 145px;">
          <col style="width: 145px;">
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">
              <div class="sale">
                <strong>상품판매현황</strong>
              </div>
            </th>
            <td>
              <div class="complete area">
				<strong>결제완료</strong>
				<a href="#" class="mT4 bgbox">0</a>
				<a href="#" class="payStandby">결제대기 0건</a>
              </div>
            </td>
            <td>
              <div class="complete">
                <strong>상품전달 완료</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
            <td>
              <div class="complete">
                <strong>거래완료</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
            <td>
              <div class="cancel">
                <strong>거래취소</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
  <div class="boxStyle" id="orderList">
    <div class="head">
      <h2><span class="tit">최근 구매한 상품</span></h2>
      <p>최근 6개월</p>
      <a href="#" class="pinNumber">
        <img alt="더보기" src="${cpath}/img/btn_moreview.gif">
      </a>
    </div>
    <table class="tableStyle">
      <colgroup>
        <col style="width: 100px;">
        <col style="width: auto;">
        <col style="width: 110px;">
        <col style="width: 110px;">
        <col style="width: 120px;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col">주문번호/주문일</th>
          <th scope="col">상품정보</th>
          <th scope="col">상품금액</th>
          <th scope="col">거래방식</th>
          <th scope="col">거래상태</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="5">데이터가 없습니다.</td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="boxStyle" id="sellList">
    <div class="head">
      <h2><span class="tit">최근 판매한 상품</span></h2>
      <p>최근 6개월</p>
      <a href="#" class="pinNumber">
        <img alt="더보기" src="${cpath}/img/btn_moreview.gif">
      </a>
    </div>
    <table class="tableStyle">
      <colgroup>
        <col style="width: 100px;">
        <col style="width: auto;">
        <col style="width: 110px;">
        <col style="width: 110px;">
        <col style="width: 120px;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col">주문번호/주문일</th>
          <th scope="col">상품정보</th>
          <th scope="col">상품금액</th>
          <th scope="col">거래방식</th>
          <th scope="col">거래상태</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="5">데이터가 없습니다.</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

	<!-- 회원정보 수정 탭 -->
	<div id="userinfotab" style="display: none">
		<!-- 회원정보 수정 배너 -->
		<div class="boxStyle" style="display: block">
			<strong>회원정보수정</strong>
		</div>
		<!-- 회원정보 수정 배너 -->
		
		<!-- 개인정보수정 / 배송지관리 / 회원탈퇴 -->
		<div class="boxStyle">
			<ul class="tabStyle">
				<li><a href="javascript:display_u_info()">개인정보수정</a></li>
				<li><a href="javascript:display_d_list()">배송지관리</a></li>
				<li><a href="javascript:display_u_delete()">회원탈퇴</a></li>
			</ul>
		</div>
		<!-- //개인정보수정 / 배송지관리 / 회원탈퇴 -->
		
		<!-- 메인탭 -->
		<div class="boxStyle" id="user_info_main" style="display: block">
			
			<!-- 비밀번호 확인 페이지 -->
			<div id="check_user" style="display:block">
			
				<div>
					<p>비밀번호 확인</p>
				</div>
				
				<div>
					<p>아이디 : ${mvo.u_ID }</p>
				</div>
				
				<div>
					<span>비밀번호 : </span>
					<input type="password" class="textInp03" id="CHECK_PW" name="CHECK_PW">
					<input type="button" class="btn" onclick="checkPW()" value="확인">
				</div>
			
			</div>
			<!-- // 비밀번호 확인 페이지 -->
			
			<!-- 비밀번호 확인 후 유저 정보 수정 -->
			<div id="update_info" style="display:none">
				<form action="${cpath}/updateUser.do?ID=${mvo.u_ID}" method="post">
					
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
											<span id="memberNm">${mvo.u_NAME}</span>
											<span class="tableMsg">* 개명 후 실명확인기관에 등록된 경우 이름 변경이 가능합니다.</span>
										</div>
									</td>
								</tr>

								<tr>
									<th class="multiLineWr" scope="row">비밀번호</th>
									<td colspan="3">
										<!-- addrWrap -->
										<div class="addrWrap">
											<i class="inpLabel">현재 비밀번호</i>
											<input type="password" id="oldPassword" name="oldPassword" class="textInp03" title="현재 비밀번호" placeholder="기존에 사용하시던 비밀번호를 입력하세요" value="${mvo.u_PW }">
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
									<td colspan="3"><input class="textInp03" id="mobile" name="mobile" value="${mvo.u_MOBILE}">
									<input type="button" class="btn" value="본인인증" onclick="window.open('check.jsp')"></td>
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
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- //tableStyle -->
					<button class="btn" type="submit">정보수정</button>
				</form>
			</div>
			<!-- //비밀번호 확인 후 유저 정보 수정 -->
			
			<!-- d_list_tab -->
			<div id="d_list_tab" style="display:none">
			
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
								<th class="th_txt_style_01" scope="col">수정</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="dvo" items="${dlist }">
								<tr>
									<td><input type="checkbox"></td>
									<td>${dvo.d_name}</td>
									<td>${dvo.d_recipient}</td>
									<td align="left">
										우편번호 : ${dvo.d_post_code}<br>
										주소 : ${dvo.d_addr}
									</td>
									<td>${dvo.d_mobile}</td>
									<td><input type="button" class="btn" value="수정"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div style="text-align: right;">
						<button class="btn" onclick="window.open('${cpath}/addDeliverypage.do?u_id=${mvo.u_ID}', '_blank', 'width=800 height=600')">주소 추가</button>
					</div>

				
			</div>
			<!-- //d_list_tab -->
			
			<!-- u_delete_tab -->
			<div id="u_delete_tab" style="display:none">
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
					<button class="btn" type="submit">탈 퇴</button>
				</div>
				<!-- //btnArea -->
			</div>
			<!-- //feTabCont -->
			</form>
			</div>
			<!-- //u_delete_tab -->
			
			
		</div>
		<!-- //메인탭 -->
		
	</div>
	<!-- //회원정보 수정 탭 -->
	
		
		
		
	
	<script type="text/javascript">
	
		const displayUserinfoTab = () => {
			console.log("displayUserinfoTab()");
			$("#userinfotab").css("display", "block");
			$("#user_info_main").css("display", "block");
			$("#check_user").css("display", "block");
			$("#update_info").css("display", "none");
			$("#d_list_tab").css("display", "none");
			$("#u_delete_tab").css("display", "none");
			
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
				
				parseEmail();
			}
			
			$("#CHECK_PW").val("");
		}
		
		// 개인정보수정, 배송지관리, 회원탈퇴 탭 display
		const display_u_info = () => {
			console.log("display_u_info()");
			$("#check_user").css("display", "block");
			$("#update_info").css("display", "none");
			$("#d_list_tab").css("display", "none");
			$("#u_delete_tab").css("display", "none");
			
			$("#CHECK_PW").val("");
		}
		
		const display_d_list = () => {
			console.log("display_d_list()");
			$("#check_user").css("display", "none");
			$("#update_info").css("display", "none");
			$("#d_list_tab").css("display", "block");
			$("#u_delete_tab").css("display", "none");
			
			$("#CHECK_PW").val("");
		}
		
		const display_u_delete = () => {
			console.log("display_u_delete()");
			$("#check_user").css("display", "none");
			$("#update_info").css("display", "none");
			$("#d_list_tab").css("display", "none");
			$("#u_delete_tab").css("display", "block");
			
			$("#CHECK_PW").val("");
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
</main>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
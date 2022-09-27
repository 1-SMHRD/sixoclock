<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
	    <h3>어서오세요 <strong><span>장해라</span> 회원님</strong></h3>
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
		  <li data-tab="click06" class="nth6 member"><a href="/web/myservice/passwordConfirmView">회원정보수정</a></li>
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
</main>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
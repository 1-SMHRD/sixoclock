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
<title>MyƼ�Ϻ��� | Ƽ�Ϻ���</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body class="goog-te-combo_in">
<div id="container">
<!-- MY Ƽ�Ϻ��� -->
<div class="contentsMenu">
  <!-- Ƽ���� ���ų��� Ȯ�� FORM -->
  <form name="frmMypage" id="frmMypage" method="post" target="popup_mypage">
	<input type="hidden" name="q" id="q2" value="">
  </form>
  <div class="contentsMenuWrap">
    <!-- MYƼ�Ϻ��� �뽬���� -->
	<div class="myBay">
  	  <div class="logo"><a href="/web/myservice/myserviceMain"><img src="${cpath}/img/productListView/tit_myservice07.png" alt="my Ƽ�Ϻ���"></a></div>
	  <div class="my_info_box">
	    <h3>������� <strong><span>���ض�</span> ȸ����</strong></h3>
		  <p>* �游�� ���Ŀ�! �������� �����Ҳ���~</p>
		  <a href="/web/couponzone/couponZoneView" class="rankDetail member"><img src="${cpath}/img/productListView/btn_mem_benefit_v2.png" alt="���� ��������"></a>
	  </div>
	  <ul class="rankPointList">
		  <li>
			<a href="/web/mycash/depositHistoryListView">
			  <span class="tit"><img src="${cpath}/img/productListView/��ġ��.gif" alt="��ġ��"></span>
			  <strong class="point"><span>0</span> ��</strong>
			</a>
 		  </li> 
		  <li>
			<a href="/web/mycoupon/useableCouponListView">
			  <span class="tit"><img src="${cpath}/img/productListView/����.gif" alt="����"></span>
		 	  <strong class="point"><span>0</span> ��</strong>
			</a>  
		  </li>
		  <li>
			<a href="/web/mycash/fanPowerHistoryListView">
			  <span class="tit"><img src="${cpath}/img/productListView/���Ŀ�.gif" alt="���Ŀ�"></span>
			  <strong class="point"><span>0</span> FP</strong>
			</a>
		  </li>
		  <li>
			<a href="/web/mymsg/messageListView">
			  <span class="tit"><img src="${cpath}/img/productListView/�˸��޽���.gif" alt="�˸��޽���"></span>
			  <strong class="point"><span>1</span> ��</strong>
			</a>
		  </li>
		  <li>
			<a href="/web/mymsg/receivePinNumberListView">
			  <span class="tit"><img src="${cpath}/img/productListView/pin��ȣ��.gif" alt="pin��ȣ��"></span>
			  <strong class="point"><span>0</span> ��</strong>
			</a>
		  </li>
	  </ul>
	  <ul class="itemSell">
		  <li>
			<a href="/web/myorder/orderListView" style="display:block;">
			  <span><img src="${cpath}/img/productListView/��������.gif" alt="���� ����"></span>
			  <em>0</em>��
			</a>
		  </li>
		  <li>
			<a href="/web/mysell/sellProductListView" style="display:block;">
			  <span><img src="${cpath}/img/productListView/�Ǹ�����.gif" alt="�Ǹ� ����"></span>
			  <em>0</em>��
			</a>
		  </li>
	  </ul>
	</div>
	<!-- //MYƼ�Ϻ��� �뽬���� -->
		
	<!-- MYƼ�Ϻ��� ����ȸ�� ����Ʈ�޴� -->
	
	
	<div class="boxStyle01 myServiceLnb">
	  <ul class="myClass6">
		  <li class="nth1 order">
			<a href="#">���� ������ ��ǰ</a>
			<ul id="click01" class="subLnb feTabCont" style="display: none;">
			  <!-- 2017-05-15 Left Menu ���� -->
			  <li><a href="/web/myorder/orderListView">�ŷ� ���� ��ǰ</a></li>
			  <li><a href="/web/myorder/completeOrderListView">�ŷ� �Ϸ� ��ǰ</a></li>
			  <li><a href="/web/myorder/cancelOrderListView">�ŷ� ��� ��ǰ</a></li>
			</ul>
		  </li>
		  <li class="nth2 sell">
			<a href="javascript:void(0);">���� �Ǹ��� ��ǰ</a>
			<ul id="click02" class="subLnb feTabCont" style="display: none;">
 			  <!-- 2017-05-15 Left Menu ���� -->
			  <li class="current"><a href="/web/myproduct/productListView">��ǰ ��� ����</a></li>
			  <li><a href="/web/mysell/sellProductListView">�ŷ� ���� ��ǰ</a></li>
			  <li><a href="/web/mysell/completeProductListView">�ŷ� �Ϸ� ��ǰ</a></li>
			  <li><a href="/web/mysell/cancelProductListView">��ҽ��� / ���</a></li>
			</ul>
		  </li>
		  <li class="nth3 benefit">
			<a href="javascript:void(0);">���� ����</a>
			<ul id="click03" class="subLnb feTabCont" style="display: none;">
			  <li><a href="/web/mycash/depositHistoryListView">��ġ�� ����</a></li>
			  <li><a href="/web/mycoupon/useableCouponListView">���� ����</a></li>
			  <li><a href="/web/mycash/fanPowerHistoryListView">���Ŀ� ����</a></li>
			  <li><a href="/web/couponzone/couponZoneView">������</a></li>
			  <li><a href="/web/mycoupon/useablePremiumCouponListView">�ΰ� ����</a></li>
			</ul>
		  </li>
		  <li class="nth4 message">
			<a href="javascript:void(0);">�޽���</a>
			<ul id="click04" class="subLnb feTabCont" style="display: none;">
			  <li><a href="/web/mymsg/messageListView">�˸��޽���</a></li>
			  <li><a href="/web/mymsg/receivePinNumberListView">PIN��ȣ��</a></li>
			  <li><a href="/web/mymsg/keepMessageListView">�޽��� ������</a></li>
			</ul>
		  </li>
		  <li class="nth5 activity">
			<a href="javascript:void(0);">Ȱ����Ȳ</a>
			<ul id="click05" class="subLnb feTabCont" style="display: none;">
			  <li><a href="/web/mywant/wishProductListView">��ǰ��</a></li>
			  <li><a href="/web/mycart/productListView">��ٱ���</a></li>
			  <li><a href="/web/cs/inquireListView">1:1����</a></li>
			</ul>
		  </li>
		  <li data-tab="click06" class="nth6 member"><a href="/web/myservice/passwordConfirmView">ȸ����������</a></li>
			<!-- 2018-05-16 �߰� �� �������� -->
		  <li class="nth7 cscenter"><a href="#">������</a></li>
		  <div style="line-height: 0; margin: 0 0 0 -1px; position: relative;">
			  <img src="${cpath}/img/productListView/my_service_lnb_p01_v2.jpg" alt="��ȭ��� ���� 09��~19��">
			  <a href="/web/cs/inquireUpdateView"><img src="${cpath}/img/productListView/my_service_lnb_p02_v2.jpg" alt="1:1 �����ϱ�"></a>
			  <a style="margin-top:-3px; display: block;" href="http://pf.kakao.com/_xchBxkj/chat" target="_blank">
			  <img src="${cpath}/img/productListView/my_service_lnb_kakao.png" alt="īī���� �����ϱ�"></a>
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
                <strong>��ǰ������Ȳ</strong>
              </div>
            </th>
            <td>
              <div class="complete area">
				<strong>�����Ϸ�</strong>
				<a href="#" class="mT4 bgbox">0</a>
				<a href="#" class="payStandby">������� 0��</a>
              </div>
            </td>
            <td>
              <div class="complete">
                <strong>��ǰ���� �Ϸ�</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
            <td>
              <div class="complete">
                <strong>�ŷ��Ϸ�</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
            <td>
              <div class="cancel">
                <strong>�ŷ����</strong>
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
                <strong>��ǰ�Ǹ���Ȳ</strong>
              </div>
            </th>
            <td>
              <div class="complete area">
				<strong>�����Ϸ�</strong>
				<a href="#" class="mT4 bgbox">0</a>
				<a href="#" class="payStandby">������� 0��</a>
              </div>
            </td>
            <td>
              <div class="complete">
                <strong>��ǰ���� �Ϸ�</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
            <td>
              <div class="complete">
                <strong>�ŷ��Ϸ�</strong>
                <a href="#" class="bgbox">0</a>
              </div>
            </td>
            <td>
              <div class="cancel">
                <strong>�ŷ����</strong>
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
      <h2><span class="tit">�ֱ� ������ ��ǰ</span></h2>
      <p>�ֱ� 6����</p>
      <a href="#" class="pinNumber">
        <img alt="������" src="${cpath}/img/btn_moreview.gif">
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
          <th scope="col">�ֹ���ȣ/�ֹ���</th>
          <th scope="col">��ǰ����</th>
          <th scope="col">��ǰ�ݾ�</th>
          <th scope="col">�ŷ����</th>
          <th scope="col">�ŷ�����</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="5">�����Ͱ� �����ϴ�.</td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="boxStyle" id="sellList">
    <div class="head">
      <h2><span class="tit">�ֱ� �Ǹ��� ��ǰ</span></h2>
      <p>�ֱ� 6����</p>
      <a href="#" class="pinNumber">
        <img alt="������" src="${cpath}/img/btn_moreview.gif">
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
          <th scope="col">�ֹ���ȣ/�ֹ���</th>
          <th scope="col">��ǰ����</th>
          <th scope="col">��ǰ�ݾ�</th>
          <th scope="col">�ŷ����</th>
          <th scope="col">�ŷ�����</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="5">�����Ͱ� �����ϴ�.</td>
        </tr>
      </tbody>
    </table>
  </div>
</main>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
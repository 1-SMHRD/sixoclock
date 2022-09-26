<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<script type="text/javascript">

window.onload = function(){
    document.getElementById("goodsName").onclick = function(){
       window2= window.open("${cpath}/category.do",
        		"카테고리선택","width=600px,height=780px,top=200px;");
       window2.parentWindow = window
    }
};
/* function goodsName11(){
    window2 = window.open("http://localhost:8081/ticketbay/category.do",
    		"카테고리선택","width=600px,height=780px,top=200px;");
    window2.parentWindow = window
 } */
 
</script>
<jsp:include page="header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>상품등록|티켓</title>
<link rel="stylesheet" href="${cpath}/css/styleList.css?after">
<link rel="stylesheet" href="${cpath}/css/common.css?after">
<link rel="stylesheet" href="${cpath}/css/header_sales.css?after">
</head>
<body class="goog-te-combo_in">
	<div id="container" class="bg_01">
		<main id="contents" class="wd_100p">
			<form name="major" action="#" method="post">
				<div class="tit_box_04">
					<h2>판매등록</h2>
				</div>
				<!-- 01 카테고리 선택 박스 // -->
				<div class="box_style_03 pt20">
					<div class="in_box_01">
						<h3>
							카테고리 선택 <span class="required">(필수)</span>
						</h3>
						<a id="savedProductListPopupTrigger"
							href="/web/myproduct/savedProductListPop" class="btn_sm_01 mt_10">최근
							상품 불러오기</a>
					</div>
					<div class="in_box_02 mt10">
						<input id="goodsName" name="PROD_NAME"
							type="text" class="textInp03" autocomplete="off"
							placeholder="카테고리를 선택하세요." readonly="true">
					</div>
					<div class="clear"></div>
					<div class="in_box_03" style="display: block">
						<img id="tixketimg" src="${cpath}/img/티켓이미지.jpg" alt="결과 없음"><br><br>
						<strong>카테고리를 먼저 선택</strong> 하시면 입력 양식이 추가 생성 됩니다.
					</div>
					<!-- // 안내영역 -->
					<input type="hidden" id="CATE_SEQ" name="CATE_SEQ" value="">
					<input type="hidden" name="CATE_COMPARE">
				</div>
				<div id="include_view"></div>
				<!-- 04 하단 안내 박스 // -->
				<div class="box_style_05 mt_20 mb_20">
					<ul class="info_txt">
						<li>판매금액에 맞춰 수수료가 자동으로 계산됩니다. <a
							onclick="window.open('http://localhost:8081/ticketbay/html&jsp/commission.jsp', '카테고리별 수수료 안내- 프로필1','width=550, height=1000'); return false"
							id="categoryCommisionPopupTrigger" class="btn_st_00 ml_10">카테고리별
								수수료 보기</a>
						</li>
						<li>등록하신 상품은 30일간 판매 게시 되며 판매중지가 될 경우 90일뒤 자동 삭제 됩니다.</li>
						<li>거래 완료 시 판매 가격의 일부가 팬파워(FP)로 적립 됩니다. 단 굿즈, 특가마켓 카테고리는 제외
							됩니다.<br> 적립율은 [My티켓베이 &gt; 팬파워내역]에서 확인이 가능합니다.<br> 시스템
							오작동, 조작 또는 어뷰징등의 통한 팬파워(FP)의 부적절한 적립을 할 경우 차감 또는 패널티 등의 제제가 발생 할
							수 있습니다.
						</li>
						<li>직전 년도 기준 거래 횟수 50회 이상 또는 부가가치세법상 간이과세자가 아닌경우 통신판매업신고를
							진행하셔야 합니다.</li>
						<li>사업자 등록 없이 사업을 영위하는 경우에는 부가가치세법상 가산세 부담 등의 불이익을 받을 수 있습니다.</li>
						<li>티켓베이에서 물품을 판매한 모든 회원들의 판매 자료는 국세청의 요청에 따라 제공될 수 있으며,<br>
							티켓베이는 거래 중개자로서 회원 간의 거래에 대하여 일체의 책임을 지지 않습니다.
						</li>
						<li>무료티켓 및 초대권은 판매를 엄격히 금하고 있으며 불이행 시 책임은 판매자에게 있습니다.</li>
						<li>판매 물품에 대한 책임은 판매자에게 있으며 판매물품에 대해 구매자에게 정상적으로 제공할 의무가
							있습니다.<br> 의무 위반 시 취소수수료 또는 사이트 이용 제한이 발생 할 수 있습니다.
						</li>
					</ul>
					<div class="clear"></div>
				</div>
				<div class="lv_popup sell_info_box_gr" style="display: none">
					<div class="sell_info_box">
						<div class="popup_in_sell_info_gr">
							<div>
								<div class="sell_info_txt_01" id="pop_cate"></div>
							</div>
							<div class="sell_info_txt_05" id="pop_ticket">
								<span id="pop_area"></span>
								<span id="pop_row"></span>
								<span id="pop_floor"></span>
								<span id="pop_grade"></span>
							</div>
							<div class="sell_info_txt_02" id="pop_title"></div>
							<div class="sell_info_txt_03" id="pop_date"></div>
							<div class="sell_info_txt_04">
								수량 : <span id="pop_qty"></span>
							</div>
							<div>
								<div style="margin: -6px 0 10px 0;" id="pop_etc"></div>
							</div>
							<div class="sell_info_txt_06" id="pop_seat"></div>
							<div class="sell_info_txt_08" id="pop_transType"></div>
							<div class="sell_info_txt_09" id="pop_transTime">
								<span id="pop_transTimeNow"></span>
							</div>
							<ul class="ul_st01">
								<li><span>판매가격</span> <strong id="pop_price">￦0</strong></li>
								<li><span>할인쿠폰</span> <strong id="pop_coupon">사용</strong></li>
								<li><span>판매수수료</span> <strong id="pop_commision">￦0(0%)</strong></li>
								<li><span>팬파워 혜택</span> <strong id="pop_fanpoint">0FP</strong></li>
								<li class="point_gr"><span>판매 후 수령 금액</span> <strong
									id="pop_totalEarnPriceIfSoldout">￦0</strong></li>
							</ul>
							<div class="info_st01">
								<h3>주의사항</h3>
								<ul>
									<li>1. 매매계약 완료 : 구매자의 결제 발생 시 계약완료</li>
									<li>2. 매매계약 취소 : 체결 후 거래 취소 불가</li>
									<li>3. 판매자의 의무 : 구매자에게 약속한 상품을 제공</li>
									<li>4. 판매의무 위반 : 취소수수료 부과 및 서비스 이용 제한</li>
									<li>※ 세부적인 내용은 이용약관 페이지 참고</li>
								</ul>
							</div>
							<div class="in_box_01" style="margin: 10px 0 -10px 0; text-align: center;">
								<label> 
									<input name="agree_check" id="agree_check" type="checkbox" class="ck_img" value="">
									<span>주의사항을 확인하였으며 동의합니다.</span>
								</label>
							</div>
						</div>
					</div>
				</div>
			</form>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<div class="dimds_box"></div>
</body>
</html>

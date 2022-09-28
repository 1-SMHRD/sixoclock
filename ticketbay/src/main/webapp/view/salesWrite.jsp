<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품등록 | 티켓베이</title>

<link rel="stylesheet" href="${cpath}/css/styleList.css?after">
<link rel="stylesheet" href="${cpath}/css/common.css?after">
<link rel="stylesheet" href="${cpath}/css/header_sales.css?after">
<link rel="stylesheet" href="${cpath}/css/dealing.css?after">
<link rel="stylesheet" href="${cpath}/css/salesWrite.css?after">
<jsp:include page="header.jsp"></jsp:include>
</head>
<body class="goog-te-combo_in">
	<form class="form-horizontal" action="${cpath}/salesWrite.do" method="post">
	  <input type="hidden" name="u_ID" value="${mvo.u_ID}">
		<div class="tit_box_04">
			<h2>판매등록</h2>
		</div>
		<div class="box_style_04 mt_20" style="display: block;">
			<h2>상품정보 등록</h2>
			<ul>
				
				<li id="pd_category" style="display: block;">
					<h3>
						카테고리 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01">
						<select id="locSelect" class="select_style_01 wd_470 mb10" name="p_cateDeps1">
						   <option value="">선택</option>
						   <option value="콘서트">콘서트</option>
						   <option value="스포츠">스포츠</option>
						   <option value="뮤지컬/연극">뮤지컬/연극</option>
						   <option value="영화/전시">영화/전시</option>
						</select>
					</div>
					<div class="in_box_01">
						<select id="locSelect" class="select_style_01 wd_470 mb10" name="p_cateDeps2">
						   <option value="">선택</option>
						   <option value="하이라이트">하이라이트</option>
						   <option value="블랙핑크">블랙핑크</option>
						   <option value="김호중">김호중</option>
						   <option value="그랜드민트페스티벌">그랜드 민트 페스티벌</option>
						   <option value="포레스텔라">포레스텔라</option>
						</select>
						
					</div>
					<div class="clear"></div>
				</li>
				
				<!-- 공연일시 선택 // -->
				<li id="" style="display: block;">
					<!-- 기존 id="pd_PUSEDATE" -->
					<h3>
						공연일 <span class="required">(필수)</span>
					</h3>
					<div class="float_r wd_760">
						<div class="in_box_01">
							<!-- 공연일 -->
							<input type="date" name="p_indate" 
								class="textInp03 input_style_01 hasDatepicker" 
								title="공연일" style="width:79px; font-weight: bold;" id="dp1664287470517">
								<input type="time" name="p_indate" 
								class="textInp03 input_style_01 hasDatepicker" 
								title="공연시간" style="width:79px; font-weight: bold;" id="time">
							<div class="required_txt mt_10">
							사용일자가 종료되면 상품이 더 이상 노출되지 않습니다.</div>
							<div class="required_txt">
							사용일시를 정확히 선택하여야 구매자와의 분쟁을 방지할 수 있습니다.(사용시간까지 정확히 입력해주세요)</div>	
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 공연일시 선택  -->

				<!-- 티켓 매수  // -->
				<li id="">
					<h3>
						티켓 매수 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01">
						<!-- 수량 -->
						<!-- .required_input 말풍선 on/off -->
						<input type="number" id="sellTotal" name="p_tkCount"
							class="input_style_02 txt_c"
							style="width: 205px !important;" maxlength="4"
							placeholder="전체 수량 입력">
						<div class="tip_txt_mp" id="restrict_txt" style="display: none;">
							<span>판매 수량을 다시 입력해 주세요</span> <span class="tip_txt_mp_bg"></span>
						</div>


						<!-- 판매 매수 제한 문구 추가 시작 dp_b-->
						<div class="required_txt mt_10" id="restrict_cnt"
							style="display: none"></div>
						<!-- 판매 매수 제한 문구 추가 끝 -->
						<div class="required_txt pl_10 dp_b mt_10">상품 수량은 일괄로 한번에 판매됩니다.</div>


					</div>
					<div class="clear"></div>
				</li>
				<!-- // 티켓 매수  -->

				<!-- 좌석 정보  // -->
				<li id="pd_SINFO" style="display: block;">
					<h3>
						좌석정보 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01">
						<!-- 구역 정보 없을 경우 기존  input 노출 -->
						<input type="text" id="areaInput" name="p_seatInfo"
							class="input_style_02 wd_470 box-sizing mb10"
							placeholder="구역(존/블럭) 입력 EX)A" maxlength="10"
							style="display: block;">
						<!-- // 구역 정보  -->
						<input type="text" name="p_seatInfo"
							class="input_style_02 wd_470 box-sizing mb10"
							placeholder="열 입력 EX)88" maxlength="10">
						<input type="text" name="p_seatInfo"
							class="input_style_02 wd_470 box-sizing"
							placeholder="선택사항 : 추가정보 최대 10글자 입력 가능" maxlength="10">
						<div class="required_txt mt_10">좌석정보는 숫자와 영문으로 입력하셔야 거래 성사율을
							높일 수 있습니다.</div>
						<div class="required_txt">특수문자, 한글 입력 시 외국인과의 거래 성사율이 현저히 낮아
							집니다. (단, 구역 명이 한글인 경우는 제외)</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 좌석 정보  -->

				<!-- 상품 사진  // -->
				<li id="pd_PIMG">
					<h3>
						상품 사진 <span class="">(선택)</span><span class="txt_info_01">업로드
							이미지 저작권 및<br> 초상권 관련 책임은<br> 게시자 본인에게 있습니다.
						</span>
					</h3> 
					<div class="in_box_01">
						<div class="product_photo_frame">
							<ul class="list clearfix">
								<li><input id="imagesAdd1" type="file" accept="image/*"
									name="p_imgRoute"> <span class="picImg"> <label
										for="imagesAdd1"> <img src="${cpath}/img/카메라.svg">
									</label>
								</span> <span class="del btnClose hidden-object" style="display: none;">
								</span></li>

								<li>
								<input id="imagesAdd2" type="file" accept="image/*" name="p_imgRoute" onchange="setThumnail(event);" multiple/>
								<span class="picImg">
								  <label for="imagesAdd2"><img src="${cpath}/img/카메라.svg"></label>
								</span>
								<span class="del btnClose hidden-object" style="display: none;"></span>
								</li>
								<li><input id="imagesAdd3" type="file" accept="image/*"
									name="p_imgRoute"><span class="picImg"><label
										for="imagesAdd3"><img src="${cpath}/img/카메라.svg"></label></span><span
									class="del btnClose hidden-object" style="display: none;"></span></li>
								<li><input id="imagesAdd4" type="file" accept="image/*"
									name="p_imgRoute"><span class="picImg"><label
										for="imagesAdd4"><img src="${cpath}/img/카메라.svg"></label></span><span
									class="del btnClose hidden-object" style="display: none;"></span></li>
							</ul>
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 상품 사진 -->
			</ul>
		</div>

		<!-- 02 거래방식 등록  // -->
		<div class="box_style_04 mt_20" style="display: block;">
			<h2>거래방식 등록</h2>
			<ul>
				<!-- 거래 방식 선택 // -->
				<li>
					<h3 class="h3_style_02">
						거래 방식 선택 <span>(중복 선택 가능)</span><a class="btn_info btn_tranInfo"></a>
					</h3>
					<div class="in_box_01">
						<div class="modeTransaction">

							<label class="TYPE_02">
								<input type="checkbox" name="p_dealMethod" value="베송거래">
								<span class="TRANSACTION_TYPE2">배송거래</span> </label>
							<label class="TYPE_01">
								<input
								type="checkbox" name="p_dealMethod" value="PIN거래(E-ticket)">
								<span class="TRANSACTION_TYPE1">PIN거래(E-ticket)</span></label>
							<label class="TYPE_03">
								<input type="checkbox" name="p_dealMethod" value="현장거래">
								<span class="TRANSACTION_TYPE4">현장거래</span></label>
							<label class="TYPE_05">
								<input
								type="checkbox" name="p_dealMethod" value="기타">
								<span class="TRANSACTION_TYPE5">기타</span></label>

							<!-- 배송비 수정 -->
							<span class="li_type_2" style="display: none;" id="checkbox1818"> <span
								class="TYPE_02_SUB" style="margin: 8px 0;">
									<h4>배송비</h4>
									<ul class="transaction_type_sub_box_info_txt">
										<li>배송비는 판매자가 부담합니다.</li>
									</ul> <!-- 콘서트.스포츠, 뮤지컬/연극 카테고리만 해당 // -->
									<div id="TYPE_02_SUB_DEPTH1" class="zipCode_input_gr" style="">
										<!-- <ul class="transaction_type_sub_box_info_txt">
										<li>
										예매처 배송지를 구매자 주소로 변경 시 문제가 발생 할 가능성이 있습니다.<br> 
										꼭 판매자가 수령 이후 전달해 주세요.<br>
										</li>
									</ul> -->
										<h4 class="mt_15 mb_10">
											배송지역 <span class="required">(필수)</span>
										</h4>
										<!-- 우편변호 조회 // -->
										<input type="text" name="POSTAL_CODE" value="" id="zipCode"
											title="우편번호" class="input_style_02"
											style="width: 80px !important;" placeholder="우편번호"
											readonly="readonly"> <span class="f_right"><a
											href="#" class="btn_sm_01 btnSendPostalCode">기존정보 불러오기</a></span> <span
											class="f_right"><a href="#"
											class="btn_sm_01 mr5 txt_c btnSearchZipCode"
											style="width: 75px; margin-left: 1px;">조회</a></span> <input
											type="text" name="EngAddr1" value="" id="EngAddr1"
											title="지번주소" readonly="readonly" placeholder="지역"
											class="input_style_02 dp_b mt_10 mb_10"
											style="width: 330px !important;"> <input
											type="hidden" name="CITY" id="CITY" value=""> <input
											type="hidden" name="ADDR1" id="ADDRESS1" value=""> <input
											type="hidden" name="ADDR2" id="ADDRESS2" value=""> <input
											type="hidden" name="COUNTRY_CODE" value="KR">
										<!-- // 우편변호 조회 -->
										<ul class="transaction_type_sub_box_info_txt">
											<li>배송 시작 지역을 정확히 선택해 주세요</li>
											<li>해외 배송 시 DHL 픽업 방문을 위해 필요해요</li>
											<li>티켓베이가 제공하는 DHL 해외배송 이용 시 배송비 무료</li>
										</ul>
									</div> <!-- 콘서트.스포츠, 뮤지컬/연극 카테고리만 해당 // -->
							</span>
							</span>
							<!-- // 배송비 수정 -->

							<span class="li_type_1" style="display: none;"> <span
								class="TYPE_01_SUB">
									<h4>PIN거래(E-ticket) 거래방법</h4>
									<ul class="transaction_type_sub_box_info_txt">
										<li>PIN거래(E-ticket)거래는 PIN 번호 전달 방식 또는 티켓 파일(pdf 등) 을
											구매자에게 전달하는 거래 방식 입니다.</li>
										<li>구매자에게 핀번호 또는 티켓 파일을 전달하세요.</li>
										<li style="letter-spacing: -0.25px;">위 방식이 아닌 경우 ‘기타’ 거래로
											등록하셔야 구매자와의 분쟁을 방지할 수 있으며 거래 성사율을 높일 수 있습니다.</li>
									</ul>
							</span>
							</span> <span class="li_type_4" style="display: none;"> <span
								class="TYPE_04_SUB">
									<h4>현장거래</h4> <input type="text"
									id="preferLocationPopupTrigger" name="SITE_PREFER_AREA"
									class="input_style_03" value="" title="거래 선호지역"
									readonly="readonly" placeholder="거래 선호지역 선택"
									style="max-width: 190px;" disabled=""> <input
									type="text" name="SITE_PREFER_AREA_DETAIL"
									class="input_style_02" title="상세위치입력"
									style="width: 202px !important" placeholder="상세 지역을 입력해 주세요."
									disabled="">
							</span>
							</span> <span class="li_type_16" style="display: none;"> <span
								class="TYPE_05_SUB">
									<h4>기타 방식 거래방법</h4>
									<ul class="transaction_type_sub_box_info_txt">
										<li>티켓을 전달하는 방법을 상세 내용에 꼭 기재해 주세요.</li>
									</ul>
							</span>
							</span>
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 거래 방식 선택 -->

				<!-- 티켓 보유 여부 // -->
				<li id="ticket_retnetion_box">
					<h3>
						티켓보유 여부 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01">
						<label class="dp_b">
							<input id="ticket_retention_type_y"
							type="radio" name="p_tkPossession" value="Y"
							class="stFormEl01 ticket_retention_y">
							<span>보유 : 현재 티켓 보유중 </span>
							<div class="ticket_retention_type_info_y">
								결제 발생 시 구매자에게 티켓 전달 일정을 꼭 알려주세요
								<!-- PIN(E-ticket), 배송거래의 경우<br>
							구매자 결제 이후 <b>72시간</b> 이내 전달 필수! -->
							</div>
						</label> 
						<label class="dp_b">
							<input id="ticket_retention_type_n"
							type="radio" name="p_tkPossession" value="N"
							class="stFormEl01 ticket_retention_n">
							<span>미 보유 : 예매 완료 후 수령 대기중 </span>
							<div class="ticket_retention_type_info_n">
								티켓 수령 예정일을 선택 하세요<br> 결제 발생 시 구매자에게 티켓 전달 일정을 꼭 알려주세요
								<!-- 
							구매자 결제 후 전달 가능한 날짜 입력<br>
							선택 날짜 이후에는 자동으로 티켓 보유중으로 변경 됩니다.
						 	-->
								<div class="inpCal mt10">
									<input type="date" id="RETENTION_DATE"
										name="TICKET_RETENTION_DATE"
										class="textInp02 input_style_01 hasDatepicker" title="날짜 입력"
										placeholder="날짜 입력">
								</div>
							</div>
						</label>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 티켓 보유 여부 -->

				<!-- 거래설명 에디터 // -->
				<li id="pd_PINFO">
					<h3>
						거래설명 <span id="pd_PINFO_etc" class="required">(필수)</span>
					</h3>
					<tr>
						<td colspan="2">
						<textarea cols="150" rows="10" 
							style="width: 895px; border: solid 1px #efefef; border-radius: 15px; padding: 20px;
    						font-size: 15px; margin-top: 10px; font-weight: bold; font-family: NanumSquareRound; color: #666;"
    						name="p_dealInfo"  placeholder="특이사항을 작성해주세요"></textarea></td>
					</tr>
					<div class="in_box_01">
						<div id="goodsExplanation">
							<textarea id="majorEditor" name="PROD_DESC"
								style="visibility: hidden; display: none;"></textarea>
							<div id="cke_majorEditor"
								class="cke_1 cke cke_reset cke_chrome cke_editor_majorEditor cke_ltr cke_browser_webkit"
								dir="ltr" lang="ko" role="application"
								aria-labelledby="cke_majorEditor_arialbl">
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 거래설명 에디터 -->
			</ul>
		</div>

		<!-- 03 판매가격 등록 // -->

		<div class="box_style_04 mt_20" style="display: block;">
			<h2>판매가격 등록</h2>
			<ul>
			
				

				<!-- 판매 가격 // -->
				<li id="salespay">
					<h3 style="width: 230px !important;">
						판매 가격 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01" style="width: 700px;">
						<div class="t_pay_gr">
							
								<strong>입찰마감일</strong><br>
							
							<div class="t_pay_gr_txt_01">
								<strong><span id="min_sale_price">
								<input
									type="date" id="p_bid_date" name="p_biddate"
									class="input_style_02 txt_c"
									style="font-size: 16px; font-weight: bold;"
									placeholder="입찰마감일" maxlength="10">
								</span></strong>
							</div>
							<div class="t_pay_gr_txt_02">
								<span></span>
							</div>
							<div class="t_pay_gr_txt_03">
								<strong>매수당가격 (￦)</strong>
								<span class="span_total">
								<input onkeyup="printPaynow()"
									type="text" id="p_pay" name="p_buyImmed"
									class="input_style_02 txt_c"
									style="font-size: 18px; font-weight: bold;"
									placeholder="즉시 구매 가격" maxlength="10">
								<input onkeyup="printPaybid()"
									type="text"  id="p_min_bid" name="p_minBid"
									class="input_style_02 txt_c"
									style="font-size: 18px; font-weight: bold;"
									placeholder="최소 입찰 가격" maxlength="10">
								</span>
							</div>
						</div>


						<!-- 정가이하 체크 박스 영역 -->
						<div class="s_ctg_box_gr mt_10" id="below_div"
							style="display: inline-block;">
							<input name="BELOW_COST_USED" id="BELOW_COST_USED" type="hidden"
								class="" value="N"> <label> <input
								name="p_paycommission" id="below_check" type="checkbox"
								class="ck_img" value=""> <span>정가이하로 판매 하겠습니다.
									(수수료 무료)
							</span></label>
						</div>
						<!-- // 정가이하 체크 박스 영역 -->

					</div>
					<div class="clear"></div>
				</li>
				<!-- // 판매 가격 -->
				
				<script>
				function printPaynow(){
					let pay = document.getElementById("p_pay").value;
					document.getElementById("td_pPay").innerText = "￦"+pay;
				}
				
				function printPaybid(){
					let pay = document.getElementById('p_min_bid').value;
					document.getElementById("td_pMinBid").innerText = "￦"+pay;
				}
				
				</script>
				<!-- 판매 금액 확인   // -->
				<li id="pd_TPRICE" style="display: block;">
					<h3>판매 금액 확인</h3>
					<div class="in_box_01">
						<table class="table_st_03">
							<tbody>
								<tr>
									<th>즉시구매가격</th>
									<th>최소입찰가격</th>
									<th>판매수수료</th>
								</tr>
								<tr>
									<td id="td_pPay">￦0</td>
									<td id="td_pMinBid">￦0</td>
									<td id="td_pcommission">￦0</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="clear"></div>
				</li>
			</ul>

			<!-- 버튼영역 // -->
			<div class="btnArea">
				<input type="hidden" name="IS_TEMP" value="N">


				<button type="submit" id="registNormalTrigger"
					class="btn_st_06"
					style="width: 200px; display: block; margin: 50px auto 100px auto;">등록</button>
				<div class="clear"></div>

			</div>

		</div>
	</form>
<jsp:include page="footer.jsp"></jsp:include>
</html>
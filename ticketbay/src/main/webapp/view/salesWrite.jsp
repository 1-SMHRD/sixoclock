<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${cpath}/css/sales1.css">
<link rel="stylesheet" href="${cpath}/css/dealing.css">
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<form class="form-horizontal" action="${cpath}/boardWrite.do"
		method="post">
		<div class="box_style_04 mt_20" style="display: block;">
			<h2>상품정보 등록</h2>
			<ul>
				<!-- 공연일시 선택 // -->
				<li id="pusedSelect" style="display: block;">
					<!-- 기존 id="pd_PUSEDATE" -->
					<h3>
						공연일 <span class="required">(필수)</span>
					</h3>
					<div class="float_r wd_760">
						<div class="ck_img_btn_gr">
							<script id="categoryPerformTmpl" type="text/x-jquery-tmpl">

							{{each(i, row) DATA}}
								<label class="ck_radio_btn">
									<input type="radio" name="concert_date" value="{{= row.VALUE}}">
									<span>{{= row.VIEW}}</span>
								</label>
							{{/each}}
						</script>

							<label class="ck_radio_btn"> <input type="text" id="a1" name="" value="" readonly> 
								<span> aaa
								<td type="text" id="a1" name="" value="" readonly></td>
								</span>
							</label>
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 공연일시 선택  -->

				<!-- 기존 기타카테고리 선택 시 // -->
				<li id="pd_PUSEDATE" style="display: none;">
					<h3>
						티켓 사용일시 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01">
						<select id="useDate" name="TERM_TYPE"
							class="stFormEl01 select_style_01 float_l mr_10" title="사용기간"
							style="display: none">
							<option value="">선택</option>
							<option value="2">특정일 사용</option>

						</select>
						<div id="useTermWrap">
							<!-- 특정기간 사용일때 노출되는 폼 -->
							<!-- calcArea -->
							<div id="useTerm2" class="calcArea useTerm">
								<!-- inpCal -->
								<div class="inpCal">
									<input type="text" name="START_DATE"
										class="textInp03 input_style_01 hasDatepicker" title="검색 시작일"
										style="width: 79px" id="dp1663305388884" readonly="readonly"><img
										class="ui-datepicker-trigger" src="" alt="달력" title="달력">
								</div>
								<!-- //inpCal -->
								<div>
									<select name="START_DATE_HOUR"
										class="stFormEl01 select_style_01" style="width: 80px;">

										<option value="00">00시</option>

										<option value="01">01시</option>

										<option value="02">02시</option>

										<option value="03">03시</option>

										<option value="04">04시</option>

										<option value="05">05시</option>

										<option value="06">06시</option>

										<option value="07">07시</option>

										<option value="08">08시</option>

										<option value="09">09시</option>

										<option value="10">10시</option>

										<option value="11">11시</option>

										<option value="12">12시</option>

										<option value="13">13시</option>

										<option value="14">14시</option>

										<option value="15">15시</option>

										<option value="16">16시</option>

										<option value="17">17시</option>

										<option value="18">18시</option>

										<option value="19">19시</option>

										<option value="20">20시</option>

										<option value="21">21시</option>

										<option value="22">22시</option>

										<option value="23">23시</option>

									</select> <select name="START_DATE_MIN"
										class="stFormEl01 select_style_01" style="width: 80px;">

										<option value="00">00분</option>

										<option value="01">01분</option>

										<option value="02">02분</option>

										<option value="03">03분</option>

										<option value="04">04분</option>

										<option value="05">05분</option>

										<option value="06">06분</option>

										<option value="07">07분</option>

										<option value="08">08분</option>

										<option value="09">09분</option>

										<option value="10">10분</option>

										<option value="11">11분</option>

										<option value="12">12분</option>

										<option value="13">13분</option>

										<option value="14">14분</option>

										<option value="15">15분</option>

										<option value="16">16분</option>

										<option value="17">17분</option>

										<option value="18">18분</option>

										<option value="19">19분</option>

										<option value="20">20분</option>

										<option value="21">21분</option>

										<option value="22">22분</option>

										<option value="23">23분</option>

										<option value="24">24분</option>

										<option value="25">25분</option>

										<option value="26">26분</option>

										<option value="27">27분</option>

										<option value="28">28분</option>

										<option value="29">29분</option>

										<option value="30">30분</option>

										<option value="31">31분</option>

										<option value="32">32분</option>

										<option value="33">33분</option>

										<option value="34">34분</option>

										<option value="35">35분</option>

										<option value="36">36분</option>

										<option value="37">37분</option>

										<option value="38">38분</option>

										<option value="39">39분</option>

										<option value="40">40분</option>

										<option value="41">41분</option>

										<option value="42">42분</option>

										<option value="43">43분</option>

										<option value="44">44분</option>

										<option value="45">45분</option>

										<option value="46">46분</option>

										<option value="47">47분</option>

										<option value="48">48분</option>

										<option value="49">49분</option>

										<option value="50">50분</option>

										<option value="51">51분</option>

										<option value="52">52분</option>

										<option value="53">53분</option>

										<option value="54">54분</option>

										<option value="55">55분</option>

										<option value="56">56분</option>

										<option value="57">57분</option>

										<option value="58">58분</option>

										<option value="59">59분</option>

									</select>
								</div>
							</div>
							<!-- //calcArea -->

							<!-- calcArea -->
							<div id="useTerm3" class="calcArea useTerm wd_450_lh35_ofw_auto"
								style="visibility: hidden; position: absolute;">
								<!-- inpCal -->
								<div class="inpCal">
									<input type="text" name="START_DATE"
										class="textInp03 range-date-from input_style_01 hasDatepicker"
										title="검색 시작일" id="dp1663305388885" readonly="readonly"
										disabled=""><img class="ui-datepicker-trigger" src=""
										alt="달력" title="달력">
								</div>
								<!-- //inpCal -->
								<div class="float_l">
									<select name="START_DATE_HOUR"
										class="stFormEl01 select_style_01" disabled="">

										<option value="00">00시</option>

										<option value="01">01시</option>

										<option value="02">02시</option>

										<option value="03">03시</option>

										<option value="04">04시</option>

										<option value="05">05시</option>

										<option value="06">06시</option>

										<option value="07">07시</option>

										<option value="08">08시</option>

										<option value="09">09시</option>

										<option value="10">10시</option>

										<option value="11">11시</option>

										<option value="12">12시</option>

										<option value="13">13시</option>

										<option value="14">14시</option>

										<option value="15">15시</option>

										<option value="16">16시</option>

										<option value="17">17시</option>

										<option value="18">18시</option>

										<option value="19">19시</option>

										<option value="20">20시</option>

										<option value="21">21시</option>

										<option value="22">22시</option>

										<option value="23">23시</option>

									</select> <select name="START_DATE_MIN"
										class="stFormEl01 select_style_01" disabled="">

										<option value="00">00분</option>

										<option value="01">01분</option>

										<option value="02">02분</option>

										<option value="03">03분</option>

										<option value="04">04분</option>

										<option value="05">05분</option>

										<option value="06">06분</option>

										<option value="07">07분</option>

										<option value="08">08분</option>

										<option value="09">09분</option>

										<option value="10">10분</option>

										<option value="11">11분</option>

										<option value="12">12분</option>

										<option value="13">13분</option>

										<option value="14">14분</option>

										<option value="15">15분</option>

										<option value="16">16분</option>

										<option value="17">17분</option>

										<option value="18">18분</option>

										<option value="19">19분</option>

										<option value="20">20분</option>

										<option value="21">21분</option>

										<option value="22">22분</option>

										<option value="23">23분</option>

										<option value="24">24분</option>

										<option value="25">25분</option>

										<option value="26">26분</option>

										<option value="27">27분</option>

										<option value="28">28분</option>

										<option value="29">29분</option>

										<option value="30">30분</option>

										<option value="31">31분</option>

										<option value="32">32분</option>

										<option value="33">33분</option>

										<option value="34">34분</option>

										<option value="35">35분</option>

										<option value="36">36분</option>

										<option value="37">37분</option>

										<option value="38">38분</option>

										<option value="39">39분</option>

										<option value="40">40분</option>

										<option value="41">41분</option>

										<option value="42">42분</option>

										<option value="43">43분</option>

										<option value="44">44분</option>

										<option value="45">45분</option>

										<option value="46">46분</option>

										<option value="47">47분</option>

										<option value="48">48분</option>

										<option value="49">49분</option>

										<option value="50">50분</option>

										<option value="51">51분</option>

										<option value="52">52분</option>

										<option value="53">53분</option>

										<option value="54">54분</option>

										<option value="55">55분</option>

										<option value="56">56분</option>

										<option value="57">57분</option>

										<option value="58">58분</option>

										<option value="59">59분</option>

									</select>
								</div>
								<em>~</em>
								<!-- inpCal -->
								<div class="inpCal">
									<input type="text" name="END_DATE"
										class="textInp03 range-date-to input_style_01 hasDatepicker"
										title="검색 종료일" id="dp1663305388886" readonly="readonly"
										disabled=""><img class="ui-datepicker-trigger" src=""
										alt="달력" title="달력">
								</div>
								<!-- //inpCal -->
								<div>
									<select name="END_DATE_HOUR" class="stFormEl01 select_style_01"
										disabled="">

										<option value="00">00시</option>

										<option value="01">01시</option>

										<option value="02">02시</option>

										<option value="03">03시</option>

										<option value="04">04시</option>

										<option value="05">05시</option>

										<option value="06">06시</option>

										<option value="07">07시</option>

										<option value="08">08시</option>

										<option value="09">09시</option>

										<option value="10">10시</option>

										<option value="11">11시</option>

										<option value="12">12시</option>

										<option value="13">13시</option>

										<option value="14">14시</option>

										<option value="15">15시</option>

										<option value="16">16시</option>

										<option value="17">17시</option>

										<option value="18">18시</option>

										<option value="19">19시</option>

										<option value="20">20시</option>

										<option value="21">21시</option>

										<option value="22">22시</option>

										<option value="23" selected="selected">23시</option>

									</select> <select name="END_DATE_MIN" class="stFormEl01 select_style_01"
										disabled="">

										<option value="00">00분</option>

										<option value="01">01분</option>

										<option value="02">02분</option>

										<option value="03">03분</option>

										<option value="04">04분</option>

										<option value="05">05분</option>

										<option value="06">06분</option>

										<option value="07">07분</option>

										<option value="08">08분</option>

										<option value="09">09분</option>

										<option value="10">10분</option>

										<option value="11">11분</option>

										<option value="12">12분</option>

										<option value="13">13분</option>

										<option value="14">14분</option>

										<option value="15">15분</option>

										<option value="16">16분</option>

										<option value="17">17분</option>

										<option value="18">18분</option>

										<option value="19">19분</option>

										<option value="20">20분</option>

										<option value="21">21분</option>

										<option value="22">22분</option>

										<option value="23">23분</option>

										<option value="24">24분</option>

										<option value="25">25분</option>

										<option value="26">26분</option>

										<option value="27">27분</option>

										<option value="28">28분</option>

										<option value="29">29분</option>

										<option value="30">30분</option>

										<option value="31">31분</option>

										<option value="32">32분</option>

										<option value="33">33분</option>

										<option value="34">34분</option>

										<option value="35">35분</option>

										<option value="36">36분</option>

										<option value="37">37분</option>

										<option value="38">38분</option>

										<option value="39">39분</option>

										<option value="40">40분</option>

										<option value="41">41분</option>

										<option value="42">42분</option>

										<option value="43">43분</option>

										<option value="44">44분</option>

										<option value="45">45분</option>

										<option value="46">46분</option>

										<option value="47">47분</option>

										<option value="48">48분</option>

										<option value="49">49분</option>

										<option value="50">50분</option>

										<option value="51">51분</option>

										<option value="52">52분</option>

										<option value="53">53분</option>

										<option value="54">54분</option>

										<option value="55">55분</option>

										<option value="56">56분</option>

										<option value="57">57분</option>

										<option value="58">58분</option>

										<option value="59" selected="selected">59분</option>

									</select>
								</div>
							</div>
							<!-- // calcArea -->
							<!-- // 특정기간 사용일때 노출되는 폼 -->
							<!-- // formWrap -->
						</div>
						<!-- 판매 매수 제한 문구 추가 시작 dp_b -->
						<div class="required_txt mt_10 mb_-10" id="restrict_date"
							style="display: none"></div>
						<!-- 판매 매수 제한 문구 추가 끝 -->
						<div class="required_txt mt_10">사용일자가 종료되면 상품이 더 이상 노출되지
							않습니다.</div>
						<div class="required_txt">사용일시를 정확히 선택하여야 구매자와의 분쟁을 방지할 수
							있습니다. (사용시간까지 정확히 입력해 주세요)</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 기존 기타카테고리 선택 시  -->



				<!-- 티켓 매수  // -->
				<li id="">
					<h3>
						티켓 매수 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01">
						<!-- 수량 -->
						<!-- .required_input 말풍선 on/off -->
						<input type="text" id="sellTotal" name="pp_name2"
							value="${vo.pp_name2}" class="input_style_02 txt_c"
							style="width: 205px !important;" maxlength="4"
							placeholder="전체 수량 입력">
						<div class="tip_txt_mp" id="restrict_txt" style="display: none">
							<span>판매 수량을 다시 입력해 주세요</span> <span class="tip_txt_mp_bg"></span>
						</div>


						<!-- 개별판매 -->
						<span class="span_individual" style="display: none"> <input
							type="hidden" id="sellPlace" name="SALE_PRICE"
							class="textInp03 number_tr"> <input type="text"
							id="SPRICE" name="SPRICE" class="input_style_02 txt_c"
							style="width: 95px !important;" placeholder="판매  가격"
							maxlength="10"> 원 <input type="hidden"
							id="discountRegularPrice" name="discountRegularPrice"> <input
							id="iTPlace" name="REGULAR_PRICE" type="text"
							class="input_style_02 txt_c ml_10"
							style="width: 95px !important;" maxlength="9"
							placeholder="상품 정가 가격"> 원 <!-- <strong class="vtTxt strStyle04"><em id="discountRegularPrice">0</em>% 할인</strong> -->
						</span>

						<!-- 연석 체크 영역 // -->
						<div class="mt_10 ml_10 mb_10" id="consecutive_type_box"
							style="display: none;">
							<label> <input name="consecutive_type"
								id="consecutive_type" type="checkbox" class="ck_img" value="">
								<span>연속된 좌석 입니다.</span>
							</label>
						</div>
						<!-- // 연석 체크 영역 -->


						<!-- 판매 매수 제한 문구 추가 시작 dp_b-->
						<div class="required_txt mt_10" id="restrict_cnt"
							style="display: none"></div>
						<!-- 판매 매수 제한 문구 추가 끝 -->
						<span class="required_txt pl_10 dp_b">상품 수량은 일괄로 한번에 판매
							됩니다.</span>


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
						<select id="gradeSelect" class="select_style_01 wd_470 mb10"
							name="TICKET_GRADE">
							<script id="categoryGradeTmpl" type="text/x-jquery-tmpl">

							<option value="">선택1</option>
							{{each(i, row) DATA}}
								<option data-regular-price="{{= row.INFO_REGULAR_PRICE}}" data-seatplan-seq="{{= row.SEATPLAN_SEQ}}" value="{{= row.INFO_VALUE}}">{{= row.INFO_VALUE}}</option>
							{{/each}}
						</script>

							<option value="">선택1</option>
							<option data-regular-price="29000" data-seatplan-seq="77373"
								value="A">A</option>
						</select> <select id="locSelect" class="select_style_01 wd_470 mb10"
							name="TICKET_FLOOR" style="display: none;">
							<script id="categorylocTmpl" type="text/x-jquery-tmpl">

							<option value="">선택2</option>
							{{each(i, row) DATA}}
								<option value="{{= row.INFO_VALUE}}">{{= row.INFO_VALUE}}</option>
							{{/each}}
						</script>

						</select>
						<!-- 구역 정보 // -->
						<select id="areaSelect" class="select_style_01 wd_470 mb10"
							style="display: none;">
							<script id="categoryAreaTmpl" type="text/x-jquery-tmpl">

							<option value="">구역선택</option>
							{{each(i, row) DATA}}
								<option value="{{= row.INFO_VALUE}}">{{= row.INFO_VALUE}}</option>
							{{/each}}
						</script>

							<!-- <option value="0">구역선택</option>
						<option data-regular-price="" data-seatplan-seq="" value="">888</option> -->
						</select>
						<!-- 구역 정보 없을 경우 기존  input 노출 -->
						<input type="text" id="areaInput" name=""
							class="input_style_02 wd_470 box-sizing mb10"
							placeholder="구역(존/블럭) 입력 EX)A" maxlength="10"
							style="display: block;">
						<!-- // 구역 정보  -->
						<input type="text" name="TICKET_ROW"
							class="input_style_02 wd_470 box-sizing mb10"
							placeholder="열 입력 EX)88" maxlength="10"> <input
							type="text" name="TICKET_ETC"
							class="input_style_02 wd_470 box-sizing"
							placeholder="선택사항 : 추가정보 최대 10글자 입력 가능" maxlength="10"> <input
							type="hidden" name="TICKET_DESC">
						<div class="required_txt mt_10">좌석정보는 숫자와 영문으로 입력하셔야 거래 성사율을
							높일 수 있습니다.</div>
						<div class="required_txt">특수문자, 한글 입력 시 외국인과의 거래 성사율이 현저히 낮아
							집니다. (단, 구역 명이 한글인 경우는 제외)</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 좌석 정보  -->

				<!-- 좌석 특이사항  // -->
				<li id="reg_seatheed_box">
					<h3 class="h3_style_02">
						좌석 특이사항 <span>(중복선택가능)</span>
					</h3>
					<div class="float_r wd_760 mt5">
						<div class="ck_img_btn_gr">
							<script id="seatHeedTmpl" type="text/x-jquery-tmpl">

						{{each(i, row) DATA}}
							<label class="ck_img_btn">
								<input name="SEATHEED" type="checkbox" data-code-name="{{= row.REMARK}}" value="{{= row.CODE}}">
								<span>{{= row.REMARK}}</span>
							</label>
						{{/each}}
						</script>
							<label class="ck_img_btn"> <input name="SEATHEED"
								type="checkbox" data-code-name="시야 제한석" value="1"> <span>시야
									제한석</span>
							</label> <label class="ck_img_btn"> <input name="SEATHEED"
								type="checkbox" data-code-name="통로석" value="2"> <span>통로석</span>
							</label> <label class="ck_img_btn"> <input name="SEATHEED"
								type="checkbox" data-code-name="스피커 옆" value="4"> <span>스피커
									옆</span>
							</label> <label class="ck_img_btn"> <input name="SEATHEED"
								type="checkbox" data-code-name="스탠딩 한정" value="8"> <span>스탠딩
									한정</span>
							</label> <label class="ck_img_btn"> <input name="SEATHEED"
								type="checkbox" data-code-name="가변석" value="16"> <span>가변석</span>
							</label>
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 좌석 특이사항  -->

				<!-- 상품 특이사항  // -->
				<li id="reg_prodUnusual_box">
					<h3 class="h3_style_02">
						상품 특이사항 <span>(중복선택가능)</span>
					</h3>
					<div class="float_r wd_760 mt5">
						<div class="ck_img_btn_gr">

							<script id="prodUnusualTmpl" type="text/x-jquery-tmpl">

						{{each(i, row) DATA}}
							<label class="ck_img_btn">
								<input name="PRODUNUSUAL" type="checkbox" data-code-name="{{= row.REMARK}}" value="{{= row.CODE}}">
								<span>{{= row.REMARK}}</span>
							</label>
						{{/each}}
						</script>


							<label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="판매자가 입장 도움" value="16">
								<span>판매자가 입장 도움</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="예매처 ID로 상품 전달" value="2">
								<span>예매처 ID로 상품 전달</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="18세 이상 이용가능" value="32">
								<span>18세 이상 이용가능</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="할인티켓 - 학생" value="64"> <span>할인티켓
									- 학생</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="할인티켓 - 장애인" value="128">
								<span>할인티켓 - 장애인</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="할인티켓 - 경로자" value="256">
								<span>할인티켓 - 경로자</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="여성명의" value="512"> <span>여성명의</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="남성명의" value="1024"> <span>남성명의</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="조기입장" value="2048"> <span>조기입장</span>
							</label> <label class="ck_img_btn"> <input name="PRODUNUSUAL"
								type="checkbox" data-code-name="재관람 티켓" value="4096"> <span>재관람
									티켓</span>
							</label>
						</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 상품 특이사항  -->

				<!-- 상품 사진  // -->
				<li id="pd_PIMG">
					<h3>
						상품 사진 <span class="">(선택)</span><span class="txt_info_01">업로드
							이미지 저작권 및<br> 초상권 관련 책임은<br> 게시자 본인에게 있습니다.
						</span>
					</h3> <input type="hidden" name="PRODUCT_IMAGE_YN" value="N"> <input
					type="hidden" id="defaultimagepath"> <input type="hidden"
					name="REPLACE_IMAGE_YN" value="N"> <input type="hidden"
					id="adminRegCateImgPath" value="">
					<div class="in_box_01">
						<div class="product_photo_frame">
							<ul class="list clearfix">
								<input type="hidden" name="ATTACH_REPRESENT_IMAGE">
								<li><input id="imagesAdd1" type="file" accept="image/*">
									<span class="picImg"> <label for="imagesAdd1"> <img
											src="../img/카메라.svg">
									</label>
								</span> <span class="del btnClose hidden-object" style="display: none;">
								</span></li>

								<li><input id="imagesAdd2" type="file" accept="image/*"><span
									class="picImg"><label for="imagesAdd2"><img
											src="../img/카메라.svg"></label></span><span
									class="del btnClose hidden-object" style="display: none;"></span></li>
								<li><input id="imagesAdd3" type="file" accept="image/*"><span
									class="picImg"><label for="imagesAdd3"><img
											src="../img/카메라.svg"></label></span><span
									class="del btnClose hidden-object" style="display: none;"></span></li>
								<li><input id="imagesAdd4" type="file" accept="image/*"><span
									class="picImg"><label for="imagesAdd4"><img
											src="../img/카메라.svg"></label></span><span
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
				<li id="haha18">
					<h3 class="h3_style_02">
						거래 방식 선택 <span>(중복 선택 가능)</span><a class="btn_info btn_tranInfo"></a>
					</h3>
					<div class="in_box_01">
						<div class="modeTransaction">

							<label class="TYPE_02"><input type="checkbox"
								name="TRANSACTION_TYPE" value="2"><span
								class="TRANSACTION_TYPE2">배송거래</span></label> <label class="TYPE_01"><input
								type="checkbox" name="TRANSACTION_TYPE" value="1"><span
								class="TRANSACTION_TYPE1">PIN거래(E-ticket)</span></label> <label
								class="TYPE_03"><input type="checkbox"
								name="TRANSACTION_TYPE" value="4"><span
								class="TRANSACTION_TYPE4">현장거래</span></label> <label class="TYPE_05"><input
								type="checkbox" name="TRANSACTION_TYPE" value="16"><span
								class="TRANSACTION_TYPE5">기타</span></label>

							<!-- 배송비 수정 -->
							<span class="li_type_2" style="display: none;"> <span
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
						<label class="dp_b"> <input id="ticket_retention_type_y"
							type="radio" name="ticket_retention_type" value="Y"
							class="stFormEl01 ticket_retention_y"> <span>보유 :
								현재 티켓 보유중 </span>
							<div class="ticket_retention_type_info_y">
								결제 발생 시 구매자에게 티켓 전달 일정을 꼭 알려주세요
								<!-- PIN(E-ticket), 배송거래의 경우<br>
							구매자 결제 이후 <b>72시간</b> 이내 전달 필수! -->
							</div>
						</label> <label class="dp_b"> <input id="ticket_retention_type_n"
							type="radio" name="ticket_retention_type" value="N"
							class="stFormEl01 ticket_retention_n"> <span>미 보유
								: 예매 완료 후 수령 대기중 </span>
							<div class="ticket_retention_type_info_n">
								티켓 수령 예정일을 선택 하세요<br> 결제 발생 시 구매자에게 티켓 전달 일정을 꼭 알려주세요
								<!-- 
							구매자 결제 후 전달 가능한 날짜 입력<br>
							선택 날짜 이후에는 자동으로 티켓 보유중으로 변경 됩니다.
						 	-->
								<div class="inpCal mt10">
									<input type="text" id="RETENTION_DATE"
										name="TICKET_RETENTION_DATE"
										class="textInp02 input_style_01 hasDatepicker" title="날짜 입력"
										placeholder="날짜 입력" readonly="readonly"><img
										class="ui-datepicker-trigger" src="" alt="달력" title="달력">
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
					<div class="in_box_01">
						<div id="goodsExplanation">
							<textarea id="majorEditor" name="PROD_DESC"
								style="visibility: hidden; display: none;"></textarea>
							<div id="cke_majorEditor"
								class="cke_1 cke cke_reset cke_chrome cke_editor_majorEditor cke_ltr cke_browser_webkit"
								dir="ltr" lang="ko" role="application"
								aria-labelledby="cke_majorEditor_arialbl">
								<span id="cke_majorEditor_arialbl" class="cke_voice_label">리치
									텍스트 편집기, majorEditor</span>
								<div class="cke_inner cke_reset" role="presentation">
									<span id="cke_1_top" class="cke_top cke_reset_all"
										role="presentation" style="height: auto; user-select: none;"><span
										id="cke_8" class="cke_voice_label">편집자용 툴바들</span><span
										id="cke_1_toolbox" class="cke_toolbox" role="group"
										aria-labelledby="cke_8" onmousedown="return false;"><span
											id="cke_13" class="cke_toolbar"
											aria-labelledby="cke_13_label" role="toolbar"><span
												id="cke_13_label" class="cke_voice_label">Document</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_14"
													class="cke_button cke_button__source  cke_button_off"
													href="javascript:void('소스')" title="소스" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_14_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(2,event);"
													onfocus="return CKEDITOR.tools.callFunction(3,event);"
													onclick="CKEDITOR.tools.callFunction(4,this);return false;"><span
														class="cke_button_icon cke_button__source_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1824px; background-size: auto;">&nbsp;</span><span
														id="cke_14_label"
														class="cke_button_label cke_button__source_label"
														aria-hidden="false">소스</span></a></span><span class="cke_toolbar_end"></span></span><span
											id="cke_15" class="cke_toolbar"
											aria-labelledby="cke_15_label" role="toolbar"><span
												id="cke_15_label" class="cke_voice_label">Clipboard/Undo</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_16"
													class="cke_button cke_button__cut cke_button_disabled "
													href="javascript:void('잘라내기')" title="잘라내기" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_16_label" aria-haspopup="false"
													aria-disabled="true"
													onkeydown="return CKEDITOR.tools.callFunction(5,event);"
													onfocus="return CKEDITOR.tools.callFunction(6,event);"
													onclick="CKEDITOR.tools.callFunction(7,this);return false;"><span
														class="cke_button_icon cke_button__cut_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -312px; background-size: auto;">&nbsp;</span><span
														id="cke_16_label"
														class="cke_button_label cke_button__cut_label"
														aria-hidden="false">잘라내기</span></a><a id="cke_17"
													class="cke_button cke_button__copy cke_button_disabled "
													href="javascript:void('복사하기')" title="복사하기" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_17_label" aria-haspopup="false"
													aria-disabled="true"
													onkeydown="return CKEDITOR.tools.callFunction(8,event);"
													onfocus="return CKEDITOR.tools.callFunction(9,event);"
													onclick="CKEDITOR.tools.callFunction(10,this);return false;"><span
														class="cke_button_icon cke_button__copy_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -264px; background-size: auto;">&nbsp;</span><span
														id="cke_17_label"
														class="cke_button_label cke_button__copy_label"
														aria-hidden="false">복사하기</span></a><a id="cke_18"
													class="cke_button cke_button__paste  cke_button_off"
													href="javascript:void('붙여넣기')" title="붙여넣기" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_18_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(11,event);"
													onfocus="return CKEDITOR.tools.callFunction(12,event);"
													onclick="CKEDITOR.tools.callFunction(13,this);return false;"><span
														class="cke_button_icon cke_button__paste_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -360px; background-size: auto;">&nbsp;</span><span
														id="cke_18_label"
														class="cke_button_label cke_button__paste_label"
														aria-hidden="false">붙여넣기</span></a><a id="cke_19"
													class="cke_button cke_button__pastetext  cke_button_off"
													href="javascript:void('텍스트로 붙여넣기')" title="텍스트로 붙여넣기"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_19_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(14,event);"
													onfocus="return CKEDITOR.tools.callFunction(15,event);"
													onclick="CKEDITOR.tools.callFunction(16,this);return false;"><span
														class="cke_button_icon cke_button__pastetext_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1536px; background-size: auto;">&nbsp;</span><span
														id="cke_19_label"
														class="cke_button_label cke_button__pastetext_label"
														aria-hidden="false">텍스트로 붙여넣기</span></a><a id="cke_20"
													class="cke_button cke_button__pastefromword  cke_button_off"
													href="javascript:void('MS Word 형식에서 붙여넣기')"
													title="MS Word 형식에서 붙여넣기" tabindex="-1" hidefocus="true"
													role="button" aria-labelledby="cke_20_label"
													aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(17,event);"
													onfocus="return CKEDITOR.tools.callFunction(18,event);"
													onclick="CKEDITOR.tools.callFunction(19,this);return false;"><span
														class="cke_button_icon cke_button__pastefromword_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1584px; background-size: auto;">&nbsp;</span><span
														id="cke_20_label"
														class="cke_button_label cke_button__pastefromword_label"
														aria-hidden="false">MS Word 형식에서 붙여넣기</span></a><span
													class="cke_toolbar_separator" role="separator"></span><a
													id="cke_21"
													class="cke_button cke_button__undo cke_button_disabled "
													href="javascript:void('취소')" title="취소" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_21_label" aria-haspopup="false"
													aria-disabled="true"
													onkeydown="return CKEDITOR.tools.callFunction(20,event);"
													onfocus="return CKEDITOR.tools.callFunction(21,event);"
													onclick="CKEDITOR.tools.callFunction(22,this);return false;"><span
														class="cke_button_icon cke_button__undo_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1992px; background-size: auto;">&nbsp;</span><span
														id="cke_21_label"
														class="cke_button_label cke_button__undo_label"
														aria-hidden="false">취소</span></a><a id="cke_22"
													class="cke_button cke_button__redo cke_button_disabled "
													href="javascript:void('재실행')" title="재실행" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_22_label" aria-haspopup="false"
													aria-disabled="true"
													onkeydown="return CKEDITOR.tools.callFunction(23,event);"
													onfocus="return CKEDITOR.tools.callFunction(24,event);"
													onclick="CKEDITOR.tools.callFunction(25,this);return false;"><span
														class="cke_button_icon cke_button__redo_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1944px; background-size: auto;">&nbsp;</span><span
														id="cke_22_label"
														class="cke_button_label cke_button__redo_label"
														aria-hidden="false">재실행</span></a></span><span
												class="cke_toolbar_end"></span></span><span id="cke_23"
											class="cke_toolbar" aria-labelledby="cke_23_label"
											role="toolbar"><span id="cke_23_label"
												class="cke_voice_label">Editing</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_24"
													class="cke_button cke_button__find  cke_button_off"
													href="javascript:void('찾기')" title="찾기" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_24_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(26,event);"
													onfocus="return CKEDITOR.tools.callFunction(27,event);"
													onclick="CKEDITOR.tools.callFunction(28,this);return false;"><span
														class="cke_button_icon cke_button__find_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -528px; background-size: auto;">&nbsp;</span><span
														id="cke_24_label"
														class="cke_button_label cke_button__find_label"
														aria-hidden="false">찾기</span></a><a id="cke_25"
													class="cke_button cke_button__replace  cke_button_off"
													href="javascript:void('바꾸기')" title="바꾸기" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_25_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(29,event);"
													onfocus="return CKEDITOR.tools.callFunction(30,event);"
													onclick="CKEDITOR.tools.callFunction(31,this);return false;"><span
														class="cke_button_icon cke_button__replace_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -552px; background-size: auto;">&nbsp;</span><span
														id="cke_25_label"
														class="cke_button_label cke_button__replace_label"
														aria-hidden="false">바꾸기</span></a><span
													class="cke_toolbar_separator" role="separator"></span><a
													id="cke_26"
													class="cke_button cke_button__selectall  cke_button_off"
													href="javascript:void('전체선택')" title="전체선택" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_26_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(32,event);"
													onfocus="return CKEDITOR.tools.callFunction(33,event);"
													onclick="CKEDITOR.tools.callFunction(34,this);return false;"><span
														class="cke_button_icon cke_button__selectall_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1728px; background-size: auto;">&nbsp;</span><span
														id="cke_26_label"
														class="cke_button_label cke_button__selectall_label"
														aria-hidden="false">전체선택</span></a><span
													class="cke_toolbar_separator" role="separator"></span><a
													id="cke_27"
													class="cke_button cke_button__scayt cke_button_off "
													href="javascript:void('Spell Check')" title="Spell Check"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_27_label" aria-haspopup="true"
													onkeydown="return CKEDITOR.tools.callFunction(35,event);"
													onfocus="return CKEDITOR.tools.callFunction(36,event);"
													onclick="CKEDITOR.tools.callFunction(37,this);return false;"><span
														class="cke_button_icon cke_button__scayt_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1872px; background-size: auto;">&nbsp;</span><span
														id="cke_27_label"
														class="cke_button_label cke_button__scayt_label"
														aria-hidden="false">Spell Check As You Type</span><span
														class="cke_button_arrow"></span></a></span><span
												class="cke_toolbar_end"></span></span><span
											class="cke_toolbar_break"></span><span id="cke_28"
											class="cke_toolbar" aria-labelledby="cke_28_label"
											role="toolbar"><span id="cke_28_label"
												class="cke_voice_label">Basic Styles</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_29"
													class="cke_button cke_button__bold  cke_button_off"
													href="javascript:void('진하게')" title="진하게" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_29_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(38,event);"
													onfocus="return CKEDITOR.tools.callFunction(39,event);"
													onclick="CKEDITOR.tools.callFunction(40,this);return false;"><span
														class="cke_button_icon cke_button__bold_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -24px; background-size: auto;">&nbsp;</span><span
														id="cke_29_label"
														class="cke_button_label cke_button__bold_label"
														aria-hidden="false">진하게</span></a><a id="cke_30"
													class="cke_button cke_button__italic  cke_button_off"
													href="javascript:void('이텔릭')" title="이텔릭" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_30_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(41,event);"
													onfocus="return CKEDITOR.tools.callFunction(42,event);"
													onclick="CKEDITOR.tools.callFunction(43,this);return false;"><span
														class="cke_button_icon cke_button__italic_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -48px; background-size: auto;">&nbsp;</span><span
														id="cke_30_label"
														class="cke_button_label cke_button__italic_label"
														aria-hidden="false">이텔릭</span></a><a id="cke_31"
													class="cke_button cke_button__underline  cke_button_off"
													href="javascript:void('밑줄')" title="밑줄" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_31_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(44,event);"
													onfocus="return CKEDITOR.tools.callFunction(45,event);"
													onclick="CKEDITOR.tools.callFunction(46,this);return false;"><span
														class="cke_button_icon cke_button__underline_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -144px; background-size: auto;">&nbsp;</span><span
														id="cke_31_label"
														class="cke_button_label cke_button__underline_label"
														aria-hidden="false">밑줄</span></a><a id="cke_32"
													class="cke_button cke_button__strike  cke_button_off"
													href="javascript:void('취소선')" title="취소선" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_32_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(47,event);"
													onfocus="return CKEDITOR.tools.callFunction(48,event);"
													onclick="CKEDITOR.tools.callFunction(49,this);return false;"><span
														class="cke_button_icon cke_button__strike_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -72px; background-size: auto;">&nbsp;</span><span
														id="cke_32_label"
														class="cke_button_label cke_button__strike_label"
														aria-hidden="false">취소선</span></a><a id="cke_33"
													class="cke_button cke_button__subscript  cke_button_off"
													href="javascript:void('아래 첨자')" title="아래 첨자" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_33_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(50,event);"
													onfocus="return CKEDITOR.tools.callFunction(51,event);"
													onclick="CKEDITOR.tools.callFunction(52,this);return false;"><span
														class="cke_button_icon cke_button__subscript_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -96px; background-size: auto;">&nbsp;</span><span
														id="cke_33_label"
														class="cke_button_label cke_button__subscript_label"
														aria-hidden="false">아래 첨자</span></a><a id="cke_34"
													class="cke_button cke_button__superscript  cke_button_off"
													href="javascript:void('위 첨자')" title="위 첨자" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_34_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(53,event);"
													onfocus="return CKEDITOR.tools.callFunction(54,event);"
													onclick="CKEDITOR.tools.callFunction(55,this);return false;"><span
														class="cke_button_icon cke_button__superscript_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -120px; background-size: auto;">&nbsp;</span><span
														id="cke_34_label"
														class="cke_button_label cke_button__superscript_label"
														aria-hidden="false">위 첨자</span></a><span
													class="cke_toolbar_separator" role="separator"></span><a
													id="cke_35"
													class="cke_button cke_button__removeformat  cke_button_off"
													href="javascript:void('포맷 지우기')" title="포맷 지우기"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_35_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(56,event);"
													onfocus="return CKEDITOR.tools.callFunction(57,event);"
													onclick="CKEDITOR.tools.callFunction(58,this);return false;"><span
														class="cke_button_icon cke_button__removeformat_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1680px; background-size: auto;">&nbsp;</span><span
														id="cke_35_label"
														class="cke_button_label cke_button__removeformat_label"
														aria-hidden="false">포맷 지우기</span></a></span><span
												class="cke_toolbar_end"></span></span><span id="cke_36"
											class="cke_toolbar" aria-labelledby="cke_36_label"
											role="toolbar"><span id="cke_36_label"
												class="cke_voice_label">Paragraph</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_37"
													class="cke_button cke_button__numberedlist  cke_button_off"
													href="javascript:void('순서있는 목록')" title="순서있는 목록"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_37_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(59,event);"
													onfocus="return CKEDITOR.tools.callFunction(60,event);"
													onclick="CKEDITOR.tools.callFunction(61,this);return false;"><span
														class="cke_button_icon cke_button__numberedlist_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1368px; background-size: auto;">&nbsp;</span><span
														id="cke_37_label"
														class="cke_button_label cke_button__numberedlist_label"
														aria-hidden="false">순서있는 목록</span></a><a id="cke_38"
													class="cke_button cke_button__bulletedlist  cke_button_off"
													href="javascript:void('순서없는 목록')" title="순서없는 목록"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_38_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(62,event);"
													onfocus="return CKEDITOR.tools.callFunction(63,event);"
													onclick="CKEDITOR.tools.callFunction(64,this);return false;"><span
														class="cke_button_icon cke_button__bulletedlist_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1320px; background-size: auto;">&nbsp;</span><span
														id="cke_38_label"
														class="cke_button_label cke_button__bulletedlist_label"
														aria-hidden="false">순서없는 목록</span></a><span
													class="cke_toolbar_separator" role="separator"></span><a
													id="cke_39"
													class="cke_button cke_button__outdent cke_button_disabled "
													href="javascript:void('내어쓰기')" title="내어쓰기" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_39_label" aria-haspopup="false"
													aria-disabled="true"
													onkeydown="return CKEDITOR.tools.callFunction(65,event);"
													onfocus="return CKEDITOR.tools.callFunction(66,event);"
													onclick="CKEDITOR.tools.callFunction(67,this);return false;"><span
														class="cke_button_icon cke_button__outdent_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1032px; background-size: auto;">&nbsp;</span><span
														id="cke_39_label"
														class="cke_button_label cke_button__outdent_label"
														aria-hidden="false">내어쓰기</span></a><a id="cke_40"
													class="cke_button cke_button__indent  cke_button_off"
													href="javascript:void('들여쓰기')" title="들여쓰기" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_40_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(68,event);"
													onfocus="return CKEDITOR.tools.callFunction(69,event);"
													onclick="CKEDITOR.tools.callFunction(70,this);return false;"><span
														class="cke_button_icon cke_button__indent_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -984px; background-size: auto;">&nbsp;</span><span
														id="cke_40_label"
														class="cke_button_label cke_button__indent_label"
														aria-hidden="false">들여쓰기</span></a><span
													class="cke_toolbar_separator" role="separator"></span><a
													id="cke_41"
													class="cke_button cke_button__blockquote  cke_button_off"
													href="javascript:void('인용 블록')" title="인용 블록" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_41_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(71,event);"
													onfocus="return CKEDITOR.tools.callFunction(72,event);"
													onclick="CKEDITOR.tools.callFunction(73,this);return false;"><span
														class="cke_button_icon cke_button__blockquote_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -216px; background-size: auto;">&nbsp;</span><span
														id="cke_41_label"
														class="cke_button_label cke_button__blockquote_label"
														aria-hidden="false">인용 블록</span></a><a id="cke_42"
													class="cke_button cke_button__creatediv  cke_button_off"
													href="javascript:void('Div 태그 생성')" title="Div 태그 생성"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_42_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(74,event);"
													onfocus="return CKEDITOR.tools.callFunction(75,event);"
													onclick="CKEDITOR.tools.callFunction(76,this);return false;"><span
														class="cke_button_icon cke_button__creatediv_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -480px; background-size: auto;">&nbsp;</span><span
														id="cke_42_label"
														class="cke_button_label cke_button__creatediv_label"
														aria-hidden="false">Div 태그 생성</span></a><span
													class="cke_toolbar_separator" role="separator"></span><a
													id="cke_43"
													class="cke_button cke_button__justifyleft cke_button_on"
													href="javascript:void('왼쪽 정렬')" title="왼쪽 정렬" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_43_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(77,event);"
													onfocus="return CKEDITOR.tools.callFunction(78,event);"
													onclick="CKEDITOR.tools.callFunction(79,this);return false;"
													aria-pressed="true"><span
														class="cke_button_icon cke_button__justifyleft_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1128px; background-size: auto;">&nbsp;</span><span
														id="cke_43_label"
														class="cke_button_label cke_button__justifyleft_label"
														aria-hidden="false">왼쪽 정렬</span></a><a id="cke_44"
													class="cke_button cke_button__justifycenter  cke_button_off"
													href="javascript:void('가운데 정렬')" title="가운데 정렬"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_44_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(80,event);"
													onfocus="return CKEDITOR.tools.callFunction(81,event);"
													onclick="CKEDITOR.tools.callFunction(82,this);return false;"><span
														class="cke_button_icon cke_button__justifycenter_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1104px; background-size: auto;">&nbsp;</span><span
														id="cke_44_label"
														class="cke_button_label cke_button__justifycenter_label"
														aria-hidden="false">가운데 정렬</span></a><a id="cke_45"
													class="cke_button cke_button__justifyright  cke_button_off"
													href="javascript:void('오른쪽 정렬')" title="오른쪽 정렬"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_45_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(83,event);"
													onfocus="return CKEDITOR.tools.callFunction(84,event);"
													onclick="CKEDITOR.tools.callFunction(85,this);return false;"><span
														class="cke_button_icon cke_button__justifyright_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1152px; background-size: auto;">&nbsp;</span><span
														id="cke_45_label"
														class="cke_button_label cke_button__justifyright_label"
														aria-hidden="false">오른쪽 정렬</span></a><a id="cke_46"
													class="cke_button cke_button__justifyblock  cke_button_off"
													href="javascript:void('양쪽 맞춤')" title="양쪽 맞춤" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_46_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(86,event);"
													onfocus="return CKEDITOR.tools.callFunction(87,event);"
													onclick="CKEDITOR.tools.callFunction(88,this);return false;"><span
														class="cke_button_icon cke_button__justifyblock_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1080px; background-size: auto;">&nbsp;</span><span
														id="cke_46_label"
														class="cke_button_label cke_button__justifyblock_label"
														aria-hidden="false">양쪽 맞춤</span></a><span
													class="cke_toolbar_separator" role="separator"></span><a
													id="cke_47"
													class="cke_button cke_button__bidiltr cke_button_on"
													href="javascript:void('택스트 방향이 왼쪽에서 오른쪽으로 ')"
													title="택스트 방향이 왼쪽에서 오른쪽으로 " tabindex="-1" hidefocus="true"
													role="button" aria-labelledby="cke_47_label"
													aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(89,event);"
													onfocus="return CKEDITOR.tools.callFunction(90,event);"
													onclick="CKEDITOR.tools.callFunction(91,this);return false;"
													aria-pressed="true"><span
														class="cke_button_icon cke_button__bidiltr_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -168px; background-size: auto;">&nbsp;</span><span
														id="cke_47_label"
														class="cke_button_label cke_button__bidiltr_label"
														aria-hidden="false">택스트 방향이 왼쪽에서 오른쪽으로 </span></a><a
													id="cke_48"
													class="cke_button cke_button__bidirtl  cke_button_off"
													href="javascript:void('택스트 방향이 오른쪽에서 왼쪽으로')"
													title="택스트 방향이 오른쪽에서 왼쪽으로" tabindex="-1" hidefocus="true"
													role="button" aria-labelledby="cke_48_label"
													aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(92,event);"
													onfocus="return CKEDITOR.tools.callFunction(93,event);"
													onclick="CKEDITOR.tools.callFunction(94,this);return false;"><span
														class="cke_button_icon cke_button__bidirtl_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -192px; background-size: auto;">&nbsp;</span><span
														id="cke_48_label"
														class="cke_button_label cke_button__bidirtl_label"
														aria-hidden="false">택스트 방향이 오른쪽에서 왼쪽으로</span></a></span><span
												class="cke_toolbar_end"></span></span><span id="cke_49"
											class="cke_toolbar" aria-labelledby="cke_49_label"
											role="toolbar"><span id="cke_49_label"
												class="cke_voice_label">Links</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_50"
													class="cke_button cke_button__link  cke_button_off"
													href="javascript:void('링크 삽입/변경')" title="링크 삽입/변경"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_50_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(95,event);"
													onfocus="return CKEDITOR.tools.callFunction(96,event);"
													onclick="CKEDITOR.tools.callFunction(97,this);return false;"><span
														class="cke_button_icon cke_button__link_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1248px; background-size: auto;">&nbsp;</span><span
														id="cke_50_label"
														class="cke_button_label cke_button__link_label"
														aria-hidden="false">링크 삽입/변경</span></a><a id="cke_51"
													class="cke_button cke_button__unlink cke_button_disabled "
													href="javascript:void('링크 삭제')" title="링크 삭제" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_51_label" aria-haspopup="false"
													aria-disabled="true"
													onkeydown="return CKEDITOR.tools.callFunction(98,event);"
													onfocus="return CKEDITOR.tools.callFunction(99,event);"
													onclick="CKEDITOR.tools.callFunction(100,this);return false;"><span
														class="cke_button_icon cke_button__unlink_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1272px; background-size: auto;">&nbsp;</span><span
														id="cke_51_label"
														class="cke_button_label cke_button__unlink_label"
														aria-hidden="false">링크 삭제</span></a><a id="cke_52"
													class="cke_button cke_button__anchor  cke_button_off"
													href="javascript:void('책갈피 삽입/변경')" title="책갈피 삽입/변경"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_52_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(101,event);"
													onfocus="return CKEDITOR.tools.callFunction(102,event);"
													onclick="CKEDITOR.tools.callFunction(103,this);return false;"><span
														class="cke_button_icon cke_button__anchor_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1224px; background-size: auto;">&nbsp;</span><span
														id="cke_52_label"
														class="cke_button_label cke_button__anchor_label"
														aria-hidden="false">책갈피 삽입/변경</span></a></span><span
												class="cke_toolbar_end"></span></span><span id="cke_53"
											class="cke_toolbar" aria-labelledby="cke_53_label"
											role="toolbar"><span id="cke_53_label"
												class="cke_voice_label">Insert</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_54"
													class="cke_button cke_button__image  cke_button_off"
													href="javascript:void('이미지')" title="이미지" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_54_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(104,event);"
													onfocus="return CKEDITOR.tools.callFunction(105,event);"
													onclick="CKEDITOR.tools.callFunction(106,this);return false;"><span
														class="cke_button_icon cke_button__image_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -936px; background-size: auto;">&nbsp;</span><span
														id="cke_54_label"
														class="cke_button_label cke_button__image_label"
														aria-hidden="false">이미지</span></a><a id="cke_55"
													class="cke_button cke_button__table  cke_button_off"
													href="javascript:void('표')" title="표" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_55_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(107,event);"
													onfocus="return CKEDITOR.tools.callFunction(108,event);"
													onclick="CKEDITOR.tools.callFunction(109,this);return false;"><span
														class="cke_button_icon cke_button__table_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1896px; background-size: auto;">&nbsp;</span><span
														id="cke_55_label"
														class="cke_button_label cke_button__table_label"
														aria-hidden="false">표</span></a><a id="cke_56"
													class="cke_button cke_button__horizontalrule  cke_button_off"
													href="javascript:void('수평선 삽입')" title="수평선 삽입"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_56_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(110,event);"
													onfocus="return CKEDITOR.tools.callFunction(111,event);"
													onclick="CKEDITOR.tools.callFunction(112,this);return false;"><span
														class="cke_button_icon cke_button__horizontalrule_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -888px; background-size: auto;">&nbsp;</span><span
														id="cke_56_label"
														class="cke_button_label cke_button__horizontalrule_label"
														aria-hidden="false">수평선 삽입</span></a><a id="cke_57"
													class="cke_button cke_button__smiley  cke_button_off"
													href="javascript:void('아이콘')" title="아이콘" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_57_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(113,event);"
													onfocus="return CKEDITOR.tools.callFunction(114,event);"
													onclick="CKEDITOR.tools.callFunction(115,this);return false;"><span
														class="cke_button_icon cke_button__smiley_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1056px; background-size: auto;">&nbsp;</span><span
														id="cke_57_label"
														class="cke_button_label cke_button__smiley_label"
														aria-hidden="false">아이콘</span></a><a id="cke_58"
													class="cke_button cke_button__specialchar  cke_button_off"
													href="javascript:void('특수문자 삽입')" title="특수문자 삽입"
													tabindex="-1" hidefocus="true" role="button"
													aria-labelledby="cke_58_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(116,event);"
													onfocus="return CKEDITOR.tools.callFunction(117,event);"
													onclick="CKEDITOR.tools.callFunction(118,this);return false;"><span
														class="cke_button_icon cke_button__specialchar_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1848px; background-size: auto;">&nbsp;</span><span
														id="cke_58_label"
														class="cke_button_label cke_button__specialchar_label"
														aria-hidden="false">특수문자 삽입</span></a><a id="cke_59"
													class="cke_button cke_button__pagebreak  cke_button_off"
													href="javascript:void('인쇄시 페이지 나누기 삽입')"
													title="인쇄시 페이지 나누기 삽입" tabindex="-1" hidefocus="true"
													role="button" aria-labelledby="cke_59_label"
													aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(119,event);"
													onfocus="return CKEDITOR.tools.callFunction(120,event);"
													onclick="CKEDITOR.tools.callFunction(121,this);return false;"><span
														class="cke_button_icon cke_button__pagebreak_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1488px; background-size: auto;">&nbsp;</span><span
														id="cke_59_label"
														class="cke_button_label cke_button__pagebreak_label"
														aria-hidden="false">인쇄시 페이지 나누기 삽입</span></a></span><span
												class="cke_toolbar_end"></span></span><span
											class="cke_toolbar_break"></span><span id="cke_60"
											class="cke_toolbar" aria-labelledby="cke_60_label"
											role="toolbar"><span id="cke_60_label"
												class="cke_voice_label">Styles</span><span
												class="cke_toolbar_start"></span><span id="cke_9"
												class="cke_combo cke_combo__styles  cke_combo_off"
												role="presentation"><span id="cke_9_label"
													class="cke_combo_label">스타일</span><a
													class="cke_combo_button" title="전체 구성 스타일" tabindex="-1"
													href="javascript:void('전체 구성 스타일')" hidefocus="true"
													role="button" aria-labelledby="cke_9_label"
													aria-haspopup="true"
													onkeydown="return CKEDITOR.tools.callFunction(123,event,this);"
													onfocus="return CKEDITOR.tools.callFunction(124,event);"
													onclick="CKEDITOR.tools.callFunction(122,this);return false;"><span
														id="cke_9_text"
														class="cke_combo_text cke_combo_inlinelabel">스타일</span><span
														class="cke_combo_open"><span
															class="cke_combo_arrow"></span></span></a></span><span id="cke_10"
												class="cke_combo cke_combo__format  cke_combo_off"
												role="presentation"><span id="cke_10_label"
													class="cke_combo_label">포맷</span><a
													class="cke_combo_button" title="포맷" tabindex="-1"
													href="javascript:void('포맷')" hidefocus="true" role="button"
													aria-labelledby="cke_10_label" aria-haspopup="true"
													onkeydown="return CKEDITOR.tools.callFunction(126,event,this);"
													onfocus="return CKEDITOR.tools.callFunction(127,event);"
													onclick="CKEDITOR.tools.callFunction(125,this);return false;"><span
														id="cke_10_text" class="cke_combo_text">Normal</span><span
														class="cke_combo_open"><span
															class="cke_combo_arrow"></span></span></a></span><span id="cke_11"
												class="cke_combo cke_combo__font  cke_combo_off"
												role="presentation"><span id="cke_11_label"
													class="cke_combo_label">폰트</span><a
													class="cke_combo_button" title="폰트" tabindex="-1"
													href="javascript:void('폰트')" hidefocus="true" role="button"
													aria-labelledby="cke_11_label" aria-haspopup="true"
													onkeydown="return CKEDITOR.tools.callFunction(129,event,this);"
													onfocus="return CKEDITOR.tools.callFunction(130,event);"
													onclick="CKEDITOR.tools.callFunction(128,this);return false;"><span
														id="cke_11_text"
														class="cke_combo_text cke_combo_inlinelabel">폰트</span><span
														class="cke_combo_open"><span
															class="cke_combo_arrow"></span></span></a></span><span id="cke_12"
												class="cke_combo cke_combo__fontsize  cke_combo_off"
												role="presentation"><span id="cke_12_label"
													class="cke_combo_label">글자 크기</span><a
													class="cke_combo_button" title="글자 크기" tabindex="-1"
													href="javascript:void('글자 크기')" hidefocus="true"
													role="button" aria-labelledby="cke_12_label"
													aria-haspopup="true"
													onkeydown="return CKEDITOR.tools.callFunction(132,event,this);"
													onfocus="return CKEDITOR.tools.callFunction(133,event);"
													onclick="CKEDITOR.tools.callFunction(131,this);return false;"><span
														id="cke_12_text"
														class="cke_combo_text cke_combo_inlinelabel">글자 크기</span><span
														class="cke_combo_open"><span
															class="cke_combo_arrow"></span></span></a></span><span
												class="cke_toolbar_end"></span></span><span id="cke_61"
											class="cke_toolbar" aria-labelledby="cke_61_label"
											role="toolbar"><span id="cke_61_label"
												class="cke_voice_label">Colors</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_62"
													class="cke_button cke_button__textcolor cke_button_off "
													href="javascript:void('글자 색상')" title="글자 색상" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_62_label" aria-haspopup="true"
													onkeydown="return CKEDITOR.tools.callFunction(134,event);"
													onfocus="return CKEDITOR.tools.callFunction(135,event);"
													onclick="CKEDITOR.tools.callFunction(136,this);return false;"><span
														class="cke_button_icon cke_button__textcolor_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -408px; background-size: auto;">&nbsp;</span><span
														id="cke_62_label"
														class="cke_button_label cke_button__textcolor_label"
														aria-hidden="false">글자 색상</span><span
														class="cke_button_arrow"></span></a><a id="cke_63"
													class="cke_button cke_button__bgcolor cke_button_off "
													href="javascript:void('배경 색상')" title="배경 색상" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_63_label" aria-haspopup="true"
													onkeydown="return CKEDITOR.tools.callFunction(137,event);"
													onfocus="return CKEDITOR.tools.callFunction(138,event);"
													onclick="CKEDITOR.tools.callFunction(139,this);return false;"><span
														class="cke_button_icon cke_button__bgcolor_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -384px; background-size: auto;">&nbsp;</span><span
														id="cke_63_label"
														class="cke_button_label cke_button__bgcolor_label"
														aria-hidden="false">배경 색상</span><span
														class="cke_button_arrow"></span></a></span><span
												class="cke_toolbar_end"></span></span><span id="cke_64"
											class="cke_toolbar" aria-labelledby="cke_64_label"
											role="toolbar"><span id="cke_64_label"
												class="cke_voice_label">Tools</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_65"
													class="cke_button cke_button__maximize  cke_button_off"
													href="javascript:void('최대')" title="최대" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_65_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(140,event);"
													onfocus="return CKEDITOR.tools.callFunction(141,event);"
													onclick="CKEDITOR.tools.callFunction(142,this);return false;"><span
														class="cke_button_icon cke_button__maximize_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1392px; background-size: auto;">&nbsp;</span><span
														id="cke_65_label"
														class="cke_button_label cke_button__maximize_label"
														aria-hidden="false">최대</span></a><a id="cke_66"
													class="cke_button cke_button__showblocks  cke_button_off"
													href="javascript:void('블록 보기')" title="블록 보기" tabindex="-1"
													hidefocus="true" role="button"
													aria-labelledby="cke_66_label" aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(143,event);"
													onfocus="return CKEDITOR.tools.callFunction(144,event);"
													onclick="CKEDITOR.tools.callFunction(145,this);return false;"><span
														class="cke_button_icon cke_button__showblocks_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 -1776px; background-size: auto;">&nbsp;</span><span
														id="cke_66_label"
														class="cke_button_label cke_button__showblocks_label"
														aria-hidden="false">블록 보기</span></a></span><span
												class="cke_toolbar_end"></span></span><span id="cke_67"
											class="cke_toolbar" aria-labelledby="cke_67_label"
											role="toolbar"><span id="cke_67_label"
												class="cke_voice_label">about</span><span
												class="cke_toolbar_start"></span><span class="cke_toolgroup"
												role="presentation"><a id="cke_68"
													class="cke_button cke_button__about  cke_button_off"
													href="javascript:void('CKEditor에 대하여')"
													title="CKEditor에 대하여" tabindex="-1" hidefocus="true"
													role="button" aria-labelledby="cke_68_label"
													aria-haspopup="false"
													onkeydown="return CKEDITOR.tools.callFunction(146,event);"
													onfocus="return CKEDITOR.tools.callFunction(147,event);"
													onclick="CKEDITOR.tools.callFunction(148,this);return false;"><span
														class="cke_button_icon cke_button__about_icon"
														style="background-image: url(https://www.ticketbay.co.kr/resources/js/plugin/ckeditor/plugins/icons.png?t=F0RD); background-position: 0 0px; background-size: auto;">&nbsp;</span><span
														id="cke_68_label"
														class="cke_button_label cke_button__about_label"
														aria-hidden="false">CKEditor에 대하여</span></a></span><span
												class="cke_toolbar_end"></span></span></span></span>
									<div id="cke_1_contents" class="cke_contents cke_reset"
										role="presentation" style="height: 200px;">
										<span id="cke_71" class="cke_voice_label">도움이 필요하시면 ALT
											0 을 누르세요</span>
										<iframe src="" frameborder="0"
											class="cke_wysiwyg_frame cke_reset"
											style="width: 758px; height: 100%;"
											title="리치 텍스트 편집기, majorEditor" aria-describedby="cke_71"
											tabindex="0" allowtransparency="true"></iframe>
									</div>
									<span id="cke_1_bottom" class="cke_bottom cke_reset_all"
										role="presentation" style="user-select: none;"><span
										id="cke_1_resizer"
										class="cke_resizer cke_resizer_vertical cke_resizer_ltr"
										title="크기 조절"
										onmousedown="CKEDITOR.tools.callFunction(0, event)">◢</span></span>
								</div>
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
				<li id="java1818">
					<h3 style="width: 230px !important;">
						판매 가격 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01" style="width: 700px;">
						<div class="t_pay_gr">
							<h4 class="tit_style_001">
								<strong>등록 상품 기준 </strong>
							</h4>
							<div class="t_pay_gr_txt_01">
								<span>최저가</span> <strong><span id="min_sale_price">-</span></strong>
							</div>
							<div class="t_pay_gr_txt_02">
								<span>평균가</span> <strong><span id="avg_sale_price">-</span></strong>
							</div>
							<div class="t_pay_gr_txt_03">
								<strong>매수 당 가격 (￦)</strong> <span class="span_total"> <input
									type="hidden" id="bulkSellingPrice" name="SALE_PRICE_BULK"
									class="textInp03 number_tr" value=""> <input
									type="text" id="SPRICE_BULK" name="SPRICE_BULK"
									class="input_style_02 txt_c"
									style="font-size: 18px; font-weight: bold;"
									placeholder="판매 가격 입력" maxlength="10">
								</span>
								<div class="required_txt">가격이 평균보다 높으면 판매 확률이 낮아집니다.</div>
							</div>
						</div>


						<!-- 정가이하 체크 박스 영역 -->
						<div class="s_ctg_box_gr mt_10" id="below_div"
							style="display: inline-block;">
							<input name="BELOW_COST_USED" id="BELOW_COST_USED" type="hidden"
								class="" value="N"> <label> <input
								name="below_check" id="below_check" type="checkbox"
								class="ck_img" value=""> <span>정가이하로 판매 하겠습니다.
									(수수료 무료)<!-- span id="below_commision_span">0</span>%)</span -->
							</span></label>
						</div>
						<!-- // 정가이하 체크 박스 영역 -->

					</div>
					<div class="clear"></div>
				</li>
				<!-- // 판매 가격 -->


				<!-- 상품 정가  // -->
				<li id="pd_BELOW" style="display: none">
					<h3 style="width: 230px !important;">
						상품 정가 <span class="required">(필수)</span>
					</h3>
					<div class="in_box_01" style="width: 700px;">
						<input type="text" id="BELOW_PRICE" name="BELOW_PRICE"
							class="input_style_02 txt_c" style="width: 170px !important;"
							placeholder="1개의 정가 입력 (￦)" maxlength="10">
						<div class="required_txt mt_10" style="display: block !important;">티켓
							또는 상품 1개의 정상 가격을 입력하세요.</div>
						<div class="required_txt" style="display: block !important;">정가이하
							서비스를 악용 시 서비스 제제 및 수수료가 별도로 부과됩니다.</div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 상품 정가 -->


				<!-- 파워존  // -->
				<li id="pd_PCOUPON" style="display: block;">
					<h3 style="width: 230px !important;">
						등록권 사용 <span>(선택)</span>
						<!-- a class="btn_info btn_powerInfo"></a -->
					</h3>
					<div class="in_box_01" style="width: 705px;">
						<ul class="no_line">
							<li><label><input id="premiumUse" type="radio"
									name="PREMIUM_YN" value="N" class="stFormEl01"
									checked="checked"><span>사용 안 함</span></label></li>
							<li><label><input type="radio" name="PREMIUM_YN"
									value="Y" class="stFormEl01"><span>사용</span></label></li>
						</ul>
						<ul class="no_line">
							<script id="premiumCouponListTmpl" type="text/x-jquery-tmpl">

							{{each(i, row) list}}
							<input type="hidden" name="USE_PREMIUM_COUP[{{= row.seq}}]" value="{{= row.qty}}" />
							<li class="li_pwz"><label><span>{{= row.name}}({{= row.qty}}장)</span></label></li>
							{{/each}}
						</script>

						</ul>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 파워존  -->
				<!-- 쿠폰  // -->
				<li id="pd_CCOUPON" style="display: block;">
					<h3 style="width: 230px !important;">
						판매수수료 할인 쿠폰 <span>(선택)</span>
					</h3>
					<div class="in_box_01" style="width: 700px;">
						<div id="BELOW_COUP_N" class="CouponUse_txt" style="display: none">정가이하
							상품은 할인쿠폰 사용 불가</div>
						<div id="BELOW_COUP_Y" class="CouponUse_txt"
							style="display: block;">
							<a class="btn_sm_01" id="sellCouponPopupTrigger"
								href="/web/myproduct/sellCouponListPop">쿠폰선택하기</a>
							<div class="cupon_list_box">
								<ul class="no_line cou_list">
									<!-- <li>500원 구매 할인쿠폰 (멤버십 혜택)</li>
								<li>[쿠폰존-신규] 3% 거래할인</li> -->
								</ul>
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</li>
				<!-- // 쿠폰  -->

				<!-- 판매 금액 확인   // -->
				<li id="pd_TPRICE" style="display: block;">
					<h3>판매 금액 확인</h3>
					<div class="in_box_01">
						<table class="table_st_03">
							<tbody>
								<tr>
									<th>판매가격</th>
									<th>할인쿠폰</th>
									<th>판매수수료</th>
									<th>실 수령금액</th>
								</tr>
								<tr>
									<input type="hidden" id="sellCharge">
									<!-- 판매가격 -->

									<input type="hidden" id="fanPower" value="0.3">
									<input type="hidden" id="commision" value="10.0">
									<!-- 판매수수료(%) -->
									<input type="hidden" id="commisionPrice">
									<!-- 판매수수료(금액) -->
									<input type="hidden" id="commisionCouponRate">
									<input type="hidden" id="commisionCouponAmount" value="">
									<input type="hidden" id="commisionCouponApplied"
										class="textInp03 number_tr">
									<input type="hidden" id="commisionCouponAppliedPrice"
										class="textInp03 number_tr">
									<input type="hidden" id="commisionCouponMaxAmount">
									<!-- 쿠폰 최대 금액 -->


									<input type="hidden" id="earnPricePerUnit" value="0">
									<input type="hidden" id="totalEarnPriceIfSoldout" value="0">

									<input type="hidden" id="belowTempCommision">
									<input type="hidden" id="belowCommision" value="0.0">
									<input type="hidden" id="belowTempFanPower">
									<input type="hidden" id="belowFanPower" value="0.0">
									<input type="hidden" id="belowUsed" value="true">

									<td>
										<div id="td_sellCharge" class="all_nb_txt">￦0</div>
										<div id="td_pFanPower" class="fp_nb_txt"></div>
									</td>
									<td id="td_couponChk">미사용</td>
									<td id="td_commisionCouponApplied">￦0</td>
									<td id="td_totalEarnPriceIfSoldout">￦0</td>
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


				<button type="button" id="registNormalTrigger" href="#"
					class="btn_st_06"
					style="width: 200px; display: block; margin: 20px auto;">등록</button>
				<div class="clear"></div>

			</div>

		</div>
	</form>
</body>
 <jsp:include page="footer.jsp"></jsp:include>
</html>
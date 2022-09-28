<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">

<link rel="stylesheet" href="resources/css/sheet.css">
<link rel="stylesheet" href="resources/css/sheet2.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/sheet3.css">
<link rel="stylesheet" href="resources/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">
<title>Mart - HTML5 Resoponsive onepage e-commerce template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.png">
<link rel="stylesheet" href="../css/style.css">

</head>
<body>
	<section class="header-top-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6"></div>
				<div class="col-md-6">
					<div class="header-top-menu">
						<ul class="nav nav-pills navbar-right">
							<li><a href="#"><i class="pe-7s-gift">이벤트/혜택존</i></a></li>
							<li><a href="#"><i class="pe-7s-ticket">MY티켓베이</i></a></li>
							<li><a href="#"><i class="pe-7s-unlock"></i>로그인</a></li>
							<li><a href="#"><i class="pe-7s-user"></i>회원가입</a></li>
							<li><a href="#"><i class="pe-7s-box1"></i>판매등록</a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<header class="header-section">
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false"></button>
					<a class="navbar-brand" href="#"><b>T</b>icketbay</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">콘서트</a></li>
						<li><a href="#">스포츠</a></li>
						<li><a href="#">뮤지컬/연극</a></li>
						<li><a href="#">영화/전시</a></li>
						<li><a href="#">굿즈</a></li>
						<li><a href="#">정가이하</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right cart-menu">
						<li><a href="#" class="search-btn"><i
								class="fa fa-search" aria-hidden="true"></i></a></li>
						<li><a href="#"><span> Cart &nbsp;</span> <span
								class="shoping-cart">0</span></a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</header>

	<section class="search-section">
		<div class="container">
			<div class="row subscribe-from">
				<div class="col-md-12">
					<form class="form-inline col-md-12 wow fadeInDown animated">
						<div class="form-group">
							<input type="email" class="form-control subscribe" id="email"
								placeholder="티켓을 검색해보세요!">
							<button class="suscribe-btn">
								<i class="pe-7s-search"></i>
							</button>
						</div>
					</form>
					<!-- end /. form -->
				</div>
			</div>
			<!-- end of/. row -->
		</div>
		<!-- end of /.container -->
	</section>
	<!-- end of /.news letter section -->
	

			<div class="c2c_order_sheet_gr">
				<main id="contents">
					<!-- boxStyle01 -->
					<div class="box_style_03 mt_20 txt_c step_tit_box_01 brd30_sdw_v2">
						<h2>주문서</h2>
						<ul class="step_box">
							<li>
								<ul class="step_box_icon step_box_icon_le">
									<li class="le_box"></li>
									<li class="cn_box on_step">01</li>
									<li class="re_box on_step"></li>
								</ul>
								<div class="clear"></div> <span>주문서</span>
							</li>
							<li>
								<ul class="step_box_icon step_box_icon_re">
									<li class="le_box"></li>
									<li class="cn_box">02</li>
									<li class="re_box"></li>
								</ul>
								<div class="clear"></div> <span>주문완료</span>
							</li>
						</ul>
						<div class="clear"></div>
					</div>





					<!-- 현장거래 안내사항 // -->
					<div class="box_style_03 border_radius_style_01 brd30_sdw_v3">
						<h3 class="boxTitle">
							<span>거래 안내사항</span>
						</h3>
						<ul class="li_style_01">
							<li>결제완료 이후 판매자에게 전달받을 장소와 내용을 확인하세요.</li>
							<li>결제완료 이후 판매자가 상품과 관련된 PIN번호 또는 이미지 파일등을 전달하게 됩니다.</li>
							<li>받으신 상품은 다시 한번 꼭 확인 하시기 바랍니다.</li>
							<li>판매자에게 상품을 정확히 받은 이후에 구매확정을 진행해 주세요.</li>
						</ul>
					</div>


					<!-- // 현장거래 안내사항 -->















					<div class="box_style_03 mt_20 mb_20">

						<!-- 좌측영역 // -->
						<div class="c2c_order_box_a_gr">

							<!-- 주문상품정보 // -->
							<h3 class="boxTitle">
								<span>주문상품 정보</span>
							</h3>
							<div class="c2c_top_box_gr">
								<div class="c2c_a_gr">
									<div class="c2c_ctg_list">${ovo.p_type}&gt${ovo.p_title}</div>
									<div class="c2c_pd_tit">>${ovo.p_seat_info}</div>
									<div class="c2c_sub_info_txt">

										<span>${ovo.p_title}</span> <span>${ovo.p_seat_info}</span> <span>
											${ovo.p_type}</span> <span>${ovo.p_show_date}</span>


									</div>
									<div class="">




										<!-- div class="BTN_RP">신고</div -->





										<!-- span class="REGULAR_PRICE" style="border-right: 0 !important">정가이하</span -->





										<div class="new_UNUSUAL_LIST_gr"></div>

										<!-- C2C 티켓군 상품정보 특이사항  s -->
										<!-- <span>현장에서 입장 도움</span>
									<span>예매처 ID로 상품 전달</span>
									<span>이용연령 제한</span>
									<span>할인티켓</span> -->
										<!-- C2C 티켓군 상품정보 특이사항  e -->

										<!-- C2C 티켓군 특이사항  s -->


										<!-- <span>시야 제한석</span>
									 <span>통로석</span>
									 <span>스피커 옆</span>
									 <span>스탠딩 한정</span> -->
										<!-- // C2C 티켓군 특이사항 -->
										<!-- C2C 티켓군 특이사항  e -->

										<div class="clear"></div>



										<span class="new_PROD_DISP_NO_gr">상품번호 : ${ovo.pd_code}</span>
									</div>
								</div>
								<div class="clear"></div>
							</div>
							<!-- // 주문상품정보 -->


							<!-- 결제수단 선택 // -->
							<div class="">
								<h3 class="boxTitle">
									<span>결제수단 선택</span>
								</h3>
								<div>
									<a href="#;return false;" class="pay_info_btn">결제 및 취소안내 보기</a>
								</div>

								<!-- 카카오페이 간편송금 도입 관련 추가 수정 -->
								<div class="pay_box">
									<!-- kakao 11 / samsung 12 / payco 13  -->


									<div class="pay_type_01">
										<div class="pay_type_01_title pay_type_01_title_on">
											<img src="resources/css/pay_type_01.png"
												class="pay_type_tit_img"> 간편하고 더 빨라진 <span>무통장
												입금</span>
										</div>
										<div class="pay_type_01_sub dp_b">



											<input type="radio" name="pmType" value="2" data-pmtype="22"
												data-radiotg="pType02" id="pType02"> <label
												for="pType02" class="pay_bt_05"
												style="width: auto; margin-right: 10px;"> <strong
												class="normal">일반</strong>가상계좌로 입금
											</label> <input type="radio" name="pmType" value="20"
												data-pmtype="20" data-radiotg="pType20" id="pType20">
											<label for="pType20" class="pay_bt_05"
												style="width: auto; margin-right: 10px;"> <strong
												class="only">내번호</strong>010 가상계좌로 입금
											</label> <input type="radio" name="pmType" value="11"
												data-pmtype="11" data-radiotg="pType11" id="pType11">
											<label class="pay_bt_05" for="pType11"
												style="width: auto; margin-right: 10px;"> 페이머니 전용<img
												src="resources/css/icon_kakaopay.png" class="">
											</label>








											<!-- <div class="kakao_pay_info">
									<ul>
										<li>카카오페이를 통한 송금으로 진행되며 알림톡으로 송금방법이 안내됩니다.</li> 
										<li>카카오톡에서 알림톡을 차단 했다면 알림톡 수신을 위해 받기로 변경해 주세요.</li>
									</ul> -->
											<script>
												$(document)
														.ready(
																function() {
																	var paybtCount = $('.pay_type_01_sub .pay_bt_05').length;
																	if (paybtCount < 4) {
																		$(
																				'.pay_type_01_sub .pay_type_01')
																				.css(
																						'text-align',
																						'left');
																		$(
																				'.pay_type_01_sub .pay_bt_05')
																				.css(
																						{
																							'width' : 'auto',
																							'margin-right' : '10px'
																						});
																	} else {
																		$(
																				'.pay_type_01_sub .pay_bt_05')
																				.css(
																						{
																							'width' : '210px'
																						});
																	}
																});
											</script>
										</div>
									</div>

									<div class="pay_type_02">
										<div class="pay_type_02_title">
											<img src="resources/css/pay_type_02.png"
												class="pay_type_tit_img"> 초 스피드!! <span>간편결제</span>
										</div>

										<div class="pay_type_02_sub">
											<!-- img src="/resources/img/all_img/kakaopay_event_bn.jpg" -->




















											<input type="radio" name="pmType" value="12" data-pmtype="12"
												data-radiotg="pType12" id="pType12"> <label
												class="pay_bt_05" for="pType12"> 카카오페이<img
												src="resources/css/icon_kakaopay.png">
											</label>


















											<!-- lable class="pay_ssg button_ck"><img src="/resources/img/all_img/payicon_ssgpay.png"></lable -->
										</div>
									</div>








									<div class="pay_type_03">
										<input type="radio" name="pmType" value="1" data-pmtype="1"
											data-radiotg="pType01" id="pType01"> <label
											class="pay_bt_03 button_ck" for="pType01"> <img
											src="resources/css/pay_type_03.png" class="pay_type_tit_img">
											신용카드 결제 <!-- 카드사 선택 // --> <select id="pmCardType"
											class="select_style_01 ml_10">
												<option value="0">카드 선택</option>
												<option value="1">BC카드</option>
												<option value="2">KB카드</option>
												<option value="3">하나카드</option>
												<option value="4">신한카드</option>
												<option value="5">삼성카드</option>
												<option value="6">현대카드</option>
												<option value="1">기타</option>
										</select> <!-- // 카드사 선택 -->
										</label>
									</div>
























									<div class="pay_type_04" id="pay_type_none"
										style="display: none;">
										<input type="radio" name="pmType" value="21" data-pmtype="21"
											data-radiotg="pType21" id="pType21"> <label
											class="pay_bt_04 button_ck" for="pType21"> <img
											src="resources/css/pay_type_04.png" class="pay_type_tit_img">
											결제수단 없음
										</label>
									</div>


								</div>

								<script>
									/* 버튼 영역 펼침/닫침 */
									$("div.pay_type_01_title")
											.click(
													function() {
														$(".pay_type_02_sub")
																.removeClass(
																		'dp_b');
														$(".pay_type_02_title")
																.removeClass(
																		'pay_type_02_title_on');
														$(".pay_type_01_sub")
																.toggleClass(
																		"dp_b");
														$(this)
																.toggleClass(
																		"pay_type_01_title_on");
														if ($(
																".pay_type_01_sub")
																.is(':visible') == true) {
															$("#cashTable")
																	.show();
														} else {
															if ($('#BAL_USE_YN')
																	.val() == 'Y') {
																$("#cashTable")
																		.show();
															} else {
																$("#cashTable")
																		.hide();
															}
														}
													});
									$("div.pay_type_02_title")
											.click(
													function() {
														$(".pay_type_01_sub")
																.removeClass(
																		'dp_b');
														$(".pay_type_01_title")
																.removeClass(
																		'pay_type_01_title_on');
														$(".pay_type_02_sub")
																.toggleClass(
																		"dp_b");
														$(this)
																.toggleClass(
																		"pay_type_02_title_on");
														if ($('#BAL_USE_YN')
																.val() == 'Y') {
															$("#cashTable")
																	.show();
														} else {
															$("#cashTable")
																	.hide();
														}
													})
									$("div.pay_type_03")
											.click(
													function() {
														$(".pay_type_01_sub")
																.removeClass(
																		'dp_b');
														$(".pay_type_02_sub")
																.removeClass(
																		'dp_b');
														$(".pay_type_01_title")
																.removeClass(
																		'pay_type_01_title_on');
														$(".pay_type_02_title")
																.removeClass(
																		'pay_type_02_title_on');
														if ($('#BAL_USE_YN')
																.val() == 'Y') {
															$("#cashTable")
																	.show();
														} else {
															$("#cashTable")
																	.hide();
														}
													});
									$("div.pay_type_04")
											.click(
													function() {
														$(".pay_type_01_sub")
																.removeClass(
																		'dp_b');
														$(".pay_type_02_sub")
																.removeClass(
																		'dp_b');
														$(".pay_type_01_title")
																.removeClass(
																		'pay_type_01_title_on');
														$(".pay_type_02_title")
																.removeClass(
																		'pay_type_02_title_on');
														if ($('#BAL_USE_YN')
																.val() == 'Y') {
															$("#cashTable")
																	.show();
														} else {
															$("#cashTable")
																	.hide();
														}
													});
									$("div.pay_type_05")
											.click(
													function() {
														$(".pay_type_01_sub")
																.removeClass(
																		'dp_b');
														$(".pay_type_02_sub")
																.removeClass(
																		'dp_b');
														$(".pay_type_01_title")
																.removeClass(
																		'pay_type_01_title_on');
														$(".pay_type_02_title")
																.removeClass(
																		'pay_type_02_title_on');
														if ($('#BAL_USE_YN')
																.val() == 'Y') {
															$("#cashTable")
																	.show();
														} else {
															$("#cashTable")
																	.hide();
														}
													});
								</script>
								<!-- // 카카오페이 간편송금 도입 관련 추가 수정 -->

								<table class="tableStyle new-table mt_10" id="cashTable"
									style="border: 3px solid #fff; border-radius: 15px;">
									<caption>결제 정보</caption>
									<colgroup>
										<col style="width: 150px;">
										<col style="width: auto;">
									</colgroup>
									<tbody>

										<tr data-radiotg="pType02/pType04/pType16"
											class="cash_receipt_line impor_line">
											<th scope="row"><label for="rCashOp"><img
													src="/resources/img/th_label/lbl_thRow34.gif" alt=""></label>
												<div class="mt10">
													<a href="#;return false;" class="cashReceipt_info_btn">현금영수증
														안내 보기</a>
												</div></th>
											<td>
												<!-- formWrap -->
												<div class="formWrap">
													<!-- 0317수정 -->
													<label><ins class="stFormElRa01"
															style="width: 14px; height: 14px; top: 0px; left: 0px;"></ins><input
														id="rCashOp" type="radio" name="rCash" value="1"
														class="stFormEl01" data-radiotg="rCash01"
														style="visibility: visible; opacity: 0;"><span>개인소득공제</span></label>
													<label><ins class="stFormElRa01"
															style="width: 14px; height: 14px; top: 0px; left: 99.5312px;"></ins><input
														type="radio" name="rCash" value="2" class="stFormEl01"
														data-radiotg="rCash02"
														style="visibility: visible; opacity: 0;"><span>사업자증빙</span></label>
													<label><ins class="stFormElRa01 checked"
															style="width: 14px; height: 14px; top: 0px; left: 188.141px;"></ins><input
														type="radio" name="rCash" value="3" class="stFormEl01"
														checked="checked" data-radiotg="rCash03"
														style="visibility: visible; opacity: 0;"><span
														class="checked">신청안함</span></label>
												</div>
												<div class="formWrap cashTell"
													data-radiotg="pType02/rCash01" style="display: none;">
													<ins class="stFormElSl01"
														style="width: 101px; height: 30px; padding-right: 29px; top: 0px; left: 0px;">휴대폰번호</ins>
													<select id="theSelect" class="stFormEl01"
														style="width: 140px; visibility: visible; opacity: 0;">
														<option value="1">휴대폰번호</option>
														<option value="2">현금영수증 카드번호</option>
													</select>
													<div id="example1" class="exampleSubselect"
														style="display: block;">
														<ins class="stFormElSl01"
															style="width: 31px; height: 30px; padding-right: 29px; top: 0px; left: 152px;">010</ins>
														<select id="receipt_no1" class="stFormEl01 phoneNum"
															title="휴대폰 첫자리" style="visibility: visible; opacity: 0;">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
														</select> <i class="inpBar">-</i> <input type="text"
															id="receipt_no2" class="textInp03 phoneNum" maxlength="4"
															title="휴대폰 중간자리"> <i class="inpBar">-</i> <input
															type="text" id="receipt_no3" class="textInp03 phoneNum"
															maxlength="4" title="휴대폰 끝자리">
													</div>
													<div id="example2" class="exampleSubselect">
														<input type="text" id="receipt_card_no1"
															class="textInp03 phoneNum" maxlength="4"
															title="현금영수증카드 첫번째자리" style="width: 45px;"> <i
															class="inpBar">-</i> <input type="text"
															id="receipt_card_no2" class="textInp03 phoneNum"
															maxlength="4" title="현금영수증카드 두번째자리" style="width: 45px;">
														<i class="inpBar">-</i> <input type="text"
															id="receipt_card_no3" class="textInp03 phoneNum"
															maxlength="4" title="현금영수증카드 세번째자리" style="width: 45px;">
														<i class="inpBar">-</i> <input type="text"
															id="receipt_card_no4" class="textInp03 phoneNum"
															maxlength="6" title="현금영수증카드 네번째자리" style="width: 45px;">
													</div>
												</div>
												<div class="formWrap cashLicensee"
													data-radiotg="pType02/rCash02" style="display: none;">
													<input id="cpNum1" type="text" class="textInp03 phoneNum"
														maxlength="3" title="사업자증빙 첫자리"> <i class="inpBar">-</i>
													<input id="cpNum2" type="text" class="textInp03 phoneNum"
														maxlength="2" title="사업자증빙 중간자리"> <i
														class="inpBar">-</i> <input id="cpNum3" type="text"
														class="textInp03 phoneNum" maxlength="5" title="사업자증빙 끝자리">
												</div> <!-- //formWrap -->
											</td>
										</tr>


									</tbody>
								</table>

								<!-- 안전거래 안내 추가 // -->
								<div class="c2c_c_gr mt_20 ml_10">
									<h3>티켓베이 구매 안전 프로그램</h3>
									<ul>
										<li>티켓베이에 모든 판매자는 본인인증(이동통신사 또는 아이핀 등)이 완료된 회원입니다.</li>
										<li>결제하시는 대금은 티켓베이가 안전하게 보관하며, 티켓을 수령 후 구매확정을 하면 판매자에게
											지급됩니다.</li>
										<li>티켓베이는 공연(경기)이 공식적으로 취소될 경우 100% 환불을 보장합니다.</li>
										<li>티켓베이는 안전한 거래를 위해 고객센터를 운영하고 있습니다. 문의가 있으시면 언제든 연락
											주세요.</li>
									</ul>
								</div>
								<!-- // 안전거래 안내 추가 -->

								<!-- 2020-05-18 입장안심 서비스 내용 추가  -->
								<div class="c2c_c_gr mt_20 ml_10">
									<h3>
										티켓베이 입장안심 서비스
										<p class="safe_s_guide">
											<a href="#" onclick="layer_open('layer2');return false;">서비스
												확인하기</a>
										</p>
									</h3>
									<ul>
										<li>가고 싶고 사고 싶은 티켓인데 구매하기 고민되신다면?! 입장안심 서비스를 이용하세요.</li>
										<li>현장에서 입장을 거부 당할 경우 <span class="font_point_red">티켓베이가
												티켓 결제 금액을 전액 보상</span>해 드립니다.
										</li>
										<li>카테고리 및 상품에 따라 이용이 불가능 할 수도 있습니다.</li>
									</ul>
								</div>
								<!-- // 2020-05-18 입장안심 서비스 내용 추가  // -->

							</div>
							<!-- // 결제수단 선택 -->


						</div>
						<!-- // 좌측영역 -->


						<!-- 우측영역 // -->
						<div class="c2c_order_box_b_gr">
							<!-- 주문상품 수량 금액 거래방식 // -->
							<table class="c2c_table_style_01">
								<caption>주문상품 수량 금액 거래방식 정보</caption>
								<colgroup>
									<col style="width: 120px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">수량</th>
										<td>${ovo.p_tk_count}장</td>
									</tr>
									<tr>
										<th scope="row">주문금액</th>
										<td>${ovo.p_buy_immed}원
											<div class="t_style_02 mt_5">0FP 적립</div>
										</td>
									</tr>

									<tr>
										<th scope="row">거래방식</th>
										<td>
											<!-- 현장거래  // --> 현장거래
											<div class="t_style_03 mt_5">광주 전체</div> <!-- // 현장거래  --> <!-- C2C 티켓군 특이사항 // -->
											<span class="new_TICKET_RETENTION_gr_v2"> <b>72시간</b>
												이내 전달 가능
										</span>

										</td>
									</tr>
								</tbody>
							</table>
							<!-- // 주문상품 수량 금액 거래방식 -->

							<!-- 할인쿠폰 // -->
							<h3 class="boxTitle mt_30">
								<span>할인쿠폰</span>
							</h3>
							<!-- 정가이하 할인쿠폰 영역 안내 메세지 -->

							<div class="cupon_info_box_n">정가이하 상품은 할인쿠폰 사용 불가</div>

							<!-- //정가이하 할인쿠폰 영역 안내 메세지 -->

							<!-- // 할인쿠폰 -->
							<!-- 예치금 -->








							<h3 class="boxTitle mt_30">
								<span>예치금</span>
							</h3>
							<div class="cupon_info_box_y" style="position: relative;">
								<p>
									사용가능 예치금 : <span>${ovo.m_now_money}</span>원
								</p>
								<input type="text" id="discBal" class="input_style_02 txt_r"
									style="width: 160px !important;" value="0"> 원 <span
									class="btn_sm_01 ml_10" id="orderBalanceInfo">예치금 적용</span>
								<div class="clear"></div>
								<div class="desc">
									<span style="color: #71A0DA">* 사용할 예치금을 입력 후 적용 버튼을 누르세요</span><br>
									<span style="color: #ff0000">(최소 사용 : 200원 이상)</span>
								</div>
								<div class="bullon" style="display: none;">보유한 예치금을 초과
									하였습니다. 다시 입력해 주세요</div>
							</div>



							<!-- 결제금액 정보 // -->
							<h3 class="boxTitle mt_40">
								<span>총 결제금액</span>
							</h3>
							<table class="c2c_table_style_01 mt_-10">
								<caption>총 결제금액 정보</caption>
								<colgroup>
									<col style="width: 100px;">
									<col style="width: 200px;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">상품금액</th>
										<td>${ovo.p_buy_immed}원</td>
									</tr>
									<tr>
										<th scope="row">배송비</th>
										<td id="delivery_fee">0원</td>
									</tr>
									<tr>
										<th scope="row">쿠폰할인</th>
										<td><span id="couponAmount">0</span>원</td>
									</tr>
									<tr>
										<th scope="row">수수료</th>
										<td id="serviceFee">0원</td>
									</tr>
									<!--  2020-05-18 입장안심 서비스 추가 -->

									<!--  2020-05-18 입장안심 서비스 추가 // -->
									<tr>
										<th scope="row">예치금</th>
										<td><span id="balanceAmount">0</span>원</td>
									</tr>
									<tr>
										<th scope="row">총 결제금액</th>
										<td class="t_style_01"><span id="totalPayAmount">${ovo.p_buy_immed}</span>원</td>
									</tr>
								</tbody>
							</table>
							<!-- // 결제금액 정보 -->
							<input type="hidden" id="BAL_USE_YN" name="BAL_USE_YN" value="N">



							<!-- btnArea -->

							<!-- <a href=""  onclick="layer_open1('layer3');return false;"> -->
							<label class="s_ctg_ck_box order_ck_gr"> <input
								type="checkbox" id="chkIsPayAgree" class=""> <span></span>
								<p>
									주문상품 구매조건 확인 및 결제 후 변심취소불가,<br>위반 시 서비스 이용 제한이 되는 점을 확인
									했습니다.
								</p>
							</label>
							<!-- </a> -->
							<!-- 2020-05-18 입장안심 서비스 부가세 레이어 팝업 s -->
							<div class="layer1">
								<div class="bg1"></div>
								<div id="layer3" class="pop-layer1" style="height: auto;">
									<div class="pop-container">
										<div class="pop-conts">
											<!--  팝업 내용  -->
											<div class="safe_tax_popup">
												<div class="">
													<img src="/resources/img/popup/Safe_tax_popup_con.jpg"
														alt="입장안심 서비스 ">
												</div>
												<ul class="safe_tax_btn ty01">
													<li class="btn-r"><a href="javascirpt:void(0);"
														class="cbtn1"><img
															src="/resources/img/popup/Safe_tax_popup_btn1.jpg"
															alt="아니오"></a></li>
													<li class="btn_s_more"><a href="javascirpt:void(0);"><img
															src="/resources/img/popup/Safe_tax_popup_btn2.jpg"
															alt="사용하기"></a></li>
												</ul>
											</div>
											<!--  팝업 내용  // -->
										</div>
									</div>
								</div>
							</div>
							<!-- 레이어 팝업 스크립트-->
							<script type="text/javascript">
								function layer_open1(el) {
									var temp = $('#' + el);
									var bg = temp.prev().hasClass('bg1'); //dimmed 레이어를 감지하기 위한 boolean 변수
									if (bg) {
										$('.layer1').fadeIn(); //'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다. 
									} else {
										temp.fadeIn();
									}

									// 화면의 중앙에 레이어를 띄운다.
									if (temp.outerHeight() < $(document)
											.height())
										temp
												.css('margin-top', '-'
														+ temp.outerHeight()
														/ 2 + 'px');
									else
										temp.css('top', '0px');
									if (temp.outerWidth() < $(document).width())
										temp.css('margin-left', '-'
												+ temp.outerWidth() / 2 + 'px');
									else
										temp.css('left', '0px');
								}

								$('.layer1 a.cbtn1').click(
										function(e) {
											e.preventDefault();
											var bg = $('#layer3').prev()
													.hasClass('bg1');
											if (bg) {
												$('.layer1').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다. 
											} else {
												$('#layer3').fadeOut();
											}
										});

								$('.layer1 .safe_tax_btn li.btn_s_more').click(
										function(e) {
											e.preventDefault();
											var bg = $('#layer3').prev()
													.hasClass('bg1');
											$('#chkIsSafeAgree').trigger(
													'click');
											if (bg) {
												$('.layer1').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다. 
											} else {
												$('#layer3').fadeOut();
											}
										});

								$('.layer1 .bg1').click(function(e) { //배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
									e.preventDefault();
									$('.layer1').fadeOut();
								});
							</script>
							<!-- 레이어 팝업 스크립트 end -->
							<!-- 2020-05-18 입장안심 서비스 부가세 레이어 팝업 end -->
							<!--  2020-05-18 입장안심 서비스 -->
							<label class="s_ctg_ck_box order_ck_gr"
								style="margin: 0px 0 13px;"> <input type="checkbox"
								id="chkIsSafeAgree" class=""> <span></span>
								<p>
									(선택사항)입장안심 서비스를 확인하였으며 <br>유료서비스 이용에 동의 합니다.
								</p>
							</label>
							<!--  2020-05-18 입장안심 서비스 // -->



							<div class="btnArea">
								<!-- a href="javascript:history.back();" class="btn_st_04" style="min-width: 50px; width: 50px;">취소</a -->
								<a href="orderPay.jsp" id="btnOrder" class="btn_st_02"
									style="min-width: 290px; width: 290px;">결제하기</a>

							</div>
							<!-- //btnArea -->



						</div>
						<!-- // 우측영역 -->

						<div class="clear"></div>

					</div>

					<!-- 2016-11-10 제3자동의 레이어 추가시작 -->
					<div id="agree_layer" class="agree_layer" style="display: none">
						<div class="inner_agree_layer">
							<div class="layer_head">
								<strong class="tit_info">제 3자 정보제공</strong>
							</div>
							<div class="layer_body">
								<p class="txt_info">
									고객이 ㈜티켓베이가 제공한 상품 및 서비스를 구매하는데 있어 응대 및 개인확인<br>등을 위해 필요한
									최소한의 개인정보를 제3자에 아래와 같이 제공함에 있어, 정보통신망<br> 이용촉진 및 정보보호 등에
									관한 법률에 따라 안내 드리니 내용 확인 후 동의하여 주시기 바랍니다.
								</p>
								<div class="tbl_scroll">
									<table class="">
										<caption>결제 정보</caption>
										<colgroup>
											<col style="width: 104px;">
											<col style="width: auto;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="col">제공 받는 자</th>
												<td colspan="6" class="service_info"></td>
											</tr>
											<tr>
												<th scope="col">이용목적</th>
												<td class="service_info"></td>
											</tr>
											<tr>
												<th scope="col">제공항목</th>
												<td></td>
											</tr>
											<tr>
												<th scope="col">보존기간<br>(만료 시 파기)
												</th>
												<td class="service_info"></td>
											</tr>
											<tr>
												<th scope="col">동의 거부권 고지</th>
												<td></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="btn_okay">
									<a href="#none" id="btn_layer" class="btn_layer"><img
										src="/resources/img/myservice/layer_btnOk.jpg" alt="확인"
										class="img_ok"></a>
								</div>
							</div>
							<div class="layer_foot">
								<a href="#none" id="btn_close" class="btn_close"><img
									src="/resources/img/myservice/layer_close.jpg" alt="닫기"
									class="img_close"></a>
							</div>
						</div>
					</div>
					<!-- 2016-11-10 제3자동의 레이어 추가끝 -->

					<!-- 2017-05-15 무통장 거래횟수 팝업 추가시작 -->
					<div class="count_layer" id="count_layer" style="display: none">
						<div class="inner_count_layer">
							<div class="layer_head">
								<strong class="tit_info">무통장입금 거래 안내</strong>
							</div>
							<div class="layer_body">

								<!-- 2018-05-04 추가 및 수정시작 -->
								<style>
.count_layer {
	height: 376px !important;
}
</style>
								<p class="txt_info">
									판 · 구매자간 원활한 거래를 위하여 무통장입금 거래 시<br> 결제 대기 상태에서만 거래취소가 가능하며
									<br> 일일 <span class="limmitCnt">1</span>회 까지만 가능 합니다.<br>
									<br> <span class="limmitCnt">1</span>회 취소 이후에는 당일 무통장 거래가
									불가능 하오니<br> 신중한 구매 부탁 드립니다.<br>
								</p>
								<p class="txt_info txt_info2">
									<span class="txt_inline">*</span>단, 본인 과실이 아닌 경우에는 <br>거래
									가능 횟수가 줄어 들지 않습니다.
								</p>
								<!-- 2018-05-04 추가 및 수정끝 -->

								<div class="box_count">
									거래 가능 횟수 : <span class="txt_num"><span class="txt_count"
										id="dealCount">1</span>회</span>
								</div>
								<div class="btn_progress">
									<a href="orderPay.jsp" class="btn_comm btn_pay"
										id="btnOrderProc" target="blank">결제진행하기</a> <a href="?"
										class="btn_comm btn_cancel" id="btn_cancel">취소</a>
								</div>
							</div>
							<div class="layer_foot">
								<a href="#none" id="btn_close_count" class="btn_comm btn_close">닫기</a>
							</div>
						</div>
					</div>
					<!-- 2017-05-15 무통장 거래횟수 팝업 추가끝 -->

					<!-- //boxStyle paymentAgree /web/order/orderComplete-->



					<!-- 결제 및 취소안내 보기(popup) 영역 -->
					<div id="payInfo_popup" class="lv_popup_info payInfo_popup">
						<div class="lv_popup_info_box">
							<div class="tit_box">
								<h2>결제 및 취소안내</h2>
							</div>
							<div class="sh_box_gr">
								<div class="payInfo_popup_txt_box">
									<h3>무통장입금(가상계좌입금)</h3>
									<p>주문 완료 후 가상계좌가 발급되며,&nbsp;30분 이내 입금&nbsp;하세요. (미입금 시 거래
										자동취소) 입금 시 주문자 이름과 관계없이&nbsp;결제 금액이 일치해야만 정상 입금처리 됩니다.
										무통장입금(가상계좌)으로&nbsp;결제 후 취소 시 티켓베이 ‘예치금’ 으로 적립됩니다. 예치금은
										[MY티켓베이&gt;혜택관리&gt;예치금관리]에서&nbsp;본인명의 계좌로 출금신청 가능하며, 신청일
										기준&nbsp;다음날 오후 2시 입금됩니다. (주말 및 공휴일 제외)</p>
									<h3 class="mt20">신용카드</h3>
									<p>신용카드 및 체크카드&nbsp;결제 후 당일 취소 시 즉시 승인취소&nbsp;처리됩니다. 결제 당일
										취소가 아닌 경우&nbsp;신용카드는 영업일 기준 4~7일, 체크카드는 영업일 기준 6~7일&nbsp;후
										승인취소 처리됩니다.</p>
									<h3 class="mt20">휴대폰</h3>
									<p>휴대폰 결제는&nbsp;결제 후 당일 취소 시 즉시 승인취소&nbsp;처리됩니다. 결제월과 취소월이
										다른 경우 휴대폰 결제 취소는 불가하며, 취소금액은&nbsp;예치금으로 적립&nbsp;됩니다. (단, 휴대폰
										요금은 청구 됨) 휴대폰 결제는 당월&nbsp;최대 60만원까지 결제가 가능합니다.</p>
									<h3 class="mt20">실시간 계좌이체</h3>
									<p>취소 시 결제대행사 정책에 따라&nbsp;이체된 계좌로 환불&nbsp;처리 됩니다. 1일 최대
										100만원(월 4회)&nbsp;까지 이용 가능합니다</p>
									<h3 class="mt20">카카오페이 간편송금</h3>
									<p>
										주문 완료 후 송금하기 버튼을 통해 카카오페이로 10분 이내 송금을 완료 하세요. (미입금 시 거래 자동취소)
										카카오페이 송금 기능을 이용 하여야만 정상 결제처리 됩니다. 결제 후 취소가 발생 시 티켓베이 ‘예치금＇으로
										적립됩니다. 예치금은 [MY티켓베이&gt;혜택관리&gt;예치금관리]에서&nbsp;본인명의 계좌로
										출금신청&nbsp;가능하며, 신청일 기준&nbsp;다음날 오후 2시 입금됩니다. (주말 및 공휴일 제외) <br>
										※ 한도 <br> 1) 20세 이상 : 1회 200만원 / 1일 200만원 / 월 1,500만원<br>
										2) 14~19세 : 1일 20만원 / 월50만원
									</p>
									<h3 class="mt20">카카오페이 카드</h3>
									<p>
										신용카드 및 체크카드는 결제 후 당일 취소 시 즉시 승인 취소 처리 됩니다. 결제 당일 취소가 아닌 경우는
										영업일 기준 일주일 내 승인 취소 처리 됩니다. <br>※ 한도 : 200만원 이상 시, 2차인증 진행
									</p>
									<h3 class="mt20">카카오페이 머니</h3>
									<p style="margin-bottom: -10px;">
										결제 취소 시 즉시 취소 처리 되며, 카카오페이머니로 바로 입금 됩니다. 카카오 계정 및 카카오페이 회원 탈퇴
										시 취소 되지 않습니다. (가맹점 직접 환불 필요) <br>※ 한도 : 1회 최대 200만원 (월 한도
										없음)
									</p>
								</div>
								<button class="pay_info_popup_x">닫기</button>
							</div>
						</div>
						<div class="bg_out"></div>
					</div>
					<script>
						/* 버튼 영역 펼침/닫침 */
						$("a.pay_info_btn").click(function() {
							$(".payInfo_popup").addClass('pay_popup_dp_b');
						});
						$("button.pay_info_popup_x").click(function() {
							$(".payInfo_popup").removeClass('pay_popup_dp_b');
						});
					</script>
					<!-- // 결제 및 취소안내 보기(popup) 영역 -->



					<!-- 현금영수증 안내 보기(popup) 영역 -->
					<div id="cashReceiptInfo_popup"
						class="lv_popup_info cashReceiptInfo_popup">
						<div class="lv_popup_info_box">
							<div class="tit_box">
								<h2>현금영수증 안내</h2>
							</div>
							<div class="sh_box_gr">
								<p>
									현금영수증 신청 시 발급시점은 상품 구매확정(거래완료) 시점이며,<br> 발급시점 2일 후 국세청
									현금영수증 홈페이지에서 확인하실 수 있습니다.<br> 현금영수증 취소 및 재발행을 원하실 경우 고객센터로
									접수하셔야 하며,<br> 접수 확인 후 약 3~7일 후 처리됩니다. (당해년도 발행 건에 한해 가능)
								</p>
								<button class="cashReceipt_info_popup_x">닫기</button>
							</div>
						</div>
						<div class="bg_out"></div>
					</div>
					<script>
						/* 버튼 영역 펼침/닫침 */
						$("a.cashReceipt_info_btn").click(
								function() {
									$(".cashReceiptInfo_popup").addClass(
											'cashReceipt_popup_dp_b');
								});
						$("button.cashReceipt_info_popup_x").click(
								function() {
									$(".cashReceiptInfo_popup").removeClass(
											'cashReceipt_popup_dp_b');
								});
					</script>
					<!-- // 현금영수증 안내 보기(popup) 영역 -->

					<!-- 예치금 인증(popup) 영역 -->

					<div id="deposit_popup_box" class="deposit_popup_wrap"
						style="display: none;">
						<div class="deposit_popup">
							<div class="deposit_hd">
								<h1>티켓베이 예치금 사용 본인확인</h1>
								<a href="javascript:void(0);" class="deposit_close"> <img
									src="/resources/img/popup/pc_deposit_close.png" alt="닫기">
								</a>
							</div>
							<div class="deposit_body">
								<div class="deposit_box">
									<img src="/resources/img/popup/pc_deposit_01.png" alt="">
									<p class="phone_num" id="cer_mobile_no"></p>
									<p class="text">본인인증이 완료된 본인 휴대폰만 가능합니다.</p>
								</div>
								<div class="quote_box">
									<div class="input_wrap">
										<input type="text" class="input_text" id="CERT_NO" disabled=""
											placeholder="인증번호를 입력하세요">
										<div class="quote_right" style="display: none;">
											<span class="time_count" id="remainTime">03:00</span> <a
												href="javascript:void(0);" id="re_quote" class="btn_reset">재발송</a>
										</div>
									</div>
									<div class="btn_wrap">
										<a href="javascript:void(0);" class="btn" id="quote">인증번호
											받기</a>
									</div>
									<!-- 인증번호 확인 s -->
									<div class="btn_wrap">
										<a href="javascript:void(0);" class="btn is-active"
											style="display: none;" id="confirm">인증번호 확인</a>
									</div>
									<!-- 인증번호 확인 e -->
								</div>
								<p class="desc">
									<span>*</span>본인 번호가 아니거나 인증문자가 오지 않는다면 고객센터로 문의하세요.
								</p>
							</div>
						</div>
						<div class="Black_layer"></div>
					</div>
					<!-- // 예치금 인증(popup) 영역 -->
				</main>
				<!-- //main -->

			</div>



			<!-- footer -->
			<footer id="footer">
				<div class="social-media">
					<ul>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
					</ul>
				</div>
				<!-- footerNav -->
				<div class="tb_foot">
					<ul class="footer_menu">
						<li><a href="/web/info/terms">이용약관</a></li>
						<li><a href="https://www.ticketbay.co.kr/web/info/privacy"
							class="txt_01">개인정보처리방침</a></li>
						<li><a href="/web/info/youthprotect_20180424">청소년보호정책</a></li>
						<li><a href="/web/info/email_20180424">이메일무단수집거부</a></li>
						<li><a
							href="javascript:onPopCertMar('fe0bde5c89c7af2163a5719f5aa57d86')"
							class="">NH에스크로이체 정보</a></li>
						<li><a href="/web/info/company">회사소개</a></li>
						<li><a href="/web/info/pr/pressReleases">PR</a></li>
					</ul>
					<div class="clear"></div>
					<!-- //footerNav -->
					<!-- address -->
					<style>
#footer address span {
	margin-right: 18px !important;
}
</style>
					<address>
						<p>
							<span> <font class="google_off">(주)6시떙</font> <font
								class="google_on" style="padding-right: 5px;"></font><font
								class="google_on mr_10"></font> 광주광역시 남구 송암로 60 광주CGI센터 3층
							</span>
						</p>
						<p>
							<span>고객감동센터 : +82-655-3506/span> <span class="txt_mail">E-MAIL
									: 9to6@gmail.com</span> <span>FAX : 02-2138-1110</span> <span
								class="txt_mail">제휴문의 : 9to6@gmail.com</span>
						</p>
						<p>
							<span>대표이사 : 장해라</span> <span>사업자등록번호 : 000-94-00000</span> <span>통신판매업신고
								: 제 2022-광주동구-0831호</span>
						</p>


						<p>
							<em style="color: #8c8c8c !important;">티켓베이는 통신판매 중개자이며,
								통신판매의 당사자가 아닙니다. 따라서 티켓베이는 상품 거래정보 및 거래에 대하여 책임을 지지 않습니다.</em>
						</p>
						<!-- <p class="copyright">COPYRIGHT © TICKETBAY. ALL RIGHTS RESERVED.</p> -->
						<p class="copyright">© TICKETBAY. ALL RIGHTS RESERVED.</p>
						<!-- 2016-10-06 수정 -->
					</address>
					<!-- //address -->
				</div>
			</footer>

			<!-- JQUERY -->
			<script src="js/vendor/jquery-1.11.2.min.js"></script>
			<script src="js/vendor/bootstrap.min.js"></script>
			<script src="js/isotope.pkgd.min.js"></script>
			<script src="js/owl.carousel.min.js"></script>
			<script src="js/wow.min.js"></script>
			<script src="js/custom.js"></script>
</body>
</html>

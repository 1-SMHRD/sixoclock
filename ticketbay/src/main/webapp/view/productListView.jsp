<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${cpath}/css/productListView.css">
<head>
<meta charset="EUC-KR">
<title>상품등록관리 | 티켓베이</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<form action="">
		<div id="container">
			<div class="contentsMenu">
				<!-- 티켓팅 예매내역 확인 FORM -->
				<div class="contentsMenuWrap">
					<!-- MY티켓베이 대쉬보드 -->
					<div class="myBay">
						<div class="logo">
							<a href="${cpath}/mypage.do"><img
								src="${cpath}/img/productListView/tit_myservice07.png"
								alt="my 티켓베이"></a>
						</div>
						<div class="my_info_box">
							<h3>
								어서오세요 <strong><span> ${mvo.u_NAME} </span> 회원님</strong>
							</h3>
							<a href="/web/couponzone/couponZoneView"
								class="rankDetail member"><img
								src="${cpath}/img/productListView/btn_mem_benefit_v2.png"
								alt="혜택 보러가기"></a>
						</div>
						<ul class="rankPointList">
							<li><a href="/web/mycash/depositHistoryListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/예치금.gif" alt="예치금"></span> <strong
									class="point"><span>0</span> 원</strong>
							</a></li>
							<li><a href="/web/mycoupon/useableCouponListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/쿠폰.gif" alt="쿠폰"></span> <strong
									class="point"><span>0</span> 장</strong>
							</a></li>
							<li><a href="/web/mycash/fanPowerHistoryListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/팬파워.gif" alt="팬파워"></span> <strong
									class="point"><span>0</span> FP</strong>
							</a></li>
							<li><a href="/web/mymsg/messageListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/알림메시지.gif" alt="알림메시지"></span>
									<strong class="point"><span>1</span> 개</strong>
							</a></li>
							<li><a href="/web/mymsg/receivePinNumberListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/pin번호함.gif" alt="pin번호함"></span>
									<strong class="point"><span>0</span> 개</strong>
							</a></li>
						</ul>
						<ul class="itemSell">
							<li><a href="/web/myorder/orderListView"
								style="display: block;"> <span><img
										src="${cpath}/img/productListView/구매진행.gif" alt="구매 진행"></span>
									<em>0</em>건
							</a></li>
							<li><a href="/web/mysell/sellProductListView"
								style="display: block;"> <span><img
										src="${cpath}/img/productListView/판매진행.gif" alt="판매 진행"></span>
									<em>0</em>건
							</a></li>
						</ul>
					</div>
					<!-- //MY티켓베이 대쉬보드 -->



					<!-- MY티켓베이 개인회원 레프트메뉴 -->
					<div class="boxStyle01 myServiceLnb">
						<ul class="myClass6">
							<li class="nth1 order"><a href="javascript:void(0);">내가
									구매한 상품</a>
								<ul class="subLnb feTabCont" style="display: none;">



									<!-- 2017-05-15 Left Menu 변경 -->
									<li><a href="/web/myorder/orderListView">거래 진행 상품</a></li>
									<li><a href="/web/myorder/completeOrderListView">거래 완료
											상품</a></li>
									<li><a href="/web/myorder/cancelOrderListView">거래 취소
											상품</a></li>
								</ul></li>
							<li class="nth2 sell current"><a href="javascript:void(0);">내가
									판매한 상품</a>
								<ul class="subLnb feTabCont" style="display: block;">




									<!-- 2017-05-15 Left Menu 변경 -->
									<li class="current"><a
										href="/web/myproduct/productListView">상품 등록 관리</a></li>
									<li><a href="/web/mysell/sellProductListView">거래 진행 상품</a></li>
									<li><a href="/web/mysell/completeProductListView">거래
											완료 상품</a></li>
									<li><a href="/web/mysell/cancelProductListView">취소승인 /
											취소</a></li>
								</ul></li>
							<li class="nth3 benefit"><a href="javascript:void(0);">혜택
									관리</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<li><a href="/web/mycash/depositHistoryListView">예치금
											관리</a></li>
									<li><a href="/web/mycoupon/useableCouponListView">쿠폰
											내역</a></li>
									<li><a href="/web/mycash/fanPowerHistoryListView">팬파워
											내역</a></li>
									<li><a href="/web/couponzone/couponZoneView">혜택존</a></li>
									<li><a href="/web/mycoupon/useablePremiumCouponListView">부가
											서비스</a></li>
								</ul></li>
							<li class="nth4 message"><a href="javascript:void(0);">메시지</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<li><a href="/web/mymsg/messageListView">알림메시지</a></li>
									<li><a href="/web/mymsg/receivePinNumberListView">PIN번호함</a></li>
									<li><a href="/web/mymsg/keepMessageListView">메시지 보관함</a></li>
								</ul></li>
							<li class="nth5 activity"><a href="javascript:void(0);">활동현황</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<!-- <li ><a href="/web/mywant/wantListView">구합니다</a></li> -->
									<li><a href="/web/mywant/wishProductListView">상품비교</a></li>
									<li><a href="/web/mycart/productListView">장바구니</a></li>
									<li><a href="/web/cs/inquireListView">1:1문의</a></li>
								</ul></li>
							<li class="nth6 member"><a
								href="/web/myservice/passwordConfirmView">회원정보수정</a></li>

							<!-- 2018-05-16 추가 및 수정시작 -->

							<li class="nth7 cscenter"><a href="#">고객센터</a></li>
							<div
								style="line-height: 0; margin: 0 0 0 -1px; position: relative;">
								<img
									src="${cpath}/img/productListView/my_service_lnb_p01_v2.jpg"
									alt="전화상담 평일 09시~19시"> <a
									href="/web/cs/inquireUpdateView"><img
									src="${cpath}/img/productListView/my_service_lnb_p02_v2.jpg"
									alt="1:1 문의하기"></a> <a
									style="margin-top: -3px; display: block;"
									href="http://pf.kakao.com/_xchBxkj/chat" target="_blank"> <img
									src="${cpath}/img/productListView/my_service_lnb_kakao.png"
									alt="카카오톡 문의하기"></a>
							</div>
							<!-- 2018-05-16 추가 및 수정끝 -->

						</ul>
					</div>
				</div>
			</div>

			<!-- main -->
			<main id="contents" class="myservice">
				<!-- boxStyle01 -->
				<div class="boxStyle01"
					style="padding-top: 0px; padding-bottom: 10px;">
					<h2 class="prdEroll">상품 등록 관리</h2>
				</div>

				<!-- topSpotGreen -->
				<div class="topSpotGreen">
					<div class="leftColum">
						<strong>판매 등록</strong>

						<div class="btnArea">
							<a href="/web/myproduct/productRegist"><img
								src="${cpath}/img/productListView/btn_saleEnroll.png" alt="판매등록"></a>
						</div>
					</div>

					<div>
						<p class="leftColumTitle">
							<span>판매 등록 서비스로</span>사용하지 않은 티켓<br>낭비하지 말고 판매하세요.
						</p>
						<ul class="bulListSqGray">
							<li>티켓베이는 안전거래를 원칙으로 운영되고 있습니다. <br>판매 상품의 직거래로 인한 피해가
								발생하지 않도록 주의 바랍니다.
							</li>
						</ul>
					</div>
				</div>

				<!-- boxStyle -->
				<div class="boxStyleView">
					<!-- searchBoxStyle -->
					<div class="searchBoxStyle">
						<form name="major" method="post">
							<input type="hidden" name="tiPageSize" id="tiPageSize" value="4">
							<input type="hidden" name="tiDirection" id="tiDirection"
								value="0"> <input type="hidden" name="biCursorSeq"
								id="biCursorSeq" value="1"> <input type="hidden"
								id="SEARCH_STATUS" name="SEARCH_STATUS" value="376">
							<!-- dateCalcArea -->
							<div class="dateCalcArea mb0">
								<!-- slcDate -->
								<div class="slcDate flArea">
									<a href="#" data-val="0" class="radiusL">오늘</a> <a href="#"
										data-val="1">1주일</a> <a href="#" data-val="2" class="on">1개월</a>
									<a href="#" data-val="3" class="">3개월</a> <a href="#"
										data-val="4">6개월</a> <a href="#" data-val="5" class="radiusR">1년</a>
								</div>

								<!-- calcArea -->
								<div class="calcArea flArea">
									<!-- inpCal -->
									<div class="inpCal">
										<input type="text" id="SDATE" name="SDATE"
											class="textInp03 range-date-from hasDatepicker"
											title="검색 시작일" style="width: 79px" readonly=""><img
											class="ui-datepicker-trigger" src="" alt="달력" title="달력">
									</div>

									<em>~</em>
									<!-- inpCal -->
									<div class="inpCal">
										<input type="text" id="EDATE" name="EDATE"
											class="textInp03 range-date-to hasDatepicker" title="검색 종료일"
											style="width: 79px" readonly=""><img
											class="ui-datepicker-trigger" src="" alt="달력" title="달력">
									</div>
								</div>

								<!-- formWrap -->
								<div class="formWrap flArea">
									<ins style="top: 0px; left: 0px;"></ins>
									<ins class="stFormElSl01"
										style="width: 71px; height: 30px; padding-right: 29px; top: 0px; left: 0px; visibility: visible; opacity: 0;">전체</ins>
									<select name="PROD_STATUS" id="PROD_STATUS" class="stFormEl01"
										style="width: 110px; visibility: visible; opacity: 0;">


										<option value="376" selected="selected">전체</option>


										<option value="8">판매중</option>
										<option value="16">판매중지</option>
										<option value="32">판매완료</option>
										<option value="256">기간만료</option>
										<option value="64">등록보류</option>

									</select>
								</div>

								<!-- <input class="frArea" type="image" src="/resources/img/button/btn_table_bViewBig.gif" alt="조회" /> 20200507-->
								<input class="frArea MTB_btn_search_01" type="submit" value="조회"
									style="">
								<!-- 202005추가  -->
								<div class="MTB_SearchArea">
									<div class="MTB_SearchBox01">
										<select id="SEARCH_SEQ" name="SEARCH_SEQ"
											class="select_style_01 width_380"
											style="width: 380px !important; vertical-align: middle;">
											<script id="cateListTmpl" type="text/x-jquery-tmpl">

									{{if !list || list.length <= 0}}
										<option value="" selected="selected">선택 가능 한 카테고리가 없습니다.</option>
									{{else}}
										<option value="" selected="selected">카테고리를 선택해주세요.</option>
										{{each(i, row) list}}
										<option value="{{= row.CATE_SEQ}}">{{= row.CATE_FULL_NAME}} </option>
										{{/each}}
									{{/if}}
									</script>

											<option value="" selected="selected">카테고리를 선택해주세요.</option>
											<option value="3882">콘서트 &gt; 더팩트 뮤직 어워즈 &gt; TMA
												2022</option>
										</select> <input type="hidden" id="CATE_SEQ" name="CATE_SEQ" value="">
									</div>
									<div class="MTB_SearchBox02">
										<input type="text" id="SEARCH_VALUE" name="SEARCH_VALUE"
											class="input_style_basic width_292" style=""
											placeholder="검색어를 입력해주세요.">
									</div>
								</div>
								<!-- 202005추가 //  -->
								<!-- 2020-12-23 추가  -->
								<div class="clear"></div>
								<p class="mt10">* 검색기간은 최대 3년까지 검색이 가능하며 3년 이후 내역은 고객센터를 통해
									확인이 가능합니다.</p>
								<!-- // 2020-12-23 추가  -->
							</div>
						</form>
					</div>
					<!--//searchBoxStyle -->

					<!-- conStyle -->
					<div class="conStyle">
						<!-- optionArea -->
						<div class="optionArea">
							<!-- leftColum -->
							<div class="leftColum">
								<!-- formWrap -->
								<div class="formWrap">
									<label><ins style="top: 0px; left: 0px;"></ins>
										<ins class="stFormElCh01"
											style="width: 14px; height: 14px; top: 0px; left: 0px; visibility: visible; opacity: 0;"></ins><input
										type="checkbox" class="stFormEl01 allCheck"
										style="visibility: visible; opacity: 0;"><span>전체선택</span></label>
								</div>
							</div>

							<div>
								<a href="#" id="btnProductDelete"><img
									src="${cpath}/img/productListView/btn_gDel.gif" alt="삭제"></a>
								<a href="/web/myproduct/productRegist"><img
									src="${cpath}/img/productListView/btn_bToSell.gif" alt="판매등록"></a>
							</div>
						</div>

						<!-- tableStyle -->
						<table class="tableStyle">
							<caption>내가 판매한 상품 - 상품등록관리</caption>
							<colgroup>
								<col style="width: 108px;">
								<!-- 20200512수정 -->
								<col style="width: auto;">
								<col style="width: 108px;">
								<col style="width: 93px">
								<col style="width: 88px;">
								<col style="width: 80px;">
								<!-- 20200512수정 -->
								<col style="width: 40px;">
								<col style="width: 78px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">상품번호/<br>등록일
									</th>
									<th scope="col">상품정보</th>
									<th scope="col">판매단가</th>
									<th scope="col">거래방식</th>
									<th scope="col">등록권</th>
									<th scope="col">수량<em class="fc_10">(잔여/총)</em></th>
									<th scope="col">거래중</th>
									<th scope="col">판매상태</th>
								</tr>
							</thead>
							<tbody>

								<tr data-prodseq="5334157" data-prodnum="3882106851360"
									data-cateseq="3882" data-ticketgrade="A" data-ticketfloor=""
									data-ticketarea="1">
									<td>
										<!-- formWrap -->
										<div class="formWrap">
											<label> <span class="formCenter"> <ins
														class="stFormElCh03"
														style="width: 16px; height: 16px; top: 0px; left: 0px;"></ins><input
													type="checkbox" name="PROD_SEQ" value="5334157"
													class="stFormEl03" data-cateseq="3882" data-ticketgrade="A"
													data-ticketfloor="" data-ticketarea="1"
													style="visibility: visible; opacity: 0;">
											</span><br>
											<br>
												<div class="orderInfo">
													<p>
														<a href="javascript:detail('3882106851360');">3882106851360</a>
													</p>
												</div>
												<br> <!-- <span _tmplitem="6"  class="date">2022.09.21</span> -->
												<span class="date">2022.09.21</span>
											</label>
										</div>
									</td>
									<td>
										<!-- tbProductInfo -->
										<div class="tbProductInfo1">
											<a href="javascript:detail('3882106851360');"> <em
												class="bPath">[콘서트 &gt; 더팩트 뮤직 어워즈 &gt; TMA 2022]</em>
												<p>1구역 1열 A 1</p> <i> 2022.10.08 18:30 </i> <!-- <span _tmplitem="6" ></span> -->
											</a>
										</div>
									</td>
									<td><span class="bePrice01"><em>1,000,000</em>원</span></td>
									<td class="deal_type"><span><img
											src="${cpath}/img/productListView/ico_tradeType01.gif"
											alt="PIN거래"></span></td>
									<td class="mid"><span><a href="#"
											class="btnPremiumCouponPop btn_table_sub_01">등록권 사용</a></span></td>
									<td class="bgG"><span class="colorG"><em
											class="fntW">1</em>/1</span></td>
									<td class="bgG">0</td>
									<td class="bgG"><span>판매중지</span> <span><a href="#"
											class="btnReEnroll btn_table_sub_03">재등록</a></span></td>
								</tr>
							</tbody>
						</table>

						<!-- before / next paging -->
						<div class="paging-container text-center last_paging btn_gr_02">
							<div class="paging_next">
								<!-- btn_comm -->
								<a href="#" class="nav_button" data-direction="0"
									data-cursor-seq="1" id="nav_fir">처음</a> <a href="#"
									class="nav_button" data-direction="3" data-cursor-seq="5334157"
									id="nav_pre">이전</a> <a href="#" class="nav_button"
									data-direction="2" data-cursor-seq="5334157" id="nav_nex">다음</a>
								<a href="#" class="nav_button" data-direction="1"
									data-cursor-seq="1" id="nav_las">마지막</a>
							</div>
						</div>

						<div style="text-align: right;">
							<a href="#" id="btnExcelDownload"><img
								src="${cpath}/img/productListView/btn_excel_down.gif"
								alt="EXCEL 다운로드"></a>
						</div>
					</div>
				</div>
				<!-- //boxStyle -->
			</main>
		</div>
	</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
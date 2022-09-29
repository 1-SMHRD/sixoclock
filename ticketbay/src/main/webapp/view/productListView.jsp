<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${cpath}/css/productListView.css?after">
<head>
<meta charset="EUC-KR">
<title>상품등록관리 | 티켓베이</title>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript">
	function goDel(p_Idx){
		location.href="${cpath}/salesDelet.do?p_Idx="+p_Idx;
	}
</script>
</head>
<body>
	<form action="${cpath}/productListView.do?u_id=${mvo.u_ID}" method="post">
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
									<strong class="point"><span>0</span> 개</strong>
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
							<li class="nth1 order"><a href="${cpath}/productBuyView.do?u_ID=${mvo.u_ID}">내가 구매한 상품</a></li>
							<li class="nth2 sell current"><a href="#">내가 판매한 상품</a></li>
							<li class="nth3 benefit"><a href="#">혜택 관리</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<li><a href="/web/mycash/depositHistoryListView">예치금 관리</a></li>
									<li><a href="/web/mycoupon/useableCouponListView">쿠폰 내역</a></li>
									<li><a href="/web/mycash/fanPowerHistoryListView">팬파워 내역</a></li>
									<li><a href="/web/couponzone/couponZoneView">혜택존</a></li>
									<li><a href="/web/mycoupon/useablePremiumCouponListView">부가	서비스</a></li>
								</ul></li>
							<li class="nth4 message"><a href="#">메시지</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<li><a href="/web/mymsg/messageListView">알림메시지</a></li>
									<li><a href="/web/mymsg/receivePinNumberListView">PIN번호함</a></li>
									<li><a href="/web/mymsg/keepMessageListView">메시지 보관함</a></li>
								</ul></li>
							<li class="nth5 activity"><a href="#">활동현황</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<li><a href="/web/mywant/wishProductListView">상품비교</a></li>
									<li><a href="/web/mycart/productListView">장바구니</a></li>
									<li><a href="/web/cs/inquireListView">1:1문의</a></li>
								</ul></li>
							<li class="nth6 member"><a
								href="/web/myservice/passwordConfirmView">회원정보수정</a></li>



						</ul>
					</div>
				</div>
			</div>

			<!-- main -->
			<main id="contents" class="myservice">
				<!-- boxStyle01 -->
				<div class="boxStyle01"
					style="padding-top: 0px; padding-bottom: 10px;">
					<h2 class="prdEroll">내가 판매한 상품</h2>
				</div>

				<!-- boxStyle -->
				<div class="boxStyleView">
					<!-- searchBoxStyle -->
					<div class="searchBoxStyle">
						<form name="major" method="post">
							<input type="hidden" name="tiPageSize" id="tiPageSize" value="4">
							<input type="hidden" name="tiDirection" id="tiDirection" value="0">
							<input type="hidden" name="biCursorSeq"	id="biCursorSeq" value="1">
							<input type="hidden" id="SEARCH_STATUS" name="SEARCH_STATUS" value="376">
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

								<input class="frArea MTB_btn_search_01" type="submit" value="조회" style="">
						
								<!-- 2020-12-23 추가  -->
								<div class="clear"></div>
								<p class="mt10">* 검색기간은 최대 3년까지 검색이 가능하며 3년 이후 내역은 고객센터를 통해 확인이 가능합니다.</p>
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

							<div>
								<a href="#" id="btnProductDelete" onclick="goDel(${vo.p_Idx})"><img
									src="${cpath}/img/productListView/btn_gDel.gif" alt="삭제"></a>
								<a href="${cpath}/salesWriteForm.do"><img
									src="${cpath}/img/productListView/btn_bToSell.gif" alt="판매등록"></a>
							</div>
						</div>

						<!-- tableStyle -->
						<table class="tableStyle">
							<caption>내가 판매한 상품 - 상품등록관리</caption>
							<colgroup>
								<col style="width: 95px;">
								<col style="width: auto;">
								<col style="width: 90px;">
								<col style="width: 90px">
								<col style="width: 150px;">
								<col style="width: 40px;">
								<%-- <col style="width: 40px;"> --%>
								<col style="width: 78px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">상품번호/<br>등록일
									</th>
									<th scope="col">상품정보</th>
									<th scope="col">즉시구매단가</th>
									<th scope="col">최소입찰금액</th>
									<th scope="col">거래방식</th>
									<th scope="col">수량</th>
									<th scope="col">거래상태</th>
								</tr>
							</thead>
							<c:forEach var="vo" items="${list}">
							<tbody>

								<tr>
									<td>
										<!-- formWrap -->
										<div class="formWrap">
											<label> 
												<div class="orderInfo">
													<p>
														<a href="#">${vo.p_Idx}</a>
													</p>
												</div>
												<br> 
												<span class="date">${fn:split(vo.p_registerdate," ")[0]}</span>
											</label>
										</div>
									</td>
									<td>
										<!-- tbProductInfo -->
										<div class="tbProductInfo1">
											<a href="${cpath}/salesDetail.do?p_Idx=${vo.p_Idx}&u_id=${mvo.u_ID}"> <em
												class="bPath">[콘서트 &gt; ${vo.cate_name}]</em>
												<p>${vo.p_seatInfo}</p> <i> ${vo.p_indate} </i>
											</a>
										</div>
									</td>
									<td><span class="bePrice01"><em>${vo.p_buyImmed}</em>원</span></td>
									<td><span class="bePrice01"><em>${vo.p_minBid}</em>원</span></td>
									
									<td class="mid">
									<c:forEach var="i" begin="0" end="3">
									<c:if test="${fn:split(vo.p_dealMethod,' ')[i] != 'null'}">
									<span>${fn:split(vo.p_dealMethod," ")[i]}</span></c:if></c:forEach>
									</td>
									
									<td class="bgG">
									<span class="colorG"><em class="fntW">${vo.p_tkCount}</em></span>
									</td>
									
									<c:if test="${vo.p_buyerid == 'null'}">
									<td class="bgG"><span>거래중</span></td>
									</c:if>
									<c:if test="${vo.p_buyerid != 'null'}">
									<td class="bgG"><span>거래완료</span></td>
									</c:if>
								</tr>
							</tbody>
							</c:forEach>
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

						<%-- <div style="text-align: right;">
							<a href="#" id="btnExcelDownload"><img
								src="${cpath}/img/productListView/btn_excel_down.gif"
								alt="EXCEL 다운로드"></a>
						</div> --%>
					</div>
				</div>
				<!-- //boxStyle -->
			</main>
		</div>
	</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
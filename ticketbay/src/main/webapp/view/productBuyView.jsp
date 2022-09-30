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
<title>��ǰ��ϰ��� | Ƽ�Ϻ���</title>
<jsp:include page="header.jsp"></jsp:include>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function goDel(p_Idx){
		location.href="${cpath}/salesDelet.do?p_Idx="+p_Idx;
	}
</script>
</head>
<body>
	<form action="${cpath}/productBuyView.do?u_id=${mvo.u_ID}" method="post">
		<div id="container">
			<div class="contentsMenu">
				<!-- Ƽ���� ���ų��� Ȯ�� FORM -->
				<div class="contentsMenuWrap">
					<!-- MYƼ�Ϻ��� �뽬���� -->
					<div class="myBay">
						<div class="logo">
							<a href="${cpath}/mypage.do"><img
								src="${cpath}/img/productListView/tit_myservice07.png"
								alt="my Ƽ�Ϻ���"></a>
						</div>
						<div class="my_info_box">
							<h3>
								������� <strong><span> ${mvo.u_NAME} </span> ȸ����</strong>
							</h3>
							<a href="/web/couponzone/couponZoneView"
								class="rankDetail member"><img
								src="${cpath}/img/productListView/btn_mem_benefit_v2.png"
								alt="���� ��������"></a>
						</div>
						<ul class="rankPointList">
							<li><a href="/web/mycash/depositHistoryListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/��ġ��.gif" alt="��ġ��"></span> <strong
									class="point"><span>0</span> ��</strong>
							</a></li>
							<li><a href="/web/mycoupon/useableCouponListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/����.gif" alt="����"></span> <strong
									class="point"><span>0</span> ��</strong>
							</a></li>
							<li><a href="/web/mycash/fanPowerHistoryListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/���Ŀ�.gif" alt="���Ŀ�"></span> <strong
									class="point"><span>0</span> FP</strong>
							</a></li>
							<li><a href="/web/mymsg/messageListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/�˸��޽���.gif" alt="�˸��޽���"></span>
									<strong class="point"><span>0</span> ��</strong>
							</a></li>
							<li><a href="/web/mymsg/receivePinNumberListView"> <span
									class="tit"><img
										src="${cpath}/img/productListView/pin��ȣ��.gif" alt="pin��ȣ��"></span>
									<strong class="point"><span>0</span> ��</strong>
							</a></li>
						</ul>
						<ul class="itemSell">
							<li><a href="/web/myorder/orderListView"
								style="display: block;"> <span><img
										src="${cpath}/img/productListView/��������.gif" alt="���� ����"></span>
									<em>0</em>��
							</a></li>
							<li><a href="/web/mysell/sellProductListView"
								style="display: block;"> <span><img
										src="${cpath}/img/productListView/�Ǹ�����.gif" alt="�Ǹ� ����"></span>
									<em>0</em>��
							</a></li>
						</ul>
					</div>
					<!-- //MYƼ�Ϻ��� �뽬���� -->



					<!-- MYƼ�Ϻ��� ����ȸ�� ����Ʈ�޴� -->
					<div class="boxStyle01 myServiceLnb">
						<ul class="myClass6">
							<li class="nth1 order current"><a href="#">���� ������ ��ǰ</a></li>
							<li class="nth2 sell"><a href="${cpath}/productListView.do?u_ID=${mvo.u_ID}">���� �Ǹ��� ��ǰ</a></li>
							<li class="nth3 benefit"><a href="#">���� ����</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<li><a href="/web/mycash/depositHistoryListView">��ġ�� ����</a></li>
									<li><a href="/web/mycoupon/useableCouponListView">���� ����</a></li>
									<li><a href="/web/mycash/fanPowerHistoryListView">���Ŀ� ����</a></li>
									<li><a href="/web/couponzone/couponZoneView">������</a></li>
									<li><a href="/web/mycoupon/useablePremiumCouponListView">�ΰ�	����</a></li>
								</ul></li>
							<li class="nth4 message"><a href="#">�޽���</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<li><a href="/web/mymsg/messageListView">�˸��޽���</a></li>
									<li><a href="/web/mymsg/receivePinNumberListView">PIN��ȣ��</a></li>
									<li><a href="/web/mymsg/keepMessageListView">�޽��� ������</a></li>
								</ul></li>
							<li class="nth5 activity"><a href="#">������ �̿� ����</a>
								<ul class="subLnb feTabCont" style="display: none;">
									<li><a href="/web/mywant/wishProductListView">��ǰ��</a></li>
									<li><a href="/web/mycart/productListView">��ٱ���</a></li>
									<li><a href="/web/cs/inquireListView">1:1����</a></li>
								</ul></li>
							<li class="nth6 member"><a
								href="/web/myservice/passwordConfirmView">ȸ����������</a></li>



						</ul>
					</div>
				</div>
			</div>

			<!-- main -->
			<main id="contents" class="myservice">
				<!-- boxStyle01 -->
				<div class="boxStyle01"
					style="padding-top: 0px; padding-bottom: 10px;">
					<h2 class="prdEroll">���� ������ ��ǰ</h2>
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
									<a href="#" data-val="0" class="radiusL">����</a> <a href="#"
										data-val="1">1����</a> <a href="#" data-val="2" class="on">1����</a>
									<a href="#" data-val="3" class="">3����</a> <a href="#"
										data-val="4">6����</a> <a href="#" data-val="5" class="radiusR">1��</a>
								</div>

								<!-- calcArea -->
								<div class="calcArea flArea">
									<!-- inpCal -->
									<div class="inpCal">
										<input type="text" id="SDATE" name="SDATE"
											class="textInp03 range-date-from hasDatepicker"
											title="�˻� ������" style="width: 79px" readonly=""><img
											class="ui-datepicker-trigger" src="" alt="�޷�" title="�޷�">
									</div>

									<em>~</em>
									<!-- inpCal -->
									<div class="inpCal">
										<input type="text" id="EDATE" name="EDATE"
											class="textInp03 range-date-to hasDatepicker" title="�˻� ������"
											style="width: 79px" readonly=""><img
											class="ui-datepicker-trigger" src="" alt="�޷�" title="�޷�">
									</div>
								</div>

								<!-- formWrap -->
								<div class="formWrap flArea">
									<ins style="top: 0px; left: 0px;"></ins>
									<ins class="stFormElSl01"
										style="width: 71px; height: 30px; padding-right: 29px; top: 0px; left: 0px; visibility: visible; opacity: 0;">��ü</ins>
									<select name="PROD_STATUS" id="PROD_STATUS" class="stFormEl01"
										style="width: 110px; visibility: visible; opacity: 0;">
										
										<option value="376" selected="selected">��ü</option>
										<option value="8">�Ǹ���</option>
										<option value="16">�Ǹ�����</option>
										<option value="32">�ǸſϷ�</option>
										<option value="256">�Ⱓ����</option>
										<option value="64">��Ϻ���</option>

									</select>
								</div>

								<input class="frArea MTB_btn_search_01" type="submit" value="��ȸ" style="">
						
								<!-- 2020-12-23 �߰�  -->
								<div class="clear"></div>
								<p class="mt10">* �˻��Ⱓ�� �ִ� 3����� �˻��� �����ϸ� 3�� ���� ������ �������͸� ���� Ȯ���� �����մϴ�.</p>
								<!-- // 2020-12-23 �߰�  -->
							</div>
						</form>
					</div>
					<!--//searchBoxStyle -->

					<!-- conStyle -->
					<div class="conStyle">

						<!-- tableStyle -->
						<table class="tableStyle">
							<caption>���� ������ ��ǰ - ��ǰ��ϰ���</caption>
							<colgroup>
								<col style="width: 90px;">
								<col style="width: 150px;">
								<col style="width: 150px;">
								<col style="width: 150px;">
								<col style="width: 100px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">���ų�¥</th>
									<th scope="col">��ǰ��ȣ</th>
									<th scope="col">���űݾ�</th>
									<th scope="col">�Ǹ���</th>
									<th scope="col">���Ż���</th>
								</tr>
							</thead>
							<c:forEach var="vo" items="${list}">
							<tbody>

								<tr>
									<td>
										<!-- formWrap -->
										<div class="formWrap">
											<label> 
												<%-- <div class="orderInfo">
													<p>
														<a href="#">${vo.p_Idx}</a>
													</p>
												</div>
												<br>  --%>
												<span class="date">${fn:split(vo.b_buydate," ")[0]}</span>
											</label>
										</div>
									</td>
									<td>
										<!-- tbProductInfo -->
										<div class="tbProductInfo1">
											<a href="#"> <em
												class="bPath">${vo.p_idx}</em>
											</a>
										</div>
									</td>
									<td><span class="bePrice01"><em>${vo.b_buymoney}</em>��</span></td>
									
									<td class="mid">
									<span>${vo.b_sellerid}</span>
									</td>
									
					
									
									<c:if test="${vo.b_check eq 0}">
										<td class="bgG"><input id="btn_confirm${vo.p_idx}" type='button' onclick="confirmM(${vo.p_idx}, '${vo.b_sellerid}', ${vo.b_buymoney})" value="�ŷ���"></td>
									</c:if>
									<c:if test="${vo.b_check eq 1}">
										<td class="bgG"><input id="btn_confirm${vo.p_idx}" type='button' onclick="confirmM(${vo.p_idx}, '${vo.b_sellerid}', ${vo.b_buymoney})" value="�ŷ��Ϸ�" disabled></td>
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
									data-cursor-seq="1" id="nav_fir">ó��</a> <a href="#"
									class="nav_button" data-direction="3" data-cursor-seq="5334157"
									id="nav_pre">����</a> <a href="#" class="nav_button"
									data-direction="2" data-cursor-seq="5334157" id="nav_nex">����</a>
								<a href="#" class="nav_button" data-direction="1"
									data-cursor-seq="1" id="nav_las">������</a>
							</div>
						</div>

					</div>
				</div>
				<!-- //boxStyle -->
			</main>
		</div>
	</form>
</body>

<script type="text/javascript">

	const confirmM = (pidx, bsellerid, bmoney) => {
			
		console.log(pidx, bsellerid, bmoney)
			
 		$.ajax({
 			url : "${cpath}/confirmM.do",
 			type : "post",
 			data : {"p_idx" : pidx, "b_seller" : bsellerid, "b_money" : bmoney},
			success : () => {
				$("#btn_confirm" + pidx).attr("disabled", true);
				$("#btn_confirm" + pidx).val('�ŷ��Ϸ�');
 			},
 			error : () => {alert("ajax error")}
 		});
	}

</script>

<jsp:include page="footer.jsp"></jsp:include>
</html>
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
<title>Insert title here</title>
</head>
<body>
<form action="">
<div id="container">
	<!-- MY Ƽ�Ϻ��� -->
	
<script>

$(function() {

	var minYear = new Date().getFullYear();
	var minDate = new Date(minYear-3, 00 ,01);
    $('#SDATE').datepicker("option", "minDate", minDate);

	
	$("body").on('click', '.my_nc_info', function(e){
		
			tb.Ajax.get({
		        url: "/web/rev/revCallProc",
		        dataType: 'json'
		    }).done(function (data) {
	    		if(data.RETURN_CODE == "1"){
	    			var q = data.q;
	    		    			
	    			wRsvOpenPop(q);
	    			
	    		}else{
	    			alert("�۾� �����Ͽ����ϴ�.");
	    		}
		    });
		});
	
	var wRsvOpenPop = function(q){
		var url = "http://book.ticketbay.co.kr/?loc=mypage&goUrl=/rsvc/mypage.html&" + "q=" + q;	
		
		window.open(url);
	};
		
	var lnbMenu1 = 'sell';

	$('.myClass6>li>ul').hide();
	if (lnbMenu1 != '') $('.myClass6').find('.'+lnbMenu1).addClass('current').find('>ul').show();
	
	$('.myClass6>li').click(function(){
		$('.myClass6>li').removeClass('current').find('>ul').hide();
		$(this).addClass('current').find(">ul").show();
	});
	
	/* Ƽ���� ���ų��� Ȯ�� Popup */
	function wMypageOpenPop(){
		var pop_title = "popup_mypage";
		
	    window.open("", pop_title, "status=no, resizeable=no, scrollbars=yes, width=940, height=770");
			
	    var frmMypage = document.frmMypage;
	    frmMypage.target = pop_title;
	    frmMypage.action = "https://book.ticketbay.co.kr:453?goUrl=/rsvp/mypage.html";
		
		frmMypage.submit();
	};

});
</script>

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
				<h3>������� <strong><span>
				
				���ض�
				</span> ȸ����</strong></h3>
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
						<a href="javascript:void(0);">���� ������ ��ǰ</a>
						<ul class="subLnb feTabCont" style="display: none;">
							
							
							
							<!-- 2017-05-15 Left Menu ���� -->
							<li><a href="/web/myorder/orderListView">�ŷ� ���� ��ǰ</a></li>
							<li><a href="/web/myorder/completeOrderListView">�ŷ� �Ϸ� ��ǰ</a></li>
							<li><a href="/web/myorder/cancelOrderListView">�ŷ� ��� ��ǰ</a></li>
						</ul>
					</li>
					<li class="nth2 sell current">
						<a href="javascript:void(0);">���� �Ǹ��� ��ǰ</a>
						<ul class="subLnb feTabCont" style="display: block;">
							
							
							
							
							<!-- 2017-05-15 Left Menu ���� -->
							<li class="current"><a href="/web/myproduct/productListView">��ǰ ��� ����</a></li>
							<li><a href="/web/mysell/sellProductListView">�ŷ� ���� ��ǰ</a></li>
							<li><a href="/web/mysell/completeProductListView">�ŷ� �Ϸ� ��ǰ</a></li>
							<li><a href="/web/mysell/cancelProductListView">��ҽ��� / ���</a></li>
						</ul>
					</li>
					<li class="nth3 benefit">
						<a href="javascript:void(0);">���� ����</a>
						<ul class="subLnb feTabCont" style="display: none;">
							<li><a href="/web/mycash/depositHistoryListView">��ġ�� ����</a></li>
							<li><a href="/web/mycoupon/useableCouponListView">���� ����</a></li>
							<li><a href="/web/mycash/fanPowerHistoryListView">���Ŀ� ����</a></li>
							<li><a href="/web/couponzone/couponZoneView">������</a></li>
							<li><a href="/web/mycoupon/useablePremiumCouponListView">�ΰ� ����</a></li>
						</ul>
					</li>
					<li class="nth4 message">
						<a href="javascript:void(0);">�޽���</a>
						<ul class="subLnb feTabCont" style="display: none;">
							<li><a href="/web/mymsg/messageListView">�˸��޽���</a></li>
							<li><a href="/web/mymsg/receivePinNumberListView">PIN��ȣ��</a></li>
							<li><a href="/web/mymsg/keepMessageListView">�޽��� ������</a></li>
						</ul>
					</li>
					<li class="nth5 activity">
						<a href="javascript:void(0);">Ȱ����Ȳ</a>
						<ul class="subLnb feTabCont" style="display: none;">
							<!-- <li ><a href="/web/mywant/wantListView">���մϴ�</a></li> -->
							<li><a href="/web/mywant/wishProductListView">��ǰ��</a></li>
							<li><a href="/web/mycart/productListView">��ٱ���</a></li>
							<li><a href="/web/cs/inquireListView">1:1����</a></li>
						</ul>
					</li>
					<li class="nth6 member"><a href="/web/myservice/passwordConfirmView">ȸ����������</a></li>

					<!-- 2018-05-16 �߰� �� �������� -->

					<li class="nth7 cscenter"><a href="#">������</a></li>
					<div style="line-height: 0; margin: 0 0 0 -1px; position: relative;">
						<img src="${cpath}/img/productListView/my_service_lnb_p01_v2.jpg" alt="��ȭ��� ���� 09��~19��">
						<a href="/web/cs/inquireUpdateView"><img src="${cpath}/img/productListView/my_service_lnb_p02_v2.jpg" alt="1:1 �����ϱ�"></a>
						<a style="margin-top:-3px; display: block;" href="http://pf.kakao.com/_xchBxkj/chat" target="_blank">
						<img src="${cpath}/img/productListView/my_service_lnb_kakao.png" alt="īī���� �����ϱ�"></a>
					</div>
					<!-- 2018-05-16 �߰� �� ������ -->
					
				</ul>
			</div>
	</div>
</div>
	
	<!-- main -->
	<main id="contents" class="myservice">
		<!-- boxStyle01 -->
		<div class="boxStyle01" style="
    padding-top: 0px;
    padding-bottom: 10px;">
			<h2 class="prdEroll">��ǰ ��� ����</h2>
		</div>
		
		<!-- topSpotGreen -->
		<div class="topSpotGreen">
			<div class="leftColum">
				<strong>�Ǹ� ���</strong>
				
				<div class="btnArea">
					<a href="/web/myproduct/productRegist"><img src="${cpath}/img/productListView/btn_saleEnroll.png" alt="�Ǹŵ��"></a>
				</div>
			</div>
			
			<div>
				<p class="leftColumTitle">
					<span>�Ǹ� ��� ���񽺷�</span>������� ���� Ƽ��<br>�������� ���� �Ǹ��ϼ���.
				</p>
				<ul class="bulListSqGray">
					<li>Ƽ�Ϻ��̴� �����ŷ��� ��Ģ���� ��ǰ� �ֽ��ϴ�.  <br>�Ǹ� ��ǰ�� ���ŷ��� ���� ���ذ� �߻����� �ʵ��� ���� �ٶ��ϴ�.</li>
				</ul>
			</div>
		</div>
				
		<!-- boxStyle -->
		<div class="boxStyleView">
			<!-- searchBoxStyle -->
			<div class="searchBoxStyle">
				<form name="major" method="post">
					<input type="hidden" name="tiPageSize" id="tiPageSize" value="4">
					<input type="hidden" name="tiDirection" id="tiDirection" value="0">
					<input type="hidden" name="biCursorSeq" id="biCursorSeq" value="1">
					<input type="hidden" id="SEARCH_STATUS" name="SEARCH_STATUS" value="376">
					<!-- dateCalcArea -->
					<div class="dateCalcArea mb0">
						<!-- slcDate -->
						<div class="slcDate flArea">
							<a href="#" data-val="0" class="radiusL">����</a>
							<a href="#" data-val="1">1����</a>
							<a href="#" data-val="2" class="on">1����</a>
							<a href="#" data-val="3" class="">3����</a>
							<a href="#" data-val="4">6����</a>
							<a href="#" data-val="5" class="radiusR">1��</a>
						</div>
						
						<!-- calcArea -->
						<div class="calcArea flArea">
							<!-- inpCal -->
							<div class="inpCal">
								<input type="text" id="SDATE" name="SDATE" class="textInp03 range-date-from hasDatepicker" title="�˻� ������" style="width:79px" readonly=""><img class="ui-datepicker-trigger" src="" alt="�޷�" title="�޷�">
							</div>
							
							<em>~</em>
							<!-- inpCal -->
							<div class="inpCal">
								<input type="text" id="EDATE" name="EDATE" class="textInp03 range-date-to hasDatepicker" title="�˻� ������" style="width:79px" readonly=""><img class="ui-datepicker-trigger" src="" alt="�޷�" title="�޷�">
							</div>
						</div>
						
						<!-- formWrap -->
						<div class="formWrap flArea">
							<ins style="top: 0px; left: 0px;"></ins><ins class="stFormElSl01" style="width: 71px; height: 30px; padding-right: 29px; top: 0px; left: 0px; visibility: visible; opacity: 0;">��ü</ins><select name="PROD_STATUS" id="PROD_STATUS" class="stFormEl01" style="width: 110px; visibility: visible; opacity: 0;">
								
								
									<option value="376" selected="selected">��ü</option>
								
								
								<option value="8">�Ǹ���</option>
								<option value="16">�Ǹ�����</option>
								<option value="32">�ǸſϷ�</option>
								<option value="256">�Ⱓ����</option>
								<option value="64">��Ϻ���</option>
								
							</select>
						</div>
						
						<!-- <input class="frArea" type="image" src="/resources/img/button/btn_table_bViewBig.gif" alt="��ȸ" /> 20200507-->
						<input class="frArea MTB_btn_search_01" type="submit" value="��ȸ" style="">
						<!-- 202005�߰�  -->
						<div class="MTB_SearchArea">
							<div class="MTB_SearchBox01">
								<select id="SEARCH_SEQ" name="SEARCH_SEQ" class="select_style_01 width_380" style="width:380px !important; vertical-align:middle;">
									<script id="cateListTmpl" type="text/x-jquery-tmpl">

									{{if !list || list.length <= 0}}
										<option value="" selected="selected">���� ���� �� ī�װ��� �����ϴ�.</option>
									{{else}}
										<option value="" selected="selected">ī�װ��� �������ּ���.</option>
										{{each(i, row) list}}
										<option value="{{= row.CATE_SEQ}}">{{= row.CATE_FULL_NAME}} </option>
										{{/each}}
									{{/if}}
									</script>

								<option value="" selected="selected">ī�װ��� �������ּ���.</option>                      <option value="3882">�ܼ�Ʈ &gt; ����Ʈ ���� ����� &gt; TMA 2022 </option></select>
								<input type="hidden" id="CATE_SEQ" name="CATE_SEQ" value="">
							</div>
							<div class="MTB_SearchBox02">
								<input type="text" id="SEARCH_VALUE" name="SEARCH_VALUE" class="input_style_basic width_292" style="" placeholder="�˻�� �Է����ּ���.">
							</div>
						</div>
						<!-- 202005�߰� //  -->
						<!-- 2020-12-23 �߰�  -->
						<div class="clear"></div>
						<p class="mt10">* �˻��Ⱓ�� �ִ� 3����� �˻��� �����ϸ� 3�� ���� ������ �����͸� ���� Ȯ���� �����մϴ�.</p>
						<!-- // 2020-12-23 �߰�  -->
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
							<label><ins style="top: 0px; left: 0px;"></ins><ins class="stFormElCh01" style="width: 14px; height: 14px; top: 0px; left: 0px; visibility: visible; opacity: 0;"></ins><input type="checkbox" class="stFormEl01 allCheck" style="visibility: visible; opacity: 0;"><span>��ü����</span></label>
						</div>
					</div>
					
					<div>
						<a href="#" id="btnProductDelete"><img src="${cpath}/img/productListView/btn_gDel.gif" alt="����"></a>
						<a href="/web/myproduct/productRegist"><img src="${cpath}/img/productListView/btn_bToSell.gif" alt="�Ǹŵ��"></a>
					</div>
				</div>
				
				<!-- tableStyle -->
				<table class="tableStyle">
					<caption>���� �Ǹ��� ��ǰ - ��ǰ��ϰ���</caption>
					<colgroup>
						<col style="width:108px;"> <!-- 20200512���� -->
						<col style="width: auto;">
						<col style="width:108px;">
						<col style="width:93px">
						<col style="width:88px;">
						<col style="width:80px;"> <!-- 20200512���� -->
						<col style="width:40px;">
						<col style="width:78px;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">��ǰ��ȣ/<br>�����</th>
							<th scope="col">��ǰ����</th>
							<th scope="col">�ǸŴܰ�</th>
							<th scope="col">�ŷ����</th>
							<th scope="col">��ϱ�</th>
							<th scope="col">����<em class="fc_10">(�ܿ�/��)</em></th>
							<th scope="col">�ŷ���</th>
							<th scope="col">�ǸŻ���</th>
						</tr>
					</thead>
					<tbody>
						<script id="majorTmpl" type="text/x-jquery-tmpl">

						{{each(i, row) list}}
						<tr data-prodSeq="{{= row.PROD_SEQ}}" data-prodNum="{{= row.PRD_DISP_NO}}" data-cateSeq="{{= row.CATE_SEQ}}" data-ticketGrade="{{= row.TICKET_GRADE}}" data-ticketFloor="{{= row.TICKET_FLOOR}}" data-ticketArea="{{= row.TICKET_AREA}}">
							<td>
								<!-- formWrap -->
								<div class="formWrap">
									<label>
										<span class="formCenter">
											<input type="checkbox" name="PROD_SEQ" value="{{= row.PROD_SEQ}}" class="stFormEl03" data-cateSeq="{{= row.CATE_SEQ}}" data-ticketGrade="{{= row.TICKET_GRADE}}" data-ticketFloor="{{= row.TICKET_FLOOR}}" data-ticketArea="{{= row.TICKET_AREA}}">
										</span><br/><br/>
										<div class="orderInfo"><p><a href="javascript:detail('{{= row.PRD_DISP_NO}}');">{{= row.PRD_DISP_NO}}</a></p></div><br/>
										<!-- <span class="date">{{= tb.util.Date.dot(row.REG_DATE)}}</span> -->
										<span class="date">{{= tb.DateFormat.changeDateDot(row.REG_DATE)}}</span>
									</label>
								</div>
							</td>
							
							<td>
								<!-- tbProductInfo -->
								<div class="tbProductInfo1">
									<a href="javascript:detail('{{= row.PRD_DISP_NO}}');">
										<em class="bPath">[{{= row.CATE_NAME}}]</em>
										<p>{{= row.PROD_COMMENT}} {{= row.TICKET_FLOOR}} {{= row.TICKET_GRADE}} {{= row.TICKET_ETC}}</p>
										<i>
											{{if $.trim(row.PROD_TERM_TYPE) == '4'}}
												{{if (row.START_DATE) != null}}
													{{= row.START_DATE.substring(0,16)}} ~ {{= row.END_DATE.substring(0,16)}}
												{{/if}}
											{{else $.trim(row.PROD_TERM_TYPE) == '2'}}
												{{if (row.START_DATE) != null}}
													{{= row.START_DATE.substring(0,16)}}
												{{/if}}
											{{else}}
												{{= row.PROD_TERM_TYPE_LABEL}}
											{{/if}}
										</i>
										<!-- <span>{{= row.PLACE_TYPE_LABEL}}</span> -->
									</a>
								</div>
							</td>
							
							<td>
								<span class="bePrice01"><em>{{= s.numberFormat(+row.SALE_PRICE)}}</em>��</span>
							</td>
							
							<td class="deal_type">
								{{if (+row.TRANSACTION_TYPE & 1) == 1}}
									{{if row.IMMEDIATE_YN == 'Y'}}
										<span><img src="/resources/img/pinNoManage/ico_tradeType04.gif" alt="PIN ��ðŷ�"></span>
									{{else}}
										<span><img src="/resources/img/common/ico_tradeType01.gif" alt="PIN�ŷ�" /></span>
									{{/if}}
								{{/if}}
								{{if (+row.TRANSACTION_TYPE & 2) == 2}}
									<span><img src="/resources/img/common/ico_tradeType03.gif" alt="��۰ŷ�" /></span>								
								{{/if}}
								{{if (+row.TRANSACTION_TYPE & 4) == 4}}
									{{if row.SITE_TICKETING_YN == 'Y'}}
										<span><img src="/resources/img/myticketing/ico_tradeType04.gif" alt="����߱�"></span>
									{{else}}
										<span><img src="/resources/img/common/ico_tradeType02.gif" alt="����ŷ�" /></span>	
									{{/if}}
								{{/if}}
								{{if (+row.TRANSACTION_TYPE & 16) == 16}}
									<span><img src="/resources/img/common/ico_tradeType16.gif" alt="��Ÿ�ŷ�" /></span>
								{{/if}}
							</td>
							
							<td class="mid">
								{{if (+row.COUP_TYPES & 32) == 32}}
 									<span class="date">�Ŀ���</span>
 									{{if (row.PROD_STATUS_LABEL) == "���δ��"}}
 										<span class="date colorO">(������)</span>
 									{{/if}}
 									{{if (row.PROD_STATUS_LABEL) == "�Ǹ���"}}
 										<span class="date colorO">({{= row.REMAIN_DATE.split("/")[0]}} ����)</span>
 									{{/if}}
								{{/if}}
								{{if (+row.COUP_TYPES & 64) == 64}}
 									<span class="date">����Ʈ��ܳ���</span>		
 									{{if (+row.COUP_TYPES & 32) == 32}}
 										<span class="date colorO">({{= row.REMAIN_DATE.split("/")[1]}} ����)</span>
 									{{else}}
 										<span class="date colorO">({{= row.REMAIN_DATE.split("/")[0]}} ����)</span>
 									{{/if}}
								{{/if}}
								{{if (+row.COUP_TYPES & 128) == 128}}
 									<span class="date">����Ʈ ����</span>
 									{{if (+row.COUP_TYPES & 96) == 96}}
 										{{if (row.PROD_STATUS_LABEL) == "���δ��"}}
 										<span class="date colorO">(������)</span>
 										{{/if}}
 										{{if (row.PROD_STATUS_LABEL) == "�Ǹ���"}}
 											<span class="date colorO">({{= row.REMAIN_DATE.split("/")[2]}} ����)</span>
 										{{/if}}
 									{{else (+row.COUP_TYPES & 64) == 64 || (+row.COUP_TYPES & 32) == 32}}
 										{{if (row.PROD_STATUS_LABEL) == "���δ��"}}
 											<span class="date colorO">(������)</span>
 										{{/if}}
 										{{if (row.PROD_STATUS_LABEL) == "�Ǹ���"}}
 											<span class="date colorO">({{= row.REMAIN_DATE.split("/")[1]}} ����)</span>
 										{{/if}}
 									{{else}}
 										{{if (row.PROD_STATUS_LABEL) == "���δ��"}}
 											<span class="date colorO">(������)</span>
 										{{/if}}
 										{{if (row.PROD_STATUS_LABEL) == "�Ǹ���"}}
 											<span class="date colorO">({{= row.REMAIN_DATE.split("/")[0]}} ����)</span>
 										{{/if}}
 									{{/if}}
								{{/if}}
								<span><a href="#" class="btnPremiumCouponPop btn_table_sub_01">��ϱ� ���</a></span>
							</td>
							
							<td class="bgG">
								<span class="colorG"><em class="fntW">{{= row.REMAIN_QTY}}</em>/{{= row.TOTAL_QTY}}</span>
							</td>
							
							<td class="bgG">{{= row.TRANSACTION_QTY}}</td>
							<td class="bgG">
								<span>{{= row.PROD_STATUS_LABEL}}</span>
								{{if row.PROD_STATUS == '8'}}
									<span><a href="#" class="btnSaleStop btn_table_sub_02" style="margin-bottom:3px;">�Ǹ�����</a></span>
									
										<span><a href="#" class="btnSaleModify btn_table_sub_03" data-remaincnt="{{= row.REMAIN_QTY}}" data-totalcnt="{{= row.TOTAL_QTY}}">�����ϱ�</a></span>
									
								{{else row.PROD_STATUS == '16'}}
									<span><a href="#" class="btnReEnroll btn_table_sub_03">����</a></span>
								{{else row.PROD_STATUS == '64'}}
									<span class="ableDate">�����ڿ��� �����ϼ���.</span>
									<span><a href="#" class="btnInquiryPop btn_table_sub_01">1:1����</a></span>
								{{/if}}
							</td>
						</tr>	
						{{/each}}
						{{if !list || list.length <= 0}}
						<tr>
							<td colspan="8">�����Ͱ� �����ϴ�</td>
						</tr>
						{{/if}}
						</script>

					    <tr data-prodseq="5334157" data-prodnum="3882106851360" data-cateseq="3882" data-ticketgrade="A" data-ticketfloor="" data-ticketarea="1">        <td>         <!-- formWrap -->         <div class="formWrap">          <label>           <span class="formCenter">            <ins class="stFormElCh03" style="width: 16px; height: 16px; top: 0px; left: 0px;"></ins><input type="checkbox" name="PROD_SEQ" value="5334157" class="stFormEl03" data-cateseq="3882" data-ticketgrade="A" data-ticketfloor="" data-ticketarea="1" style="visibility: visible; opacity: 0;">           </span><br><br>           <div class="orderInfo"><p><a href="javascript:detail('3882106851360');">3882106851360</a></p></div><br>           <!-- <span _tmplitem="6"  class="date">2022.09.21</span> -->           <span class="date">2022.09.21</span>          </label>         </div>        </td>                <td>         <!-- tbProductInfo -->         <div class="tbProductInfo1">          <a href="javascript:detail('3882106851360');">           <em class="bPath">[�ܼ�Ʈ &gt; ����Ʈ ���� ����� &gt; TMA 2022]</em>           <p>1���� 1��  A 1</p>           <i>                                       2022.10.08 18:30                                    </i>           <!-- <span _tmplitem="6" ></span> -->          </a>         </div>        </td>                <td>         
					    <span class="bePrice01"><em>1,000,000</em>��</span></td><td class="deal_type"><span><img src="${cpath}/img/productListView/ico_tradeType01.gif" alt="PIN�ŷ�"></span>                                                      </td>                <td class="mid">                                    <span><a href="#" class="btnPremiumCouponPop btn_table_sub_01">��ϱ� ���</a></span>        </td>                <td class="bgG">         <span class="colorG"><em class="fntW">1</em>/1</span>        </td>                <td class="bgG">0</td>        <td class="bgG">         <span>�Ǹ�����</span>                   <span><a href="#" class="btnReEnroll btn_table_sub_03">����</a></span>                 </td>       </tr></tbody>
				</table>
								
				<!-- before / next paging -->
				<div class="paging-container text-center last_paging btn_gr_02"><div class="paging_next"> <!-- btn_comm -->   <a href="#" class="nav_button" data-direction="0" data-cursor-seq="1" id="nav_fir">ó��</a>   <a href="#" class="nav_button" data-direction="3" data-cursor-seq="5334157" id="nav_pre">����</a>   <a href="#" class="nav_button" data-direction="2" data-cursor-seq="5334157" id="nav_nex">����</a>   <a href="#" class="nav_button" data-direction="1" data-cursor-seq="1" id="nav_las">������</a>  </div></div>
				
				<div style="text-align:right;">
					<a href="#" id="btnExcelDownload"><img src="${cpath}/img/productListView/btn_excel_down.gif" alt="EXCEL �ٿ�ε�"></a>
				</div>
			</div>
		</div>
		<!-- //boxStyle -->
	</main>
</div>
</form>
</body>
</html>
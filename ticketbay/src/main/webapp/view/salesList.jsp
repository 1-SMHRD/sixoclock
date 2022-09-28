<%@page import="kr.dao.SalesWriteVO" %>
<%@page import="java.util.List" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품리스트 | 티켓베이</title>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="${cpath}/css/styleList.css?after">
<link rel="stylesheet" href="${cpath}/css/common.css?after">
<link rel="stylesheet" href="${cpath}/css/new_list_custom.css?after">
<link rel="stylesheet" href="${cpath}/css/contents.css?after">
<link rel="stylesheet" href="${cpath}/css/header_sales.css?after">
<link rel="stylesheet" href="${cpath}/css/new_list.css?after">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body class="goog-te-combo_in">
<div class="bg_04 wd_100p">
  <div id="all_gr" class="container clearfix" style="position: relative; width: 970px;">
    <!-- // sidebar -->
    
    <script type="text/javascript">
			
       	  $(document).on("click","li",function(){
       		  const arr=new Array();
       		  arr.push($(this).attr('data-val'));
       		  $('#filter_qty').html(arr);
       	  })
			       	  
    </script>
       	  
    <div id="sidebar" class="is-affixed" style="position: relative; margin-top:10px;">
      <div class="sidebar__inner" style="position: relative;">
        <!-- 카테고리정보 -->
        <div class="sidebar_a_box">
          <div class="new_ctg_style_01_div"><span> 가수 이름 </span></div>
          <div id="filter_category_box">
            <div class="new_select_style_01_div mb10" id="selList">
              <span class="label"> 전체상품보기 </span>
              <ul class="new_select_style_01_div_sub wd_01 scroll_y" style="position: absolute; z-index: 9;">
                <a href="#">
                 <li class="optionitem"><span> 콘서트장소 - 날짜만큼 a태그 생성 </span></li>
                </a>
              </ul>
            </div>
          </div>
        </div>
        <!-- 필터 -->
       	<div class="sidebar_b_box">
       	  <!-- 정렬 순서 -->
       	  <div id="ord_toggle_box" class="new_toggle_img dp_fx_01" style="display: none;">
       	    <label>
       	      <input name="ord_toggle" type="radio" value="2">
       	      <span>최저가</span>
       	    </label>
       	    <label>
       	      <input name="ord_toggle" type="radio" value="1">
       	      <span>최신순</span>
       	    </label>
       	  </div>
       	  <!-- 사용날짜 -->
       	  <div id="filter_ticketDate_box">
       	    <h3 class="sd_new_tit_01">사용날짜</h3>
       	    <div class="new_select_style_01_div">
       	      <span id="filter_perform">전체</span>
       	      <ul id="filter_perform_ul" class="new_select_style_01_div_sub wd_01 scroll_y" style="position: absolute; z-index: 9;">
       	        <li data-val="전체">
       	          <span>전체</span>
       	        </li>
       	        <li data-val="" data-view="">
       	          <span>0000-00-00(x요일) 00:00</span>
       	        </li>
       	      </ul>
       	    </div>
       	    <div id="useTerm2" class="calcArea useTerm">
       	      <!-- <input type="date" id="filter_start" name="START_DATE" class="textInp03 input_style_01 wd_100p datepicker-here hasDatepicker"
			  title="검색 시작일" style="position: inherit;">
       	      <img class="ui-datepicker-trigger" alt="달력" title="달력"> -->
       	    </div>
       	  </div>
       	  <!-- 구매수량 선택 -->
       	  <div id="filter_qty_box">
       	    <div class="dp_fx_01 mt_10">
       	      <h3 class="sd_new_tit_01">구매수량</h3>
       	      <!-- <label id="filter_togther_box" class="new_ck_img">
       	        <input id="filter_togther" name="filter_togther" type="checkbox">
       	        <span></span> 
       	        연석만 보기
       	      </label> -->
       	    </div>
       	    <div class="new_select_style_01_div">
       	      <span id="filter_qty">전체</span>
       	      <ul id="filter_qty_ul" class="new_select_style_01_div_sub wd_01 scroll_no" style="position: absolute; z-index: 9;">
       	        <li data-val="전체"><span>전체</span></li>
       	        <li data-val="1"><span>1</span></li>
       	        <li data-val="2"><span>2</span></li>
       	        <li data-val="3"><span>3</span></li>
       	        <li data-val="4"><span>4</span></li>
       	        <li data-val="5"><span>5</span></li>
       	        <li data-val="6"><span>6+</span></li>
       	      </ul>
       	    </div>
       	  </div>
       	  <!-- 지역 선택 -->
       	  <!-- <div id="filter_loc_box">
       	    <div class="dp_fx_01 mt_10">
       	      <h3 class="sd_new_tit_01">지역</h3>
       	    </div>
       	    <div class="new_select_style_01_div">
       	      <span id="filter_loc">전체</span>
       	      <ul id="filter_loc_ul" class="new_select_style_01_div_sub wd_01 scroll_no" style="position: absolute; z-index: 9;">
       	        <li data-val="1"><span>국내</span></li>
       	        <li data-val="2"><span>해외</span></li>
       	      </ul>
       	    </div>
       	  </div> -->
       	  <!-- 좌석 정보 -->
       	  <div id="filter_seat_box">
       	    <h3 class="sd_new_tit_01 mt_10">좌석 선택</h3>
       	    <div class="new_select_style_01_div mt_01">
       	      <span id="filter_grade">전체</span>
       	      <ul id="filter_grade_ul" class="new_select_style_01_div_sub wd_01 scroll_y bottom20" style="position: absolute; z-index: 9;">
       	        <li>좌석정보</li>
       	      </ul>
       	    </div>
       	    <input type="hidden" id="filter_area">
       	  </div>
       	</div>
       	<!-- 안심보상서비스 -->
      	<div id="filter_orderSafe_box" class="Safe_C_area">
      	  <h3 class="sd_new_tit_2020">
      	    <span class="star_text">*</span>입장안심 서비스
      	  </h3>
      	  <div class="safe_C_box">
      	    <label class="new_ck_img">
      	      <input id="filter_orderSafe" name="filter_orderSafe" type="checkbox">
      	      <span></span>
      	      이용 가능 상품만 보기
      	    </label>
      	    <span id="popOpenBtn" class="icon_safe_c_popup">
      	      <a href="#" onclick="layer_open('layer2'); return false;">
      	        <img src="img/icon_safe_c_info.png" alt="입장안심 서비스 정보 자세히보기">
      	      </a>
      	    </span>
      	  </div>
      	</div>
      	<!-- 버튼영역 -->
      	<div class="sidebar_btn_box dp_fx_01">
      	  <a id="btn_reset" class="btn_sm_01 txt_c wd_100p">
      	    <img src="img/icon_re.svg" style="width: 20px; vertical-align: -5px;">
      	    필터 초기화
      	  </a>
      	</div>
      	<div class="resize-sensor" style="position: absolute; inset: 0px; overflow: hidden; z-index: -1; visibility: hidden;">
      	  <div classf="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
      	    <div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 100000px; height: 100000px;"></div>
      	  </div>
      	  <div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
      	    <div style="position: absolute; left=0; top=0; transition: 0s; width: 200%; height: 200%"></div>
      	  </div>
      	</div>
      </div>
    </div>
    <!-- div select 펼침 닫침 -->
    <script type="text/javascript">
    	$(function(){
    		$(".new_select_style_01_div").click(function(){
    			if($(this).hasClass('sub_div_on')===true){
    				$('.sub_div_on').removeClass('sub_div_on');
    			} else{
    				$('.sub_div_on').removeClass('sub_div_on');
    				$(this).addClass('sub_div_on')
    			}
    		})
    	})
    </script>
    <!-- content 영역 -->
    <div id="content" style="width: 674px; margin-top:10px;">
      <div class="dp_fx_02 info_box_gr">
        <h3 style="margin-top:20px;">INFO</h3>
        <div class="in_txt_gr">가수이름</div>
      </div>
      <div>
        <!-- 상품이 없는 경우 -->
        <c:if test="${empty list}">
        <div class="item_no_txt">
          <div>       
            <img src="${cpath}/img/img_info.jpg" alt="결과 없음"><br>
            <span>조건에 맞는 상품이 없습니다.</span>
          </div>
        </div>
        </c:if>
        <!-- 상품리스트 -->
        <c:forEach var="vo" items="${list}">
        <div>
          <a id="product_link" href="${cpath}/salesDetail.do?pd_code=${vo.p_Idx}">

            <div class="item_style_01_gr">
              <div class="in_gr_01">
                <div class="c2c_sub_day_txt">사용일 : ${vo.p_show_date}</div>
                
                <div class="c2c_sub_info_txt">
                  <span>${fn:split(vo.p_seat_info," ")[0]}구역 -> 좌석정보(상품)</span>
                  <span>${fn:split(vo.p_seat_info," ")[1]}열</span>
                  <span>${fn:split(vo.p_seat_info," ")[2]}</span>
                  <span>${fn:split(vo.p_seat_info," ")[3]}</span>
                </div>
                <div class="new_UNUSUAL_LIST_gr">
                <c:if test="${!empty vo.p_prod_check}">
                  <span>${vo.p_prod_check} -> 상품 특이사항(인덱스로 가져오나?)</span>
                </c:if>
                </div>
              </div>
              <div class="in_gr_03">
                <div class="in_gr_txt">
                  <span>${fn:split(vo.p_deal_method," ")[0]} -> 거래방식</span>
                  <span>${fn:split(vo.p_deal_method," ")[1]}</span>
                  <div class="in_day_txt">티켓보유여부</div>
                </div>
              </div>
              <div class="in_gr_04">
                <div name="productCompare" class="compare_list_icon" data-compare-seq="" data-type="N">비교담기</div>
                <div class="pd_ea_txt_gr">${vo.p_tk_count}매 -> 판매수량</div>
                <div><strong>${vo.p_buy_immed}원 -> 가격</strong></div>
                <div class="Safe_list_icon">입장안심 이용 여부?? 어디서??</div>
              </div>
            </div>
          </a>
        </div>
        </c:forEach>
      </div>
      <!-- 상품더보기 -->
      <script type="text/javascript">
        function moreList(){
        	
        }
      </script>
      <a href="javascript: moreList();" id="list_more" class="info_txt_06 mt_10" style="width: 100%; font-weight: bold; border: 2px solid #a2bad8; color: #5089d2; dispaly: none;">+ 상품 더보기</a>
    </div>
    <div class="resize-sensor" style="position: absolute; inset: 0px; overflow: hidden; z-index: -1; visibility: hidden;">
      <div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
        <div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 100000px; height: 100000px;"></div>
      </div>
      <div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
        <div style="position: absolute; left: 0px; top: 0px; transition: 0s; width: 200%; height: 200%;"></div>
      </div>
    </div>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
</div>
<div class="footer_end"></div>
</body>

</html>
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
<title>상품정보 | 티켓베이</title>
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/new_list.css">
<link rel="stylesheet" href="${cpath}/css/new_list_custom.css">
<link rel="stylesheet" href="${cpath}/css/contents.css">
<link rel="stylesheet" href="${cpath}/css/header_sales.css">
<link rel="stylesheet" href="${cpath}/css/styleList.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"></script>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

<div>{vo.p}</div>

<div id="container" class="bg_03 wd_100p">
  <!-- C2C 상단 영역 -->
  <main id="contents" class="wd_100p">
    <div class="c2c_top_box_gr mt_10 brd30_sdw">
      <!-- 좌측 -->
      <div class="c2c_a_gr cp_view_box">
        <div name="productCompare" class="compare_list_icon cp_icon_p" data-compare-seq="5330574" data-type="N">비교담기</div>
        <div class="c2c_ctg_list">콘서트 > 이름 > 장소</div>
        <div class="c2c_pd_tit">좌석정보</div>
        <div class="c2c_sub_info_txt">
          <span>층</span>
          <span>S</span>
        </div>
        <div>
          <div class="new_UNUSUAL_LIST_gr">
            <span>통로석</span>
          </div>
          <div class="clear"></div>
          <span class="new_PROD_DISP_NO_gr mb10" id="use_date" data-use-date="">사용일 : </span>
          <span class="new_PROD_DISP_NO_gr" id="new_prod_no" data-prod-no="">상품	번호 : </span>
        </div>
      </div>
      <!-- 우측 -->
      <div class="c2c_b_gr">
     
     	<jsp:include page="auction.jsp"></jsp:include>
     
     
      </div>
      <!-- 안전거래 안내 -->
      <div class="c2c_c_gr">
        <h3>티켓베이 구매 안전 프로그램</h3>
        <ul>
          <li>티켓베이에 모든 판매자는  본인인증(이동통신사 또는 아이핀 등)이 완료된 회원입니다.</li>
          <li>결제하시는 대금은 티켓베이가 안전하게 보관하며, 티켓을 수령 후 구매확정을 하면 판매자에게 지급됩니다.</li>
          <li>티켓베이는 공연(경기)이 공식적으로 취소될 경우  100% 환불을 보장합니다.</li>
          <li>티켓베이는 안전한 거래를 위해 고객센터를 운영하고 있습니다. 문의가 있으시면 언제든 연락 주세요.</li>
        </ul>
      </div>
      <!-- 안심보상서비스 -->
      <div class="c2c_c_gr">
        <h3>
          티켓베이 입장안심 서비스 
          <p class="safe_s_guide">
            <a href="#" onclick="layer_open('layer2'); return flase;">서비스 확인하기</a>
          </p>
        </h3>
        <ul>
          <li>가고 싶고 사고 싶은 티켓인데 구매하기 고민되신다면?! 입장안심서비스를 이용하세요.</li>
          <li>
            현장에서 입장을 거부 당할 경우 
            <span class="font_point_red">티켓베이가 티켓 결제 금액을 전액 보상</span>
            해 드립니다.
          </li>
          <li>카테고리 및 상품에 따라 이용이 불가능 할 수도 있습니다.</li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
    <!-- 결제할려면 form태그 안에 input?? -> 사이트 참고!!!! -->
    <div class="pd_box_02 mt_90">
      <div class="boxStyle prodViewDetail">
        <ul class="tabStyle type4">
          <li data-tab="dtailTab01" class="current">
            <a href="#dtailTab01">상품 상세 정보</a>
          </li>
          <li data-tab="dtailTab04">
            <a href="#dtailTab04">상품 결제/수령 안내</a>
          </li>
          <li data-tab="dtailTab05">
            <a href="#dtailTab05">취소/환불 안내</a>
          </li>
        </ul>
        <div id="dtailTab01" class="feTabCont prodViewTab current" style="display: block;">
          <p> 상세내용 가져오기 </p>
          <div class="productImage_box"> 첨부 이미지 </div>
        </div>
        <div id="dtailTab04" class="feTabCont prodViewTab" style="display: none;">
          <h3>상품 결제 안내</h3>
          <table class="tableStyle dataTable">
            <caption>상품 결제 안내</caption>
            <colgroup>
              <col style="width: 140px;">
              <col style="width: auto;">
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">결제방식</th>
                <td>무통장입금, 신용카드, 휴대폰, 간편결제</td>
              </tr>
              <tr>
                <th scope="row">결제제한</th>
                <td>고객의 결제 안전을 위하여 신용카드 부정 사용 등 비정상적인 주문으로 판단될 경우, 상품주문 및 결제를 제한할 수 있습니다.</td>
              </tr>
              <tr>
                <th scope="row">유의사항</th>
                <td>결제 관련 문제 발생 시, 티켓베이 고객센터 1644-0633으로 문의하여 주시기 바랍니다.</td>
              </tr>
            </tbody>
          </table>
          <h3>상품 수령 안내</h3>
          <table class="tableStyle dataTable">
            <caption>상품 수령 안내</caption>
            <colgroup>
              <col style="width: 140px;">
              <col style="width: auto;">
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">PIN거래 (E-ticket)</th>
                <td>
                  <ul class="noBulList">
                    <li>결제가 완료 되면 판매자에게 알림이 발송 됩니다.</li>
                    <li>판매자가 PIN 번호 (E-ticket)을 발송하면 해당 주문의 상세페이지 또는 MY티켓베이의 PIN번호함에서 번호 또는 파일 확인이 가능합니다.</li>
                    <li class="strStyle04">PIN거래(즉시거래)상품은 SMS에서도 확인 가능하며 PIN번호가 발급되지 않았을 시 고객센터 1644-0633으로 문의해 주세요!</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">현장거래</th>
                <td>
                  <ul class="noBulList">
                    <li>현장거래 시 사전에 장소와 시간을 꼭 확인 하시기 바랍니다.</li>
                    <li>현장거래 시 상품수령증을 출력하여 구매자의 인계확인 서명을 받으시 길 바랍니다.</li>
                    <li>상품수령증은 해당 주문의 상세페이지에서 출력이 가능합니다.</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">배송거래</th>
                <td>
                  <ul class="noBulList">
                    <li>결제가 완료 되면 판매자가 택배 또는 등기 등으로 상품을 발송 합니다.</li>
                    <li>배송조회는 해당 주문의 상세페이지에서 송장번호 확인이 가능합니다.</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">기타</th>
                <td>
                  <ul class="noBulList">
                    <li>기타 거래 의 경우 판매자가 작성한 전달 방법에 대한 상세내용을 꼭 확인 하시기 바랍니다.</li>
                    <li>직거래를 유도하는 경우 피해 발생 시 도움을 드릴 수 없으니 직거래는 유의하시기 바랍니다.</li>
                  </ul>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div id="dtailTab05" class="feTabCont prodViewTab" style="display: none;">
          <h3>취소 안내</h3>
          <table class="tableStyle dataTable">
            <caption>취소 안내</caption>
            <colgroup>
              <col style="width: 140px;">
              <col style="width: auto;">
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">결제 대기 중</th>
             	<td>
                  <ul class="noBulList">
                    <li>판매자 구매자 모두 거래취소가 가능합니다.</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">결제 완료 후</th>
                <td>
                  <ul class="noBulList">
                    <li>예매처에서의 공식적인 공연 취소를 제외한 단순 취소는 불가능 합니다.</li>
                    <li>기타 문의가 있을 경우 고객센터로 전화 또는 1:1 이용문의를 이용하시길 바랍니다.</li>
                  </ul>
                </td>
              </tr>
            </tbody>
          </table>
          <h3>환불 안내</h3>
          <table class="tableStyle dataTable">
            <caption>환불 안내</caption>
            <colgroup>
              <col style="width: 140px;">
              <col style="width: auto;">
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">무통장입금</th>
             	<td>
                  <ul class="noBulList">
                    <li>
                      무통장입금(가상계좌)으로 
                      <span class="strStyle04">결제 후 취소 시 티켓베이 '예치금'으로 적립됩니다.</span>
                    </li>
                    <li>
                      예치금은 [MY티켓베이>혜택관리>예치금관리]에서 
                      <span class="strStyle04">본의명의 계좌로 출금신청</span>
                      가능하며,
                      <br>
                      신청일 기준
                      <span class="strStyle04">다음날 오후 2시 입금됩니다. (주말 및 공휴일 제외)</span>
                    </li>
                    <li>출금계좌는 [MY티켓베이>회원정보수정]에서 등록 및 수정이 가능합니다.</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">카드결제</th>
                <td>
                  <ul class="noBulList">
                    <li>
					  신용카드 및 체크카드 
					  <span class="strStyle04">결제 후 당일 취소 시 즉시 승인취소</span>
					   처리됩니다.
					</li>
                    <li>
					  결제 당일 취소가 아닌 경우 
					  <span class="strStyle04">신용카드는 영업일 기준 4~7일</span>, 
					  <span class="strStyle04">체크카드는 영업일 기준 6~7일</span>
					   후 승인취소 처리됩니다.
					</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">휴대폰</th>
                <td>
                  <ul class="noBulList">
                    <li>
                      휴대폰 결제는 
                      <span class="strStyle04">결제 후 당월 취소 시 즉시 승인취소</span>
                       처리됩니다. 
                    </li>
                    <li>
                      <span class="strStyle04">결제월과 취소월이 다른 경우 휴대폰 결제 취소는 불가</span>
                      하며, 취소금액은 예치금으로 적립됩니다. (단, 휴대폰 요금은 청구됨)
                    </li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">카카오페이</th>
                <td>
                  <ul>
                    <li>
                      <span class="strStyle04">
						<b>카카오페이 카드</b>
					  </span>
                      <br>
                      신용카드 및 체크카드는 결제 후 당일 취소 시 즉시 승인 취소 처리 됩니다.
                      <br>
                      결제 당일 취소가 아닌 경우는 영업일 기준 일주일 내 승인 취소 처리 됩니다.       
                      <br>
                      <br>
                      <span class="strStyle04">
					    <b>카카오페이 머니</b>
					  </span>
					  <br>
					  결제 취소 시 즉시 취소 처리되며, 카카오페이 머니로 바로 입금됩니다.
					  <br>
					  카카오 계정 및 카카오페이 회원 탈퇴 시 취소되지 않습니다. (가맹점 직접 환불 필요)
                    </li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">카카오페이 간편송금</th>
                <td>
                  <ul>
                    <li>결제 후 취소가 발생 시 티켓베이 '예치금'으로 적립됩니다.</li>
                    <li>
                      예치금은 [MY티켓베이>혜택관리>예치금관리]에서 본인명의 계좌로 출금신청 가능하며, 신청일 기준 다음날 오후 2시 입금됩니다.
                      <br>
                      (주말 및 공휴일 제외)
                    </li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th scope="row">실시간 계좌이체</th>
                <td>
                  <ul>
                    <li>
					  취소 시 결제대행사 정책에 따라 
					  <span class="strStyle04">이체된 계좌로 환불</span>
					   처리 됩니다.
					</li>
                  </ul>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <!-- 탭버튼 -->
      <script type="text/javascript">
      	$(document).ready(function(){
      		$('ul.tabStyle li').click(function(){
      			var tab_id=$(this).attr('data-tab');
      			$('ul.tabStyle li').removeClass('current');
      			$('.feTabCont').removeClass('current');
      			$(this).addClass('current');
      			$("#"+tab_id).addClass('current');
  				
      			if($('#dtailTab01').hasClass("current") === true){
      				$('#dtailTab01').css('display','block');
      	      	} else{
      				$('#dtailTab01').css('display','none');
      			}
          		
      			if($('#dtailTab04').hasClass("current") === true){
      				$('#dtailTab04').css('display','block');
      	      	} else{
      				$('#dtailTab04').css('display','none');
      			}
      			
      			if($('#dtailTab05').hasClass("current") === true){
      				$('#dtailTab05').css('display','block');
      	      	} else{
      				$('#dtailTab05').css('display','none');
      			}
  			
      		})
      	})
      </script>
    </div>
  </main>
  <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>
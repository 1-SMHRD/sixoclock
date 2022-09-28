<%@page import="kr.dao.CategoryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>6시땡</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="images/favicon.png">
        <link rel="stylesheet" href="${cpath}/css/style.css?after">
    </head>

    <body>
        <!-- Header -->
        <section class="header-top-section">
            <div class="container">
                <div class="row">
                    <div  class="col-md-6"></div>
                    <div  class="col-md-6">
                        <div class="header-top-menu">
                            <ul class="nav nav-pills navbar-right">
                            
                            <c:if test="${empty mvo }">
                                <li><a href="#"><i class="pe-7s-gift">이벤트/혜택존</i></a></li>
                                <li><a href="#"><i class="pe-7s-ticket">MY티켓베이</i></a></li>

                                <li><a href="${cpath}/signinpage.do"><i class="pe-7s-unlock">로그인</i></a></li>
                                <li><a href="${cpath}/signuppage.do"><i class="pe-7s-user">회원가입</i></a></li>
                                <li><a href="${cpath}/sales.do"><i class="pe-7s-box1">판매등록</i></a></li>
							</c:if>
							
							<c:if test="${!empty mvo }">
                                <li><a href="${cpath}/mypage.do"><i class="pe-7s-unlock">${mvo.u_ID }님 환영합니다!</i></a></li>
                                <li><a href="#"><i class="pe-7s-gift">이벤트/혜택존</i></a></li>
                                <li><a href="${cpath}/mypage.do"><i class="pe-7s-ticket">MY티켓베이</i></a></li>
                                <li><a href="${cpath}/sales.do"><i class="pe-7s-box1">판매등록</i></a></li>
                                <li><a href="${cpath}/signout.do" onclick="signout();">로그아웃</i></a></li>
							</c:if>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
		
		<script type="text/javascript">
			
		    const signout = () => {
		    	console.log("-------------");
		        location.replace("http://nid.naver.com/nidlogin.logout");
		    }
		</script>


        <header class="header-section">
            <nav class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">

                        </button>
                        <a class="navbar-brand" href="${cpath}/main.do"><b>T</b>icketbay</a>
                    </div>


                    <!-- Collect the nav links, forms, and other content for toggling -->
                    
                    
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="${cpath}/main.do">Home</a></li>
                            
                            
                            <div class="dropdown">
                            	
                                <li><span><button class="dropbtn" value="${vo.cate_no}">콘서트</button></span></li>
                                <div class="dropdown-content">
                                <c:forEach var="vo" items="${list}">
                                <c:if test="${vo.up_cate_no eq '1000'}">
                                    <a href="#">${vo.cate_name}</a>
                                </c:if>
                                </c:forEach>
                                
                                </div>
                            </div>
                            
                            <div class="dropdown">
                            	
                                <li><span><button class="dropbtn" value="${vo.cate_no}">스포츠</button></span></li>
                                <div class="dropdown-content">
                                <c:forEach var="vo" items="${list}">
                                <c:if test="${vo.up_cate_no eq '1001'}">
                                    <a href="${cpath}/salesList.do?cate_no=${vo.cate_no}">${vo.cate_name}</a>
                                </c:if>
                                </c:forEach>
                                
                                </div>
                            </div>
                            
                            <div class="dropdown">
                            	
                                <li><span><button class="dropbtn" value="${vo.cate_no}">뮤지컬/연극</button></span></li>
                                <div class="dropdown-content">
                                <c:forEach var="vo" items="${list}">
                                <c:if test="${vo.up_cate_no eq '1002'}">
                                    <a href="#">${vo.cate_name}</a>
                                </c:if>
                                </c:forEach>
                                
                                </div>
                            </div>
                            
                            <div class="dropdown">
                            	
                                <li><span><button class="dropbtn" value="${vo.cate_no}">영화/전시</button></span></li>
                                <div class="dropdown-content">
                                <c:forEach var="vo" items="${list}">
                                <c:if test="${vo.up_cate_no eq '1003'}">
                                    <a href="#">${vo.cate_name}</a>
                                </c:if>
                                </c:forEach>
                                
                                </div>
                            </div>
                            
                            <div class="dropdown">
                            	
                                <li><span><button class="dropbtn" value="${vo.cate_no}">굿즈</button></span></li>
                                <div class="dropdown-content">
                                <c:forEach var="vo" items="${list}">
                                <c:if test="${vo.up_cate_no eq '1004'}">
                                    <a href="#">${vo.cate_name}</a>
                                </c:if>
                                </c:forEach>
                                
                                </div>
                            </div>
                            
                            <div class="dropdown">
                            	
                                <li><span><button class="dropbtn" value="${vo.cate_no}">정가이하</button></span></li>
                                <div class="dropdown-content">
                                <c:forEach var="vo" items="${list}">
                                <c:if test="${vo.up_cate_no eq '1005'}">
                                    <a href="#">${vo.cate_name}</a>
                                </c:if>
                                </c:forEach>
                                
                                </div>
                            </div>
                            
                        </ul>
                        <ul class="nav navbar-nav navbar-right cart-menu">
                        <li><a href="#" class="search-btn"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                        <li><a href="#"><span> Cart &nbsp;</span> <span class="shoping-cart">0</span></a></li>
                    </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>

        <section class="search-section">
            <div class="container">
                <div class="row subscribe-from">
                    <div class="col-md-12">
                        <form class="form-inline col-md-12 wow fadeInDown animated">
                            <div class="form-group">
                                <input type="email" class="form-control subscribe" id="email" placeholder="티켓을 검색해보세요!">
                                <button class="suscribe-btn" ><i class="pe-7s-search"></i></button>
                            </div>
                        </form><!-- end /. form -->
                    </div>
                </div><!-- end of/. row -->
            </div><!-- end of /.container -->
        </section><!-- end of /.news letter section -->

        <section class="slider-section">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators slider-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="${cpath}/img/이미지/티켓베이 1.png" width="1648" height="600" alt="">
                        <div class="carousel-caption"></div>
                    </div>
                    <div class="item">
                        <img src="${cpath}/img/이미지/티켓베이 2.jpg" width="1648" height="600" alt="">
                        <div class="carousel-caption"></div>
                    </div>
                    <div class="item">
                        <img src="${cpath}/img/이미지/티켓베이 3.jpg" width="1648" height="600" alt="">
                        <div class="carousel-caption"></div>
                    </div>
                    <div class="item ">
                        <img src="${cpath}/img/이미지/티켓베이 4.png" width="1648" height="600" alt="">
                        <div class="carousel-caption"></div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="pe-7s-angle-left glyphicon-chevron-left" aria-hidden="true"></span>
                </a>
                <a class="right carousel-control" role="button" data-slide="next"> <img src="${cpath}/img/이미지/" alt="">
                    <span class="pe-7s-angle-right glyphicon-chevron-right" aria-hidden="true"></span>
                </a>
            </div>
        </section>


<!-- 추가목록!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
 <!-- OFFER SECTION -->

<div class="container">   
        <div class="mBocWrap">
            <div class="md_a_gr">
                <div class="bn_gr_b">
                    <ul>
                            <li id="무야호1">
                                <img src="${cpath}/img/이미지/무야호.jpg">
                                <div><span></span></div>
                            </li>

                            <li id="무야호2"><a href="https://www.ticketbay.co.kr/web/review/review">
                                <img src="${cpath}/img/이미지/무야호2.png">
                                <div><span></span></div></a>

                            </li>

                            <li>
                                <div class="mainBox03">
                                    <a class="a_01_box" href="https://www.ticketbay.co.kr/web/cs/ticketBayGuide/1">이용가이드</a>
                                    <a class="a_02_box" href="https://www.ticketbay.co.kr/web/cs/ticketBayGuide/2">안전 구매 방법</a>
                                    <a class="a_03_box" href="https://www.ticketbay.co.kr/web/cs/ticketBayGuide/3">안전 판매 방법</a>
                                </div>      
                            </li>

                            <li id="카카오톡">
                                <a href="https://www.kakaocorp.com/page/service/service/KakaoTalk?lang=ko"><img src="${cpath}/img/이미지/카카오톡상담.jpg"></a>
                            </li>

                            <li id="SNS">
                                <div>
                                    <img src="${cpath}/img/이미지/sns배너.gif">
                                </div>
                            </li>
                    </ul>
                </div>

                <div class="bn_gr_b">
                    <h2>HOT ISSUE <span>지금 가장 핫한 공연을 소개합니다 !!</span></h2>
                    <ul>
                            <li>
                                <a href=""><img src="${cpath}/img/이미지/나훈아.jpg">
                                    <div><span>나훈아</span></div></a>
                            </li>


                            <li>
                                <a href=""> <img src="${cpath}/img/이미지/뉴진스.jpg">
                                    <div><span>뉴진스</span></div></a>
                            </li>


                            <li>
                                <a href=""><img src="${cpath}/img/이미지/블랙핑크.jpg">
                                    <div><span>블랙핑크</span></div></a>
                            </li>


                            <li>
                                <a href=""><img src="${cpath}/img/이미지/아이브.jpg">
                                    <div><span>아이브</span></div></a>
                            </li>


                            <li>
                                <a href=""><img src="${cpath}/img/이미지/아이유.jpg">
                                    <div><span>아이유</span></div></a>
                            </li>


                            <li>
                                <a href=""><img src="${cpath}/img/이미지/이종석.jpg">
                                    <div><span>이종석</span></div></a>
                            </li>


                            <li>
                                <a href=""><img src="${cpath}/img/이미지/소녀시대.jpg">
                                    <div><span>소녀시대</span></div></a>
                            </li>


                            <li><a href=""><img src="${cpath}/img/이미지/지코.jpg">
                                <div><span>지코</span></div></a>
                            </li>
                    </ul>
                </div>


                <div class="bn_gr_b">
                    <h2>FANding Market <span>지하철광고 쇼핑몰 팬딩마켓 ♥</span></h2>
                    <ul>
                            <li>
                                <img src="${cpath}/img/이미지/팬딩마켓1.png">
                                <div><span></span></div>
                            </li>

                            <li>
                                <img src="${cpath}/img/이미지/팬딩마켓2.png">
                                <div><span></span></div>
                            </li>

                            <li>
                                <img src="${cpath}/img/이미지/팬딩마켓3.png">
                                <div><span></span></div>
                            </li>
                    </ul>
                </div>



                <!--  후기 // -->
                <link href="/resources/img/review_pc/review.css" type="text/css" rel="stylesheet">
                <a href="/web/review/review">
                    <div class="review_main_box">
                        <div class="box_02g">
                            <img src="${cpath}/img/이미지/리얼후기.jpg" alt="100% 리얼 후기"
                                style="margin-bottom: -3px;">
                            <!-- 후기 글 영역 대분류, 제목, 내용, 작성자 명, 아이디 , 등록일자-->


                            <div class="re_view_item ">
                                <div class="ctg_star_g">
                                    <span class="star-rating"><span class="star_img_05"></span></span>
                                </div>
                                <h3>안심거래할 수 있어서 걱정없이</h3>
                                <p>
                                    티켓을 구매할 수 있어서 참 좋습니다
                                    친구가 예매대기도 안 풀려서 못가게 되었다고 해서
                                    티켓베이로 구해주니까 정말 좋아하네요
                                    가격은 사악하지만 티켓팅 실패해서 못 갈 뻔한 사람들에게는 감사하고 또 감사한 최고의 은인입니다ㅎㅎㅎㅎ
                                </p>
                                <div class="info">
                                    <span class="name">문*훈 (jihoon***)</span>
                                    <span class="day">2022-09-30</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <!--  //후기  -->
                <!-- 공지사항 // -->
                <div class="news_gr">
                    <h2>공지사항</h2>

                    <div>
                        <a href="https://www.ticketbay.co.kr/web/cs/noticeListView?seq=555" title="[공지] 자동 구매 확정 안내">
                            <h3
                                style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; width: 495px; font-size: 16px; margin-left: -5px;">
                                [공지] 자동 구매 확정 안내 </h3>
                                <span>안녕하세요. ticketbay입니다. <br>

                                    티켓 사용일시가 경과되었음에도 구매자가 직접 구매확정을 하지 않는 경우 <br>
                                    공연/경기 다음 날 오후 3시 이후에 자동으로 구매확정 처리됩니다.
                                    <br>

                                    앞으로도 더 나은 서비스를 제공하기 위해 노력하는 티켓베이가 되겠습니다. 감사합니다. <br> </span>
                        </a>
                    </div>

                    <div class="clear"></div>
                </div>
                <!-- // 공지사항끝 -->


            </div>
        </div>
         <!-- 사이드바 목록 시작 -->
                <div class="md_b_gr">
                    <div class="bn_promise_gr1 gr_01" id="티켓베이의약속">
                         <h2>티켓베이의 약속</h2>
                         <ul>
                             <li>
                                <img src="${cpath}/img/이미지/약속1.png">
                                <span>구매 확정 전까지<br> 결제대금 보관</span>
                            </li>
                            <li>
                                 <img src="${cpath}/img/이미지/약속2.png">
                                 <span>공연(경기)이 취소될<br> 경우 100% 환불</span>
                                </li>
                                <li>
                                 <img src="${cpath}/img/이미지/약속3.png">
                                 <span>입장 거부 시 <br> 결제대금 전액 보상  <mark>(유료)</mark></span>
                             </li>
                         </ul>
                   </div>
                   <div class="bn_promise_gr2 gr_02" id="고객센터">
                           <h2>고객센터</h2>
                          <ul>
                              <li class="call_info"><img src="${cpath}/img/이미지/고객상담.gif">
                                  <div class="info">
                                              평일 09~18시 <br>
                                      <strong>1234-5678</strong>
                                  </div>
                              </li>
                          </ul>
                   </div>
                </div>
            </div>




      	<!-- footer -->
		<footer id="footer">
            <!-- footerNav -->
                <div class="tb_foot">
                    <ul class="footer_menu">
                        <li><a href="/web/info/terms">이용약관</a></li>
                        <li><a href="https://www.ticketbay.co.kr/web/info/privacy" class="txt_01">개인정보처리방침</a></li>
                        <li><a href="/web/info/youthprotect_20180424">청소년보호정책</a></li>
                        <li><a href="/web/info/email_20180424">이메일무단수집거부</a></li>
                        <li><a href="javascript:onPopCertMar('fe0bde5c89c7af2163a5719f5aa57d86')" class="">NH에스크로이체 정보</a></li>
                        <li><a href="/web/info/company">회사소개</a></li>
                        <li><a href="/web/info/pr/pressReleases">PR</a></li>
                    </ul>
                    <div class="clear"></div>
                    <!-- //footerNav -->
                    <!-- address -->
                    <style>
                        #footer address span{margin-right: 18px !important;}
                    </style>
                    <address>
                        <p>
                            <span>
                                <font class="google_off">(주)6시떙</font>
                                <font class="google_on" style="padding-right: 5px;"></font><font class="google_on mr_10"></font>
                                광주광역시 남구 송암로 60 광주CGI센터 3층
                            </span>
                        </p>
                        <p>
                            <span>고객감동센터 : +82-655-3506/span>
                            <span class="txt_mail">E-MAIL : 9to6@gmail.com</span>
                            <span>FAX : 02-2138-1110</span>
                            <span class="txt_mail">제휴문의 : 9to6@gmail.com</span>
                        </p>
                        <p>
                            <span>대표이사 : 장해라</span>
                            <span>사업자등록번호 : 000-94-00000</span>
                            <span>통신판매업신고 : 제 2022-광주동구-0831호</span>
                        </p>


                        <p>
                            <em style="color:#8c8c8c !important;">티켓베이는 통신판매 중개자이며, 통신판매의 당사자가 아닙니다. 따라서 티켓베이는 상품 거래정보 및 거래에 대하여 책임을 지지 않습니다.</em>					
                        </p>
                        <!-- <p class="copyright">COPYRIGHT © TICKETBAY. ALL RIGHTS RESERVED.</p> -->
                        <p class="copyright">© TICKETBAY. ALL RIGHTS RESERVED.</p><!-- 2016-10-06 수정 -->
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
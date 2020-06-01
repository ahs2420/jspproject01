<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@include file="../hong-include/head.jspf"%>

<link rel="stylesheet" href="/css/reset.css">

<link rel="stylesheet" href="../hongcss/mypage/mypage.css">
<link rel="stylesheet" href="/hongcss/mypage/${template}_${mypage}.css">

<!-- fontawesome 코드 -->

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://kit.fontawesome.com/8838b56230.js" crossorigin="anonymous"></script>

<!-- fontawesome 코드 -->

<script src="../hongjs/mypage/mypage.js"></script>
<script src="../hongjs/mypage/common.js"></script>
<script src="../hongjs/mypage/${template}_${mypage}.js"></script>

<div class="position-fix">


    <div class="head-con">
        <div class="logo">
            <a href="http://localhost:8888/"><span class="main-color">W</span>a<span class="main-color">T</span>his</a>
        </div>

        <div class="head-userid">
            <div class="userlogo">
                <i class="fas fa-fan"></i>
            </div>

            <div class="username">
                WATHIS
            </div>
        </div>

        <div class="head-close">
            <button name="" id="" class="head-show">미리보기</button>
            <button name="" id="" class="head-out">나가기</button>
        </div>
    </div>
</div>

</header>
<main>
    <div class="mypage-container" style="max-width: 100%;">
        <div class="menu-box">
            <div class="box1-menu">

                <div class="reward-box-btn">

                    <button class="box-btn1" type="button" id="reward">리워드</button>
                    <button class="box-btn2" type="button" id="reward">펀딩 준비 작성 중</button>
                </div>

                <div class="reward-box">
                    <h2> 123의 멋진 프로젝트</h2>
                </div>

                <ul class="jq-box">
                    <li class="mypage-li-menu-not">
                        <div class="reward-box-num">
                            <a href="#">
                                프로젝트 번호
                                <!-- <i class="fas fa-angle-down"></i> -->

                            </a>

                            <ul class="hide">
                                <li>
                                    와디지 담당자와의 소통은 프로젝트 번호로 진행됩니다. 상세페이지는 프로젝트 번호를 포함한 URL 주소로 오픈 된 후 진입 가능합니다.
                                </li>
                                <li class="reward-box-url">
                                    url 복사하기
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>

            </div>
            <ul class="menu-text" style="list-style: none;">
                <li class="mypage-li-menu Reward">
                    <div class="menu-text1">
                        <a href="/page/mypage">펀딩 준비</a>
                        <a href="#"><i class="fas fa-angle-down"></i>

                            <ul class="hide">
                                <li><a href="/page/mypage-one">기본 요건</a></li>
                                <li><a href="/page/mypage-two">메이커 정보</a></li>
                                <li><a href="/page/mypage-three">스토리 작성</a></li>
                                <li><a href="/page/mypage-four">리워드 설계</a></li>
                                <li><a href="/page/mypage-five">위험요인 및 정책</a></li>
                            </ul>
                    </div>
                </li>
                <li class="mypage-li-menu">
                    <div class="menu-text1">
                        <a href="#">오픈예정 현황<i class="fas fa-angle-down"></i></a>
                    </div>
                </li>
                <li class="mypage-li-menu">
                    <div class="menu-text1">
                        <a href="#">결제 현황<i class="fas fa-angle-down"></i></a>
                    </div>
                </li>
                <li class="mypage-li-menu">
                    <div class="menu-text1">
                        <a href="#">새소식<i class="fas fa-angle-down"></i></a>
                    </div>
                </li>
                <li class="mypage-li-menu">
                    <div class="menu-text1">
                        <a href="#">서포터<i class="fas fa-angle-down"></i></a>
                    </div>
                </li>
                <li class="mypage-li-menu">
                    <div class="menu-text1">
                        <a href="#">자료및 도움말<i class="fas fa-angle-down"></i></a>
                    </div>
                </li>
            </ul>
            <!-- 
                <div class="menu-text2">
                    <a href="#">펀딩 현황<i class="fas fa-angle-down"></i></a>
                </div>
                <div class="menu-text2">
                    <a href="#">결제 현황<i class="fas fa-angle-down"></i></a>
                </div>
                <div class="menu-text2">
                    <a href="#">새소식<i class="fas fa-angle-down"></i></a>
                </div>
                <div class="menu-text2">
                    <a href="#">서포터<i class="fas fa-angle-down"></i></a>
                </div>
                <div class="menu-text2">
                    <a href="#">자료및 도움말<i class="fas fa-angle-down"></i></a>
                </div> 
                -->
            <!-- <div class="box3-adver">
                	광고 이미지
	                <div class="adver-box1">1</div>
	                <div class="adver-box2">2</div>
	                <div class="adver-box3">3</div>
	                <div class="adver-box4">4</div>
	                <div class="adver-box5">5</div>
                </div> -->

        </div>
		
		<!-- 달라지는 부분 -->
 		<!-- 펀딩 준비가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'prepare'}">
            <%@ include file = "mypageList.jsp" %>
        </c:if>
        
        <c:if test="${template eq 'Reward' && mypage eq 'modify'}">
            <%@ include file = "mypageListModify.jsp" %>
        </c:if>
        
        <!-- 기본 요건 가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'information'}">
            <%@ include file = "mypageOne.jsp" %>
        </c:if>
         
         <!-- 메이커정보 가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'maker'}">
            <%@ include file = "mypageTwo.jsp" %>
        </c:if>
        
        <!-- 스토리 작성 가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'story'}">
            <%@ include file = "mypageThree.jsp" %>
        </c:if>
        
        <!-- 리워드 설계 가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'design'}">
            <%@ include file = "mypageFour.jsp" %>
        </c:if>
        
        <!-- 위험 요인 및 정책 가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'riskFactors'}">
            <%@ include file = "mypageFive.jsp" %>
        </c:if>
              
    </div>


</main>
<script>
//ALL 메뉴 부분
// $(function () {
// 	<c:if test="${mypage ne 'prepare'}">
// 	    $(".mypage-li-menu.${template}").find(".hide").toggle();
// 	    $(".mypage-li-menu.${template}").toggleClass("active");
// 	</c:if>
// });





</script>
<%@include file="../hong-include/foot.jspf"%>
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
            <button type="button" name="" id="" class="head-show" onclick="location.href='/product/product?id=${product_id}'">미리보기</button>
            <a href="http://localhost:8888/" name="" id="" class="head-out outmain">나가기</a>
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
                    <h2> 
                        ${sessionScope.uname}
                        의 멋진 프로젝트</h2>
                </div>

                <ul class="jq-box">
                    <li class="mypage-li-menu-not">
                        <div class="reward-box-num">
                            <a href="#">
                                프로젝트 번호 : ${id}
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
                        <a href="/page/mypageListModify?template=Reward&mypage=information&id=${id}">펀딩 준비</a>
                        <a href="#"><i class="fas fa-angle-down"></i>

                            <ul class="hide">
                                <li>
                                	 <a href="/page/mypageOneView?id=${id}">기본 요건</a>
                                </li>
                                <li>
	                                <c:choose>
			                    		<c:when test="${maker_id > 0}">
						                    <a href="/page/mypageTwoView?id=${maker_id}">메이커 정보</a>
			                    		</c:when>
			                    		<c:otherwise>
						                    <a href="/page/mypage-two?audit_id=${id}">메이커정보</a>
	                    				</c:otherwise>
	                    			</c:choose>
                              	</li>
                                <li>
	                                <c:choose>
			                    		<c:when test="${product_id > 0}">
						                    <a href="/page/mypageThreeView?id=${product_id}">스토리 작성</a>
			                    		</c:when>
			                    		<c:otherwise>
						                    <a href="/page/mypage-three?audit_id=${id}">스토리 작성</a>
			                    		</c:otherwise>
	                    			</c:choose>
                               	</li>
                                <li>
	                                 <c:choose>
	                    				<c:when test="${optCount > 0}">
				                		    <a href="/page/mypage-four?product_id=${product_id}&audit_id=${id}">리워드 설계</a>
	                    				</c:when>
	                    				<c:when test="${product_id > 0}">
				            	        	<a href="/page/mypage-four?product_id=${product_id}&audit_id=${id}">리워드 설계</a>
	                    				</c:when>
	                    				<c:otherwise>
				                    		<a href="#" onclick="alert('스토리를 먼저 작성해 주세요');"></a>
	                    				</c:otherwise>
	                    			</c:choose>
                                </li>
                                
                            </ul>
                    </div>
                </li>
        
                <li class="mypage-li-menu">
                    <div class="menu-text1">
                        <a href="/page/paymentStatus?id=${id}">결제 현황<i class="fas fa-angle-down"></i></a>
                    </div>
                </li>
                <li class="mypage-li-menu">
                    <div class="menu-text1">
                        <a href="/proNotice/write?product_id=${product_id}">새소식<i class="fas fa-angle-down"></i></a>
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
        <!-- 펀딩 준비 수정 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'modify'}">
            <%@ include file = "mypageListModify.jsp" %>
        </c:if>
        
        <!-- 기본 요건 보는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'information'}">
            <%@ include file = "mypageOne.jsp" %>
        </c:if>
        
        <!-- 기본 요건 수정 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'oneModi'}">
            <%@ include file = "mypageOneModify.jsp" %>
        </c:if>
         
         <!-- 메이커정보 가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'maker'}">
            <%@ include file = "mypageTwo.jsp" %>
        </c:if>
        
          <!-- 메이커정보 수정 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'twoModi'}">
            <%@ include file = "mypageTwoModify.jsp" %>
        </c:if>
        
        <!-- 스토리 작성 가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'story'}">
            <%@ include file = "mypageThree.jsp" %>
        </c:if>
        
        <!-- 스토리 작성  수정 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'threeModi'}">
            <%@ include file = "mypageThreeModify.jsp" %>
        </c:if>
        
        <!-- 리워드 설계 가는 부분 -->
        <c:if test="${template eq 'Reward' && mypage eq 'design'}">
            <%@ include file = "mypageFour.jsp" %>
        </c:if>

        <!-- 결제현황 가는 부분 -->
        <c:if test="${template eq 'payment' && mypage eq 'status'}">
            <%@ include file = "paymentStatus.jsp" %>
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
<%@ include file="/WEB-INF/views/include/loginChk/loginChk.jsp"%>
<%@include file="../hong-include/foot.jspf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<!-- 
    
    <script src="/js/main.js"></script>
 -->
 <link rel="stylesheet" href="/css/mypage/${template}.css">
 <script src="/js/mypage/${template}.js"></script>
</haed>
<body>
<header>
<%@ include file="/WEB-INF/views/include/nav.jspf"%>
<!-- hero 삽입 -->
    <div class="hero item-only no-blur">
        <div class="">
            <div class="item">
                <div class="bg-hero-cover">
                    <div class="bg-img bg-main" style="background-image: url(/images/login/login-main.jpg);"></div>
                    <div class="container bg-txt fadeInUp">
                        <div class="small-title"></div>
                        <h1 class="title mb20 col-md-12 word-break"> 
                           	아이디/비밀번호 찾기
                        </h1>
                        <div class="tiny-title col-md-12 word-break">
                           	 가입하셨던 이메일 계정을 입력하시면, 해당 계정으로 아이디/ 비밀번호를 보내 드립니다.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--슬라이더 버튼-->
        <div class="owl_hero_cotainer container flex-box flex-j-space flex-a-flexend">
            <div class="owl_hero_dots owl-dots"></div>
            <div class="owl_hero_nav owl-dots"></div>
        </div>
    </div>
    <div class="sub-nav">
        <ul class="sub-menu flex-box flex-j-center flex-wrap">
            <li class="w-50p bold <c:if test="${template eq 'findID'}">on</c:if>"><a class="sub-view-btn" type="button" href="/login/findAccount?template=findID" >아이디 찾기</a></li>
            <li class="w-50p bold <c:if test="${template eq 'findPWD'}">on</c:if>"><a class="sub-view-btn" type="button" href="/login/findAccount?template=findPWD" >비밀번호 찾기</a></li>
        </ul>
    </div>
</header>
<!-- main내용삽입 -->
<main>
	<c:import url="/WEB-INF/views/login/find/${template}.jsp" />
</main>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
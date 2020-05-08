<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<!-- 
    
    <script src="/js/main.js"></script>
 -->
 <link rel="stylesheet" href="/css/mypage/settings.css">
 <script src="/js/mypage/settings.js"></script>
</haed>
<body>
<header>
<%@ include file="/WEB-INF/views/include/nav.jspf"%>
<!-- hero 삽입 -->
    <div class="hero item-only no-blur">
        <div class="">
            <div class="item">
                <div class="bg-hero-cover">
                    <div class="bg-img bg-main" style="background-image: url(/images/mypage/setting_main_1.jpg);"></div>
                    <div class="container bg-txt fadeInUp">
                        <div class="small-title"></div>
                        <h1 class="title mb20 col-md-12 word-break"> 
                            마이페이지
                        </h1>
                        <div class="tiny-title col-md-12 word-break">
                            와디스는 도전하는 기업이 사람들의 지지를 받고
                            성장할 수 있도록 돕는 크라우드펀딩 플랫폼입니다
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
            <li class="w-33p bold"><a class="sub-view-btn" type="button" href="#" ><span class="dis-pc">펀딩한프로젝트</span><span class="dis-mobile">펀딩</span></a></li>
            <li class="w-33p bold"><a class="sub-view-btn" type="button" href="#" ><span class="dis-pc">제작한프로젝트</span><span class="dis-mobile">제작</span></a></li>
            <li class="w-33p bold on"><a class="sub-view-btn" type="button" href="/page/setting" >설정</a></li>
            <!-- <li class="w-24p col-sm-6 bold"><a class="sub-view-btn" type="button" href="#" >운영정책</a></li> -->
            <!-- <li><a href="#">서포터</a></li> -->
        </ul>
    </div>
</header>
<!-- main내용삽입 -->
<main>
    <section>
        <div class="container max800" id="term-box">
            
        </div>


    </section>
</main>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
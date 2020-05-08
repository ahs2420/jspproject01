<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<!-- 
    
    <script src="/js/main.js"></script>
 -->
 <link rel="stylesheet" href="/css/term.css">
 <script src="/js/term.js"></script>
</haed>
<body>
<header>
<%@ include file="/WEB-INF/views/include/nav.jspf"%>
<!-- hero 삽입 -->
    <div class="hero item-only no-blur">
        <div class="">
            <div class="item">
                <div class="bg-hero-cover">
                    <div class="bg-img bg-main" style="background-image: url(/images/main/term_main.jpg);"></div>
                    <div class="container bg-txt fadeInUp">
                        <div class="small-title"></div>
                        <h1 class="title mb20 col-md-12 word-break"> 
                            이용약관
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
    <div class="term-nav">
        <ul class="term-menu flex-box flex-j-center flex-wrap">
            <li class="w-24p col-sm-6 bold term_register"><a class="term-view-btn" type="button" data-target="term_register">회원가입약관</a></li>
            <li class="w-24p col-sm-6 bold term_service"><a class="term-view-btn" type="button" data-target="term_service">서비스이용약관</a></li>
            <li class="w-24p col-sm-6 bold term_privacy"><a class="term-view-btn" type="button" data-target="term_privacy">개인정보처리방침</a></li>
            <li class="w-24p col-sm-6 bold term_operation"><a class="term-view-btn" type="button" data-target="term_operation">운영정책</a></li>
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
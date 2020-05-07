<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
    <link rel="stylesheet" href="/css/introduce.css">
    <script src="/js/introduce.js"></script>
</haed>
<body>
	<header>
	<%@ include file="/WEB-INF/views/include/nav.jspf"%>
	<!-- hero 삽입 -->
        <div class="hero">
            <div class="">
                <div class="item">
                    <a href="#">
                        <div class="bg-hero-cover">
                            <div class="bg-img bg-main" style="background-image: url(/images/main/main-info-1.jpg);"></div>
                            <div class="container bg-txt">
                                <div class="small-title"></div>
                                <h1 class="title mb20 w-45p col-md-12 word-break"> 
                                    다양한 우리가 모여<br />
                                    함께 더 나은 세상을 만듭니다
                                </h1>
                                <div class="sub-title w-45p col-md-12 word-break">
                                    와디스는 도전하는 기업이 사람들의 지지를 받고
                                    성장할 수 있도록 돕는 크라우드펀딩 플랫폼입니다
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <!--슬라이더 버튼-->
            <div class="owl_hero_cotainer container flex-box flex-j-space flex-a-flexend">
                <div class="owl_hero_dots owl-dots"></div>
                <div class="owl_hero_nav owl-dots"></div>
            </div>
        </div>
	</header>
<!-- main내용삽입 -->
    <main>
        <section>
            <div class="container">
                <div class="flex-box flex-wrap flex-j-space">
                    <div class="w-45p col-md-12">
                        <div class="small-title main-color bold">Unique Value</div>
                        <h1 class="title word-break">와디스에서는 누구나 투자받고 투자하면서 함께 성장합니다</h1>
                        <div class="mt30">
                            <div class="owl-carousel">
                                <div class="item">
                                    <img src="/images/introduce/introduce-main_1.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img src="/images/introduce/introduce-main_2.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img src="/images/introduce/introduce-main_3.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dis-labtop mt30">&nbsp;</div>
                    <div class="w-45p col-md-12 large-title ">
                        <p>사람들은 자신이 지지하는 기업에 투자합니다.</p>
                        <p>한 사람 한 사람의 투자가 모여</p>
                        <p class="mb20">기업은 성장합니다.</p>
                        <p>여기, 기업 하나가 출발선에 있습니다.</p>
                        <p>그는 자신의 가치를 증명하고</p>
                        <p>사람들이 그의 가치를 알아봅니다.</p>
                        <p>서로 지지하고 소통하고 공유하면서</p>
                        <p>더 많은 사람들이 그를 알아봅니다.</p>
                        <p>그렇게 기업은 성장합니다.</p>
                        <p>또 다른 기업들이 용기를 얻고 출발선에 섭니다.</p>
                        <p>사람들의 지지를 받는 기업은 성장합니다.</p>
                        <p>세상에 자신만의 가치를 품은</p>
                        <p>기업이 많아집니다.</p>
                        <p class="mb20">세상이 조금 더 나아집니다.</p>
                        <p class="main-color">Better Funding</p>
                        <p class="main-color">Better Business</p>
                        <p class="main-color">Better Life</p>
                    </div>
                </div>
            </div>
            
        </section>
        <section class="bg-gray bg-img-paral" style="background-image: url(/images/introduce/introduce-section_2.jpg);">
            <div class="container max-800w align-center z-index-1">
                <div class="sub-title bold">
                    <p>와디즈는 대한민국에서 새로운 도전이 자연스러운 환경을 만들고자 합니다.</p>
                    <p>이를 위해 리테일, 트레이더스, 벤처스 등 새로운 사업 영역을 확대하며</p>
                    <p>스타트업을 위한 종합 지원 플랫폼으로 나아가고 있습니다.</p>
                </div>
            </div>
        </section>
        <section>
            
        </section>
    </main>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
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
                <div class="sub-title bold white">
                    <p class="mb20">
                        <i class="fas fa-quote-left"></i>
                    </p>
                    <p>와디스는 대한민국에서 새로운 도전이 자연스러운 환경을 만들고자 합니다.</p>
                    <p>이를 위해 리테일, 트레이더스, 벤처스 등 새로운 사업 영역을 확대하며</p>
                    <p>스타트업을 위한 종합 지원 플랫폼으로 나아가고 있습니다.</p>
                    <p class="mt20">
                        <i class="fas fa-quote-right"></i>
                    </p>
                </div>
            </div>
        </section>
        <section id="crowdInfo">
            <div class="container">
                <div class="flex-box flex-wrap flex-j-space flex-a-flexend">
                    <div class="w-45p col-md-12">
                        <h1 class="title">크라우드펀딩이 무엇인가요?</h1>
                        <p class="mt50">
                            리워드형 크라우드펀딩은 아이디어나 제품이 있는
                            사람이 대중의 펀딩을 통해 자금을 모집하거나 수익을
                            내는 크라우드 펀딩입니다. 
                            <span class="main-color-dark bold"> 
                                시제품(서비스) 단계의 제품을 발전시켜 리워드로 제공하는 형태부터, 수익금의 전액 또는 일부를 기부하는 형태
                            </span>
                            까지 다양한
                            형태의 크라우드펀딩이 이에 포함됩니다.
                        </p>
                        <p class="mt30">
                            제작자들은 자신의 아이디어를 세상에 소개하고 실현화
                            시켜보는 경험을 할 수 있고, 후원자들은 세상에 없던 참신한
                            제품 또는 세상을 따뜻하게 만드는 다양하고 새로운
                            프로젝트에 동참할 수 있습니다. 또한 크라우드펀딩은 누구나
                            참여, 소통이 가능하기에 차별없이 참여하며 자신이 펀딩하는
                            프로젝트에 대해 언제든지 물어보고 응원할 수 있습니다.
                            제작자 또한 자신이 제작하는 프로젝트에 대해 개방적으로
                            소통 하기에 타 온라인 플랫폼보다 참여자간의 거리가
                            가깝습니다. 이를 통해 제작자와 후원자 모두 함께 꿈꾸는
                            세상을 만드는데 한걸음 다가갈 수 있습니다.
                        </p>
                        <div class="align-center mt20">
                            <a href="/product/product-list" class="large-title bold product-select-submit btn-stan btn-main">
                                리워드 둘러보기 <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="dis-labtop mt20">&nbsp;</div>
                    <div class="w-45p col-md-12">
                        <img src="/images/introduce/introduce-section_3.jpg" alt="">
                    </div>
                </div>
            </div>
        </section>
        <section class="bg-gray">
            <!--오시는길-->
            <div class="container section-location">
                <div class="flex-box flex-j-space flex-a-center flex-wrap ">
                    <div class="col-lg-5 col-sm-12" id="fadeInLeft">
                        <h1 class="title mb10"><span class="main-color">L</span>ocation</h1>
                        <p class="mb20">와디스로 오시는길</p>
                        <p class="gray mb10">주소</p>
                        <p class="mb20">OO시 OO구 OO로 123 (OO동) OOOO센터 O동 O층 OO호</p>
                        <div class="flex-box flex-wrap">
                            <div class="col-lg-6 col-sm-12">
                                <p class="gray mb10">Phone:</p>
                                <p class="mb20"><a href="tel:010-1234-1234">010-1234-1234</a></p>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                                <p class="gray mb10">Email:</p>
                                <p class="mb20"><a href="mailto:admin@krahs123.co.kr">admin@krahs123.co.kr</a></p>
                            </div>
                        </div>
                        <p class="gray mb10">Website:</p>
                        <p>
                            <a href="https://www.krahs123.co.kr">https://www.krahs123.co.kr</a>
                        </p>
                    </div>
                    <div class="col-lg-6 col-sm-12 google-map" id="fadeInRight">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d101324.72305476252!2d126.93800076924603!3d37.47494286708044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca7f433e4612b%3A0x6377f5a2f91812fa!2z7JmA65SU7KaI!5e0!3m2!1sko!2skr!4v1584952546931!5m2!1sko!2skr" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                        
                </div>
            </div>
        </section>
    </main>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
    <script>
        $(function(){
            if(location.hash=="#why-crowd"){
                $("html,body").scrollTop($("#crowdInfo").offset().top-$("nav").height());
            }
        });
    </script>
</html>
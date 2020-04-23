<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
    <link rel="stylesheet" href="/css/product-payment.css">
    <script src="/js/product-payment.js"></script>
</haed>
<body>
	<header>
	<%@ include file="/WEB-INF/views/include/nav.jspf"%>
	<!-- hero 삽입 -->
	    <!--슬라이드 이미지 1개일때는 .hero.item-only추가-->
	    <div class="hero item-only">
	        <div class="owl-carousel owl-hero owl-theme">
	            <div class="item">
	                <a href="#">
	                    <div class="bg-hero-cover">
	                        <div class="bg-img bg-main" style="background-image: url(/images/main/main_1.jpg);"></div>
	                        <div class="container bg-txt">
	                            <div class="small-title">홈리빙</div>
	                            <h1 class="title mb20">[마지막앵콜] 다리에도 베개가 필요해요 | 지친 내다리를 위한, 부끼싹!</h1>
	                            <div class="sub-title"></div>
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
            
            <form action="" method="POST" name="product-payment">
                <div class="container buy-payment-container max800">
                    <div class="bg-main-alpha-color pt20 pb20 white pl5p pr5p mb30">
                        <p>펀딩을 마치면 <span class="bold">결제 예약 상태</span>입니다. 종료일에 100% 이상 달성되었을 경우에만 결제 예정일에 결제가 됩니다</p>
                    </div>
                    <h1 class="large-title bold mb20">결제 예약</h1>
                    <div class="product-payment-receipt">
                        <h4 class="tiny-title main-color bold"></h4>
                    </div>
                </div>
            </form>
        </section>
    </main>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
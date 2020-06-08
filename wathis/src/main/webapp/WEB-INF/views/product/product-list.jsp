<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->

<!--  <link rel="stylesheet" href="/xkfqkfcss/owl.carousel.css">
     <link rel="stylesheet" href="/xkfqkfcss/owl.theme.default.css">-->
<link rel="stylesheet" href="/xkfqkfcss/product-list.css">
<link rel="stylesheet" href="/css/product.css">
<!-- <script src="/xkfqkfjs/owl.carousel.js"></script> -->
<script src="/xkfqkfjs/product-list.js"></script>
<link rel="stylesheet" href="/xkfqkfcss/assets/owl.carousel.css">
    <link rel="stylesheet" href="/xkfqkfcss/assets/owl.theme.default.css">
    <script src="/xkfqkfjs/owl.carousel.js"></script>
</head>
<body>
	<header>
		<!-- nav 자리 -->
		<%@ include file="/WEB-INF/views/include/nav.jspf"%>
    <div class="hero">
        <div class="owl-carousel owl-hero owl-theme">
			<c:forEach items="${popupList}" var="popvo">
                <!--팝업 아이템-->
                <div class="item">
                    <!--팝업 이동 주소-->
                    <a href="${popvo.url}">
                        <div class="bg-hero-cover">
                            <!--팝업 이미지-->
                            <div class="bg-img bg-main" style="background-image: url(${popvo.img});"></div>
                            <div class="container bg-txt">
                                <div class="hero-text-box">
                                    <div class="small-title"></div>
                                    <!--팝업 타이틀-->
                                    <h1 class="title mb10">${popvo.title}</h1>
                                    <!--팝업 분류-->
                                    <div class="sub-title">${popvo.subtitle}</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!--//팝업 아이템-->
            </c:forEach>
        </div>
        <!--슬라이더 버튼-->
        <div class="owl_hero_cotainer container flex-box flex-j-space flex-a-flexend">
            <div class="owl_hero_dots owl-dots"></div>
            <div class="owl_hero_nav owl-dots"></div>
        </div>
    </div>
	</header>
	<!-- 메인 내용 -->
	<main>
		<section class="reward-section">
			<div class="reward-container">
				<div class="owl-carousel owl-theme owl-category owl-carousel2">
					<div class="reward-it <c:if test="${category_id eq '' || category_id == null}">on</c:if>">
						<a href="/product/product-list">
							<div class="reward-it-img">
								<img src="/xkfqkfimages/1.jpg" alt="">
							</div>
							<div class="reward-it-text">전체보기</div>
						</a>
					</div>
					<c:forEach items="${cateList}" var="cate">
						<div class="reward-it <c:if test="${category_id eq cate.id}">on</c:if>">
							<a href="/product/product-list?category_id=${cate.id}">
								<div class="reward-it-img">
									<img src="${cate.cate_img}" alt="">
								</div>
								<div class="reward-it-text">${cate.title}</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="reward-container">
				<div class="reward-item-title flex-wrap">
					<h1>전체보기</h1>
					<div class="reward-btn">
						<div class="reward-btn-search">
							<form action="/product/product-list" method="get" id="searchForm">
								<input type="hidden" name="category_id" value="${category_id}" />
								<input type="text"  name="words" value="${words}" class="reward-search <c:if test="${words ne ''&&words != null}">on</c:if>" placeholder="검색">
								<button type="button" class="reward-search-btn">
									<i class="fas fa-search"></i>
								</button>
							</form>
						</div>
						<!-- <div class="reward-select-custom">
							<select name="" id="select-state">
								<option value="">전체</option>
								<option value="">펀딩중</option>
								<option value="">종료됨</option>
							</select> <label for="select-state"></label>
						</div>
						<div class="reward-select-custom reward-order">
							<select name="" id="select-order">
								<option value="">추천순</option>
								<option value="">인기순</option>
								<option value="">펀딩액순</option>
								<option value="">마감임박순</option>
								<option value="">최신순</option>
								<option value="">응원참여순</option>
							</select> <label for="select-order"></label>
						</div> -->
					</div>
				</div>
				<div class="reward-items">
				</div>
			</div>
			<div class="reward-container">
				<div class="reward-next-page">
					<button class="reward-next-btn" data-words='${words}' data-page='1' data-category_id='${category_id}'>
						상품 더보기
					</button>

				</div>
			</div>
		</section>
	</main>
	<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- script 자리-->
<script>
	
</script>
</html>

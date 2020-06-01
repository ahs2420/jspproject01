<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>
					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>

					<div class="reward-it">
						<div class="reward-it-img">
							<img src="/xkfqkfimages/1.jpg" alt="">
						</div>
						<div class="reward-it-text">전체보기</div>
					</div>
				</div>
			</div>
			<div class="reward-container">
				<div class="reward-item-title flex-wrap">
					<h1>전체보기</h1>
					<div class="reward-btn">
						<div class="reward-btn-search">
							<form action="" method="">
								<input type="search" class="reward-search" placeholder="검색">
								<button type="button" class="reward-search-btn">
									<i class="fas fa-search"></i>
								</button>
							</form>
						</div>
						<div class="reward-select-custom">
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
						</div>
					</div>
				</div>
				<div class="reward-items">
					<div class="reward-item">
						<a href="/product/product">
							<div class="reward-img-box">
								<img src="/xkfqkfimages/optimize.jpg" alt="">
							</div>
							<div class="reward-text-box">
								<h3 class="reward-box-title">[2.5억]꾸미지 않아도 멋있다! 누구나입는 편하고
									멋진한복[단청후드]</h3>
								<p class="reward-sub-title">패션.잡화 | 주식회사 하플리</p>
								<div class="reward-bar">
									<span style="width: 50%;"></span>
								</div>
								<div class="reward-per">
									<div>
										<span>7641%</span> <span class="reward-mobile-display-none">76,411,044원</span>
									</div>
									<span>12일 남음</span>
								</div>
							</div>
						</a>
					</div>
					<div class="reward-item">
						<a href="/product/product">
							<div class="reward-img-box">
								<img src="/xkfqkfimages/optimize.jpg" alt="">
							</div>
							<div class="reward-text-box">
								<h3 class="reward-box-title">[2.5억]꾸미지 않아도 멋있다! 누구나입는 편하고
									멋진한복[단청후드]</h3>
								<p class="reward-sub-title">패션.잡화 | 주식회사 하플리</p>
								<div class="reward-bar">
									<span style="width: 50%;"></span>
								</div>
								<div class="reward-per">
									<div>
										<span>7641%</span> <span class="reward-mobile-display-none">76,411,044원</span>
									</div>
									<span>12일 남음</span>
								</div>
							</div>
						</a>
					</div>
					<div class="reward-item">
						<a href="/product/product">
							<div class="reward-img-box">
								<img src="/xkfqkfimages/optimize.jpg" alt="">
							</div>
							<div class="reward-text-box">
								<h3 class="reward-box-title">[2.5억]꾸미지 않아도 멋있다! 누구나입는 편하고
									멋진한복[단청후드]</h3>
								<p class="reward-sub-title">패션.잡화 | 주식회사 하플리</p>
								<div class="reward-bar">
									<span style="width: 50%;"></span>
								</div>
								<div class="reward-per">
									<div>
										<span>7641%</span> <span class="reward-mobile-display-none">76,411,044원</span>
									</div>
									<span>12일 남음</span>
								</div>
							</div>
						</a>
					</div>
					<div class="reward-item">
						<a href="/product/product">
							<div class="reward-img-box">

								<img src="/xkfqkfimages/optimize.jpg" alt="">
							</div>
							<div class="reward-text-box">
								<h3 class="reward-box-title">[2.5억]꾸미지 않아도 멋있다! 누구나입는 편하고
									멋진한복[단청후드]</h3>
								<p class="reward-sub-title">패션.잡화 | 주식회사 하플리</p>
								<div class="reward-bar">
									<span style="width: 50%;"></span>
								</div>
								<div class="reward-per">
									<div>
										<span>7641%</span> <span class="reward-mobile-display-none">76,411,044원</span>
									</div>
									<span>12일 남음</span>
								</div>
							</div>
						</a>
					</div>
					<div class="reward-item">
						<a href="/product/product">
							<div class="reward-img-box">
								<img src="/xkfqkfimages/optimize.jpg" alt="">
							</div>
							<div class="reward-text-box">
								<h3 class="reward-box-title">[2.5억]꾸미지 않아도 멋있다! 누구나입는 편하고
									멋진한복[단청후드]</h3>
								<p class="reward-sub-title">패션.잡화 | 주식회사 하플리</p>
								<div class="reward-bar">
									<span style="width: 50%;"></span>
								</div>
								<div class="reward-per">
									<div>
										<span>7641%</span> <span class="reward-mobile-display-none">76,411,044원</span>
									</div>
									<span>12일 남음</span>
								</div>
							</div>
						</a>
					</div>
					<div class="reward-item">
						<a href="/product/product">
							<div class="reward-img-box">
								<img src="/xkfqkfimages/optimize.jpg" alt="">
							</div>
							<div class="reward-text-box">
								<h3 class="reward-box-title">[2.5억]꾸미지 않아도 멋있다! 누구나입는 편하고
									멋진한복[단청후드]</h3>
								<p class="reward-sub-title">패션.잡화 | 주식회사 하플리</p>
								<div class="reward-bar">
									<span style="width: 50%;"></span>
								</div>
								<div class="reward-per">
									<div>
										<span>7641%</span> <span class="reward-mobile-display-none">76,411,044원</span>
									</div>
									<span>12일 남음</span>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="reward-container">
				<div class="reward-next-page">
					<button class="reward-next-btn">
						상품 더보기</i>
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

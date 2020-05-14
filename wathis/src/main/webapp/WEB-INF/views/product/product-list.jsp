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
</head>
<body>
	<header class=" no-hero">
		<!-- nav 자리 -->
		<%@ include file="/WEB-INF/views/include/nav.jspf"%>
		<!-- hero 자리 -->
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
	$(function() {
		$(".reward-search").click(function() {
			$(this).addClass("on");
		});
	});
	$(function() {
		$(".reward-search-btn").click(function() {
			var target = $(this).siblings(".reward-search");
			if (target.val()) {

			} else {
				target.addClass("on");
				target.focus();
			}
		})
	});

	$(function() {
		$('.owl-carousel2').owlCarousel(
				{
					loop : false,
					nav : true,
					dots : false,
					navContainerClass : 'owl-nav custom',
					navText : [ '<i class="fas fa-chevron-left"></i>',
							'<i class="fas fa-chevron-right"></i>' ],
					responsive : {
						0 : {
							items : 3,
							slideBy : 3
						},
						425 : {
							items : 4,
							slideBy : 4
						},
						768 : {
							items : 6,
							slideBy : 6
						},
						1080 : {
							items : 10,
							slideBy : 10
						}
					}
				});
	});
</script>
</html>

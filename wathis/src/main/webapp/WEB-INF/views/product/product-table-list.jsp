<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="/xkfqkfcss/owl.carousel.css">
<link rel="stylesheet" href="/xkfqkfcss/owl.theme.default.css">
<link rel="stylesheet" href="/xkfqkfcss/product-table-list.css">
<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous"></script>
<script src="/xkfqkfjs/owl.carousel.js"></script>
<script src="https://kit.fontawesome.com/9a4319ba17.js"
	crossorigin="anonymous"></script>
<script src="/xkfqkfjs/product-table-list.js"></script>

<!-- 
    <link rel="stylesheet" href="/css/main.css">
    <script src="/js/main.js"></script>
 -->
</haed>
<body>
	<header>
		<%@ include file="/WEB-INF/views/include/nav.jspf"%>
		<!-- hero 삽입 -->
	</header>
	<!-- main내용삽입 -->
	<main>
		<section>
			<div class="product-table-container">
				<div class="product-table-item-title">
					<h1>전체보기</h1>
					<div class="product-table-btn">
						<div class="product-table-select-custom">
							<select name="" id="product-table-select-state">
								<option value="">전체</option>
								<option value="">펀딩중</option>
								<option value="">종료됨</option>
							</select> <label for="product-table-select-state"></label>
						</div>
						<div class="product-table-select-custom product-table-order">
							<select name="" id="product-table-select-order">
								<option value="">추천순</option>
								<option value="">인기순</option>
								<option value="">펀딩액순</option>
								<option value="">마감임박순</option>
								<option value="">최신순</option>
								<option value="">응원참여순</option>
							</select> <label for="product-table-select-order"></label>
						</div>
					</div>
				</div>
				<div class="product-table-items">
					<c:forEach begin="1" end="12">
						<div class="product-table-item">
							<a href="#">
								<div class="product-table-img-box">
									<img src="/xkfqkfimages/1.jpg" alt="">
								</div>
								<div class="product-table-text-box">
									<div>
										<span
											class=" product-table-list-l-green  product-table-list-l-space">공지</span>
										<span>ㆍ</span> <span
											class=" product-table-list-l-blue  product-table-list-l-space">알림</span>
									</div>
									<h3 class="product-table-box-title">리워드 서비스 펀딩금 반환정책 공지</h3>
									<p class="product-table-sub-title">와디즈 2020.01.17</p>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="product-table-container " style="padding-bottom: 7%;">
				<div class="product-table-page">
					<a href="#" class="product-table-double-arrow-btn"><img
						src="./xkfqkfimages/d-l.svg" alt=""></a> <a href="#"
						class="product-table-arrow-btn"><img
						src="./xkfqkfimages/l.svg" alt=""></a> <a href="#"
						class="product-table-page-btn on">1</a> <a href="#"
						class="product-table-page-btn">2</a> <a href="#"
						class="product-table-page-btn">3</a> <a href="#"
						class="product-table-page-btn">4</a> <a href="#"
						class="product-table-page-btn">5</a> <a href="#"
						class="product-table-arrow-btn"><img
						src="./xkfqkfimages/r.svg" alt=""></a> <a href="#"
						class="product-table-double-arrow-btn"><img
						src="./xkfqkfimages/d-r.svg" alt=""></a>
				</div>
				<form action="" method="post" name="" enctype="multipart/form-data">
					<div class="product-table-title-btn">
						<select name="title" id="title" class="product-table-title">
							<option value="">제목+내용</option>
							<option value="">제목</option>
							<option value="">내용</option>
						</select>
						<div class="product-table-btn-search">
							<input type="text">
							<button type="submit">검색</button>
						</div>
					</div>
				</form>
		</section>
		</div>
		</section>
	</main>
	<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
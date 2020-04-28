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
            <div class="container buy-payment-container max800">
	            <form action="" method="POST" name="product-payment">
	                    <div class="bg-main-alpha-color pt20 pb20 white pl5p pr5p mb30">
	                        <p>펀딩을 마치면 <span class="bold">결제 예약 상태</span>입니다. 종료일에 100% 이상 달성되었을 경우에만 결제 예정일에 결제가 됩니다</p>
	                    </div>
	                    <h1 class="large-title bold mb20">결제 예약</h1>
	                    <div class="product-payment-receipt p10 border-bottom">
	                        <h4 class="tiny-title main-color bold mb5">[마지막앵콜] 다리에도 베개가 필요해요 | 지친 내다리를 위한, 부끼싹!</h4>
	                        <!--제목-->
	                        <p class="tiny-content">229,000원 -> 229,000원 [20% 혜택] 솔로버드[블랙] 색상: 블랙</p>
	                        <!--{시중가} -> {판매가} [n%혜택] 옵션명 (옵션이름)-->
	                        <p class="txt-right tiny-content small-content bold">수량:1개 229,000원</p>
	                        <!--수량,금액-->
	                    </div>
	                    <div class="p10 border-bottom">
	                        <span class="bold">추가 후원금</span>	
	                        <span class="float-right">0원</span>
	                        <!--추가 후원금-->
	                        <p class="clear-fix"></p>
	                    </div>
	                    <div class="p10 border-bottom-dot">
	                        <span class="bold">배송비</span>	
	                        <span class="float-right">3,000원</span>
	                        <!--배송비-->
	                        <p class="clear-fix"></p>
	                    </div>
	                    <div class="p10 bg-gray-dark">
	                        <span class="bold main-color">최종결제금액</span>	
	                        <span class="float-right main-color large-content">232,000원</span>
	                    </div>
		                <div class="mt50">
		                	<div class="flex-box flex-j-space flex-wrap">
		                		<div class="w-49p col-md-12">
		                			<h1 class="large-title bold mb20">펀딩 서포터</h1>
		                			<div class="border-round-5 p10 bg-gray">
		                				<div class="mb10">
			                				<p class="bold mb5">이름</p>
			                				<p>홍길동</p>
		                				</div>
		                				<div class="mb10">
		                					<p class="bold mb5">이메일</p>
		                					<p>admin@admin.com</p>
		                				</div>
		                				<div>
			                				<p class="bold mb5">휴대폰번호</p>
			                				<p class="mb5"><input type="tel" name="phone" class="input-stan " placeholder="숫자만 입력" /></p>
			                				<input type="checkbox" name="info-check" value="1" id="info-check" checked />
			                				<label for="info-check">(필수) 펀딩 진행에 대한 새소식 및 결제 관련 안내를 받습니다.</label>
		                				</div>
		                			</div>
		                		</div>
		                		<div class="dis-labtop mb20">&nbsp;</div>
		                		<div class="w-49p col-md-12">
		                			<h1 class="large-title bold pb20 mb20 border-bottom">리워드 배송지</h1>
		                			<div>
			                			<div>	
			                				<span>
				                				<input type="radio" name="deleverChk" value="0" id="deleverChk" checked />
				                				<label for="deleverChk">
				                					기본 배송지
				                				</label>
			                				</span>
			                				<span class="ml5">
				                				<input type="radio" name="deleverChk" value="0" id="deleverChk" />
				                				<label for="deleverChk">
				                					신규 배송지
				                				</label>
			                				</span>
			                				<span class="ml5">
			                					<button type="button" class="btn-stan"  data-target=".delevery-modal" onclick="targetActive(this)">배송지 목록</button>
			                				</span>
		                				</div>
		                				<div>
		                					<span class="gray-dark">최근: </span>
		                					<span class="ml5">
				                				<input type="radio" name="deleverChk" value="100" id="deleverChk100" />
				                				<!-- member_addr id 값 넣어서 ajax로 받을 꺼야 -->
				                				<label for="deleverChk100">
				                					우리집
				                				</label>
			                				</span>
		                					<span class="ml5">
				                				<input type="radio" name="deleverChk" value="101" id="deleverChk101" />
				                				<!-- member_addr id 값 넣어서 ajax로 받을 꺼야 -->
				                				<label for="deleverChk101">
				                					너희집
				                				</label>
			                				</span>
		                					<span class="ml5">
				                				<input type="radio" name="deleverChk" value="102" id="deleverChk102" />
				                				<!-- member_addr id 값 넣어서 ajax로 받을 꺼야 -->
				                				<label for="deleverChk102">
				                					그집
				                				</label>
			                				</span>
		                				</div>
		                			</div>
		                		</div>
		                	</div>
		                </div>
	            </form>
           	</div>
        </section>
    </main>
    <div class="delevery-modal modal-stan">
    	<div class="modal-content pt30 pb30 pl20 pr20 max-800 container">
    		<div class="modal-close modal-btn-close" data-target=".delevery-modal" onclick="targetActive(this)"></div>
    		<h1 class="title main-color mb20 txt-center">
    			배송지 목록
    		</h1>
    		<table class="table-stan tiny-content">
    			<thead>
    				<tr>
	    				<th>
	    					배송지
	    				</th>
	    				<th>
	    					주소
	    				</th>
	    				<th>
	    					연락처
	    				</th>
	    				<th>
	    					선택
	    				</th>
	    			</tr>
    			</thead>
    			<tbody>
	    			<tr>
	    				<td class="txt-center">
	    					<p>집</p><!-- 배송지 이름 -->
	    					<p>안호수</p><!-- 수령인 이름 -->
	    					<p>[기본배송지]</p><!-- 기본 배송지만 띄움 -->
	    				</td>
	    				<td>
	    					<p>41324</p>
	    					<!-- 우편번호 -->
	    					<p>부산광역시 연제구 자이언츠대로 36-9(거제동, XXX아파트)</p>
	    					<!-- 기본주소 -->
	    					<p>0동 호0000</p>
	    					<!-- 상세주소 -->
	    				</td>
	    				<td class="txt-center">
	    					<p>010-1234-1234</p>
	    				</td>
	    				<td class="txt-center">
	    					<div><button class="btn-stan btn-main" type="button">선택</button></div>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td class="txt-center">
	    					<p>집</p><!-- 배송지 이름 -->
	    					<p>안호수</p><!-- 수령인 이름 -->
	    				</td>
	    				<td>
	    					<p>41324</p>
	    					<!-- 우편번호 -->
	    					<p>부산광역시 연제구 자이언츠대로 36-9(거제동, XXX아파트)</p>
	    					<!-- 기본주소 -->
	    					<p>0동 호0000</p>
	    					<!-- 상세주소 -->
	    				</td>
	    				<td class="txt-center">
	    					<p>010-1234-1234</p>
	    				</td>
	    				<td class="txt-center">
	    					<div class="mb5"><button class="btn-stan btn-main" type="button">선택</button></div>
	    				</td>
	    			</tr>
    			</tbody>
    		</table>
    	</div>
    </div>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
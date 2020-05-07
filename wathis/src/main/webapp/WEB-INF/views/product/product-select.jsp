<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
    <link rel="stylesheet" href="/css/product-select.css">
    <script src="/js/product-select.js"></script>
</haed>
<body>
	<header>
	<%@ include file="/WEB-INF/views/include/nav.jspf"%>
	<!-- hero 삽입 --><!--슬라이드 이미지 1개일때는 .hero.item-only추가-->
	    <div class="hero item-only">
	        <div class="owl-carousel owl-hero owl-theme">
	            <div class="item">
	                <a href="#">
	                    <div class="bg-hero-cover">
                            <!--메인 이미지-->
	                        <div class="bg-img bg-main" style="background-image: url(/images/main/main_1.jpg);"></div>
	                        <div class="container bg-txt">
                                <!--상품 분류-->
	                            <div class="small-title">홈리빙</div>
                                <!--상품 제목-->
	                            <h1 class="title mb20">[마지막앵콜] 다리에도 베개가 필요해요 | 지친 내다리를 위한, 부끼싹!</h1>
                                <!--상품 소제목-->
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
            <form action="/product/product-payment" method="POST" name="product-select">
                <div class="container buy-select-container max800">
                    <div class="bg-main-alpha-color pt20 pb20 white pl5p pr5p mb30">
                        <p>펀딩을 마치면 <span class="bold">결제 예약 상태</span>입니다. 종료일에 100% 이상 달성되었을 경우에만 결제 예정일에 결제가 됩니다</p>
                    </div>
                    <h1 class="large-title bold">리워드 선택</h1>
                    <p class="small-content mb20">펀딩해주시는 금액에 따라 감사의 의미로 리워드를 제공해 드립니다.</p>
                    <div class="buy-select-items">
                        <!--
                            checkbox
                            필수항목
                            class- buy-item-chk -이거 있어야 스크립트에서 체크 가능,dis-none-> 디자인요소, 안보이게 처리
                            data-type - option - 옵션있음,no-option - 옵션없음 ,none -재고 없음
                            value - 상품옵션 id
                            id - buy-item-상품옵션아이디 -> 옵션, 수량체크시에 사용 + label 사용
                            (옵션->buy-item-상품옵션아이디-option , 수량->buy-item-상품옵션아이디-count)
                            data-price - 옵션 가격 -> 숫자만 입력
                            checked - request[id] 값이 id 값이랑 맞으면 체크 
                        -->
                        <!--
                            input-count-change
                            숫자 up/down사용
                            data-function-down -> -1 - up ->+1
                            data-target -> 올릴 input 의 selectQuery 값
                        -->
                        <!--선택형-->
                        <input type="checkbox" class="dis-none buy-item-chk" data-type="option" name="buy-item[]" value="100" id="buy-item-100" data-price="229000" checked>
                        <div class="buy-select-item gray-round-box mb20">
                            <label for="buy-item-100">
                                <div class="pt20 pb20 pr5p pl5p">
                                    <!--{금액} 원 펀딩-->
                                    <p class="sub-title bold mb5">229,000원 펀딩</p>
                                    <!--{옵션이름} 현제 n 개 남음!-->
                                    <p class="mb5"><span class="small-title bold">솔로버드[블랙]</span><span class="ml10 tiny-content bg-main-alpha-color pl5 pr5">현재 687개 남음 !</span></p>
                                    <!--{옵션구성상세}-->
                                    <p class="gray tiny-content mb5 bold">로보백 1 세트</p>
                                    <!--배송비 {배송비} |  리워드 발송 시작일:{발송 예정일} 예정-->
                                    <p class="tiny-content bold">배송비 3,000원 | 리워드 발송 시작일:2020년 05월 말(21~말일) 예정</p>
                                    <div class="buy-select-option mt20">
                                        <div class="flex-box flex-j-space flex-wrap">
                                            <div class="w-30p col-sm-12">
                                                <p class="bold mb5">수량</p>
                                                <div class="flex-box flex-a-center">
                                                    <button type="button" class="input-count-change" data-function="down" data-target="[name=buy-item-100-count]"><i class="fas fa-chevron-circle-down"></i></button>
                                                    <input type="text" name="buy-item-100-count" class="isNumeric ml5 mr5 input-stan input-max-chk" data-max="687" value="1">
                                                    <button type="button" class="input-count-change" data-function="up" data-target="[name=buy-item-100-count]"><i class="fas fa-chevron-circle-up"></i></button>
                                                </div>
                                            </div>
                                            <div class="w-60p col-sm-12">
                                                <p class="bold mb5">옵션</p>
                                                <select class="select-stan" name="buy-item-100-option">
                                                    <option value="">선택해주세요</option>
                                                    <!--
                                                        {옵션이름} -> 구분자는 |로 해서 그대로 넣어라
                                                    -->
                                                    <c:forTokens var="item" items="블랙|레드|그린" delims="|">
                                                        <option value="${item}">${item}</option>
                                                    </c:forTokens> 
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!--작성형-->
                        <input type="checkbox" class="dis-none buy-item-chk" data-type="option" name="buy-item[]" value="100" id="buy-item-101" data-price="229000">
                        <div class="buy-select-item gray-round-box mb20">
                            <label for="buy-item-101">
                                <div class="pt20 pb20 pr5p pl5p">
                                    <p class="sub-title bold mb5">229,000원 펀딩</p>
                                    <p class="mb5"><span class="small-title bold">솔로버드[블랙]</span><span class="ml10 tiny-content bg-main-alpha-color pl5 pr5">현재 687개 남음 !</span></p>
                                    <p class="gray tiny-content mb5 bold">로보백 1 세트</p>
                                    <p class="tiny-content bold">배송비 3,000원 | 리워드 발송 시작일:2020년 05월 말(21~말일) 예정</p>
                                    <div class="buy-select-option mt20">
                                        <div class="flex-box flex-j-space flex-wrap">
                                            <div class="w-30p col-sm-12">
                                                <p class="bold mb5">수량</p>
                                                <div class="flex-box flex-a-center">
                                                    <button type="button" class="input-count-change" data-function="down" data-target="[name=buy-item-101-count]"><i class="fas fa-chevron-circle-down"></i></button>
                                                    <input type="text" name="buy-item-101-count" class="isNumeric ml5 mr5 input-stan input-max-chk" data-max="687" value="1">
                                                    <button type="button" class="input-count-change" data-function="up" data-target="[name=buy-item-101-count]"><i class="fas fa-chevron-circle-up"></i></button>
                                                </div>
                                                
                                            </div>
                                            <div class="w-60p col-sm-12">
                                                <p class="bold mb5">옵션</p>
                                                <p class="tiny-content gray bold mb10"> 색상을 입력해 주세요(ex. 3개 선택시 '블랙2/레드1')</p>
                                                <input type="text" class="input-stan w-100p" name="buy-item-101-option" placeholder="옵션을 입력해주세요">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!--옵션없음-->
                        <input type="checkbox" class="dis-none buy-item-chk" data-type="no-option" name="buy-item[]" value="102" id="buy-item-102" data-price="229000">
                        <div class="buy-select-item gray-round-box mb20">
                            <label for="buy-item-102">
                                <div class="pt20 pb20 pr5p pl5p">
                                    <p class="sub-title bold mb5">229,000원 펀딩</p>
                                    <p class="mb5"><span class="small-title bold">솔로버드[블랙]</span><span class="ml10 tiny-content bg-main-alpha-color pl5 pr5">현재 687개 남음 !</span></p>
                                    <p class="gray tiny-content mb5 bold">로보백 1 세트</p>
                                    <p class="tiny-content bold">배송비 3,000원 | 리워드 발송 시작일:2020년 05월 말(21~말일) 예정</p>
                                    <div class="buy-select-option mt20">
                                        <div class="flex-box flex-j-space flex-wrap">
                                            <div class="w-30p col-sm-12">
                                                <p class="bold mb5">수량</p>
                                                <div class="flex-box flex-a-center">
                                                    <button type="button" class="input-count-change" data-function="down" data-target="[name=buy-item-102-count]"><i class="fas fa-chevron-circle-down"></i></button>
                                                    <input type="text" name="buy-item-102-count" class="isNumeric ml5 mr5 input-stan input-max-chk" data-max="687" value="1">
                                                    <button type="button" class="input-count-change" data-function="up" data-target="[name=buy-item-102-count]"><i class="fas fa-chevron-circle-up"></i></button>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!--재고 없음-->
                        <input type="checkbox" class="dis-none buy-item-chk" data-type="none" name="buy-item[]" value="103" id="buy-item-103" disabled data-price="229000">
                        <div class="buy-select-item gray-round-box mb20 off">
                            <label for="buy-item-103">
                                <div class="pt20 pb20 pr5p pl5p">
                                    <p class="sub-title bold mb5">229,000원 펀딩</p>
                                    <p class="mb5"><span class="small-title bold">솔로버드[블랙]</span><span class="ml10 tiny-content bg-main-alpha-color pl5 pr5">현재 687개 남음 !</span></p>
                                    <p class="gray tiny-content mb5 bold">로보백 1 세트</p>
                                    <p class="tiny-content bold">배송비 3,000원 | 리워드 발송 시작일:2020년 05월 말(21~말일) 예정</p>
                                    <div class="buy-select-option mt20">
                                        <div class="flex-box flex-j-space flex-wrap">
                                            <div class="w-30p col-sm-12">
                                                <p class="bold mb5">수량</p>
                                                <div class="flex-box flex-a-center">
                                                    <button type="button" class="input-count-change" data-function="down" data-target="[name=buy-item-103-count]"><i class="fas fa-chevron-circle-down"></i></button>
                                                    <input type="text" name="buy-item-103-count" class="isNumeric ml5 mr5 input-stan input-max-chk" data-max="687" value="1">
                                                    <button type="button" class="input-count-change" data-function="up" data-target="[name=buy-item-103-count]"><i class="fas fa-chevron-circle-up"></i></button>
                                                </div>
                                                
                                            </div>
                                            <div class="w-60p col-sm-12">
                                                <p class="bold mb5">옵션</p>
                                                <select name="buy-item-103-option">
                                                    <option value="">선택해주세요</option>
                                                    <option value="">블랙</option>
                                                    <option value="">레드</option>
                                                    <option value="">그린</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <div class="mb20">
                            <p class="sub-title bold mb20">후원금 더하기(선택)</p>
                            <p class="gray-dark tiny-content mb5">후원금을 더하여 펀딩할 수 있습니다. 추가 후원금을 입력하시겠습니까?</p>
                            <p class="small-content">
                                <div class="input-inner-label">
                                    <input type="text" name="donation" class="isNumeric input-stan" id="add-donation"><label for="add-donation">원</label>
                                </div>
                            </p>
                        </div>
                        <div class="mb20">
                            <p class="small-content">
                                <span class="bold">
                                <!--상품 이름-->
                                [마지막앵콜] 다리에도 베개가 필요해요 | 지친 내다리를 위한, 부끼싹!
                                </span>
                                에 
                                <span class="total-price main-color bold">0</span>원을 후원합니다. 
                            </p>
                        </div>
                        <div class="buy-select-btn-wrap">
                            <div class="w-200 m-0a"><button type="button" class="large-title bold product-select-submit btn-stan btn-main w-100p">결제하기 <i class="fas fa-angle-right"></i></button></div>
                        </div>
                    </div>
                </div>
            </form>
        </section>
    </main>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
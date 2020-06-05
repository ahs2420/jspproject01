<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<jsp:useBean id="HtmlSpecialChar" class="com.krahs123.wathis.util.HtmlSpecialChar"></jsp:useBean>
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
                    <div class="bg-hero-cover">
                        <!--메인 이미지-->
                        <div class="bg-img bg-main" style="background-image: url(${pvo.img_upload_dir}${pvo.main_img});"></div>
                        <div class="container bg-txt">
                            <!--상품 분류-->
                            <div class="small-title">${cate}</div>
                            <!--상품 제목-->
                            <h1 class="title mb20">${pvo.title}</h1>
                            <!--상품 소제목-->
                            <div class="sub-title"></div>
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
            <form action="/product/product-payment" method="POST" name="product-select">
                <input type="hidden" name="id" value="${pvo.id}" />
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
                        <c:forEach items="${proOptList}" var="pvoOpt" varStatus="vs">
                            <input type="checkbox" class="dis-none buy-item-chk" 
                                <c:choose>
                                    <c:when test="${pvoOpt.stock eq '0'}">
                                        data-type="none" 
                                    </c:when>
                                    <c:when test="${pvoOpt.option_type ne '0'}">
                                        data-type="option" 
                                    </c:when>
                                    <c:otherwise>
                                        data-type="no-option" 
                                    </c:otherwise>
                                </c:choose>
                                name="buy-item[]" value="${pvoOpt.id}" id="buy-item-${vs.index}" data-price="${pvoOpt.price}" <c:if test="${option_id eq pvoOpt.id}">checked</c:if>>
                            <div class="buy-select-item gray-round-box mb20 <c:if test="${pvoOpt.stock eq '0'}">off</c:if>">
                                <label for="buy-item-${vs.index}">
                                    <div class="pt20 pb20 pr5p pl5p">
                                        <!--{금액} 원 펀딩-->
                                        <p class="sub-title bold mb5"><fmt:formatNumber value="${pvoOpt.price}" pattern="#,##0"></fmt:formatNumber> 원 펀딩</p>
                                        <!--{옵션이름} 현제 n 개 남음!-->
                                        <p class="mb5"><span class="small-title bold">${pvoOpt.title}</span><span class="ml10 tiny-content bg-main-alpha-color pl5 pr5">현재 <fmt:formatNumber value="${pvoOpt.stock}" pattern="#,##0"></fmt:formatNumber> 개 남음 !</span></p>
                                        <!--{옵션구성상세}-->
                                        <p class="gray tiny-content mb5 bold">${pvoOpt.title}</p>
                                        <!--배송비 {배송비} |  리워드 발송 시작일:{발송 예정일} 예정-->
                                            <p class="tiny-content bold">
                                                <c:if test="${pvoOpt.delevery_chk eq '1'}">
                                                    배송비 <fmt:formatNumber value="${pvoOpt.delevery_price}" pattern="#,##0"></fmt:formatNumber>원 | 
                                                </c:if>
                                                리워드 발송 시작일: ${pvoOpt.delivery_date} 예정</p>
                                        <div class="buy-select-option mt20">
                                            <div class="flex-box flex-j-space flex-wrap">
                                                <div class="w-30p col-sm-12">
                                                    <p class="bold mb5">수량</p>
                                                    <div class="flex-box flex-a-center">
                                                        <button type="button" class="input-count-change" data-function="down" data-target="#buy-item-${vs.index}-count"><i class="fas fa-chevron-circle-down"></i></button>
                                                        <input type="text" name="buy-item-count[]" id="buy-item-${vs.index}-count" class="isNumeric ml5 mr5 input-stan input-max-chk" data-max="${pvoOpt.stock}" value="1">
                                                        <button type="button" class="input-count-change" data-function="up" data-target="#buy-item-${vs.index}-count"><i class="fas fa-chevron-circle-up"></i></button>
                                                    </div>
                                                </div>
                                                <div class="w-60p col-sm-12">
                                                    <c:if test="${pvoOpt.option_type eq '0'}">
                                                        <input type="hidden" class="input-stan w-100p" name="buy-item-option[]"  id="buy-item-${vs.index}-option" placeholder="옵션을 입력해주세요">
                                                    </c:if>
                                                    <c:if test="${pvoOpt.option_type ne '0'}">
                                                        <p class="bold mb5">옵션</p>
                                                        
                                                        <c:if test="${pvoOpt.option_type eq '1'}">
                                                            <select class="select-stan" name="buy-item-option[]" id="buy-item-${vs.index}-option">
                                                                <option value="">선택해주세요</option>
                                                                <!--
                                                                    {옵션이름} -> 구분자는 |로 해서 그대로 넣어라
                                                                -->
                                                                <c:forTokens items="${HtmlSpecialChar.encodeEnter(pvoOpt.option_kind) }" var="item" delims="|">
                                                                    <option value="${item}">${item}</option>
                                                                </c:forTokens> 
                                                            </select>
                                                        </c:if>
                                                        <c:if test="${pvoOpt.option_type eq '2'}">
                                                            <p class="tiny-content gray bold mb10"> ${pvoOpt.option_kind }</p>
                                                            <input type="text" class="input-stan w-100p" name="buy-item-option[]"  id="buy-item-${vs.index}-option" placeholder="옵션을 입력해주세요">
                                                        </c:if>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </label>
                            </div>
                        </c:forEach>
                        
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
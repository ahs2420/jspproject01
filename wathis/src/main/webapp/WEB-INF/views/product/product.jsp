<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
    <link rel="stylesheet" href="/css/product.css">
    <script src="/js/product.js"></script>
</haed>
<body>
<header>
<%@ include file="/WEB-INF/views/include/nav.jspf"%>
<!--슬라이드 이미지 1개일때는 .hero.item-only추가-->
        <div class="hero item-only">
            <div class="owl-carousel owl-hero owl-theme">
                <div class="item">
                    <div class="bg-hero-cover">
                        <!--{상품이미지}-->
                        <div class="bg-img bg-main" style="background-image: url(/images/main/main_1.jpg);"></div>
                        <div class="container bg-txt">
                            <!--{상품분류}-->
                            <div class="small-title">홈리빙</div>
                            <!--{상품제목}-->
                            <h1 class="title mb20">[마지막앵콜] 다리에도 베개가 필요해요 | 지친 내다리를 위한, 부끼싹!</h1>
                            <!--{상품소제목}-->
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
        <div class="product-nav">
            <ul class="product-menu flex-box flex-j-center">
                <li class="bold on"><a class="product-view-btn" href="#product-main" data-target=".product-items">스토리</a></li>
                <li class="bold"><a class="product-view-btn" href="#product-info" data-target=".product-items">펀딩 안내</a></li>
                <li class="bold"><a class="product-view-btn" href="#product-news" data-items="3" data-target=".product-items">새소식</a></li>
                <li class="bold"><a class="product-view-btn" href="#product-community" data-items="3" data-target=".product-items">커뮤니티</a></li>
                <!-- <li><a href="#">서포터</a></li> -->
            </ul>
        </div>
</header>
<!-- main내용삽입 -->
<main>
        <section>
            <div class="container max1000 flex-box flex-j-space flex-wrap">
                <!--스토리-->
                <article class="product-items product-main on" id="product-main">
                    <!--slide이미지-->
                    <div class="owl-carousel owl-theme product-add-img mb20">
                        <!--{상품 추가이미지}-->
                        <c:forEach begin="1" end="3">
                            <div class="item">
                                <img src="/images/product/item_1.jpg">
                            </div>
                        </c:forEach>
                    </div>
                    <!--slide 끝-->
                    <!--sub title-->
                    <div class="small-title bold mb20">
                        <!--{상품 설명}-->
                        누적 9.5억 펀딩 "진짜 로봇" 물걸레 로봇청소기, 스페셜 블랙 에디션으로 돌아왔습니다! 청소할 시간이 그렇게 많으면, 넌 놀기나 해! 똑똑한 진짜 로봇청소기 지금 시작합니다!
                    </div>
                    <!--sub title끝-->
                    <div class="product-green-box mb20">
                        <div class="main-color mb20">
                            <span class="bold">목표금액</span> 10,000,000원&nbsp;&nbsp;<span class="bold">펀딩기간</span> 2020.03.26~2020.04.20
                            <!-- <span class="bold">목표금액</span> {금액}원&nbsp;&nbsp;<span class="bold">펀딩기간</span> {시작일}~{마감일} -->
                        </div>
                        <p>100% 이상 모이면 펀딩이 성공되는 프로젝트</p>
                        <p>이 프로젝트는 펀딩 마감일까지 목표 금액이 100% 모이지 않으면 결제가 진행되지 않습니다.</p>
                    </div>
                    <div class="sub-title bold mb20 border-bottom"> 
                        프로젝트 스토리
                    </div>
                    <div class="product-story">
                        <!--{상품 상세설명(스토리)}-->
                        <img src="/images/product/product-1.jpg" />
                    </div>
                </article>
                <!--스토리끝-->
                <!--펀딩안내-->
                <article class="product-items product-info" id="product-info">
                    <div class="border-bottom pb20 mb20">
                        <p class="sub-title bold mb20">이 프로젝트의 정보 및 정책을 반드시 확인하세요.</p>
                        <p class="small-content bold mb10">
                            펀딩 취소 및 리워드 옵션 변경, 배송지 변경 안내
                        </p> 
                        <p class="tiny-content">
                            펀딩 결제는 예약 상태로 유지되다가, 펀딩 마감일 다음 영업일 2020.04.20 17시에 모두 함께 진행됩니다. 
                            <!-- 펀딩 결제는 예약 상태로 유지되다가, 펀딩 마감일 다음 영업일 {마감일} 17시에 모두 함께 진행됩니다.  -->
                            결제 정보 변경은 결제가 진행되기 전까지 언제나 가능합니다. 참여한 펀딩 정보 변경은 펀딩 내역에서 진행해주세요. 
                            마감일 이후에는 펀딩에 대한 리워드 제작 및 배송이 시작되어, 취소와 더불어 배송지 및 리워드 옵션 변경은 2020.04.19 이후로는 불가합니다.
                            <!-- 마감일 이후에는 펀딩에 대한 리워드 제작 및 배송이 시작되어, 취소와 더불어 배송지 및 리워드 옵션 변경은 {마감일}-1 이후로는 불가합니다.  -->
                        </p>
                    </div>
                    <div class="border-bottom pb20 mb20">
                        <p class="small-content bold mb10">리워드 정보 제공 고시</p>
                        <div>
                            <!--{상품 정보 제공고시}-->
                            <div class="mb10">
                                <span class="tiny-title bold mr10">리워드 상세정보</span>
                                <span class="tiny-title">소형전자(MP3,전자사전 등)</span>
                            </div>
                            <table class="mobile-div tiny-content product-reward-info-table">
                                <tr>
                                    <th>품명 및 모델명</td>
                                    <td>파워로버 모바일 점프스타터 PR-20NOVA</td>
                                </tr>
                                <tr>
                                    <th>KC인증 필 유무</td>
                                    <td>KC인증 필 (인증번호: XU102114-20001A)</td>
                                </tr>
                                <tr>
                                    <th>정격전압, 소비전력</td>
                                    <td>12V / 37.8Wh</td>
                                </tr>
                                <tr>
                                    <th>동일모델의 출시년월</td>
                                    <td>2020년 2월</td>
                                </tr>
                                <tr>
                                    <th>제조자(수입자)</td>
                                    <td>루나커머스</td>
                                </tr>
                                <tr>
                                    <th>제조국</td>
                                    <td>중국</td>
                                </tr>
                                <tr>
                                    <th>크기,무게</td>
                                    <td>140mm(L) X 75mm(W) X 20mm(H)</td>
                                </tr>
                                <tr>
                                    <th>주요 사양</td>
                                    <td>Li-Po 9000mAh / 37.8Wh</td>
                                </tr>
                                <tr>
                                    <th>품질보증기준</td>
                                    <td>관련법 및 소비자분쟁해결 기준에 따름</td>
                                </tr>
                                <tr>
                                    <th>A/S 책임자와 전화번호</td>
                                    <td>루나커머스 고객지원센터 (0507-1324-3166)</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="border-bottom pb20 mb20">
                        <div class="mb20">
                            <p class="small-content bold mb10">펀딩금 반환 안내</p>
                            <p class="tiny-content">
                                펀딩 종료 후 아래 정책에 따라 펀딩금 반환 신청을 할 수 있습니다. 펀딩금 반환은 서포터가 펀딩한 카드 결제 건을 취소하는 방식으로 이뤄집니다.
                                펀딩금 반환은 <a class="main-color" href="#" target="_blank">펀딩금 반환 문의처</a>에서 신청하실 수 있습니다.
                            </p>
                        </div>
                        <div class="mb20">
                            <p class="small-title bold mb10">1) 리워드가 지연될 경우</p>
                            <p class="tiny-content mb10">
                                <span class="bold">메이커가 최대 발송 지연 가능일까지 리워드를 발송하지 않을 경우</span>, 서포터는 펀딩금 반환 신청을 할 수 있습니다. 최대 발송 지연 가능일은 리워드 발송 시작의 마지막 날로부터 90일 이후 입니다.
                            </p>
                            <p class="tiny-content mb10">(예) 리워드 발송 시작일: 2020년 01월 초(1~10일)</p>
                            <p class="tiny-content">→ 리워드 최대 발송 지연일: 2020년 04월 08일</p>
                        </div>
                        
                        <div class="mb20">
                            <p class="small-title bold mb10">2) 리워드에 하자가 있을 경우</p>
                            <p class="tiny-content mb20">
                                <span class="bold">서포터가 수령한 리워드가 아래 어느 하나에 해당할 경우</span>, 수령일로부터 7일 이내에 펀딩금 반환 신청을 할 수 있습니다. 
                                이때 메이커는 하자 판단을 위한 증빙자료, 리워드 반송을 서포터에게 요청할 수 있습니다.
                            </p>
                            <p class="tiny-content mb10 bar-indent">리워드의 유통 및 제작에 법적으로 문제가 있는 경우</p>
                            <p class="tiny-content mb10 bar-indent">리워드의 내용이 표시/광고 내용과 현저하게 상이한 경우</p>
                            <p class="tiny-content mb10 bar-indent">정상적인 사용상태에서 리워드의 기능/성능상 오작동이 발생되는 경우</p>
                            <p class="tiny-content mb10 bar-indent">리워드가 미작동될 경우</p>
                            <p class="tiny-content mb20 bar-indent">주요 성분 미기재로 인해 서포터에게 중대한 신체 피해를 입힌 경우</p>
                            <p class="tiny-content bold mb20">단, 아래 어느 하나에 해당될 경우 펀딩금 반환은 불가합니다.</p>
                            <p class="tiny-content mb10 bar-indent">메이커가 프로젝트 페이지 내에 명시적으로 고지한 하자 불인정 사유에 해당하는 경우</p>
                            <p class="tiny-content mb10">(예) 공장 제작 과정상 벌어짐 방지를 위해 봉제되어 제공되는 포켓은 하자 사유가 되지 않습니다.</p>
                            <p class="tiny-content mb10 bar-indent">서포터의 귀책 사유로 리워드의 일부 혹은 전체가 분실/파손/고장/오염/훼손이 발생된 경우</p>
                            <p class="tiny-content mb10 bar-indent">모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 다른 경우</p>
                            <p class="tiny-content mb10 bar-indent">공연, 디지털컨텐츠, 여행 패키지 상품, 무형 서비스 및 컨텐츠의 제공이 완료되었을 경우</p>
                            <p class="tiny-content mb20 bar-indent">신선식품 혹은 정기구독 서비스일 경우</p>
                            <p class="tiny-content mb20 bar-indent">서포터의 제품 숙지 미숙으로 인해 문제가 발생했을 경우</p>
                        </div>
                        <div>
                            <p class="small-title bold mb20">3) 기타 주의 사항</p>
                            <p class="tiny-content mb10 bar-indent">크라우드펀딩의 특성상 프로젝트 종료 후 서포터의 단순변심으로 인한 펀딩금 반환은 불가합니다.</p>
                            <p class="tiny-content mb10 bar-indent">회사는 메이커와 상호 협의 하에 프로젝트를 취소할 수 있으며, 펀딩 종료 후 프로젝트가 취소될 경우에는 펀딩금이 반환됩니다.</p>
                            <p class="tiny-content mb10 bar-indent">하자가 있는 경우, 리워드 반송을 위한 배송비는 메이커가 부담하여야 하고 하자가 없는 경우에는 리워드 반송 및 재반송에 대한 배송비를 서포터에게 청구될 수 있습니다.</p>
                        </div>
                    </div>
                </article>
                <!--펀딩안내끝-->
                <!--새소식-->
                <article class="product-items product-news" id="product-news">
                    <div class="product-news">
                        <div class="product-news-items">
                            <!--새소식 아이템-->
                            <c:forEach begin="1" end="5" var="i">
                                <div class="product-news-item border-bottom">
                                    <button class="w-100p" data-target=".product-news-content${i}" onclick="slideToggle(this)">
                                        <div class="flex-box flex-a-flexend flex-j-space pb20 pt20">
                                            <div>
                                                <p class="mb10">
                                                    <span class="main-color small-content v-align-middle">#${i}</span>
                                                    <!--{순서}-->
                                                    <span class="label-main-color tiny-content v-align-middle">이벤트</span>
                                                    <!--{카테고리}-->
                                                </p>
                                                <p class="gray-dark">
                                                    <span class="small-content">[이벤트] eufy 핸디형청소기 + 로봇청소기 동시 랭킹</span> 
                                                    <!--{제목}-->
                                                    <span class="tiny-content">| 2020.03.27</span>
                                                    <!--{작성일}-->
                                                </p>
                                            </div>
                                            <i class="large-content fas fa-chevron-down transition" aria-hidden="true"></i>
                                        </div>
                                    </button>
                                    <div class="dis-none pt20 product-news-content${i} pb20 pt20 pl3p pr3p">
                                        <!--새소식 내용-->
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo ipsum voluptates et, libero animi officia dolores, temporibus quod molestias repudiandae odio assumenda magni a quaerat optio laudantium iste quo itaque impedit quidem modi alias. Eligendi sunt obcaecati voluptatibus, hic voluptas quia ab architecto sed perferendis ullam nemo molestiae labore est doloremque. Nihil, ipsam recusandae, cupiditate quod accusamus labore itaque natus reiciendis consequatur aperiam eum eligendi iste expedita obcaecati? Reprehenderit consequatur ab iusto maxime sed quia quam animi fugiat in, aut veritatis ratione. Vero deserunt laborum velit veniam sed ab, unde accusantium totam et quos aut suscipit tempore autem pariatur voluptas.
                                    </div>
                                </div>
                            </c:forEach> 
                        </div>
                    </div>
                </article>
                <!--새소식끝-->
                <!--커뮤니티-->
                <article class="product-items product-community" id="product-community">
                    <div class="stan-title mb30">
                        <p class="title bold mb10 main-color">서포터님!</p>
                        <p>처음 <span class="bold">메이커의 열정과 가치에 공감</span>해주셨듯, 마지막까지 <span class="bold">메이커를 응원</span>해주세요.</p>
                    </div>
                    <p class="mb5 tiny-content">와디즈에서 펀딩하는 방법이 궁금하다면?</p>
                    <p class="large-title bold">FAQ</p>
                    <div class="product-faq-items">
                        <div class="product-faq-item pt20 border-bottom">
                            <button class="w-100p" data-target=".product-faq-content7" onclick="slideToggle(this)">
                                <div class="flex-box flex-a-flexend flex-j-space pb20">
                                    <span class="tiny-content">펀딩 했어요. 결제는 언제, 어떻게 진행되나요?</span> 
                                    <i class="fas fa-chevron-down transition" aria-hidden="true"></i>
                                </div>
                            </button>
                            <div class="dis-none pt20 product-faq-content7 bg-gray p20 tiny-content ">
                                펀딩기간 중에는 결제 예약 상태이며, 프로젝트 종료 후 다음 1영업일 5시에 결제가 진행됩니다. 이때, 결제 실패된 건에 한하여 종료일+4영업일동안 매일 5시에 결제가 진행됩니다. (펀딩 종료일+4영업일 오후 5시 4차 최종 결제 진행)
                            </div>
                        </div>
                        <div class="product-faq-item pt20 border-bottom">
                            <button class="w-100p" data-target=".product-faq-content6" onclick="slideToggle(this)">
                                <div class="flex-box flex-a-flexend flex-j-space pb20">
                                    <span class="tiny-content">결제 실패 알림을 받았어요. 어떻게 해야하나요?</span> 
                                    <i class="fas fa-chevron-down transition" aria-hidden="true"></i>
                                </div>
                            </button>
                            <div class="dis-none pt20 product-faq-content6 bg-gray p20 tiny-content ">
                                카드 잔고 부족이나 한도 초과, 거래 정지된 카드인 경우 결제가 진행되지 않습니다. 최종 결제일 16시 30분 전까지 다른 카드로 결제 정보를 변경해주세요. 최종 결제일까지 매 영업일 5시마다 결제가 진행됩니다.
                                <p class="bar-indent">결제정보 변경은 로그인 - [나의 리워드] - [펀딩 내역] - [참여 프로젝트]에서 결제 정보를 변경할 수 있습니다.</p>
                                <p class="bar-indent">반드시 참여한 프로젝트 펀딩 상세 내역 페이지에서 결제 정보를 변경해주세요. 나의 리워드 - 간편결제 정보 변경하면 해당 카드로 결제가 진행되지 않습니다!</p>
                            </div>
                        </div>
                        <div class="product-faq-item pt20 border-bottom">
                            <button class="w-100p" data-target=".product-faq-content5" onclick="slideToggle(this)">
                                <div class="flex-box flex-a-flexend flex-j-space pb20">
                                    <span class="tiny-content">카드 결제가 진행된 후, 다른 카드로 변경할 수 있나요?</span> 
                                    <i class="fas fa-chevron-down transition" aria-hidden="true"></i>
                                </div>
                            </button>
                            <div class="dis-none pt20 product-faq-content5 bg-gray p20 tiny-content ">
                                결제 예약으로 진행되는 크라우드 펀딩 특성상 이미 종료된 프로젝트는 취소 후 재펀딩이 불가능하니, 결제 전 등록한 카드정보가 맞는지 확인해주세요.
                            </div>
                        </div>
                        <div class="product-faq-item pt20 border-bottom">
                            <button class="w-100p" data-target=".product-faq-content4" onclick="slideToggle(this)">
                                <div class="flex-box flex-a-flexend flex-j-space pb20">
                                    <span class="tiny-content">배송지나 옵션을 변경하고 싶어요.</span> 
                                    <i class="fas fa-chevron-down transition" aria-hidden="true"></i>
                                </div>
                            </button>
                            <div class="dis-none pt20 product-faq-content4 bg-gray p20 tiny-content ">
                                <p>프로젝트 진행 중에는 [나의 리워드] - [펀딩내역]에서 직접 변경이 가능합니다.</p>
                                <p>펀딩이 종료된 이후에는 직접 변경이 불가능하니, 아래 [메이커에게 문의하기]를 통해 문의해주세요.</p>
                            </div>
                        </div>
                        <div class="product-faq-item pt20 border-bottom">
                            <button class="w-100p" data-target=".product-faq-content3" onclick="slideToggle(this)">
                                <div class="flex-box flex-a-flexend flex-j-space pb20">
                                    <span class="tiny-content">리워드 배송은 언제되나요? 해외 배송도 가능한가요?</span> 
                                    <i class="fas fa-chevron-down transition" aria-hidden="true"></i>
                                </div>
                            </button>
                            <div class="dis-none pt20 product-faq-content3 bg-gray p20 tiny-content ">
                                <p>크라우드 펀딩은 프로젝트 종료 후 기재된 배송 예정일에 배송되며, 배송 예정일은 프로젝트 상세페이지에서 확인할 수 있습니다. 펀딩 참여 후에는 [나의 리워드] - [펀딩내역]에서 확인할 수 있습니다.</p>
                                <p>결제 예약 시 국내 주소만 입력이 가능하니, 해외배송은 메이커에게 문의 후 진행해주세요.</p>
                            </div>
                        </div>
                        <div class="product-faq-item pt20 border-bottom">
                            <button class="w-100p" data-target=".product-faq-content2" onclick="slideToggle(this)">
                                <div class="flex-box flex-a-flexend flex-j-space pb20">
                                    <span class="tiny-content">교환/환불/AS는 어디로 문의해야하나요?</span> 
                                    <i class="fas fa-chevron-down transition" aria-hidden="true"></i>
                                </div>
                            </button>
                            <div class="dis-none pt20 product-faq-content2 bg-gray p20 tiny-content ">
                                <p>해당 프로젝트의 교환/환불/AS 기준은 프로젝트 상단 [펀딩안내]탭을 확인해주세요.</p>
                            </div>
                        </div>
                        <div class="product-faq-item pt20 border-bottom">
                            <button class="w-100p" data-target=".product-faq-content1" onclick="slideToggle(this)">
                                <div class="flex-box flex-a-flexend flex-j-space pb20">
                                    <span class="tiny-content">펀딩 취소는 어떻게 하나요? 부분 취소도 가능한가요?</span> 
                                    <i class="fas fa-chevron-down transition" aria-hidden="true"></i>
                                </div>
                            </button>
                            <div class="dis-none pt20 product-faq-content1 bg-gray p20 tiny-content ">
                                <p>프로젝트 종료 후에는 메이커가 서포터를 위해 리워드 제작을 시작한 상태입니다. 따라서 프로젝트 종료 이후에는 펀딩 취소가 불가하니, 종료 이전에 취소해주세요.</p>
                                <p>프로젝트가 종료되기 이전에는 [나의 리워드]에서 펀딩 취소가 가능합니다.</p>
                                <p>부분 취소는 여러 개의 리워드를 결제 예약한 경우 불가능합니다. 전체 취소 후 재펀딩해주세요.</p>
                            </div>
                        </div>
                        <div class="product-faq-item pt20 border-bottom">
                            <div class="mb20">
                                <p class="sub-title bold">여러분의 한마디가 진행자에게 큰 힘이 됩니다</p>
                                <p class="large-title bold main-color">댓글 작성시 유의사항</p>
                                <p class="bar-indent tiny-content">프로젝트와 관계없는 글, 광고성, 욕설, 비방, 도배 등의 글은 내부 검토 후 삭제됩니다.</p>
                                <p class="bar-indent tiny-content">리워드 관련 문의 및 배송문의는 프로젝트 진행자에게 문의하시면 정확한 답변을 받을 수 있습니다.</p>
                            </div>
                            <form class="comment-form" name="comment" action="" method="POST" onsubmit="return false;">
                                <textarea class="mb5"></textarea>
                                <div class="btn-wrap mb20">
                                    <button class="btn-stan btn-main" type="submit">
                                        댓글달기
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="product-faq-item pt20 border-bottom">
                            <div class="comment-wrap">
                                <div class="comment-items mb20">
                                    <!--댓글-->
                                    <div class="comment-item-wrap">
                                        <div class="comment-item gray-round-box pt20 pb20 pl5p pr5p mb5">
                                            <div class="comment-profile flex-box flex-a-center mb10">
                                                <div class="img-box"> 
                                                    <!--{작성자 프로필 아이콘}-->
                                                    <img class="icon-50 icon-round" src="/images/common/profile-1.png">
                                                </div>
                                                <div class="comment-profile-txt ml20">
                                                    <!--{작성자}-->
                                                    <p class="bold">안태민</p>
                                                    <!--{작성자}|{작성일}-->
                                                    <p class="tiny-content"><span class="main-color">펀딩참여자</span><span class="gray"> | 20.04.02</span></p>
                                                </div>
                                            </div>
                                            <div class="comment-content">
                                                <!--댓글 내용-->
                                                <p>"사전 공개 참여 후 펀딩까지 한 고객을 대상으로"라는 표현은 알림신청을 하고 펀딩까지 한 고객을 의미하는 것인가요?! ^^</p>
                                            </div>
                                        </div>
                                        <!--답글달기-->
                                        <div class="comment-recomment-form-wrap mb20">
                                            <div class="txt-right">
                                                <button data-target="#comment-100" class="comment-btn main-color toggle-target" >답글달기</button>
                                            </div>
                                            <form class="comment-form dis-none mt10" id="comment-100" name="comment" action="" method="POST" onsubmit="return false;">
                                                <textarea class="mb5"></textarea>
                                                <div class="btn-wrap mb20">
                                                    <button class="btn-stan btn-main" type="submit">
                                                        답글달기
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                        <!--//답글달기-->
                                        <!--대댓글-->
                                        <div class="comment-item-wrap mb20">
                                            <div class="comment-recomment-item gray-round-box pt20 pb20 pl5p pr5p">
                                                <div class="comment-profile flex-box flex-a-center mb10">
                                                    <div class="img-box"> 
                                                        <img class="icon-50 icon-round" src="/images/product/maker-img.jpg">
                                                    </div>
                                                    <div class="comment-profile-txt ml20">
                                                        <p class="bold">앵커코리아</p>
                                                        <p class="tiny-content"><span class="bg-main-alpha-color white-alpha pl5 pr5">진행자</span><span class="gray"> | 20.04.02</span></p>
                                                    </div>
                                                </div>
                                                <div class="comment-content">
                                                    <p>안녕하세요 서포터님,</p>
                                                    <p>프로젝트가 종료되고 일정대로 리워드를 수령하신 후 노매틱 코리아 홈페이지에 회원 가입을 하시고 1:1문의란을 통해 펀딩 증빙과 함께 요청글을 남겨주시면 적립해드리겠습니다.</p>
                                                    <p>감사합니다!</p>
                                                    <p>-노매틱코리아-</p>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <!--//대댓글-->
                                        <!--대댓글-->
                                        <div class="comment-item-wrap mb20">
                                            <div class="comment-recomment-item gray-round-box pt20 pb20 pl5p pr5p">
                                                <div class="comment-profile flex-box flex-a-center mb10">
                                                    <div class="img-box"> 
                                                        <img class="icon-50 icon-round" src="/images/common/profile-1.png">
                                                    </div>
                                                    <div class="comment-profile-txt ml20">
                                                        <p class="bold">안태민</p>
                                                        <p class="tiny-content"><span class="main-color">펀딩참여자</span><span class="gray"> | 20.04.02</span></p>
                                                    </div>
                                                </div>
                                                <div class="comment-content">
                                                    <p>감사합니다!! 14번째 펀딩 참여했어요!! 해외사이트에서 눈여겨 보고 있었는데, 좋은 제품 펀딩 기획해주셔서 감사합니다. 제품 받는 그날까지, 기대하고 있을게요 ^^</p>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <!--//대댓글-->
                                    </div>
                                    <!--//댓글-->
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
                <!--커뮤니티끝-->
                <!--우측메뉴-->
                <aside class="product-aside">
                    <!--펀딩 상태 창 -> 모바일 하단 메뉴-->
                    <div class="product-status mb20">
                        <div class="dis-labtop">
                            <button type="button" class="show-menu box w-100p h-100p" data-target=".product-status-txt-container" onclick="slideToggle(this)">
                                <i class="fas fa-angle-up transition"></i>
                            </button>
                        </div>
                        <div class="product-status-txt-container">
                            <div class="title mb20">25일 남음</div>
                            <div class="progress-bar mb20">
                                <span class="percent" style="width: 50%;"></span>
                            </div>
                            <div class="mb20 bold">
                                <span class="sub-title">1141</span> % 달성
                            </div>
                            <div class="mb20 bold">
                                <span class="sub-title">114,141,700</span> 원 펀딩
                            </div>
                            <div class="mb20 bold">
                                <span class="sub-title">403</span> 명의 서포터
                            </div>
                        </div>
                        <div class="product-btn-container">
                            <div class="flex-box flex-j-space flex-wrap">
                                <div class="w-100p product-funding">
                                    <a href="/product/product-select" class="btn-stan tiny-content funding-btn on mb10"><i class="fas fa-gift"></i> 펀딩하기</a>
                                </div>
                                <button class="btn-stan tiny-content w-49p product-question" data-target=".question-box" onclick="targetActive(this)"><i class="far fa-question-circle"></i> <span class="dis-pc">문의하기</span></a>
                                <button class="btn-stan tiny-content w-49p product-share" data-target=".sns-share" onclick="targetActive(this)"><i class="fas fa-share-square"></i> <span class="dis-pc">공유하기</span></button>
                            </div>
                        </div>
                    </div>
                    <!--펀딩 상태 창 -> 모바일 하단 메뉴-->
                    <div class="product-maker mb20">
                        <div class="gray bold tiny-title mb10">메이커 정보</div>
                        <div class="gray-box">
                            <div class="product-maker-info">
                                <div class="flex-box flex-j-space pt20 pb20 pr5p pl5p">
                                    <div class="round-img-box product-maker-img">
                                        <img src="/images/product/maker-img.jpg" alt="메이커로고" />
                                    </div>
                                    <div class="product-maker-link">
                                        <div class="small-content bold mb5">앤커코리아</div>
                                        <div class="mb5 tiny-content">
                                            <p><a href="#" targer="_blank">http://ankerdirect.co.kr/</a></p>
                                            <p><a href="#" targer="_blank">http://ankerdirect.co.kr/</a></p>
                                        </div>
                                        <div class="maker-sns-container flex-box">
                                            <a href="#" class="bg-sns bg-facebook" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                            <a href="#" class="bg-sns bg-instagram" target="_blank"><i class="fab fa-instagram"></i></a>
                                            <a href="#" class="bg-sns bg-twitter" target="_blank"><i class="fab fa-twitter"></i></a>
                                            <a href="#" class="bg-sns bg-blog" target="_blank">
                                                <div class="bg-img"></div>
                                            </a>
                                            <a href="#" class="bg-sns bg-external" target="_blank"><i class="fas fa-external-link-alt"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!--
                                <div class="pt20 pb20 pr5p pl5p border-top">
                                    <div class="btn-box">
                                        <button class="btn-stan w-100p small-title"  data-target=".question-box" onclick="targetActive(this)"><i class="far fa-question-circle"></i> 메이커에게 문의하기</button>
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="btn-box box">
                                        <button class="tiny-content bold w-100p pt20 pb20 pr5p pl5p" data-target=".maker-contact" onclick="slideToggle(this)">메이커 연락처 <i class="fas fa-chevron-down transition"></i></button>
                                        <div class="maker-contact pt20 pb20 pr5p pl5p">
                                            <p><a href="tel:050713667088"><i class="far fa-envelope"></i> 050713667088</a></p>
                                            <p><a href="mailto:support@distyfactory.com"><i class="fas fa-mobile-alt"></i> support@distyfactory.com</a></p>
                                            <p><a href="#"><i class="fas fa-comment"></i> 카카오 플러스친구 앤커코리아</a></p>
                                        </div>
                                    </div>
                                </div>
                                -->
                            </div>
                        </div>
                    </div>
                    <!--리워드 선택 -> .product-reward-item.off로 마감처리-->
                    <div class="product-reward-select">
                        <div class="gray bold tiny-title mb10">리워드 선택</div>
                        <div class="product-reward-items">
                            <!--
                                재고 없을때는 off 필수
                                id값은 상품옵션 아이디 넘어가게(자동체크처리)
                            -->
                            <div class="product-reward-item gray-box pt20 pb20 pl5p pr5p mb20">
                                <a href="/product/product-select?id=100">
                                    <p class="sub-title bold mb10">229,000원 펀딩</p>
                                    <p class="small-title bold mb10">솔로버드[블랙]</p>
                                    <p class="gray tiny-content bold">리워드</p>
                                    <p class="gray tiny-content mb20 bold">로보백 1 세트</p>
                                    <p class="gray tiny-content bold">가격 해택</p>
                                    <p class="gray tiny-content mb20 bold">정가대비 70,000 가격해택</p>
                                    <p class="gray tiny-content bold">색상</p>
                                    <p class="gray tiny-content mb20 bold">블랙</p>
                                    <p class="gray tiny-content bold">배송</p>
                                    <p class="gray tiny-content mb20 bold">5월 27일부터 펀딩순 발송</p>
                                    <p class="gray tiny-content bold">배송비</p>
                                    <p class="gray small-content mb20">3,000원</p>
                                    <p class="gray tiny-content bold">리워드 발송 시작일</p>
                                    <p class="gray small-content mb20">2020년 05월 말(21~말일) 예정</p>
                                    <p class="gray tiny-content bold"><span class="main-color">제한수량 1000개 <span class="bg-main-alpha-color pl5 pr5">현재 687개 남음 !</span></span></p>
                                    <p class="gray small-content">총 313개 펀딩 완료</p>
                                </a>
                            </div>
                            <div class="product-reward-item off gray-box pt20 pb20 pl5p pr5p mb20">
                                <a href="/product/product-select?id=101">
                                    <p class="sub-title bold mb10">229,000원 펀딩</p>
                                    <p class="small-title bold mb10">솔로버드[블랙]</p>
                                    <p class="gray tiny-content bold">리워드</p>
                                    <p class="gray tiny-content mb20 bold">로보백 1 세트</p>
                                    <p class="gray tiny-content bold">가격 해택</p>
                                    <p class="gray tiny-content mb20 bold">정가대비 70,000 가격해택</p>
                                    <p class="gray tiny-content bold">색상</p>
                                    <p class="gray tiny-content mb20 bold">블랙</p>
                                    <p class="gray tiny-content bold">배송</p>
                                    <p class="gray tiny-content mb20 bold">5월 27일부터 펀딩순 발송</p>
                                    <p class="gray tiny-content bold">배송비</p>
                                    <p class="gray small-content mb20">3,000원</p>
                                    <p class="gray tiny-content bold">리워드 발송 시작일</p>
                                    <p class="gray small-content mb20">2020년 05월 말(21~말일) 예정</p>
                                    <p class="gray tiny-content bold"><span class="main-color">제한수량 1000개 <span class="bg-main-alpha-color pl5 pr5">현재 687개 남음 !</span></span></p>
                                    <p class="gray small-content">총 313개 펀딩 완료</p>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- 
                    <div class="product-report">
                        <div class="gray-box pt20 pb20 pr5p pl5p">
                            <p class="bold mb10">신고하기란?</p>
                            <p class="tiny-content mb10">해당 프로젝트에 허위내용 및 지적재산권을
                            침해하는 내용이 있다면 제보해주세요.</p>
                            <a href="#" class="btn-stan w-100p"><i class="fas fa-bell"></i> 신고하기</a>
                        </div>
                    </div>
                    -->
                </aside>
                <!--우측메뉴끝-->
            </div>
            <!--sns공유 모달-->
            <div class="sns-share flex-j-space w-100p gray-box modal-stan">
                <div class="sns-share-content modal-content">
                    <button class="sns-share-close" data-target=".sns-share" onclick="targetActive(this)"></button>
                    <div class="sns-text border-bottom pb20">
                        <p class="sub-title bold main-color txt-center mt10 mb20">SNS 공유하기</p>
                        <p class="gray-dark large-title txt-center mb5">더 많이 알릴 수록 프로젝트는</p>
                        <p class="gray-dark large-title txt-center">성공에 가까워집니다.</p>
                    </div>
                    <div class="sns-share-btn-wrap flex-box flex-j-space pt20">
                        <button class="sns-share-btn icon-40 bg-sns bg-facebook" data-url="https://www.krahs123.co.kr/product.html" data-type="facebook">
                            <i class="fab fa-facebook-f" aria-hidden="true"></i>
                        </button>
                        <button class="sns-share-btn icon-40 bg-sns bg-kakaostory" data-url="https://www.krahs123.co.kr/product.html" data-type="kakaoStory">
                            <i class="xi-kakaostory xi-x"></i>
                        </button>
                        <button class="sns-share-btn icon-40 bg-sns bg-blog" data-url="https://www.krahs123.co.kr/product.html" data-type="naver">
                            <!-- <i class="fas fa-bold"></i> -->
                            <div class="bg-img"></div>
                        </button>
                        <button class="sns-share-btn icon-40 bg-sns bg-twitter" data-url="https://www.krahs123.co.kr/product.html" data-type="twitter" data-desc="[마지막앵콜] 다리에도 베개가 필요해요">
                            <i class="fab fa-twitter" aria-hidden="true"></i>
                        </button>
                        <button class="sns-share-btn icon-40 bg-sns bg-kakaotalk" 
                            id="kakao-link-btn"
                            data-type="kakao"
                            data-url="https://www.krahs123.co.kr"
                            data-page="/product.html"
                            data-img="/images/main/main_1.jpg"
                            data-title="와디지-상품"
                            data-desc="[마지막앵콜] 다리에도 베개가 필요해요"
                        >
                            <i class="xi-kakaotalk xi-x"></i>
                        </button>
                    </div>
                </div>
            </div>
            <!--sns공유 모달끝-->
            <!--문의하기 모달-->
            <div class="question-box flex-j-space w-100p gray-box modal-stan">
                <div class="question-box-content modal-content">
                    <p class="sub-title bold main-color txt-center mt10 mb20">문의 하기</p>
                    <button class="question-box-close sns-share-close modal-close modal-close-btn" data-target=".question-box" onclick="targetActive(this)"></button>
                    <div class="flex-box flex-j-space pt20 pb20 pr5p pl5p border-bottom pb20">
                        <div class="round-img-box product-maker-img">
                            <img src="/images/product/maker-img.jpg" alt="메이커로고">
                        </div>
                        <div class="product-maker-link">
                            <div class="small-content bold mb5">앤커코리아</div>
                            <div class="mb5 tiny-content">
                                <p><a href="#" targer="_blank">http://ankerdirect.co.kr/</a></p>
                                <p><a href="#" targer="_blank">http://ankerdirect.co.kr/</a></p>
                            </div>
                            <div class="maker-sns-container flex-box">
                                <a href="#" class="bg-sns bg-facebook" target="_blank"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                                <a href="#" class="bg-sns bg-instagram" target="_blank"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                                <a href="#" class="bg-sns bg-twitter" target="_blank"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                                <a href="#" class="bg-sns bg-blog" target="_blank">
                                    <div class="bg-img"></div>
                                </a>
                                <a href="#" class="bg-sns bg-external" target="_blank"><i class="fas fa-external-link-alt" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="pt20 maker-info-box">
                        <p><a href="tel:050713667088"><i class="fas fa-mobile-alt" aria-hidden="true"></i> 050713667088</a></p>
                        <p><a href="mailto:support@distyfactory.com"><i class="far fa-envelope" aria-hidden="true"></i> support@distyfactory.com</a></p>
                        <p><a href="#"><i class="fas fa-comment" aria-hidden="true"></i> 카카오 플러스친구 앤커코리아</a></p>
                    </div>
                </div>
            </div>
            <!--문의하기 모달끝-->
        </section>
    </main>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
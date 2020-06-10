<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<section class="bg-gray">
    <div class="container max1000">
        <div class="bg-white p20 border-gray">
            
            <div class=" pb20 border-bottom">
                    <p class="blue bold large-title">
                        ${orderState[ovo.state]}
                    </p>
                    <p class="mt10 gray bold tiny-title">${cate}</p>
                    <p class="gray bold tiny-content mt10"><span class="icon-round-no-board inline-box icon-10 product-status-${pvo.status}"></span> ${productStatus[pvo.status]} </p>
                    <p class="bold large-title mt5"><a class="underline" href="/product/product?id=${pvo.id}">${pvo.title}</a></p>
                    <p class="tiny-title mt5">by ${mavo.marker_name}</p>
            </div>
            <div class="mt20">
                <div class="float-box-item">
                    <div class="float-left">
                        <span class="gray bold">펀딩번호</span>
                    </div>
                    <div class="float-right">
                        <span>${ovo.id}</span>
                    </div>
                </div>
                <div class="float-box-item">
                    <div class="float-left">
                        <span class="gray bold">펀딩 날짜</span>
                    </div>
                    <div class="float-right">
                        <span>${ovo.reg_date}</span>
                    </div>
                </div>
                <div class="float-box-item">
                    <div class="float-left">
                        <span class="gray bold">펀딩 마감일</span>
                    </div>
                    <div class="float-right">
                        <span>${pvo.end_date}</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-white mt20 border-gray">
            <div class="pt20 pl20 pr20 pb20 border-bottom">
                <h1 class="small-title gray bold mb20">결제 내역</h1>
                <c:forEach items="${odvoList}" var="odvo"> 
                    <div class="product-payment-receipt mt20">
                        <h4 class="tiny-titlebold mb5">${odvo.option_title}</h4>
                        <!--제목-->
                        <p class="tiny-content gray mt10"><fmt:formatNumber value="${odvo.price/odvo.amount}" pattern="#,##0" />원 / ${odvo.amount}개</p>
                        <c:if test="${odvo.delevery_chk eq '1'}">
                            <p class="tiny-content gray mt10">발송 시작일 : ${odvo.delivery_date}</p>
                        </c:if>
                        <p class="tiny-content mt10">옵션 : ${odvo.option_name}</p>
                        <!--수량,금액-->
                    </div>
                    
                </c:forEach>
            </div>
            <div class="pt20 pl20 pr20 pb20  bg-main-white-color">
                <div>
                    <span class="bold">추가 후원금</span>	
                    <span class="float-right"><fmt:formatNumber value="${ovo.donation}" pattern="#,##0" />원</span>
                    <!--추가 후원금-->
                    <p class="clear-fix"></p>
                </div>
                <div class="pt10 pb10 border-bottom">
                    <span class="bold">배송비</span>	
                    <span class="float-right"><fmt:formatNumber value="${ovo.delivery_fee}" pattern="#,##0" />원</span>
                    <!--배송비-->
                    <p class="clear-fix"></p>
                </div>
                <div class="mt10">
                    <span class="bold ">최종결제금액</span>	
                    <span class="float-right  large-content"><fmt:formatNumber value="${ovo.payment}" pattern="#,##0" />원</span>
                    <!--후원금 + 배송비 합산-->
                </div>
            </div>
        </div>
        <!-- <div class="bg-white p20 mt20 border-gray">
            <h1 class="small-title gray bold mb20">결제 정보</h1>
            <div class="float-box-item">
                <div class="float-left">
                    <span class="">결제방법</span>
                </div>
                <div class="float-right">
                    <span class="small-title">신용(체크)카드</span>
                </div>
            </div>
            <div class="float-box-item">
                <div class="float-left">
                    <span class="">카드번호</span>
                </div>
                <div class="float-right">
                    <span class="small-title">****-****-****-1234</span>
                </div>
            </div>
        </div> -->
        <div class="bg-white mt20 border-gray">
            <div class="p20 border-bottom">
                <div class="">
                    <h1 class="small-title gray bold mb20">배송지 정보</h1>
                    <p class="mt20">${ovo.receiver_name}</p>
                    <p class="mt5">${ovo.receiver_tel}</p>
                    <p class="mt10">[${ovo.receiver_addr1}] ${ovo.receiver_addr2} </p>
                    <p class="mt10">${ovo.receiver_addr3}</p>
                    <p class="mt10">${ovo.receiver_etc}</p>
                </div>
                <div class=" mt40">
                    <div class="flex-box flex-a-center flex-j-space">
                        <h1 class="small-title gray bold">
                            배송지 상태
                        </h1>
                        <c:if test="${ovo.delivery_number!=null&&ovo.delivery_number ne ''}">
                            <button class="deleveryChk btn-stan btn-white" data-tracks="${ovo.delivery_number}" data-carriers="${ovo.delivery_id}"  data-target=".delevery-modal">배송조회</button>
                        </c:if>
                        <!--  테스트용
                            <button class="deleveryChk btn-stan btn-white" data-tracks="417472558775" data-carriers="kr.hanjin"  data-target=".delevery-modal">배송조회</button> -->
                    </div>
                    <c:if test="${ovo.delivery_number==null||ovo.delivery_number eq ''}">
                        <p class="gray mt10 deleveryStatus">미발송</p>
                    </c:if>
                    <c:if test="${ovo.delivery_number!=null&&ovo.delivery_number ne ''}">
                        <p class="gray mt10 deleveryStatus">
                            ${orderState[ovo.state]}
                        </p>
                    </c:if>
                    <h1 class="small-title bold mt20">혹시 리워드를 수령했나요?</h1>
                </div>
                <button class="btn-stan tiny-content w-100p product-question btn-white mt10 delevery_end" data-id = "${ovo.id}">
                    <span>리워드를 수령했습니다.</span>
                </button>
            </div>
            <div class="bg-gray-dark p20">
                <span class="tiny-tiny-content bold">
                    펀딩 종료 이 후에는 서포터의 배송지 정보가 프로젝트 메이커에게 전달되기 때문에, 종료 이 후 배송 정보 변경 등에 대한 문의는 메이커에게 직접하셔야 합니다.
                </span>
                <button class="btn-stan tiny-content w-100p product-question btn-white mt10"  data-target=".question-box" onclick="targetActive(this)" >
                    <i class="far fa-question-circle" aria-hidden="true"></i> <span>메이커에게 문의하기</span>
                </button>
            </div>
        </div>
        <div class="mt20">
            <p class="tiny-tiny-content bold info-indent">
                리워드 발송은 메이커의 의무로 프로젝트 진행 시 메이커가 약속한 리워드 발송 시작일에 제공하는 것을 원칙으로 합니다. 다만 크라우드펀딩 특성상 메이커의 예기치 못한 일정 변경이 있을 수 있으며, 리워드 발송에 대해 발생한 이슈는 프로젝트 상세 페이지 - 펀딩안내 탭에 명시한 정책에 따릅니다.
            </p>
            <div class="mt40 txt-center">
                <button class="btn-stan tiny-content product-question btn-transparent" onclick="javascript:location.href='/page/fundingList'">
                    <span>목록으로 돌아가기</span>
                </button>
            </div>
            
        </div>
    </div>
</section>
<!--문의하기 모달-->

<div class="question-box flex-j-space w-100p gray-box modal-stan">
    <div class="question-box-content modal-content p20">
        <p class="sub-title bold main-color txt-center mt10 mb20">문의 하기</p>
        <div class="modal-close modal-btn-close" data-target=".question-box" onclick="targetActive(this)"></div>
        <div class="flex-box flex-j-space border-bottom mt20 pb20">
            <div class="round-img-box product-maker-img">
                <img src="${mavo.marker_img}" alt="메이커로고">
            </div>
            <div class="product-maker-link">
                <div class="small-content bold mb5">${mavo.marker_name}</div>
                <div class="mb5 tiny-content">
                    <c:forTokens items="${mavo.marker_home_page_url}" delims="|" var="homeUrl">
                        <c:if test="${homeUrl ne '' && homeUrl != null}">
                            <p><a class="text-max-line line1" href="${homeUrl}" targer="_blank">${homeUrl}</a></p>
                        </c:if>
                    </c:forTokens>
                </div>
                <div class="maker-sns-container flex-box">
                    <c:if test="${mavo.marker_facebook_url ne ''}">
                        <a href="${mavo.marker_facebook_url}" class="bg-sns bg-facebook" target="_blank"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                    </c:if>
                    <c:if test="${mavo.marker_instagram_url ne ''}">
                        <a href="${mavo.marker_instagram_url}" class="bg-sns bg-instagram" target="_blank"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                    </c:if>
                    <c:if test="${mavo.marker_twiter_url ne ''}">
                        <a href="${mavo.marker_twiter_url}" class="bg-sns bg-twitter" target="_blank"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                    </c:if>
                    <!-- <a href="#" class="bg-sns bg-facebook" target="_blank"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                    <a href="#" class="bg-sns bg-instagram" target="_blank"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                    <a href="#" class="bg-sns bg-twitter" target="_blank"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                    <a href="#" class="bg-sns bg-blog" target="_blank">
                        <div class="bg-img"></div>
                    </a>
                    <a href="#" class="bg-sns bg-external" target="_blank"><i class="fas fa-external-link-alt" aria-hidden="true"></i></a> -->
                </div>
            </div>
        </div>
        <div class="pt20 maker-info-box">
            <p><a href="tel:${mavo.marker_phone}"><i class="fas fa-mobile-alt" aria-hidden="true"></i> ${mavo.marker_phone}</a></p>
            <p><a href="mailto:${mavo.marker_email}"><i class="far fa-envelope" aria-hidden="true"></i> ${mavo.marker_email}</a></p>
            <p><a href="${mavo.marker_kakao_url}"><i class="fas fa-comment" aria-hidden="true"></i> 카카오 플러스친구 ${mavo.marker_kakao_id}</a></p>
        </div>
    </div>
</div>
<!--//문의하기 모달끝-->

<!-- 배송조회 모달-->

<div class="delevery-modal modal-stan">
    <div class="modal-content pt30 pb30">
        <div class="modal-close modal-btn-close" data-target=".delevery-modal" onclick="targetActive(this)"></div>
        <div class="border-bottom pl20 pr20">
            <h1 class="title main-color mb20 txt-center">
                배송조회
            </h1>
        </div>
        <div class="mt20 delevery-content-wrap pl20 pr20">
            <div>
                <h3 class="delevery-status large-title bold align-center"></h3>
            </div>
            <div class="mt20">
                <table class="delevery-table">
                    <colgroup>
                        <col width="33%" />
                        <col width="*" />
                        <col width="33%" />
                    </colgroup>
                    <thead>
                        <tr class="border-bottom">
                            <th>처리일시</th>
                            <th>현재위치</th>
                            <th>상태</th>
                        </tr>
                        <tbody>
                        </tbody>
                    </thead>
                </table>
            </div>
            <div class="mt20">
                <h4 class="large-title bold align-center">기본정보</h4>
                <div class="pt20 pb20 pl30 pr30 border-gray mt20">
                    <table class="delevery-info mt10">
                        <colgroup>
                            <col width="100px" />
                            <col width="*" />
                        </colgroup>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //배송조회 모달-->
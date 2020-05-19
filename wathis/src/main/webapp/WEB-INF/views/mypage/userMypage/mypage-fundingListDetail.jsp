<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="bg-gray">
    <div class="container max1000">
        <div class="bg-white p20 border-gray">
            
            <div class=" pb20 border-bottom">
                    <p class="blue bold large-title">결제완료</p>
                    <p class="mt10 gray bold tiny-title">여행ㆍ레저</p>
                    <p class="gray bold tiny-content mt10"><span class="icon-round-no-board inline-box bg-gray-dark icon-10"></span> 종료</p>
                    <p class="bold large-title mt5"><a class="underline" href="#">(앵콜) [킬리X여행에미치다] 청춘들을 위한 리얼 여행배낭 제작 프로젝트</a></p>
                    <p class="tiny-title mt5">by 킬리아웃피터스</p>
            </div>
            <div class="mt20">
                <div class="float-box-item">
                    <div class="float-left">
                        <span class="gray bold">펀딩번호</span>
                    </div>
                    <div class="float-right">
                        <span>146340</span>
                    </div>
                </div>
                <div class="float-box-item">
                    <div class="float-left">
                        <span class="gray bold">펀딩 날짜</span>
                    </div>
                    <div class="float-right">
                        <span>2017.01.19 16:02</span>
                    </div>
                </div>
                <div class="float-box-item">
                    <div class="float-left">
                        <span class="gray bold">펀딩 마감일</span>
                    </div>
                    <div class="float-right">
                        <span>2017.02.17</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-white mt20 border-gray">
            <div class="pt20 pl20 pr20 pb20 border-bottom">
                <h1 class="small-title gray bold mb20">결제 내역</h1>
                <div class="product-payment-receipt">
                    <h4 class="tiny-titlebold mb5">[마지막앵콜] 다리에도 베개가 필요해요 | 지친 내다리를 위한, 부끼싹!</h4>
                    <!--제목-->
                    <p class="tiny-content gray mt10">229,000원 / 2개</p>
                    <p class="tiny-content gray mt10">발송 시작일 : 8888.88.88</p>
                    <p class="tiny-content mt10">옵션 : 솔로버드[블랙] 색상: 블랙</p>
                    <!--수량,금액-->
                </div>
            </div>
            <div class="pt20 pl20 pr20 pb20  bg-main-white-color">
                <div>
                    <span class="bold">추가 후원금</span>	
                    <span class="float-right">0원</span>
                    <!--추가 후원금-->
                    <p class="clear-fix"></p>
                </div>
                <div class="pt10 pb10 border-bottom">
                    <span class="bold">배송비</span>	
                    <span class="float-right">3,000원</span>
                    <!--배송비-->
                    <p class="clear-fix"></p>
                </div>
                <div class="mt10">
                    <span class="bold ">최종결제금액</span>	
                    <span class="float-right  large-content">232,000원</span>
                    <!--후원금 + 배송비 합산-->
                </div>
            </div>
        </div>
        <div class="bg-white p20 mt20 border-gray">
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
        </div>
        <div class="bg-white mt20 border-gray">
            <div class="p20 border-bottom">
                <h1 class="small-title gray bold mb20">배송지 정보</h1>
                <p class="mt20">홍길동</p>
                <p class="mt5">01012345678</p>
                <p class="mt10">[12345] OO시 OO구 OO로 123 (OO동) </p>
                <p class="mt10">OOOO센터 O동 O층 OO호</p>
                <p class="mt10">부재중이면 경비실에 맡겨주세요.</p>
                <h1 class="small-title gray bold mt40">배송지 상태<button class="deleveryChk" data-tracks="417472558775" data-carriers="kr.hanjin"  data-target=".delevery-modal">배송조회</button></h1>
                <p class="gray mt10">미발송</p>
                <h1 class="small-title bold mt20">혹시 리워드를 수령했나요?</h1>
                <button class="btn-stan tiny-content w-100p product-question btn-white mt10">
                    <span>이미 리워드를 수령했습니다.</span>
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
                <button class="btn-stan tiny-content product-question btn-transparent" onclick="javascript:location.href='/page/userMypage?template=fundingList'">
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
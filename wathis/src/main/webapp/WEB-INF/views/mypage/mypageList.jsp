<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<div class="box2-funReady">
    <div class="box1-box2">
        <div class="fun-wrap">
            <div class="fun-ready1">
                <h1>펀딩 준비</h1>
                <div class="fun-ready1-text">
                    <a>본격적으로 펀딩을 오픈하기 위해 프로젝트에 대한 6가지 메뉴의 필수항목을 작성하세요.</a>
                </div>
            </div>
        </div>
        <div class="fun-ready2">
            <div class="ready-state">
                <div class="ready-wrap">
                    <div class="ready-state-left">
                        <div class="ready-project">프로젝트 준비 상태</div>
                        <!-- <div class="ready-right">
                            <a href="#" id="my-modal">지금 나의 단계는?</a>
                        </div> -->
                    </div>
                    <div class="ready-pro-text">
                        <span>펀딩 준비 작성 중</span>
                        <div class="fun-text">
                            <p>필수 항목을 모두 작성 후 저장하기 버튼을 클릭해주세요. 작성중 > 작성 완료 상태로 변경되어야 최종 제출이 가능합니다.</p>
                        </div>
                    </div>
                </div>
                <!--작성하기 부분 -->
                <!--작성 부분 -->
                <div class="flex-box1 flex-box-ba5 text-padding12 mar-bo7">
                    <div class="readybox-basic main-color-dark">
                        <div class="icon text-ali1 fon-siz14 ">
                            <i class="fal fa-users"></i>
                        </div>
                        <div class="fon-siz5 ">
                            <h3>펀딩 준비 작성</h3>
                            <!-- <p>펀딩 진행을 위해 프로젝트 내용을 작성하는 펀딩 준비 작성 단계 입니다.</p> -->
                        </div>
                    </div>
                    <div class="readybox-basic">
                        <div class="icon text-ali1 fon-siz14 ">
                            <i class="far fa-file-alt"></i>
                        </div>

                        <div class="fon-siz5 ">
                            <h3>요건 확인</h3>
                            <!-- <p>펀딩 진행을 위한 기본 요건을 충족하는지, 누락된 사항은 없는 지 등을 확인 하는 단계입니다.</p> -->
                        </div>
                    </div>
                    <div class="readybox-basic">
                        <div class="icon text-ali1 fon-siz14 ">
                            <i class="fal fa-comments-alt"></i>
                        </div>

                        <div class="fon-siz5 ">
                            <h3>콘텐츠 확인</h3>
                            <!-- <p>펀딩 컨텐츠에 대한 검토 및 약점을 체결하는 단계입니다.</p> -->
                        </div>
                    </div>
                    <div class="readybox-basic">
                        <div class="icon text-ali1 fon-siz14 ">
                            <i class="fal fa-badge-check"></i>
                        </div>

                        <div class="fon-siz5 ">
                            <h3>펀딩 오픈</h3>
                            <!-- <p>
                                    프로젝트가 최종 승인되어, 펀딩 오픈 대기 중 상태이거나 펀딩 진행 중인 단계입니다.
                                    오픈 예정을 신청한 경우네는 오픈 예정 진행 후 펀딩 오픈 됩니다.
                                </p> -->
                        </div>
                    </div>
                </div>

                <!-- 기본요건 부분 -->
                <div class="fun-ready">
                    <div class="readybox-basic">
                        <h2>기본요건 및 정보</h2>
                        <span>작성 중</span>
                    </div>
                    <a href="/page/mypage-one">
                        <button class="ready-btn">작성하기</button>
                    </a>
                </div>
                <!-- 메이커부분 부분 -->
                <div class="fun-ready">
                    <div class="readybox-basic">
                        <h2>메이커 정보</h2>
                        <span>작성 중</span>
                    </div>
                    <a href="/page/mypage-two?id=${sessionScope.id}&audit_id=${auditID}">
                        <button class="ready-btn">작성하기</button>
                    </a>
                </div>
                <!-- 스토리 부분 -->
                <div class="fun-ready">
                    <div class="readybox-basic">
                        <h2>스토리 작성</h2>
                        <span>작성 중</span>
                    </div>
                    <a href="/page/mypage-three?id=${sessionScope.id}&audit_id=${auditID}">
                        <button class="ready-btn">작성하기</button>
                    </a>
                </div>
                <!-- 리워드설계 부분 -->
                <div class="fun-ready">
                    <div class="readybox-basic">
                        <h2>리워드 설계</h2>
                        <span>작성 중</span>
                    </div>
                    <a href="/page/mypage-four?id=${sessionScope.id}&audit_id=${auditID}">
                        <button class="ready-btn">작성하기</button>
                    </a>
                </div>
                <!-- 위험 요건 및 정책  부분 삭제 예-->

                <div class="readybox-basic-end">
                    <button class="ready-btn">제출하기</button>
                </div>

                <!-- <div class="fun-ready-bu">제출하기 버튼</div> -->
            </div>
            <div class="adver-boxwrap">
                <div class="adver-box1">
                    <!-- <img src="/hongimages/images/san.jpg" alt=""> -->
                    <ul>
                        <li class="box-back6 cu-poin text-padding11">
                            <span class="fon-co12 fon-siz1 text-ali2">리워드를 준비하는 메이커님을 위한</span>
                        <div class="fon-wei1 fon-co12 fon-siz11 text-ali2">
                            필수 가이드 
                            <i class="fas fa-arrow-alt-right fon-siz12 mar-left2 ver-ali1 mar-left5" ></i>
                        </div>

                        </li>
                        <li class="cu-poin">
                            <a href="https://www.youtube.com/playlist?list=PLCMVZ3bQZw9_lLA5pITFc09f_9EdJgmau&_refer_section_st=RA1_0"><img src="/hongimages/images/whdiz1.jpg" alt=""></a>
                        </li>
                        <li class="cu-poin">
                            <a href="https://www.wadiz.kr/web/wboard/newsBoardDetail/7250?utm_source=rwm_makerstudio&utm_medium=display&_refer_section_st=RA1_1"><img src="/hongimages/images/whdiz2.jpg" alt=""></a>
                        </li>
                        <li class="cu-poin">
                            <a href="https://www.fundingmate.wadiz.kr/?isWadizApp=N"><img src="/hongimages/images/whdiz3.jpg" alt=""></a>
                        </li>
                        <li class="cu-poin">
                            <a href="notion.so/46641abbd7b2464087e78f6ba16ef498?_refer_section_st=RA1_3"><img src="/hongimages/images/whdiz4.jpg" alt=""></a>
                        </li>
                        
                    </ul> 
                </div>

            </div>
        </div>
    </div>

    <div class="my-modal">
        <div class=" my-modal-cover "></div>
        <div class="my-modal-container">

            <div class="my-modal-close">
                <i class="fal fa-times fon-siz9"></i>
            </div>

            <div class="my-modal-text my-modal-img">
                <h2>펀딩 준비 프로세스</h2>
            </div>
            
            <!-- 단계 삭제 부분 -->
          
        </div>
    </div>
</div>
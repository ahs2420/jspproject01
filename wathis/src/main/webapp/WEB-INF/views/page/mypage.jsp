<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/hongcss/mypage.css">
<div class="position-fix">
            <div class="head-con">
                <div class="logo">
                    <a href="#"><span class="main-color">W</span>a<span class="main-color">T</span>his</a>
                </div>

                <div class="head-userid">
                    <div class="userlogo">
                        <i class="fas fa-fan"></i>
                    </div>

                    <div class="username">
                        WATHIS
                    </div>
                </div>

                <div class="head-close">
                    <button name="" id="" class="head-show">미리보기</button>
                    <button name="" id="" class="head-out">나가기</button>
                </div>
            </div>
        </div>

    </header>
    <main>
        <div class="mypage-container" style="max-width: 100%;">
            <div class="menu-box">
                <div class="box1-menu">

                    <div class="reward-box-btn">

                        <button class="box-btn1" type="button" id="reward">리워드</button>
                        <button class="box-btn2" type="button" id="reward">펀딩 준비 작성 중</button>
                    </div>

                    <div class="reward-box">
                        <h2> 123의 멋진 프로젝트</h2>
                    </div>

                    <ul class="jq-box">
                        <li class="mypage-li-menu-not">
                            <div class="reward-box-num">
                                <a href="#">
                                    프로젝트 번호
                                    <!-- <i class="fas fa-angle-down"></i> -->
                                
                                </a>

                                <ul class="hide">
                                    <li>
                                        와디지 담당자와의 소통은 프로젝트 번호로 진행됩니다. 상세페이지는 프로젝트 번호를 포함한 URL 주소로 오픈 된 후 진입 가능합니다.
                                    </li>
                                    <li class="reward-box-url">
                                        url 복사하기
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>

                </div>
                <ul class="menu-text" style="list-style: none;">
                    <li class="mypage-li-menu">
                        <div class="menu-text1">
                            <a href="#">펀딩 준비<i class="fas fa-angle-down"></i></a>
                            <ul class="hide">
                                <li><a href="#">기본 요건 및 정보</a></li>
                                <li><a href="#">스토리 작성</a></li>
                                <li><a href="#">리워드 설계</a></li>
                                <li><a href="#">위험요인 및 정책</a></li>
                                <li><a href="#">메이커 정보</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="mypage-li-menu">
                        <div class="menu-text1">
                            <a href="#">오픈예정 현황<i class="fas fa-angle-down"></i></a>
                        </div>
                    </li>
                    <li class="mypage-li-menu">
                        <div class="menu-text1">
                            <a href="#">결제 현황<i class="fas fa-angle-down"></i></a>
                        </div>
                    </li>
                    <li class="mypage-li-menu">
                        <div class="menu-text1">
                            <a href="#">새소식<i class="fas fa-angle-down"></i></a>
                        </div>
                    </li>
                    <li class="mypage-li-menu">
                        <div class="menu-text1">
                            <a href="#">서포터<i class="fas fa-angle-down"></i></a>
                        </div>
                    </li>
                    <li class="mypage-li-menu">
                        <div class="menu-text1">
                            <a href="#">자료및 도움말<i class="fas fa-angle-down"></i></a>
                        </div>
                    </li>
                </ul>
                <!-- 
                <div class="menu-text2">
                    <a href="#">펀딩 현황<i class="fas fa-angle-down"></i></a>
                </div>
                <div class="menu-text2">
                    <a href="#">결제 현황<i class="fas fa-angle-down"></i></a>
                </div>
                <div class="menu-text2">
                    <a href="#">새소식<i class="fas fa-angle-down"></i></a>
                </div>
                <div class="menu-text2">
                    <a href="#">서포터<i class="fas fa-angle-down"></i></a>
                </div>
                <div class="menu-text2">
                    <a href="#">자료및 도움말<i class="fas fa-angle-down"></i></a>
                </div> 
                -->

            </div>
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
                                    <div class="ready-right">
                                        <a href="#" id="my-modal">지금 나의 단계는?</a>
                                    </div>
                                </div>
                                <div class="ready-pro-text">
                                    <span>펀딩 준비 작성 중</span>
                                    <div class="fun-text">
                                        <p>필수 항목을 모두 작성 후 저장하기 버튼을 클릭해주세요. 작성중 > 작성 완료 상태로 변경되어야 최종 제출이 가능합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="fun-ready">
                                <div class="readybox-basic">
                                    <h2>기본요건 및 정보</h2>
                                    <span>작성 중</span>
                                </div>
                                <button class="ready-btn">작성하기</button>
                            </div>

                            <div class="fun-ready">
                                <div class="readybox-basic">
                                    <h2>스토리 작성</h2>
                                    <span>작성 중</span>
                                </div>
                                <button class="ready-btn">작성하기</button>
                            </div>
                            <div class="fun-ready">
                                <div class="readybox-basic">
                                    <h2>리워드 설계</h2>
                                    <span>작성 중</span>
                                </div>
                                <button class="ready-btn">작성하기</button>
                            </div>
                            <div class="fun-ready">
                                <div class="readybox-basic">
                                    <h2>위험요인 및 정책</h2>
                                    <span>작성 중</span>
                                </div>
                                <button class="ready-btn">작성하기</button>
                            </div>
                            <div class="fun-ready">
                                <div class="readybox-basic">
                                    <h2>메이커 정보</h2>
                                    <span>작성 중</span>
                                </div>
                                <button class="ready-btn">작성하기</button>
                            </div>

                            <div class="readybox-basic-end">
                                <button class="ready-btn">제출하기</button>

                            </div>

                            <!-- <div class="fun-ready-bu">제출하기 버튼</div> -->
                        </div>
                        <div class="adver-boxwrap">
                            <div class="adver-box1">
                                <img src="images/san.jpg" alt="">
                                <div class="box1-center">
                                    <span class="readver">리워드펀딩을 준비하는 메이커님을 위한</span><br>
                                    <a href="#">필수 가이드-></a>
                                    <div class="box-black"></div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="box3-adver">
                광고 이미지
                <div class="adver-box1">1</div>
                <div class="adver-box2">2</div>
                <div class="adver-box3">3</div>
                <div class="adver-box4">4</div>
                <div class="adver-box5">5</div>

            </div> -->
        </div>

        <div class="my-modal">
            <div class=" my-modal-cover "></div>
            <div class="my-modal-container">

                <div class="my-modal-close">
                    <i class="fas fa-times"></i>
                </div>

                <div class="my-modal-text my-modal-img">
                    <h2>펀딩 준비 프로세스</h2>
                </div>

                <div class="my-modal-content">
                    <ul class="my-be">
                        <li style="position: relative">
                            <div class="my-text">
                                <h2>펀딩 준비 작성</h2>
                                <p>펀딩 진행을 위해 프로젝트 내용을 작성하는 펀딩 준비 작성 단계 입니다.</p>
                            </div>

                        </li>

                        <li style="position: relative">
                            <div class="my-text">
                                <h2>요건 확인</h2>
                                <p>펀딩 진행을 위한 기본 요건을 충족하는지, 누락된 사항은 없는 지 등을 확인 하는 단계입니다.</p>
                            </div>
                        </li>

                        <li style="position: relative">
                            <div class="my-text">
                                <h2>콘텐츠 확인</h2>
                                <p>펀딩 컨텐츠에 대한 검토 및 약점을 체결하는 단계입니다.</p>
                            </div>
                        </li>

                        <li style="position: relative">
                            <div class="my-text">
                                <h2>펀딩 오픈</h2>
                                <p>프로젝트가 최종 승인되어, 펀딩 오픈 대기 중 상태이거나 펀딩 진행 중인 단계입니다.
                                    오픈 예정을 신청한 경우네는 오픈 예정 진행 후 펀딩 오픈 됩니다.
                                </p>
                            </div>
                        </li>
                    </ul>

                </div>


            </div>

        </div>

    </main>
<%@include file="../hong-include/foot.jspf"%>
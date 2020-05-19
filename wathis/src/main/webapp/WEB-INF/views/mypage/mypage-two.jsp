<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="../hongcss/mypage/common.css">
<!-- fontawesome 코드 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://kit.fontawesome.com/8838b56230.js" crossorigin="anonymous"></script>
<!-- fontawesome 코드 -->
<script src="../hongjs/mypage/common.js"></script>

<header>
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
                <button name="" id="" class="head-show mar-right1">임시저장</button>
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
                            <a href="#">프로젝트 번호
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
                        <a href="/page/mypage">펀딩 준비</a><i class="fas fa-angle-down"></i>
                        <ul class="hide">
                            <li><a href="/page/mypage-one">기본 요건 및 정보</a></li>
                            <li><a href="/page/mypage-two">스토리 작성</a></li>
                            <li><a href="/page/mypage-three">리워드 설계</a></li>
                            <li><a href="/page/mypage-four">위험요인 및 정책</a></li>
                            <li><a href="/page/mypage-five">메이커 정보</a></li>
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

        </div>
        <div class="box2-funReady">
            <!-- 기본 정보 박스 -->
            <!-- <div class="flex-basic-adver"> -->
            <div class="basic-box">
                <div class="mar-bo3">
                    <span class=" fon-col fon-wei fon-siz3 ">펀딩 준비</span>
                    <span class=" fon-col fon-wei fon-siz3"><i class="fas fa-chevron-right"></i></span>
                    <span class=" fon-wei fon-siz3">스토리 작성</span>
                </div>


                <div class="flex-basic1">
                    <div class="basic-box-one wid4">
                        <h1 class="di-in2 mar-bo6">스토리 작성</h1>
                        <div class="info-box">
                            <p class="info-box mar-bo3">
                                메이커님의 프로젝트를 소개해보세요. 스토리에는 메이커님의 진심과 목소리가 잘 녹여질 수 있도록 명확하고, 솔직하게, 친근한 어투로 작성하세요.
                            </p>
                        </div>
                    </div>

                    <!-- 가이드 박스 -->
                    <div class="ba-adver-guide box-ra1 mar-right1 wid5 cu-poin">
						<div class="guide-box">
							<a class="fon-wei1 fon-siz7 fon-co11 di-in1 ">
								<i class="fal fa-book"></i>
								메이커님을 위한 필수 가이드
							</a>
						</div>
					</div>

                </div>

            </div>

            <!-- 1번 -->
            <div class="ba-project">
                <div class="flex-basic2 ba-pro-img">
                    <div class="mar-bo2 wid1">
                        <div class="box-container">
                            <div class="box-text-one">
                                <h4>소개 영상·사진 등록<span class="fon-co5">
                                        *</span></h4>
                                <p class="fon-col fon-siz3  mar-bo4">프로젝트 페이지 상단에 노출될 영상 또는 사진을 올려주세요.</p>
                            </div>
                            <div class="one-radio-box1">
                                <input class="ra-size" type="radio" name="ra1" id="projectimg1">
                                <label for="projectimg1" class="di-la1 mar-top1 fon-wei1 fon-siz2"> 소개 영상</label>
                                <div class="one-text-box1 text-padding4">
                                    <input class="hei1 fon-bor1 text-padding1" type="text" id="projectimg"
                                        placeholder="영상 URL 입력">
                                    <button class="hei1 box-back4 ra-btn fon-wei1 wid8 fon-co11 fon-siz2 box-ra1"
                                        type="button" id="">등록</button>
                                    <p class="fon-siz3 fon-co5 ">영상 URL을 확인하고 다시 등록하세요.</p>
                                    <p class="fon-siz3 fon-col">Youtube와 Vimeo의 URL등록 가능</p>
                                    <p class="fon-siz3 fon-col">영상 썸네일 이미지 사이즈 : 600 픽셀 이상</p>
                                </div>
                            </div>
                            <div class="one-radio-box2">
                                <input class="ra-size" type="radio" name="ra1" checked id="projectimg2">
                                <label for="projectimg2" class="di-la1 mar-top1 fon-wei1 fon-siz2"> 소개 사진</label>

                                <div class="one-text-box2 text-padding4">
                                    <div class="file-box">
                                        <label for="file1"><i class="fas fa-camera fon-co11"></i> 등록하기</label>
                                        <input type="file" id="file1">
                                    </div>
                                    <p class="fon-siz3 fon-col ">2MB 이하의 JPEG, JPG, GIF, PNG 파일</p>
                                    <p class="fon-siz3 fon-col">사이즈 : 최소 630X400 픽셀 이상</p>
                                    <p class="fon-siz3 fon-col">여러 장 등록 가능.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ba-guide3">
                        <div class=" text-padding3 box-li1 box-back1">
                            <h4 class="mar-bo5 fon-siz4 fon-co7">
                                <a href="#" class="fon-co4 ">소개 영상·사진</a>
                            </h4>
                            <p class="fon-siz4 mar-bo3 fon-co7">
                                사진과 영상을 모두 업로드하실 경우,영상만 노출됩니다. </p>
                            <h4 class="mar-bo5 fon-siz4 fon-co7">
                                영상 썸네일 이미지
                            </h4>
                            <p class="fon-siz4 mar-bo3 fon-co7">
                                youtube, vimeo 등에서 영상 썸네일을 지정할 수 있으며, 와디즈에서는 썸네일 지정 기능을 제공하지 않습니다.
                            </p>
                        </div>
                    </div>
                </div>
                <!-- 2번 -->
                <div class="flex-basic2 ba-pro-name">
                    <div class="mar-bo2 wid4">
                        <div class="name-left">
                            <div class="box-text-one">
                                <h4>프로젝트 요약<span class="fon-co5">
                                        *</span></h4>
                                <p class="fon-col fon-siz3 mar-bo4">프로젝트 페이지 상단 및 지지서명 시 노출됩니다.</p>
                            </div>

                            <div class="text-area">
                                <textarea name="" id="" cols="30" rows="3" maxlength="500"
                                    style="margin-top: 0px; margin-bottom: 0px; height: 165px; width: 100%; padding:15px; font-family: 'Noto Sans KR', sans-serif; color: #90949c;"
                                    placeholder="내용을 입력하세요."></textarea>
                                <p class="fon-siz3 fon-col mar-bo6 fon-wei1">100자 남음</p>
                            </div>

                        </div>
                    </div>
                    <div class="ba-guide1">
                        <div class=" text-padding3 box-li1 box-back1">
                            <h4 class="mar-bo5 fon-siz4 fon-co7">
                                이것만은 알아주었으면 좋겠어요!
                            </h4>
                            <p class="fon-siz4 mar-bo3 fon-co7">서포터들이 꼭 알아주었으면 하는 리워드/프로젝트의 매력 포인트가 있다면 적어주세요.</p>
                        </div>
                    </div>
                </div>
                <!-- 3번 -->
                <div class="flex-basic2">
                    <div class=" mar-bo2 wid4">
                        <label for="projectimg" class="di-la1 mar-top1 fon-wei1">스토리 광고 심의 동의<span class="fon-co5">
                                *</span></label><br>
                        <p class="fon-siz3 fon-col mar-bo5 ">스토리 작성 전, 와디즈에서 제공하는 광고 심의 가이드라인을 반드시 확인하세요. 동의를 진행해야
                            스토리 작성이 가능합니다. 오픈예정 스토리도 적용됩니다.</p>
                        <div class="three-text-box">
                            <ul>
                                <li><a href="#" class="fon-co4">공통 표시·광고 가이드라인</a></li>
                                <li><a href="#" class="fon-co4">식품 표시·광고 가이드라인</a></li>
                                <li><a href="#" class="fon-co4">화장품 표시·광고 가이드라인</a></li>
                                <li><a href="#" class="fon-co4">건강보조기구 표시·광고 가이드라인</a></li>
                            </ul>
                            <button type="button"
                                class="fon-siz1 box-ra1 fon-co9 hei5 fon-wei1 text-padding7 box-back4 mar-top4 all-btn"><i
                                    class="fas fa-check"></i>동의하기</button>
                        </div>
                    </div>

                </div>

                <!-- 4번 -->
                <div class="flex-basic2">
                    <div class="ba-pro-day mar-bo2 wid4">
                        <label for="project-day" class="di-la mar2 fon-wei1">프로젝트 스토리<span class="fon-co5">
                                *</span></label>
                        <p class="fon-siz2 fon-col mar-bo3">진정성 있고 매력적인 스토리로 서포터의 마음을 움직여볼까요? 우측의 스토리 필수 항목을 꼼꼼하게 확인
                            후 작성해 주세요. 필수 항목이 누락될 경우 오픈이 지연될 수 있습니다.</p>
                        텍스트 박스 들어가는 자리
                    </div>


                </div>

                <!-- 5번 -->
                <div class="flex-basic2 wid1">
                    <div class="ba-pro-day mar-bo2 wid4">
                        <label for="project-day" class="di-la mar2 fon-wei1">오픈예정 스토리<span class="fon-co5">
                                *</span></label>
                        <p class="fon-siz2 fon-col mar-bo3">프로젝트 오픈 전, 오픈예정 스토리를 서포터에게 프로젝트를 미리 알려주세요.</p>
                        텍스트 박스 들어가는 자리
                        <div class="ba-pro-day mar-bo2 wid4 flex-basic2 mar-top3">
                            <div class="five-text">
                                <p class="fon-siz3 fon-col m5">오픈예정 상세 페이지 미리 보기</p>
                                <p class="fon-siz3 fon-col mar-bo5">작성된 내용을 반드시 저장한 후에 모바일·PC 화면으로 미리 확인해보세요</p>
                            </div>
                            <div class="five-btn">
                                <button class="wid9 mar-left2">모바일 미리보기</button>
                                <button class="wid9 mar-left2">PC화면 미리보기</button>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- 6번 -->
                <div class="btn-save">
                    <button class="btn-end" type="button">저장하기</button>
                </div>
            </div>


        </div><!-- 중간 container 박스 -->

    </div><!-- 전체 container 박스 -->

</main>
<footer></footer>
</body>


<%@include file="../hong-include/foot.jspf"%>
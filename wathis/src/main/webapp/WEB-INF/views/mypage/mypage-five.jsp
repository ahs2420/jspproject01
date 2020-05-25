<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../hongcss/mypage/common.css">
<!-- fontawesome 코드 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://kit.fontawesome.com/8838b56230.js" crossorigin="anonymous"></script>
<!-- fontawesome 코드 -->
<script src="../hongjs/mypage/common.js"></script>

<body>
    <header>
        <div class="position-fix">
            <div class="head-con">
                <div class="logo">
                    <a href="http://localhost:8888"><span class="main-color">W</span>a<span class="main-color">T</span>his</a>
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
                   
                </ul>

            </div>
            <div class="box2-funReady">
                <!-- 기본 정보 박스 -->
                <!-- <div class="flex-basic-adver"> -->
                <div class="basic-box">
                    <div class="mar-bo3">
                        <span class=" fon-col fon-wei2 fon-siz3 ">펀딩 준비</span>
                        <span class=" fon-col fon-wei2 fon-siz3"><i class="fas fa-chevron-right"></i></span>
                        <span class=" fon-wei2 fon-siz3">메이커 정보</span>
                    </div>


                    <div class="flex-basic1 wid1">
                        <div class="basic-box-one wid4">
                            <h1 class="di-la2 mar-bo6">메이커 정보</h1>

                        </div>
                        <!-- 가이드 박스 -->
                        <div class="ba-adver-guide box-ra1 mar-right1 wid5 cu-poin">
                            <div class="guide-box">
                                <a class="fon-wei1 fon-siz7 fon-co11 di-la1 ">
                                    <i class="fal fa-book "></i>
                                    메이커님을 위한 필수 가이드
                                </a>
                            </div>
                        </div>

                    </div>
                    <!-- 1번 -->
                    <div class="ba-project">
                        <div class="flex-basic2 wid1">
                            <div class="mar-bo2 wid4">
                                <div class="box-container">
                                    <div class="box-text-one">
                                        <h4 class="fon-wei1">메이커 기본 정보</h4>
                                        <p class="fon-col">프로젝트 상세 페이지에 노출되는 정보이니, 서포터와 소통이 가능한 정확한 정보를 입력해주세요.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 2번 -->
                        <div class="flex-basic2 ">
                            <div class="mar-bo3 wid4 ">
                                <label for="text-box1" class="di-la1 mar-top1 fon-wei1">메이커명<span class="fon-co5">
                                        *</span></label>
                                <p class="fon-siz3 fon-col fon-wei mar-bo6">법인사업자는 법인등기부상 법인명 / 개인 사업자는 주민등록상 성명 또는 상호 /
                                    개인은
                                    주민등록상 성명을 입력하세요. </p>
                                <input class="wid1 hei1 fon-bor1 text-padding1" type="text" id="text-box1"
                                    placeholder="메이커명 입력">
                                <p class="fon-siz3 fon-col ">40자 남음</p>
                            </div>
                        </div>
                        <!-- 3번 -->
                        <div class="flex-basic2 ba-pro-name">
                            <div class="mar-bo2 wid4">
                                <label for="projectimg" class="di-la1 mar-top1 fon-wei1">메이커 프로필 이미지<span
                                        class="fon-co5">
                                        *</span></label><br>
                                <div class="file-box mar-top3">
                                    <label for="file1"><i class="fas fa-camera fon-co9"></i> 등록하기</label>
                                    <input type="file" id="file1">
                                </div>
                                <p class="fon-siz4 fon-col mar-top5">3MB이하의 JPEG, PNG파일, 사이즈: 300X300 픽셀 이상</p>

                            </div>
                            <div class="ba-guide1 ba-pro-name">
                                <div class=" text-padding3 box-li1 box-back1">
                                    <h4 class="mar-bo5 fon-siz4 fon-co7">
                                        <p class="">사진으로 신뢰감을 주세요.</p>
                                    </h4>
                                    <p class="fon-siz4 mar-bo3 fon-co7">
                                        업체 로고나 메이커님의 사진을 등록해주시면, 메이커 정보에서 확인할 수 있습니다.</p>

                                </div>
                            </div>
                        </div>

                        <!-- 4번 -->
                        <div class="mar-bo2">
                            <div class="flex-basic2 ba-pro-price">
                                <div class="ba-pro-price wid4 ">
                                    <label for="text-box2" class="di-la1 mar-top1 fon-wei1">

                                        <h4 class="di-in1">함께하는 멤버</h4>
                                        <span class="fon-co10 fon-siz2">(선택사항)</span>

                                    </label>
                                    <p class="fon-siz3 fon-col fon-wei mar-bo5">와디즈 회원으로 가입된 이메일 계정만 등록 가능합니다.</p>
                                    <input class="wid1 hei1 fon-bor1 text-padding1" type="text" id="text-box2"
                                        placeholder="멤버 이메일 입력">

                                </div>
                                <div class="ba-guide2">
                                    <div class=" text-padding3 box-li1 box-back1">
                                        <h4 class="mar-bo5 fon-siz4 fon-co7">
                                            <p class="">팀원을 소개해주세요.</p>
                                        </h4>
                                        <p class="fon-siz4 mar-bo3 fon-co7">
                                            프로젝트를 함께 하는 팀원의 와디즈 계정을 등록해주시면, 메이커 정보에서 함께 확인할 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 5번 -->
                        <div class="mar-bo2 ">
                            <div class="flex-basic2 ba-pro-img ">
                                <div class="wid4 ">
                                    <label for="projectprice" class="di-la1 mar-top1 fon-wei1">
                                        <span class="">문의 이메일
                                            <span class="fon-co5"> *
                                            </span>
                                        </span>
                                    </label>
                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="이메일 입력">

                                </div>
                                <div class="ba-guide3">
                                    <div class=" text-padding3 box-li1 box-back1">
                                        <p class="fon-siz4 mar-bo3 fon-co7">
                                            오픈 이후 서포터와 원활한 소통이 가능한 이메일 주소를 적어주세요.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 6번 -->
                        <div class="mar-bo2 ">
                            <div class="flex-basic2 ba-pro-ka">
                                <div class="wid4 ">
                                    <label for="projectprice" class="di-la1 mar-top1 fon-wei1"><span class="">문의
                                            전화번호<span class="fon-co5"> *
                                            </span></label>
                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="전화번호 입력">

                                </div>
                                <div class="ba-guide4">
                                    <div class=" text-padding3 box-li1 box-back1">
                                        <p class="fon-siz4 mar-bo3 fon-co7">
                                            오픈 이후 서포터와 원활한 소통이 가능한 이메일 주소를 적어주세요.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 7번 -->
                        <div class="mar-bo2">
                            <div class="flex-basic2 ba-pro-day">
                                <div class="mar-bo2 wid4 ">
                                    <label for="projectprice" class="di-la1 mar-top1 fon-wei1">
                                        <h4 class="di-in1">카카오톡 채널</h4>
                                        <span class="fon-co10 fon-siz2">(선택사항)</span>
                                    </label>

                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="검색용 아이디 입력">
                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="홈페이지 URL 입력">

                                </div>
                                <div class="ba-guide5">
                                    <div class=" text-padding3 box-li1 box-back1">

                                        <p class="fon-siz4 mar-bo3 fon-co7">
                                            오픈 이후 서포터와 원활한 소통이 가능한 카카오톡채널 계정이 있다면 홈 URL을 적어주세요.
                                            ※홈 URL은 카카오톡채널 관리자 센터 > 관리 > 상세설정에서 확인하실 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 8번 -->
                        <div class="mar-bo2">
                            <div class="flex-basic2 ba-pro-adult">
                                <div class="mar-bo2 wid4 ">
                                    <label for="projectprice" class="di-la1 mar-top1 fon-wei1">
                                        <h4 class="di-in1">홈페이지</h4>
                                        <span class="fon-co10 fon-siz2">(선택사항)</span>
                                    </label>

                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="홈페이지 URL 입력">
                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="홈페이지 URL 입력">

                                </div>
                                <div class="ba-guide6">
                                    <div class=" text-padding3 box-li1 box-back1">

                                        <p class="fon-siz4 mar-bo3 fon-co7">
                                            운영 중인 웹사이트(홈페이지 또는 블로그 등)가 있다면 적어주세요. 최대 2개까지 등록 가능합니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 9번 -->
                        <div class="mar-bo2">
                            <div class="flex-basic2 ba-pro-seach">
                                <div class="mar-bo2 wid4">
                                    <label for="projectprice" class="di-la1 mar-top1 fon-wei1">

                                        <h4 class="di-in1">SNS</h4>
                                        <span class="fon-co10 fon-siz2">(선택사항)</span> </span>
                                    </label>

                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="https://www.facebook.com/">
                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="https://www.twitter.com/">
                                    <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                        id="projectprice" placeholder="https://www.instagram.com/">

                                </div>
                                <div class="ba-guide7">
                                    <div class=" text-padding3 box-li1 box-back1">

                                        <p class="fon-siz4 mar-bo3 fon-co7">
                                            운영 중인 SNS채널 (페이스북,인스타그램 또는 트위터 등)이 있다면 적어주세요.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--representative 대표자 정보 -->
                        <div class="repre-container">
                            <div class="box-container">
                                <div class="box-text-one">
                                    <h3>대표자 정보 </h3>
                                    <p class="fon-siz2 fon-col fon-wei mar-bo3">정산과 관련된 전자 약정 체결을 위한 정보이니, 정확하게 입력해주세요.
                                    </p>
                                </div>
                            </div>
                            <!--  대표자 1번 -->
                            <div class="flex-basic2 ba-pro-name">
                                <div class="mar-bo2 wid4 ">
                                    <label for="projectprice" class="di-la1 mar-top1 fon-wei1">사업자 구분<span
                                            class="fon-co5">
                                            *</span></label>
                                    <select class="wid1 hei1 fon-bor1">
                                        <option selected>사업자 구분 선택</option>
                                        <option>개인</option>
                                        <option>개인 사업자</option>
                                        <option>법인사업자</option>
                                    </select>
                                </div>

                                <div class="ba-guide1 ba-pro-name">
                                    <div class=" text-padding3 box-li1 box-back1">
                                        <h4 class="mar-bo5 fon-siz4 fon-co7">
                                            <p class="">사업자등록증 상단의 사업자 종류를 확인해주세요.</p>
                                        </h4>
                                        <p class="fon-siz4 mar-bo3 fon-co7">
                                            일반과세자, 간이과세자는 개인사업자를 선택해주세요.</p>
                                        <h4 class="mar-bo5 fon-siz4 fon-co7">
                                            미성년자는 사업자 구분이 개인인 경우 프로젝트 진행이 불가합니다.
                                        </h4>

                                    </div>
                                </div>
                            </div>
                            <!--  대표자 2번 -->
                            <div class="flex-basic2 ba-pro-price">
                                <div class="mar-bo2 wid4">
                                    <label for="projectimg" class="di-la1 mar-top1 fon-wei1">통장 사본
                                        <span class="fon-co5">
                                            *</span></label><br>
                                    <div class="file-box mar-top4">
                                        <label for="file1"><i class="fas fa-file-upload fon-co9"></i> 업로드</label>
                                        <input type="file" id="file1">
                                    </div>
                                    <p class="fon-siz3 fon-col mar-top5">펀딩 성공 시 펀딩 금액을 수령할 법인 명의의 계좌 사본을 첨부하세요.</p>
                                    <p class="fon-siz3 fon-col mar-top5"> jpg, jpeg, png, pdf / 10MB 이하 파일 1개만 업로드
                                        가능합니다.
                                    </p>

                                </div>
                                <div class="ba-guide2">
                                    <div class=" text-padding3 box-li1 box-back1">
                                        <h4 class="mar-bo5 fon-siz4 fon-co7">
                                            통장 사본 업로드
                                        </h4>
                                        <p class="fon-siz4 mar-bo3 fon-co7">
                                            통장 사본의 정보는 반드시 정산을 받을 계좌 정보와 동일해야 합니다.</p>

                                    </div>
                                </div>
                            </div>

                            <!--  대표자 3번 -->
                            <div class="flex-basic2 ">
                                <div class="mar-bo2 wid4 ">
                                    <label for="projectprice" class="di-la1 mar-top1 fon-wei1">대표자명<span
                                            class="fon-co5">
                                            *</span></label>
                                    <p class="fon-siz3 fon-col fon-wei mar-bo5">사업자등록증에 등록된 대표자의 이름과 일치해야 합니다.</p>
                                    <input class="wid1 hei1 fon-bor1 text-padding1" type="text" id="projectprice"
                                        placeholder="대표자명 입력">

                                </div>
                            </div>
                            <!--  대표자 4번 -->
                            <div class="flex-basic2 ">
                                <div class="mar-bo2 wid4 ">
                                    <label for="projectprice" class="di-la1 mar-top1 fon-wei1">대표자 이메일<span
                                            class="fon-co5">
                                            *</span></label>
                                    <p class="fon-siz3 fon-col fon-wei mar-bo5">대표자의 이메일로 전자 약정서가 발송되며, 대표자가 직접 체결해야합니다.
                                        (모바일/PC 모두 가능)</p>
                                    <input class="wid1 hei1 fon-bor1 text-padding1" type="text" id="projectprice"
                                        placeholder="대표자 이메일 입력">

                                </div>
                            </div>
                            <!--  대표자 5번 -->
                            <div class="mar-bo2">
                                <div class="flex-basic2 ba-pro-day">
                                    <div class="mar-bo2 wid4 ">
                                        <label for="projectprice" class="di-la1 mar-top1 fon-wei1"><span class="">
                                                <h4 class="di-in1">공동 대표자</h4>
                                                <span class="fon-co10 fon-siz2">(선택사항)</span>
                                            </span></label>
                                        <div class="flex-end">
                                            <input class="wid6 hei1 fon-bor1 text-padding1" type="text"
                                                id="projectprice" placeholder="공통 대표자 입력">
                                            <input class="wid10 hei1 fon-bor1 text-padding1" type="text"
                                                id="projectprice" placeholder="공통 대표자 이메일 입력">
                                            <span class="add-btn ">
                                                <button
                                                    class="hei1 fon-bor1 text-padding3 box-back4 fon-co9 cu-poin fon-wei1">추가</button>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="ba-guide5">
                                        <div class=" text-padding3 box-li1 box-back1">
                                            <h4 class="mar-bo5 fon-siz4 fon-co7">
                                                대표자가 2인 이상인가요?
                                            </h4>
                                            <p class="fon-siz4 mar-bo3 fon-co7">
                                                각자 대표인 경우, 대표자 1인의 서명만으로도 효력을 가지므로 공동 대표자를 기입하지 않으셔도 됩니다.</p>
                                            <p class="fon-siz4 mar-bo3 fon-co7">
                                                공동 대표인 경우, 대표자를 모두 기입해주셔야 합니다. 상단의 대표자에 기입한 이메일 주소로 약정서가 먼저 발송되어 체결이 완료된
                                                이후
                                                공동 대표자에 약정서가 발송됩니다.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--  대표자 6번 -->
                            <div class="btn-save">
                                <button class="btn-end" type="button">저장하기</button>
                            </div>
                        </div>
                    </div>
                </div>
    </main>
    <footer></footer>
</body>


<%@include file="../hong-include/foot.jspf"%>
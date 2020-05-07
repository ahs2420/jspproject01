<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../hongcss/mypage/mypage-three.css">

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

            </div>
            <div class="box2-funReady">
                <!-- 기본 정보 박스 -->
                <!-- <div class="flex-basic-adver"> -->
                <div class="basic-box">
                    <div class="mar-bo3">
                        <span class=" fon-col fon-wei fon-siz3 ">펀딩 준비</span>
                        <span class=" fon-col fon-wei fon-siz3"><i class="fas fa-chevron-right"></i></span>
                        <span class=" fon-wei fon-siz3">리워드 설계</span>
                    </div>


                    <div class="flex-basic2">
                        <div class="basic-box-one wid4">
                            <h1 class="di-la2 mar-bo6">리워드 설계</h1>
                            <div class="info-box">
                                <p class="info-box mar-bo3">
                                    서포터에게 제공할 리워드 내용을 입력하세요. 서포터가 쉽게 펀딩할 수 있는 저렴한 리워드부터 서포터의 보다 빠른 펀딩을 유도할 수 있는 얼리버드
                                    리워드까지 다양한 리워드를 구성하세요.
                                </p>
                            </div>
                        </div>

                        <div class="ba-adver-guide box-ra1 mar-right1 wid5">
                            가이드 박스
                        </div>

                    </div>
                    <!-- 1번 -->
                    <div class="ba-project">
                        <div class="flex-basic2 ba-pro-img">
                            <div class=" mar-bo2 wid4">
                                <div class="box-container bor-box1 text-padding3 fon-bor1">
                                    <div class="box-text-one">
                                        <h4>리워드 설계 조건</h4>
                                    </div>
                                    <div class="one-radio-box">
                                        <ul>
                                            <li>
                                                <span class="fon-siz3 fon-wei1">정렬 순서</span>
                                                <span class="mar-left1 fon-siz3">
                                                    혜택이 높은 순으로 나오도록 정렬 순서를 등록하세요.
                                                </span>
                                            </li>
                                            <li class="">
                                                <span class="fon-siz3 fon-wei1">제한 수량</span>
                                                <span class="mar-left1 fon-siz3">
                                                    생산 및 제공할 수 있는 리워드의 총 수량으로 해당 수량이 모두 펀딩되면 더 이상 펀딩 불가합니다.
                                                </span>
                                            </li>
                                            <li class="">
                                                <span class="fon-siz3 fon-wei1">발송 시작일</span>
                                                <span class="mar-left1 fon-siz3">
                                                    프로젝트 종료일 이후부터 3개월 이내로 설계 가능합니다.
                                                </span>
                                            </li>
                                            <li class="">
                                                <span class="fon-siz3 fon-wei1">옵션 조건</span>
                                                <span class="mar-left1 fon-siz3">
                                                    혜택이 높은 순으로 나오도록 정렬 순서를 등록하세요.
                                                    <a href="#" class="fon-co4">리워드 옵션 2개 이상 설계 방법 알아보기</a>
                                                </span>
                                            </li>
                                        </ul> 
                                    </div>
                                </div>
                                <div class="ba-guide3 box-back1 text-padding6">
                                    <a href="#" class="fon-siz3 fon-co4">리워드를 잘 설계해야 펀딩률이 쑥쑥!</a>
                                    <p class="fon-siz3 fon-co3">오픈하자마자 빠른 펀딩을 유도할 수 있는 얼리버드 리워드! 가이드를 통해 리워드를 만들어보세요.</p>
                                </div>
                            </div>
                        </div>
                        <!-- 2번 -->
                        <div class="add-box">
                            <div class="file-box">
                                <label for="file1"><i class="fas fa-plus fon-co9"></i> 추가하기</label>
                                <input type="file" id="file1">
                            </div>
                            <div class="add-text-box">
                                <span class="fon-siz3 fon-co5">
                                    <i class="fas fa-exclamation-circle"></i>
                                    리워드를 추가하기 전에 프로젝트 종료일을 설정해주세요.
                                </span>
                                <div class="add-box fon-siz3 mar-left3 mar-bo3">
                                    프로젝트 종료일은 <strong>펀딩 준비</strong> > <a href="#" class="fon-co4">기본정보</a>
                                    기본정보에서 설정할 수 있습니다.
                                </div>
                            </div>
                        </div>

                        <!-- 3번 -->

                        <div class="mar-bo2 wid6 text-padding9">
                            <div class="name-left bor-box1 fon-bor1 text-padding6">
                                <div class="flex-box">
                                    <div class="">5000원</div>
                                    <div class="fl-sp"> 제한 수량 3개</div>
                                </div>

                                <div class="receipt box text-padding3">
                                    <div class="flex-box fl-sp">
                                        <span class="fl-sp fon-siz3 mar-bo6">킬리가방 얼리버드</span>
                                        <span class="fl-sp fon-siz3 mar-bo6">$ 100,000</span>
                                    </div>
                                    <div class="flex-box fl-sp fon-siz3 mar-bo6">
                                        <span class="fl-sp fon-siz3 mar-bo6"> 배송비</span>
                                        <span class="fl-sp fon-siz3 mar-bo6 "> 해당 없음</span>
                                    </div>
                                    <div class="flex-box fl-sp fon-siz3 mar-bo6">
                                        <span class="fl-sp fon-siz3 mar-bo6 "> 리워드 발송 시작일</span>
                                        <span class="fl-sp fon-siz3 mar-bo6 "> 2020년 중손 (11~20일)</span>
                                    </div>

                                    <span class="fon-siz3 fon-co5"> <i class="fas fa-exclamation-circle"></i> 리워드 발송
                                        시작일을
                                        다시 선택하세요.</span>
                                    <div class="flex-box mar-top4">
                                        <div class="update-box">
                                            <span class="fl-sp fon-siz3"> 편집 </span>
                                        </div>
                                        <div class="update-box">
                                            <span class="fl-sp fon-siz3"> 삭제</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="btn-save">
                        <button class="btn-end" type="button">저장하기</button>
                    </div>
                </div>
            </div>
        </div><!-- 전체 container 박스 -->


    </main>
    <footer></footer>
</body>




<script>
    $(function () {

        $(".mypage-li-menu").click(function () {

            $(this).find(".hide").toggle();
            $(this).toggleClass("active");

        });

    });


    $(function () {
        $("#my-modal").click(function () {
            $(".my-modal").addClass("active");
        });

    });


    // 스토리 작성 Q1번 
    $(function () {
        $(".one-text-box1").hide();


        $("#projectimg1").click(function () {
            $(".one-text-box1").show();

        });
        $("#projectimg2").click(function () {
            $(".one-text-box1").hide();
        });

        $("#projectimg1").click(function () {
            $(".one-text-box2").hide();
        });

        $("#projectimg2").click(function () {
            $(".one-text-box2").show();
        });
    });


    $(function () {
        $(".my-modal-close").click(function () {
            $(".my-modal").removeClass("active")
        });
        // 가이드 박스 내용
        $(function () {
            $(".ba-guide1").hide();
            $(".ba-guide2").hide();
            $(".ba-guide4").hide();
            $(".ba-guide5").hide();
            $(".ba-guide6").hide();
            $(".ba-guide7").hide();

            // 1번
            $(".ba-pro-name").mousemove(function () {
                $(".ba-guide1").show()

            });
            $(".ba-pro-name").mouseleave(function () {
                $(".ba-guide1").hide();

            });
            // 2번
            $(".ba-pro-price").mouseover(function () {
                $(".ba-guide2").show();

            });
            $(".ba-pro-price").mouseleave(function () {
                $(".ba-guide2").hide();
            });
            // 3번
            $(".ba-pro-img").mouseover(function () {
                $(".ba-guide3").show();

            });
            $(".ba-pro-img").mouseleave(function () {
                $(".ba-guide3").hide();
            });
            // // 4번
            $(".ba-pro-ka").mouseover(function () {
                $(".ba-guide4").show();

            });
            $(".ba-pro-ka").mouseleave(function () {
                $(".ba-guide4").hide();
            });
            // 5번
            $(".ba-pro-day").mouseover(function () {
                $(".ba-guide5").show();

            });
            $(".ba-pro-day").mouseleave(function () {
                $(".ba-guide5").hide();
            });
            // 6번
            $(".ba-pro-adult").mouseover(function () {
                $(".ba-guide6").show();

            });
            $(".ba-pro-adult").mouseleave(function () {
                $(".ba-guide6").hide();
            });
            // 7번
            $(".ba-pro-seach").mouseover(function () {
                $(".ba-guide7").show();

            });
            $(".ba-pro-seach").mouseleave(function () {
                $(".ba-guide7").hide();

            });


        });


    });
</script>

</html>








<%@include file="../hong-include/foot.jspf"%>
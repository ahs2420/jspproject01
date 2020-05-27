
//common.js 와 공통된 부분 -> 펀딩준비 목록 보는 js
//$(function () {
//
//    $(".mypage-li-menu").click(function () {
//
//        $(this).find(".hide").toggle();
//        $(this).toggleClass("active");
//
//    });
//
//});
//

$(function () {
    $("#my-modal").click(function () {
        $(".my-modal").addClass("active");
    });

});

$(function () {
    $(".my-modal-close").click(function () {
        $(".my-modal").removeClass("active")

    });

});


    // 기본 요건 Q1번 radio 버튼 기능 
    $(function () {
        $(".yes-box").hide();

        $("#ra-q2-yes").click(function () {
            $(".yes-box").show();

        });
        $("#ra-q1-no").click(function () {
            $(".yes-box").hide();
        });

    });

    // 기본 요건 Q2번 radio버튼 기능
    $(function () {
        $(".q2-ra-text1").hide();
        $(".q2-ra-text2").hide();
        $(".q2-ra-text3").hide();
        $(".q2-ra-text4").hide();
        $(".q2-ra-text5").hide();

        $("#ra-q2-1").click(function () {
            $(".q2-ra-text1").show();
            $(".q2-ra-text2").hide();
            $(".q2-ra-text3").hide();
            $(".q2-ra-text4").hide();
            $(".q2-ra-text5").hide();
        });
        $("#ra-q2-2").click(function () {
            $(".q2-ra-text2").show();
            $(".q2-ra-text1").hide();
            $(".q2-ra-text3").hide();
            $(".q2-ra-text4").hide();
            $(".q2-ra-text5").hide();
        });
        $("#ra-q2-3").click(function () {
            $(".q2-ra-text3").show();
            $(".q2-ra-text1").hide();
            $(".q2-ra-text2").hide();
            $(".q2-ra-text4").hide();
            $(".q2-ra-text5").hide();
        });
        $("#ra-q2-4").click(function () {
            $(".q2-ra-text4").show();
            $(".q2-ra-text1").hide();
            $(".q2-ra-text2").hide();
            $(".q2-ra-text3").hide();
            $(".q2-ra-text5").hide();
        });
        $("#ra-q2-5").click(function () {
            $(".q2-ra-text5").show();
            $(".q2-ra-text1").hide();
            $(".q2-ra-text3").hide();
            $(".q2-ra-text4").hide();


        });
    });

    // 질문가이드 내용 박스
    $(function () {
        $(".q1-guide").hide();
        $(".q2-guide").hide();
        $(".q3-guide").hide();
        $(".q4-guide").hide();
        $(".q5-guide").hide();
        $(".q6-guide").hide();
        $(".q7-guide").hide();


        $(".q1-text").mouseover(function () {
            $(".q1-guide").show();
        });
        $(".q1-text").mouseleave(function () {
            $(".q1-guide").hide();
        });
        $(".q2-text").mouseover(function () {
            $(".q2-guide").show();
        });
        $(".q2-text").mouseleave(function () {
            $(".q2-guide").hide();
        });
        $(".q3-text").mouseover(function () {
            $(".q3-guide").show();
        });
        $(".q3-text").mouseleave(function () {
            $(".q3-guide").hide();
        });
        $(".q4-text").mouseover(function () {
            $(".q4-guide").show();
        });
        $(".q4-text").mouseleave(function () {
            $(".q4-guide").hide();
        });
        $(".q5-text").mouseover(function () {
            $(".q5-guide").show();
        });
        $(".q5-text").mouseleave(function () {
            $(".q5-guide").hide();
        });
        $(".q7-text").mouseover(function () {
            $(".q7-guide").show()
        });
        $(".q7-text").mouseleave(function () {
            $(".q7-guide").hide();
        });


    });
  
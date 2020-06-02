// ALL 메뉴 부분
$(function () {

    $(".mypage-li-menu").click(function () {

        $(this).find(".hide").toggle();
        $(this).toggleClass("active");

    });

});

// $(function () {
//     $("#my-modal").click(function () {
//         $(".my-modal").addClass("active");
//     });

// });


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
        $(".ba-guide3").hide();
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

        // 4번
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
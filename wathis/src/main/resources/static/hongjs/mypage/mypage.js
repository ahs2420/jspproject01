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

$(function () {
    $(".my-modal-close").click(function () {
        $(".my-modal").removeClass("active")

    });

});

    $(function () {
        $("#upbox-text").hide();
        $("#hr-two").hide();

        $("#show").click(function () {
            $("#upbox-text").show();
            $("#inbox-text").hide();
            $("#hr-two").show();
        });
    });
    $(function () {
        $("#hide").click(function () {
            $("#inbox-text").show();
            $("#upbox-text").hide();
        });

    });
    $(function () {
        $("#modal").click(function () {
            $(".modal").addClass("active");
        });
    });
    $(function () {
        $(".modal-close").click(function () {
            $(".modal").removeClass("active");

        });
    });
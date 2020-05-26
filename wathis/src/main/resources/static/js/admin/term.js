$(function(){
    $(".term-view-btn").click(function(){
        ajaxTerm($(this).data("target"));
    });
});
function ajaxTerm(item){
    var $item = $("."+item);
    $(".term_register").removeClass("on");
    $item.removeClass("on");
    var data = {
        "item" : item
    };
    var option={
        "url" : "/termAjax",
        "data" : data,
        "dataType" : "HTML"
    }
    var ajaxReturn = ajaxStan(option);
}
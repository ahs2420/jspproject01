$(function(){
    var item_sel =(location.hash)? location.hash.replace(/#/gi,""):"term_register";
    ajaxTerm(item_sel);
    $(".term-view-btn").click(function(){
        ajaxTerm($(this).data("target"));
    });
});
function ajaxTerm(item){
    var $item = $("."+item);
    var data = {
        "item" : item
    };
    var option={
        "url" : "/termAjax",
        "data" : data,
        "dataType" : "HTML"
    }
    var ajaxReturn = ajaxStan(option);
    var $target = $("#term-box");
    if(ajaxReturn.data){
        $target.html(ajaxReturn.data);
        $(".term-menu").children("li").removeClass("on");
        $item.addClass("on");
    }else{
        ajaxTerm("term_register");
    }
}
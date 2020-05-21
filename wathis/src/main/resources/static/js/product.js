$(function(){
    $(".owl-carousel").owlCarousel({
        loop:true,
        nav:true,
        dots:false,
        items:1,
        autoPlay:true,
        autoplayTimeout:3000,
        autoplayHoverPause:false
    });
});
$(function(){
    var navOffset = $('.product-nav').offset().top-$("nav").height()+1;
    $(".product-view-btn").click(function(e){
        var target=$(this).attr("href");
        var targetClass=$($(this).data("target"));
        var buttonCover=$(this).parent();
        targetClass.each(function(){
            ("#"+$(this).attr("id")==target)?$(this).addClass("on"):$(this).removeClass("on");
        });
        buttonCover.siblings().removeClass("on");
        buttonCover.addClass("on");
        $("html,body").animate({scrollTop:navOffset},500);
        e.preventDefault(event);
    });
});
$(function(){
    var navOffset = $('.product-nav').offset().top-$("nav").height();
    $(window).scroll(function(){
        var windowOffset = $(window).scrollTop();
        if(windowOffset>navOffset){
            $(".product-nav").addClass("active").css("top",$("nav").height()+"px");
            $("section").css("margin-top",$(".product-nav").height()+"px");
        }else{
            $(".product-nav").removeClass("active").css("top","");
            $("section").css("margin-top","0px");
        }
    });
});
$(function(){
	var moveTop=$(".product-reward-select").offset().top+$(".product-reward-select").height();
	var navHeigth=$(".product-nav").height()+$("nav").height()+10;
    $(window).scroll(function(){
        var windowOffset = $(window).scrollTop();
        var windowWidth = $(document).width();

        //console.log(windowWidth);
        if(windowWidth>1080&&windowOffset>moveTop+10){
            $(".product-status ").css({"position":"fixed","top":"50%","width":"300px","transform":"translateY(-50%)"});
        }else{
            $(".product-status ").css({"position":"","top":"","width":"","transform":""});
        }
    });
});
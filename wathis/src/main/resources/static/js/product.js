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

$(function(){
    $(document).on("click",".btn-comment-add",function(){
        var $form = $($(this).data("target"));
        var data = $form.serialize();
        var option={
            "url":$(this).data("url"),
            "data": data
        };
        var ajaxResult = ajaxStan(option);
        if(ajaxResult.status){
            alert(ajaxResult.data.msg);
            ajaxCommentList();
            $form.find("[name=comment]").val("");
        }else{
            alert("시스템 오류입니다.\n관리자에게 문의해 주세요.");

        }
    });
    $(document).on("click",".btn-comment-delete",function(){
       if(confirm("댓글을 삭제하시겠습니까?")){
            var data = {"id":$(this).data("id")};
            var option={
                "url":"/proComment/deleteComment",
                "data": data
            };
            var ajaxResult = ajaxStan(option);
            if(ajaxResult.status){
                alert(ajaxResult.data.msg);
                ajaxCommentList();
            }else{
                alert("시스템 오류입니다.\n관리자에게 문의해 주세요.");

            }
       }
    });
    $(document).on("click",".comment-btn",function(){
        $($(this).data("target")).slideToggle(500);
    });
    $(document).on("submit",".comment-form",function(){
        alert("err");
        return false;
    });
    ajaxCommentList();
});
$(function(){
    $(".proNotDelete").click(function(){
        var id = $(this).data("id");
        var pro_id = $(this).data("product_id");
        var url = "/proNotice/deleteNotice?link=product&id="+id+"&product_id="+pro_id;
        if(confirm("새소식을 삭제하시겠습니까?")){
            location.href=url;
        }
    });
});
function ajaxCommentList(){
    var id = $("main").data("id");
    var member_id = $("main").data("member_id");
    var member_status = $("#member_status").val();
    var $target = $(".comment-item-wrap");
    var data = {
        "product_id":id
    };
    var option={
        "url":"/proComment/getComment",
        "data": data
    };
    var ajaxResult = ajaxStan(option);
    var html ="";
    if(ajaxResult.status){
        ajaxResult.data.count=(ajaxResult.data.count==0)?"":ajaxResult.data.count;
        $("#proComBtn").attr("data-items",ajaxResult.data.count);
        if(ajaxResult.data.count>0){
            for(var pvo of ajaxResult.data.pvoList){
                pvo.member_imgae = (pvo.member_imgae !=null&&pvo.member_imgae !="")?pvo.member_imgae:"/images/icon/file-upload-icon.png";
                var deleteBtn = (member_id==pvo.member_id)?'<div class="flex-box flex-j-end mt10 btn-comment-delete" data-id="'+pvo.id+'"><button>삭제</button></div>':'';
                var recieveComment=""
                if(pvo.parent_id==0){
                    if(member_id>0){
                        recieveComment='\
                        <div class="comment-recomment-form-wrap mb20">\
                            <div class="txt-right">\
                                <button data-target="#comment-'+pvo.id+'" class="comment-btn main-color toggle-target" >답글달기</button>\
                            </div>\
                            <form class="comment-form dis-none mt10" id="comment-'+pvo.id+'" name="comment" action="" method="POST" onsubmit="return false;">\
                                <input type="hidden" name="product_id" value="'+id+'" />\
                                <input type="hidden" name="member_status" value="'+member_status+'" />\
                                <input type="hidden" name="member_id" value="'+member_id+'" />\
                                <input type="hidden" name="parent_id" value="'+pvo.id+'" />\
                                <textarea name="comment" class="mb5"></textarea>\
                                <div class="btn-wrap mb20">\
                                    <button class="btn-stan btn-main btn-comment-add" data-target="#comment-'+pvo.id+'" type="button" data-url="/proComment/setComment">\
                                        댓글달기\
                                    </button>\
                                </div>\
                            </form>\
                        </div>\
                        ';
                    }
                    
                    html+='\
                        <div class="comment-item gray-round-box pt20 pb20 pl5p pr5p mb20">\
                            <div class="comment-profile flex-box flex-a-center mb10">\
                                <div class="img-box"> \
                                    <!--{작성자 프로필 아이콘}-->\
                                    <img class="icon-50 icon-round" src="'+pvo.member_imgae+'">\
                                </div>\
                                <div class="comment-profile-txt ml20">\
                                    <!--{작성자}-->\
                                    <p class="bold">'+pvo.member_userid +'</p>\
                                    <!--{작성자}|{작성일}-->\
                                    <p class="tiny-content"><span class="main-color">'+pvo.member_status  +'</span><span class="gray"> | '+pvo.reg_date   +'</span></p>\
                                </div>\
                            </div>\
                            <div class="comment-content">\
                                <!--댓글 내용-->\
                                <p>'+pvo.comment    +'</p>\
                            </div>\
                            '+deleteBtn+'\
                        </div>\
                        '+recieveComment+'\
                    ';
                }else{
                    html+='\
                    <div class="comment-item-wrap mb20">\
                        <div class="comment-recomment-item gray-round-box pt20 pb20 pl5p pr5p">\
                            <div class="comment-profile flex-box flex-a-center mb10">\
                                <div class="img-box"> \
                                    <img class="icon-50 icon-round" src="'+pvo.member_imgae+'">\
                                </div>\
                                <div class="comment-profile-txt ml20">\
                                    <p class="bold">'+pvo.member_userid +'</p>\
                                    <p class="tiny-content"><span class="bg-main-alpha-color white-alpha pl5 pr5">'+pvo.member_status  +'</span><span class="gray"> | '+pvo.reg_date+'</span></p>\
                                </div>\
                            </div>\
                            <div class="comment-content">\
                                '+pvo.comment+'\
                            </div>\
                            '+deleteBtn+'\
                        </div>\
                    </div>\
                    ';
                }
            }
        }else{
            html='<h3 class="bold txt-box">댓글이 없습니다.</h3>';
        }
        $target.html(html);
    }
}
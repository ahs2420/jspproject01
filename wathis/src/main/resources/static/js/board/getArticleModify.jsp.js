$(function(){
	 
	$('#uploadFile').change(function(){
		if(checkFile(this)){
			if(checkFileSize(this,3)){
				imgPreview(this);
				$(".img-file").addClass("on");
				$("#preview").slideDown();
				return true;
			}
		}
    });
	$("#preview").click(function(){
		$(".img-file").removeClass("on");
		$('#uploadFile').val("");
		$("#preview").slideUp();
	});
});
$(function(){
    placeholderChanger($(".resive-title"));
    $(window).resize(function(){
        $(".resive-title").placeholderChanger();
    });
});
$.fn.placeholderChanger=function(){
    var windowWidth=$("body").width();
    if(windowWidth<=480){
        $(this).attr("placeholder",$(this).data("mobile-placeholder"));
    }else{
        $(this).attr("placeholder",$(this).data("pc-placeholder"));
    }
}
function placeholderChanger(target){
    var windowWidth=$("body").width();
    if(windowWidth<=480){
        target.attr("placeholder",target.data("mobile-placeholder"));
    }else{
        target.attr("placeholder",target.data("pc-placeholder"));
    }
}
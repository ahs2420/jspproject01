//로그인 확인
/*
$(function(){
    $("#login-btn").click(function(){
        var $target=$("form[name=login]");
        var $chkItem=$target.find(".chkItem");
        var bReturn=true;
        var data = $target.serialize();
        var option = {
            "url":"/ajax/loginChk",
            "data":data
        }
        var ajaxRetrun;
        $chkItem.each(function(){
            bReturn=$(this).itemChk();
            if(!bReturn) return bReturn;
        });
        if(bReturn){
            ajaxRetrun = ajaxStan(option);
            bReturn = ajaxRetrun.status;
            if(!ajaxRetrun.data.status){
                $("#confirm").html(ajaxRetrun.data.msg);
            }else{
                alert(ajaxRetrun.data.msg);
            }
        }
        console.log(data);
    });
});
*/
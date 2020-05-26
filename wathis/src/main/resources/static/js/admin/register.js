
$(function(){
    $(".reg-sel").on({
        "change":function(){$(this).selTarget()}
    });
});
//아이디 중복 확인  + 유효성 검토
$(function(){
	$("#userID").blur(function(){
        var userID = $(this).trimVal();
        var hangul = /[ㄱ-ㅎㅏ-ㅣ가-힣]/g;//한글 확인
        var ExpID = /^[a-z]+[a-z0-9]{3,19}$/g;//영어 시작 + 영어 숫자 조합 4~20자리
        var bExpChk = true;
        if(hangul.test(userID)){
            bExpChk = false;
            $("#confirm").html("아이디에 한글은 사용이 불가능 합니다");
        }
        else if(!ExpID.test(userID)){
            bExpChk = false;
            $("#confirm").html("아이디는 영문소문자+숫자 조합 20자리 까지만 사용가능합니다.");
        }
        else{
            var data = {"userID":userID};
            var option = {
                "url":"/users/idChk",
                "data":data
            };
            var ajaxRetrun= ajaxStan(option);
            bExpChk=ajaxRetrun.data.status;
            $("#confirm").html(ajaxRetrun.data.msg);
        }
        if(!bExpChk){
        	$(this).val("");
        	$(this).focus();
        }
    });
});
//이름 확인
$(function(){
    $("#userName").blur(function(){
        var userName = $(this).trimVal();
        var ExpName = /^[ㄱ-ㅎㅏ-ㅣ가-힣]{2,20}$/g;//한글 확인
        if(!ExpName.test(userName)){
            $("#confirm").html("이름은 한글 2~20자리 까지만 사용가능합니다.");
        	$(this).val("");
        	$(this).focus();
        }else{
            $("#confirm").html("");
        }
    });
});
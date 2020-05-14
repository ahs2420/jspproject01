//배공지 목록에서 주소 입력 자동으로 되게
$(function(){
    $(".deleveryChk").click(function(){
        $("#postcode").val($(this).data("postcode"));
        $("#address").val($(this).data("address"));
        $("#detailAddress").val($(this).data("detail-address"));
        $("#extraAddress").val($(this).data("extra-address"));
        $("#deliveryName").val($(this).data("delivery-name"));
        $("#deliveryPhone").val($(this).data("delivery-phone"));
        $("#dis-post").html($(this).data("postcode")+' '+$(this).data("address")+' '+$(this).data("extra-address"));
    });
});
//파일 확장자 체크 + 파일 용량 확인 + 파일 이미지 바꿈
$(function(){
    $("#thumbnail").change(function(){
        if(checkFile(this)){
            if(checkFileSize(this,2)){
                imgPreview(this);
            }    
        }
    });
});
$(function(){
    $("[name=passwd]").keyup(function(){
        confirmPwd();
    });
    $("[name=passwdChk]").keyup(function(){
        confirmPwd();
    });
});
function confirmPwd(){
    var $target=$(".confirmPwd");
    var $pwd=$("[name=passwd]");
    var $pwdChk=$("[name=passwdChk]");
    if($pwd.val()!=$pwdChk.val()){
        $target.html("비밀번호가 일치하지 않습니다.");
    }

}
// //서류사항 textarea 체크
$(function(){

    $('.text-coun').keyup(function (e) {
        var content = $(this).val();
        $('#counter').html("[" + content.length + " / 최대 40자]"); //글자수 실시간 카운팅
        if (content.length > 40) {
            alert("최대 40자까지 입력 가능합니다.");
            $(this).val(content.substring(0, 40));
            $('#counter').html("[40 / 최대 40자]");
        }
    });

    //이미지 미리 보기
    $(".img-file").change(function(){
        imgPreview(this);
        $($(this).data("preview")).removeClass("dis-none");
    });

});
//프로젝트 요약 글자 카운팅
$(function(){

    $('.sub_title').keyup(function (e) {
        var content = $(this).val();
        $('#counter-q2').html("[ " + content.length + "자 작성" + " / 최대 100자]"); //글자수 실시간 카운팅
        if (content.length >= 100) {
            alert("최대 100자까지 입력 가능합니다.");
            $(this).val(content.substring(0, 100));
            $('#counter').html("[ 100 자 작성 / 최대 100자 ]");
        }
    });
});


//이미지 미리보기
function imgPreview(opt) {
    var preview = $(opt).data("preview");
    if (opt.files && opt.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function (e) {
            $(preview).attr('src', e.target.result);  
        }
        
        reader.readAsDataURL(opt.files[0]);
     }
}
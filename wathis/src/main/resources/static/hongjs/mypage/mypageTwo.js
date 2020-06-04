// //서류사항 textarea 체크
$(function(){

    $('.text-coun').keyup(function (e) {
        var content = $(this).val();
        $('#counter').html("[" + content.length + " / 최대 30자]"); //글자수 실시간 카운팅
        if (content.length > 30) {
            alert("최대 30자까지 입력 가능합니다.");
            $(this).val(content.substring(0, 30));
            $('#counter').html("[30 / 최대 30자]");
        }
    });
    //이미지 미리 보기
    $(".img-file").change(function(){
        imgPreview(this);
        $($(this).data("preview")).removeClass("dis-none");
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
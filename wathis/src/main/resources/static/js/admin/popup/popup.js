$(function(){
    $(".img-files").change(function(){
        checkFile(this);
        imgPreview(this);
    });
    $(".preview-img").click(function(){
        $(".img-files").val("");
        $(this).attr("src","");
    });
});
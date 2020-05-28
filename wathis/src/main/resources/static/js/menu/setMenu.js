$(function(){
    getBoardList();
});
$(function(){
    $("#boardSel").change(function(){
        var url=$(this).val();
        var title=$(this).find("option:selected").text();
        $("[name=url]").val(url);

        (url)?$("[name=title]").val(title):$("[name=title]").val("");
    });
});
function getBoardList(){
    var option={
        "url":"/board/boardListAjax"
    }
    var ajaxResult = ajaxStan(option);
    if(ajaxResult.status){
        var item = "<option value=''>직접입력</option>";
        for(var bvo of ajaxResult.data.boardList){
            item +="<option value='/article?boardCode="+bvo.boardCode+"'>"+bvo.boardName+"</option>";
        }
        $("#boardSel").html(item);
    }else{
        console.log(ajaxResult.data.msg); 
    }
}
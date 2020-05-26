
//선택삭제
$(function(){
    $("#selectDelete-btn").click(function(){
        if(confirm("삭제하신 정보는 복구 불가능합니다.\n선택하신 "+$(this).data("name")+" 삭제하시겠습니까?")){
            var target = $(this).data("target");
            var dataCode = $(this).data("code");
            var $target = $(target);
            var uid=new Array;
            $target.each(function(){
                if($(this).is(":checked")){
                    uid.push($(this).val());
                }
            });
            var data = {
                "boardCode":dataCode,
                "id":uid
            };
            var option = {
                //"url":"/users/deleteSelUser",
                "url":$(this).data("url"),
                "data":data,
                "type":"POST"
            };
            console.log(option);
            var ajaxResult = ajaxStan(option);
            console.log(ajaxResult);
            if(ajaxResult.status=="success"){
                alert(ajaxResult.data.msg);
            }else{
                alert("시스템 오류입니다. 확인하세요.(err01)");
            }
            window.location.reload();
        }

    });
});
function deleteItem(item){
    if(confirm("삭제하신 정보는 복구 불가능합니다.\n선택하신 "+item.dataset.error+" 삭제하시겠습니까?")){
        var data = {
            "boardCode":item.dataset.code,
            "id":item.dataset.id
        };
        var option={
            "url":item.dataset.url,
            "type":"POST",
            "data":data
        };
        var ajaxResult=ajaxStan(option);
        if(ajaxResult.status=="success"){
            alert(ajaxResult.data.msg);
        }else{
            alert("시스템 오류입니다. 확인하세요.(err01)");
        }
       window.location.reload();
    }
}

$(function(){
    $(".reg-sel").on({
        "change":function(){$(this).selTarget()}
    });
});
//게시판 등록 필수정보 확인
$(function(){
    $("#articleForm").submit(function(){

        var $chkItem = $(this).find(".chkItem");
        var bReturn=true;
        $chkItem.each(function(){
            bReturn=$(this).itemChk();
            if(!bReturn){
                return false;
            }
        });
        if(bReturn){
            bReturn=$(".chkCke").chkCke();
        }
        //return false;
        return bReturn;
    });
});
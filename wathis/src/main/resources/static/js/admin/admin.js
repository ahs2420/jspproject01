
//선택삭제
$(function(){
    $("#selectDelete-btn").click(function(){
        if(confirm("삭제하신 정보는 복구 불가능합니다.\n선택하신 "+$(this).data("name")+" 삭제하시겠습니까?")){
            var target = $(this).data("target");
            var $target = $(target);
            var uid=new Array;
            $target.each(function(){
                if($(this).is(":checked")){
                    uid.push($(this).val());
                }
            });
            var data = {
                "uid":uid
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
function authUpdate(item){
    var auth = item.value;
    var uid = item.dataset.uid;
    var data = {
        "auth":auth,
        "uid":uid
    };
    var option={
        "url":"/users/authUpdate",
        "type":"POST",
        "data":data
    };
    var ajaxResult = ajaxStan(option);
    //console.log(ajaxResult);
    if(ajaxResult.status=="success"){
        alert(ajaxResult.data.msg);
        if(ajaxResult.data.status){
          //  window.location.reload();
        }
    }else{
        alert("시스템 오류입니다. 확인하세요.(err01)");
    }
}

function deleteUser(item){
    if(confirm("삭제하신 정보는 복구 불가능합니다.\n선택하신 회원정보를 삭제하시겠습니까?")){
        var data = {
            "ㅕid":item.dataset.ㅕid
        };
        var option={
            "url":"/users/deleteUser",
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
function deleteItem(item){
    if(confirm("삭제하신 정보는 복구 불가능합니다.\n선택하신 "+item.dataset.error+" 삭제하시겠습니까?")){
        var data = {
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
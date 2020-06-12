
function proStatusUpdate(item){
    var status = item.value;
    var id = item.dataset.id;
    var data = {
        "status":status,
        "id":id
    };
    var option={
        "url":"/product/productStatusUpdate",
        "type":"POST",
        "data":data
    };
    var ajaxResult = ajaxStan(option);
    //console.log(ajaxResult);
    if(ajaxResult.status=="success"){
        alert(ajaxResult.data.msg);
        if(ajaxResult.data.status){
           window.location.reload();
        }
    }else{
        alert("시스템 오류입니다. 확인하세요.(err01)");
    }
}
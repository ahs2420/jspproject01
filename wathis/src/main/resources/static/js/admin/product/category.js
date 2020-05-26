$(function(){
    $(".chkNum").blur(function(){
        var hangle = /[ㄱ-ㅎ가-힣ㅏ-ㅣ]/;
        var val = $(this).trimVal();
        if(hangle.test(val)){
            $(this).attr("placeholder","코드에 한글은 사용할 수 없습니다.")
            $(this).val("");
            $(this).focus();
            return false;
        }
    });
});
$(function(){
    //대분류 등록(버튼 클릭 + 마지막 input에서 엔터키)
    $(".majorCateInput").click(function(){
        var form = $(this).data("target");
        majorCateInput(form);
    });
    $("[name=majorName]").keydown(function(key){
        if (key.keyCode == 13) {
            var form = $(this).parent("form");
            majorCateInput(form);
        }
    });
});
$(function(){
    //소분류 등록(버튼 클릭 + 마지막 input에서 엔터키)
    $(".minorCateInput").click(function(){
        var form = $(this).data("target");
        minorCateInput(form);
    });
    $("[name=minorName]").keydown(function(key){
        if (key.keyCode == 13) {
            var form = $(this).parent("form");
            minorCateInput(form);
        }
    });
});
$(document).ready(function(){
    //초기 리스트 불러오기
    majorCateList();
    minorCateList();
});
//대분류 삭제
$(function(){
    $(document).on("click",".majorDelete",function(){
        if(confirm("선택하신 대분류를 삭제하시겠습니까?")){
            var data ={
                "majorCode":$(this).data("code")
            };
            var option={
                "url":"/cate/setMajorDelete",
                "data":data
            }
            var ajaxResult = ajaxStan(option);
            if(ajaxResult.status&&ajaxResult.data.msg){
                majorCateList();
                return true;
            }
            console.log(ajaxResult.data.msg);
        }
        return false;
    });
});
//대분류 리스트 츌력
function majorCateList(){
    
    var option={
        "url":"/cate/getMajorCateList"
    }
    var ajaxResult = ajaxStan(option);
    if(ajaxResult.status){
        var item = "";
        var option ='<option value="">선택하세요</option>';
        for(var mavo of ajaxResult.data.mavoList){
            item +='\
                <span class="cateTag">\
                    '+mavo.majorName+'('+mavo.majorCode+')\
                    <a href="#" class="close majorDelete" data-code="'+mavo.majorCode+'" >\
                        <i class="fas fa-times-circle"></i>\
                    </a>\
                </span>\
            ';
            option+='<option value="'+mavo.majorName+'">'+mavo.majorName+'</option>';
        }
        $("[name=majorName]").html(option);
        $(".majorCateArea").html(item);
    }else{
        console.log(ajaxResult.data.msg); 
    }
}
// 대분류 등록하기
function majorCateInput(form){
    var $form = $(form);
    var $chkItem = $form.find(".chkItem");
    var bReturn=true;
    $chkItem.each(function(){
        bReturn=$(this).itemChk();
        if(!bReturn){
            return false;
        }
    });
    if(bReturn){
        var data = $form.serialize();
        var option={
            "url":"/cate/setMajorCate",
            "data":data
        }
        var ajaxResult = ajaxStan(option);
        alert(ajaxResult.data.msg); 
        if(ajaxResult.status&&ajaxResult.data.status){
            window.location.reload();
        }else{
            $chkItem.val("");
        }
    }
    return bReturn;
}
//소분류 등록
function minorCateInput(form){
    var $form = $(form);
    var $chkItem = $(form).find(".chkItem");
    var bReturn=true;
    $chkItem.each(function(){
        bReturn=$(this).itemChk();
        if(!bReturn){
            return false;
        }
    });
    if(bReturn){
        var data = $form.serialize();
        var option={
            "url":"/cate/setMinorCate",
            "data":data
        }
        var ajaxResult = ajaxStan(option);
        if(ajaxResult.status&&ajaxResult.data.status){
            window.location.reload();
        }else{
            $chkItem.val("");
        }
    }
    return bReturn;
}
//소분류 리스트 츌력
function minorCateList(){
    
    var option={
        "url":"/cate/getMinorCateList"
    }
    var ajaxResult = ajaxStan(option);
    if(ajaxResult.status){
        var item = "";
        for(var mivo of ajaxResult.data.mivoList){
            item +='\
                <span class="cateTag">\
                    '+mivo.minorName+'('+mivo.majorName+')\
                    <a href="#" class="close minorDelete" data-code="'+mivo.minorCode+'" data-major-name="'+mivo.majorName+'" >\
                        <i class="fas fa-times-circle"></i>\
                    </a>\
                </span>\
            ';
        }
        $(".minorCateArea").html(item);
    }else{
        console.log(ajaxResult.data.msg); 
    }
}

//소분류 삭제
$(function(){
    $(document).on("click",".minorDelete",function(){
        if(confirm("선택하신 소분류를 삭제하시겠습니까?")){
            var data ={
                "minorCode":$(this).data("code"),
                "majorName":$(this).data("major-name")
            };
            var option={
                "url":"/cate/setMinorDelete",
                "data":data
            }
            var ajaxResult = ajaxStan(option);
            if(ajaxResult.status&&ajaxResult.data.msg){
                minorCateList();
                return true;
            }
            console.log(ajaxResult.data.msg);
        }
        return false;
    });
});
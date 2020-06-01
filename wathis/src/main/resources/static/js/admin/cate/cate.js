$(function(){
    majorCateList();
    $(".img-files").change(function(){
        checkFile(this);
        imgPreview(this);
    });
    $(".preview-img").click(function(){
        $(".img-files").val("");
        $(this).attr("src","");
    });
});
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
$(function(){
    $(".majorCateInput").click(function(){
        var form = $(this).data("target");
        majorCateInput(form);
    });
});
//대분류 리스트 츌력
function majorCateList(){
    
    var option={
        "url":"/cate/getCateList"
    }
    var ajaxResult = ajaxStan(option);
    if(ajaxResult.status){
        var item = "";
        for(var cvo of ajaxResult.data.cvoList){
            item +='\
                <span class="cateTag">\
                    '+cvo.title+'('+cvo.cate_img+')\
                    <a href="#" class="close majorDelete" data-code="'+cvo.id+'" >\
                        <i class="fas fa-times-circle"></i>\
                    </a>\
                </span>\
            ';
        }
        $(".majorCateArea").html(item);
    }else{
        console.log(ajaxResult.data.msg); 
    }
}
// 대분류 등록하기
function majorCateInput(form){
    var $form = $(form);
    var $chkItem = $form.find(".chkitem");
    var bReturn=true;
    $chkItem.each(function(){
        bReturn=$(this).itemChk();
        if(!bReturn){
            return false;
        }
    });
    if(bReturn){
        
    
        var formData = new FormData($form[0]);
        $.ajax({
            url : "/cate/setCate",
            type : 'POST',
            data : formData,
            contentType : false,
            processData : false ,
            success:function(data){
                alert(data.msg); 
                window.location.reload();
            },error:function(xhr,status,error){
                alert("시스템 오류 입니다."); 
                window.location.reload();
            }
        });
    }
    return bReturn;
}
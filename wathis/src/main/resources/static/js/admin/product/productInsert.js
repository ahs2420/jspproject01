
$(document).ready(function(){
    //대분류 출력 출력
    majorCateList();
    //이미지 출력
    var sel_files = [];
    $("#product-img").on("change",imgFileViewes);
});
$(function(){
    $(".majorCate").change(function(){
        if($(this).val()==""){
            $(".minorCate").css("display","none");
        }else{
            minorCateList($(this).val());

        }
    });
    $("#product-img2").change(function(){
        console.log($(this).val());
    });
    $("#product-img").change(function(){
        console.log($(this));
    });
});
//게시판 등록 필수정보 확인
$(function(){
    $("#productForm").submit(function(){

        var $chkItem = $(this).find(".chkItem");
        var bReturn=true;
        $chkItem.each(function(){
            bReturn=$(this).itemChk();
            bReturn=($(this).hasClass("numChk"))?$(this).numChk():bReturn;
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
//대분류 리스트 츌력
function majorCateList(){
    
    var option={
        "url":"/cate/getMajorCateList"
    };
    var ajaxResult = ajaxStan(option);
    if(ajaxResult.status){
        var optionAdd ='<option value="">선택하세요</option>';
        for(var mavo of ajaxResult.data.mavoList){
            optionAdd+='<option value="'+mavo.majorName+'">'+mavo.majorName+'</option>';
        }
        $(".majorCate").html(optionAdd);
    }else{
        console.log(ajaxResult.data.msg); 
    }
}
//소분류 리스트 츌력
function minorCateList(majorName){
    var data={
        "majorName":majorName
    };
    var option={
        "url":"/cate/getMinorCateListSel",
        "data":data
    };
    var ajaxResult = ajaxStan(option);
    if(ajaxResult.status){
        var optionAdd ='';
        for(var mivo of ajaxResult.data.mivoList){
            optionAdd+='<option value="'+mivo.minorName+'">'+mivo.minorName+'</option>';
        }
        $(".minorCate").html(optionAdd);
        $(".minorCate").css("display","inline-block");
    }else{
        $(".minorCate").css("display","none");
        console.log(ajaxResult.data.msg); 
    }
}
//이미지 출력
function imgFileViewes(e){
    sel_files=[];
    $(".imgs-wrap").empty();
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);
    var index = 0;
    filesArr.forEach(function(f,index){
        if(!f.type.match("image.*")){
            alert("이미지 파일만 업로드가 가능합니다.");
            return;
        }
        sel_files.push(f);
        var reader = new FileReader();
        reader.onload= function(e){
            var str = '';
            str += '<a href="javascript:void(0);" id="img_'+index+'" onclick="deleteImage('+index+')">\
                        <img src="'+e.target.result+'" />\
                    </a>';//<a href="javascript:void(0) a태그는 기본이 페이지 이동인테 이거를 사용하지 않겠다는 의미
            $(".imgs-wrap").append(str);
        };
        reader.readAsDataURL(f);
    });
}
//이미지 삭제
function deleteImage(index){
    var str = sel_files.splice(index,1);
    var $img_id = $("#img_"+index);
    $img_id.remove();
    console.log($("[name=files]")[0].files);
}
//금액 체크
$.fn.numChk = function(){
    if(isNaN($(this).val())){
        alert($(this).data("error")+" 숫자만 입력해 주세요.");
        $(this).focus();
        return false;
    }
    if($(this).data("max")>1){
        if($(this).val()<1||$(this).val()>$(this).data("max")){
            alert($(this).data("error")+" 1 ~ "+$(this).data("max")+" 사이로 입력해 주세요.");
            $(this).focus();
            return false;
        }
    }
    if($(this).val()<1){
        alert($(this).data("error")+" 0보다 크게 입력해 주세요.");
        $(this).focus();
        return false;
    }
    return true;
}
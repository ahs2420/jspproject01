//전체 선택
$(function(){
    $(".checkAll").click(function(){
        var $target = $($(this).data("target"));
        var bResult = $(this).is(":checked");
        $target.prop("checked",bResult);
    });
});
//폼데이터 확인
$(function(){
    $("form.chkForm").submit(function(){
        var $chkItem = $(this).find(".chkItem");
        var bReturn=true;
        $chkItem.each(function(){
            bReturn=$(this).itemChk();
            if(!bReturn){
                return false;
            }
        });
        //return false;
        return bReturn;
    });
});
$(function(){
    $("#search-btn").click(function(){
        var $words=$("#words");
        if($words.trimVal()==''){
            alert("검색어를 입력하세요.");
            $words.focus();
            return false;
        }

    });
});
function ajaxStan(option){
    var returnData="";
    $.ajax({
        url:option.url,
        async:(option.async)?option.async:false,
        type:(option.type)?option.type:"post",
        dataType:(option.dataType)?option.dataType:"json",
        data:option.data,
        success:function(data){
            returnData = {
            	"status":"success",
            	"data":data
            };
        },error:function(xhr,status,error){
            returnData = {
            	"status":"error",
            	"xhr":xhr,
            	"errstatus":status,
            	"error":error,
            	"setOption":option
            }
        }
    });
    return returnData;
}
function ajaxLoading(option){
    var returnData="";
    $.ajax({
        url:option.url,
        async:(option.async)?option.async:false,
        type:(option.type)?option.type:"post",
        dataType:(option.dataType)?option.dataType:"json",
        data:option.data,
        success:function(data){
            returnData = {
            	"status":"success",
            	"data":data
            };
        },error:function(xhr,status,error){
            returnData = {
            	"status":"error",
            	"xhr":xhr,
            	"errstatus":status,
            	"error":error,
            	"setOption":option
            }
        },beforeSend : function(){
            $("body").append('\
                    <div class="loding-modal modal-stan active">\
                        <div class="w-100p h-100p flex-box flex-a-center flex-j-center">\
                            <p class="white"><i class="xi-spinner-2 xi-spin"></i> 배송정보를 불러오는 중 입니다.</p>\
                        </div>\
                    </div>\
            ');
        },complete : function(){
            $(".loding-modal").remove();
        }
    });
    return returnData;
}
$.fn.trimVal=function(){
    return $.trim($(this).val());
}
$.fn.selTarget=function(){
    var $target=$($(this).data("target"));
    if($(this).val()=="1"){
        $target.attr("readonly",false);
        $target.focus();
        $target.val("");
    }else{
        $target.attr("readonly",true);
        $target.val($(this).val());
    }
}
$.fn.itemChk=function(){
    var exp = /^[a-z]+[a-z0-9]{6,13}$/g;
    var bReturn=true;
    if(!$.trim($(this).val())){
        alert($(this).data("error")+" 입력해주세요");
        $(this).focus();
        bReturn=false;
    }else if($(this).hasClass("chkExp")){
        if(!exp.test($(this).val())){
            alert($(this).data("error")+" 영문소문자,숫자 조합하여 7~12자리까지 입력해 주세요.");
            $(this).focus();
            bReturn=false;
        }
    }else if($(this).attr("id")=="repasswd"){
        if($(this).val()!=$("#passwd").val()){
            alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
            $(this).val("");
            $("#passwd").val("");
            $("#passwd").focus();
            bReturn=false;
        }
    }
    return bReturn;
};
$.fn.chkCke=function(){
    var ckeditor = CKEDITOR.instances[$(this).attr('id')]; 
    if (ckeditor.getData()=="")
    {
        alert('내용을 입력 하세요');
        ckeditor.focus();
        return false;
    }
    return true;

}

//이미지 확장자 체크
/*
obj -> file태그 
*/
function checkFile(obj) {
    var filename = $(obj).val().substring($(obj).val().lastIndexOf('\\')+1);//원래 파일 이름
    var tg_name=$(obj).data("target");// 원래 파일이름이 보일곳(input)
    var fileType=$(obj).data("fileType");//파일 확장자 비교 타입
    var ext = filename.substring(filename.lastIndexOf('.')+1).toLowerCase();
    var extChk=(fileType=="img")?["jpg","jpeg","png","gif"]:["jpg","png","gif","xls","doc","pptx","xlsx","docx","zip","txt","pdf"];
    
	if (ext == "jpg"  || ext == "png"  || ext == "gif"  ) {
		$(tg_name).val( filename );
	} else {
        alert("허용된 확장자가 아닙니다. 다시 선택해 주세요.\n(허용된 확장자 파일)");
        $(obj).val("");
		return false;
	}
    return true;
}
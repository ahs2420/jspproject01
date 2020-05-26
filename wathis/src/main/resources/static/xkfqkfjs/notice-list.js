$(function(){
    placeholderChanger($(".resive-title"));
    $(window).resize(function(){
        $(".resive-title").placeholderChanger();
    });
});
$.fn.placeholderChanger=function(){
    var windowWidth=$("body").width();
    if(windowWidth<=480){
        $(this).attr("placeholder",$(this).data("mobile-placeholder"));
    }else{
        $(this).attr("placeholder",$(this).data("pc-placeholder"));
    }
}
function placeholderChanger(target){
    var windowWidth=$("body").width();
    if(windowWidth<=480){
        target.attr("placeholder",target.data("mobile-placeholder"));
    }else{
        target.attr("placeholder",target.data("pc-placeholder"));
    }
}
$(function() {
	$("form").submit(function() {
		var bReturn = true;
		$(".write-chkItem").each(function(){
			if($.trim($(this).val())==""){
				alert($(this).data("error")+"해주세요");
				$(this).focus();
				bReturn=false;
				return false;
			}
		});
		try{
			if(bReturn){
				var str = CKEDITOR.instances.editor1;
				if($.trim(str.getData())  == "" ) {
					alert("게시물 내용을 입력하세요.");
					str.focus();
					return false;
				}
			}
		}catch{

		}
		return bReturn;
	});
});
$(function(){
	 
	$('#uploadFile').change(function(){
		if(checkFile(this)){
			if(checkFileSize(this,3)){
				imgPreview(this);
				$(".img-file").addClass("on");
				return true;
			}
		}
		$(".img-file").removeClass("on");
		imgPreview2(this);
    });
	
});
 
function uploadFile(target){
    
    var form = $('#uploadForm')[0];
	var formData = new FormData(form);
	var str;
	var ajaxReturn;
	$.ajax({
        url : '/cke/imgUpload',
        type : 'POST',
        data : formData,
        dataType:"JSON",
        contentType : false,
		processData : false,
		success:function(data){
			var imgUrl=data.uploadDIR+data.fileName;
			str = "<img src='"+imgUrl+"'/>";
			ckeAddItem(target,str);
			imgPreview2("#preview",imgUrl);
		}
    });
}
function ckeAddItem(target,str){
		var org=CKEDITOR.instances[target].getData();//cke에 입력한 데이터를 가져옴
		CKEDITOR.instances[target].setData(org+str);//cke에 입력한 데이터에 내용을 추가함(org+를 빼면 내용전부가 바뀜)
		//CKEDITOR.instances[target].setData(org+"<img src='"+data.uploadDIR+data.fileName+"'/>");//cke에 입력한 데이터에 내용을 추가함(org+를 빼면 내용전부가 바뀜)

}
function checkFile(obj) {
	var filename = $(obj).val().substring($(obj).val().lastIndexOf('\\')+1);//원래 파일 이름
	var tg_name=$(obj).data("target");// 원래 파일이름이 보일곳(input)
	var fileType=$(obj).data("file-type");//파일 확장자 비교 타입
	var ext = filename.substring(filename.lastIndexOf('.')+1).toLowerCase();
	var extChk=(fileType=="img")?["jpg","jpeg","png","gif"]:["jpg","png","gif","xls","doc","pptx","xlsx","docx","zip","txt","pdf"];
	
	if (extChk.indexOf(ext) >= 0 ) {
		$(tg_name).val( filename );
	} else {
		alert("허용된 확장자가 아닙니다. 다시 선택해 주세요.\n(허용된 확장자 파일 : "+extChk.join(" , ")+")");
		$(obj).val("");
		return false;
	}
	return true;
}
//파일 용량 체크
function checkFileSize(obj,maxSizeMB) {
	var maxSize=maxSizeMB*1024*1024;//파일 확장자 비교 타입

	var browser=navigator.appName;
	var fileSize=0;
	// 익스플로러일 경우
	if (browser=="Microsoft Internet Explorer")
	{
		var oas = new ActiveXObject("Scripting.FileSystemObject");
		fileSize = oas.getFile( obj.value ).size;
	}
	// 익스플로러가 아닐경우
	else
	{
		fileSize = obj.files[0].size;
	}
	if(fileSize > maxSize){
		alert("첨부파일 사이즈는 "+maxSizeMB+"MB 이내로 등록 가능합니다. ");
		$(obj).val("");
		return false;
	}
	return true;
}
//이미지 미리보기
function imgPreview(obj) {
	var target = $(obj).data("preview");
	var preview = $(obj).data("preview")+" img";
	if (obj.files && obj.files[0]) {
	var reader = new FileReader();
	
	reader.onload = function (e) {
		$(preview).attr('src', e.target.result);  
	}
	
	reader.readAsDataURL(obj.files[0]);
	}
	$(target).fadeIn(300);
}
function imgPreview2(obj) {
	var target = $(obj).data("preview");
	$(target).fadeOut(300);
}
$(function(){
	$(window).scroll(function(){
		$(".cke").css({"transform":"translateY("+0+"px)"});
	});
});
CKEDITOR.instances['editor1'].on('contentDom', function(){
	this.document.on('click',function(event){
		var margin = $(".cke").height();
		$(".ckebox").css({"padding-top":margin+"px","padding-bottom":margin+"px"});
		$(".cke").css({"transform":"translateY("+margin+"px)"});
	});
});
CKEDITOR.instances['editor1'].on('blur', function(){
	$(".ckebox").css({"padding-top":0+"px","padding-bottom":0+"px"});
});
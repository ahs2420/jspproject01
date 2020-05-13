<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CKeditor 이미지업로드 테스트입니다. 하단 처럼 작성하면 이미지 업로드 가능합니다.(수정X)</title>
<script src="/js/jquery-2.2.4.min.js"></script>
<script src="/plugin/ckeditor/ckeditor.js"></script>
<style type="text/css">
.cke_textarea_inline{
	border: 1px solid #000;
	}
</style>
</head>
<body>
    <!-- inline 타입으로 생성 -->
	<form id="uploadForm">
	    <textarea id="editor2" name="content" class="ckeditor"></textarea>
	    <script>
		    CKEDITOR.inline('editor2', {
		        customConfig : '/plugin/ckeditor/config.js',
		        width:'100%',
		        height:'500',
		        filebrowserImageUploadUrl: '/cke/imageUpload'
		    });
	    </script>
		<input id="uploadFile" type="file" name="files" data-cke-target="editor2" data-preview="#preview" />
		<img id="preview" src="" data-cke-target="editor2" style="max-width: 200px;" />
	</form>
    
    
    
 
</body>
<script>
	$(function(){
 
    	$('#uploadFile').change(function(){
			if(checkFile(this)){
				if(checkFileSize(this,3)){
					imgPreview(this);
					uploadFile($(this).data("cke-target"));
				}
			}
	        //uploadFile($(this).data("cke-target"));
	    });
		$("#preview").click(function(){
			var str = "<img src='"+$(this).attr("src")+"'/>";
			ckeAddItem($(this).data("cke-target"),str);

		});
	});
	 
	function uploadFile(target){
	    
	    var form = $('#uploadForm')[0];
	    var formData = new FormData(form);
	 
	    $.ajax({
	        url : '/cke/imgUpload',
	        type : 'POST',
	        data : formData,
	        contentType : false,
	        processData : false        
	    }).done(function(data){
			var str = "<img src='"+data.uploadDIR+data.fileName+"'/>";
			ckeAddItem(target,str);
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
		var preview = $(obj).data("preview")
		if (obj.files && obj.files[0]) {
		var reader = new FileReader();
		
		reader.onload = function (e) {
			$(preview).attr('src', e.target.result);  
		}
		
		reader.readAsDataURL(obj.files[0]);
		}
	}

</script>

</html>
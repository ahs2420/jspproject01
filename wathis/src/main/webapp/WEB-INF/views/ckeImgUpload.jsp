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
	    <input type="file" name="files" />
	    <button type="button" id="uploadBtn" data-cke-target="editor2">Save</button>
	</form>
    
    
    
 
</body>
<script>$(function(){
 
    $('#uploadBtn').on('click', function(){
	        uploadFile($(this).data("cke-target"));
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
			var org=CKEDITOR.instances[target].getData();//cke에 입력한 데이터를 가져옴
			CKEDITOR.instances[target].setData(org+"<img src='"+data.uploadDIR+data.fileName+"'/>");//cke에 입력한 데이터에 내용을 추가함(org+를 빼면 내용전부가 바뀜)
		});
	}

</script>

</html>
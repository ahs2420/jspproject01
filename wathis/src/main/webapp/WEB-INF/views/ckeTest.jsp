<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CKeditor 이미지업로드 테스트입니다. 하단 처럼 작성하면 이미지 업로드 가능합니다.(수정X)</title>
<script src="/plugin/ckeditor/ckeditor.js"></script>
<style type="text/css">
.cke_textarea_inline{
	border: 1px solid #000;
	}
</style>
</head>
<body>
    <textarea id="editor1" name="content" class="ckeditor"></textarea>
    <script>
    CKEDITOR.replace('editor1', {
        customConfig : '/plugin/ckeditor/config.js',
        width:'100%',
        height:'500',
        filebrowserImageUploadUrl: '/cke/imageUpload'
    });
    </script>
    <!-- inline 타입으로 생성 -->
    <textarea id="editor2" name="content" class="ckeditor"></textarea>
    <script>
    CKEDITOR.inline('editor2', {
        customConfig : '/plugin/ckeditor/config.js',
        width:'100%',
        height:'500',
        filebrowserImageUploadUrl: '/cke/imageUpload'
    });
    </script>
    
    
 
</body>
</html>
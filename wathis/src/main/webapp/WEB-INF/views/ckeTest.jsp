<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CKeditor 이미지업로드 테스트입니다. 하단 처럼 작성하면 이미지 업로드 가능합니다.(수정X)</title>
<script src="/plugin/ckeditor/ckeditor.js"></script>
</head>
<body>
    <textarea id="editor1" name="content" class="ckeditor"></textarea>
    <script>
    CKEDITOR.replace('editor1', {
        customConfig : '/plugin/ckeditor/config.js',
        width:'100%',
        height:'200',
        filebrowserImageUploadUrl: '/cke/imageUpload'
    });
    </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script src="https://kit.fontawesome.com/b1cadc3305.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="/plugin/ckeditor/ckeditor.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="/mail/mailSend" method="post">
		<div>
			받는 사람 아이디 입력:<input type="text" name="recipient">
		</div>
		<div>
			제목입력:<input type="text" name="subject">
		</div>
		<div>
			내용 입력:
		    <textarea id="editor1" name="content" class="ckeditor"></textarea>
		    <script>
		        CKEDITOR.replace('editor1', {
		            customConfig: '/plugin/ckeditor/config.js',
		            width: '100%',
		            height: '500',
		            filebrowserImageUploadUrl: '/cke/imageUpload?isHost=true'
		        });
		    </script>
		</div>
		<input type="submit">
	</form>
</body>
</html>
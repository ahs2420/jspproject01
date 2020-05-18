<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    
 <form action="/test/csvTest" method="post" enctype="multipart/form-data">
 	<p>csv파일 업로드 테스트</p>
 	<input type="file" name="files"/>
 	<input type="submit">
 </form>
</body>
</html>
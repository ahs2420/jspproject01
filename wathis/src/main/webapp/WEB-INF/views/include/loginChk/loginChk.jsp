<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sessionScope.id eq '' || sessionScope.id == null}">
<script>
	alert("로그인 후 사용가능합니다.");
	location.href='/login/login-page2';
</script>
</c:if>

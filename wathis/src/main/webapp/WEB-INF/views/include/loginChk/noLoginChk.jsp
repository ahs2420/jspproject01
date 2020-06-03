<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:if test="${sessionScope.id ne '' && sessionScope.id != null}">
<script>
	location.href='/';
</script>
</c:if>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<link rel="stylesheet" href="/css/article/article-common.css">
<link rel="stylesheet" href="/css/board/${template}.css">
<script src="/js/board/${template}.js"></script>

</head>
<body>
	<header class=" no-hero">
		<!-- nav 자리 -->
		<%@ include file="/WEB-INF/views/include/nav.jspf"%>
		<!-- hero 자리 -->
	</header>
	<!-- 메인 내용 -->
	
	<c:import url="/WEB-INF/views/board/template/${mypage}/${template}" />
	<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- script 자리-->
</html>
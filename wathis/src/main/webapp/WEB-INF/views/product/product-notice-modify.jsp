<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<link rel="stylesheet" href="/css/article/article-common.css">
<link rel="stylesheet" href="/css/board/setArticle.jsp.css">
<script src="/js/board/setArticle.jsp.js"></script>
<script src="/plugin/ckeditor/ckeditor.js"></script>

</head>
<body>
	<header class=" no-hero">
		<!-- nav 자리 -->
		<%@ include file="/WEB-INF/views/include/nav.jspf"%>
		<!-- hero 자리 -->
	</header>
	<!-- 메인 내용 -->
	<main class="resive-main">
	    <form action="/proNotice/modify" enctype="multipart/form-data" method="post" class="chkFormCke" id="uploadForm">
	        
	        <input type="hidden" name="id" value="${proNot.id }"/>
	        <input type="hidden" name="product_id" value="${product_id}"/>
	        <input type="hidden" name="link" value="${link}"/>
	          <div class="notice-write-container"></div>
	          <div class="resive-container">
	            <div class="resive-wrap">
	                <h1>새소식 수정</h1>
	                <div class="resive-title-box">
	                    <input type="text" class="resive-title write-chkItem chkitem"
	                        data-error="제목을" name="title"
	                        data-pc-placeholder="제목을 입력해주세요." data-mobile-placeholder="제목" value="${proNot.title }">
	                </div>
	                <div class="resive-border-box mt50">
	                    <div class="ckebox">
	                        <textarea id="editor1" name="content" class="ckeditor chkitem ckeItem"
	                        data-error="내용을">${proNot.content }</textarea>
	                        <script>
	                            CKEDITOR.inline('editor1', {
	                                customConfig : '/plugin/ckeditor/config.js',
	                                width : '100%',
	                                height : '500',
	                                filebrowserImageUploadUrl : '/cke/imageUpload'
	                            });
	                        </script>
	                    </div>
	                    <input id="uploadFile" class="dis-none" type="file" name="files"
	                        data-cke-target="editor1" data-preview="#preview" />
	                    <button type="button">
	                        <img id="preview" class="dis-none gray-box" src="" data-cke-target="editor1" />
	                    </button>
	                </div>
	            </div>
	            <div class="resive-btn-box mt30 pb50">
	                <button type="submit" class="resive-btn">수정하기</button>
	                <button type="reset" class="resive-btn">취소하기</button>
	            </div>
	        </div>
	        <div class="notice-write-container"></div>
	    </form>
	</main>
	<c:import url="/WEB-INF/views/board/template/${mypage}/${template}" />
	<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- script 자리-->
</html>
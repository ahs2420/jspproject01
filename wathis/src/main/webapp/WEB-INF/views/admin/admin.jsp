<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 세션이 없을때 -->
<c:if test="${sessionScope.auth ne '관리자' && sessionScope.auth ne '회원' }">
	<script>
		//alert("접근 권한이 없습니다.\n관리자 승인후 사용이 가능합니다.");
		//location.replace("/");//나중에 풀어라
	</script>
</c:if>
	<%@ include file= "/WEB-INF/views/include/admin/head.jspf"%>
    <link rel="stylesheet" href="/css/admin/admin/admin.css">
    <link rel="stylesheet" href="/css/admin/${template}/${template}.css">
    <script src="/js/admin/admin.js"></script>
    <script src="/js/admin/${template}/${template}.js"></script>
</head>
<body>
        <header>
        </header>
        <main>
            <section id="container">
                <!--좌측-->
                <nav id="nav" class="bg-color-6 f6">
                    <div class="nav-top align">
                        <a class="gray-80 eng font-20" href="/users?template=users&mypage=list">Adminitrator</a>
                    </div>
                    <div class="nav-bar padding-a-20">
                        <div class="align marg margin-t10 margin-b20">
                            <span class="eng font-20 orange">Navigation</span>
                        </div>
                        <!--회원관리 Member Managememt Page-->
                        <div class="nav-wrap">
                            <div class="icon">
                                <i class="fas fa-male gray-80"></i>
                            </div>
                            <div class="icon-title">
                                <a href="/users?template=users&mypage=list" class="gray-80">Member Managememt Page</a>
                            </div>
                            <div class="icon-arrow ralign">
                                <i class="fas fa-angle-right gray-80"></i>
                            </div>
                        </div>
                        <!--//회원관리 Member Managememt Page-->
                        <!--게시판관리 Board Managememt Page-->
                        <div class="nav-wrap margin-t30">
                            <div class="icon">
                                <i class="fas fa-paper-plane gray-80"></i>
                            </div>
                            <div class="icon-title">
                                <a href="/board" class="gray-80">Board Managememt Page</a>
                            </div>
                            <div class="icon-arrow ralign">
                                <i class="fas fa-angle-right gray-80"></i>
                            </div>
                        </div>
                        <!--//게시판관리 Board Managememt Page-->
                        <!--쇼핑몰관리 ShopMall Managememt Page-->
                        <div class="nav-wrap margin-t30">
                            <div class="icon">
                                <i class="fas fa-shopping-cart gray-80"></i>
                            </div>
                            <div class="icon-title">
                                <a href="/product" class="gray-80">ShopMall Managememt Page</a>
                            </div>
                            <div class="icon-arrow ralign">
                                <i class="fas fa-angle-right gray-80"></i>
                            </div>
                        </div>
                        <!--//쇼핑몰관리 ShopMall Managememt Page-->
                        <!--스케줄관리 Scheduler Managememt Page-->
                        <div class="nav-wrap margin-t30">
                            <div class="icon">
                                <i class="fas fa-calendar-alt gray-80"></i>
                            </div>
                            <div class="icon-title">
                                <a href="/scheduler" class="gray-80">Scheduler Managememt Page</a>
                            </div>
                            <div class="icon-arrow ralign">
                                <i class="fas fa-angle-right gray-80"></i>
                            </div>
                        </div>
                        <!--//스케줄관리 Scheduler Managememt Page-->
                        <!--사이트관리 & 관리자 정보 관리 Admin Managememt Page-->
                        <div class="nav-wrap margin-t30">
                            <div class="icon">
                                <i class="fas fa-info-circle gray-80"></i>
                            </div>
                            <div class="icon-title">
                                <a href="/info" class="gray-80">Admin Managememt Page</a>
                            </div>
                            <div class="icon-arrow ralign">
                                <i class="fas fa-angle-right gray-80"></i>
                            </div>
                        </div>
                        <div class="nav-wrap margin-t30">
                            <div class="icon">
                                <i class="fas fa-syringe gray-80"></i>
                            </div>
                            <div class="icon-title">
                                <a href="/siteConfig" class="gray-80">Site Managememt Page</a>
                            </div>
                            <div class="icon-arrow ralign">
                                <i class="fas fa-angle-right gray-80"></i>
                            </div>
                        </div>
                        <!--//사이트관리 & 관리자 정보 관리 Admin Managememt Page-->
                        <!--메뉴 관리 Menu Managememt Page-->
                        <div class="nav-wrap margin-t30">
                            <div class="icon">
                                <i class="fas fa-syringe gray-80"></i>
                            </div>
                            <div class="icon-title">
                                <a href="/menu" class="gray-80">Menu Managememt Page</a>
                            </div>
                            <div class="icon-arrow ralign">
                                <i class="fas fa-angle-right gray-80"></i>
                            </div>
                        </div>
                        <!--//메뉴 관리 Menu Managememt Page-->
                        <!--팝업 관리 Popup Managememt Page-->
                        <div class="nav-wrap margin-t30">
                            <div class="icon">
                                <i class="fas fa-syringe gray-80"></i>
                            </div>
                            <div class="icon-title">
                                <a href="/popup" class="gray-80">Popup Managememt Page</a>
                            </div>
                            <div class="icon-arrow ralign">
                                <i class="fas fa-angle-right gray-80"></i>
                            </div>
                        </div>
                        <!--//팝업 관리 Popup Managememt Page-->
                    </div>
                </nav>
                <!--우측-->
                <article id="main" class="bg-color-8">
                    <!--우측 상단-->
                    <div class="main-top ">
                        <div class="main-top-left">
                            <span class="info-img"><img src="${sessionScope.uimg }" alt=""></span>
                            <span class="info-text font-12">${sessionScope.uname }/${sessionScope.uid }님 안녕하세요.</span>
                            <span class="">
                                <i class="fa fa-bell pos-rel msg-cnt" data-count="2"></i>
                            </span>
                        </div>
                        <div class="main-top-right">
                            <i class="fas fa-sign-out-alt"></i>
                            <span class="">
                                <a href="/login/logout" class="eng bold">Logout</a>
                            </span>
                        </div>
                    </div>
                    <!--실제 하단 컨텐츠-->
                    <div class="main-main bg-color-7">
                        <div class="main-content">
                            <!--상단 통계 박스-->
                            <div class="main-top-box-wrap">
                                <div class="main-top-box box-clr-1 br-3 f6">
                                    <div class="box-top">
                                        <div class="item-title float-l">
                                            <div class="item-count">
                                                <span class="font-40 bold">
                                                    <i class="fas fa-male"></i>
                                                    10
                                                </span>
                                            </div>
                                            <div class="item-tag">
                                                <span class="bold eng">Member Reg.(today)</span>
                                            </div>
                                        </div>
                                        <div class="item-icon float-l">
                                            <span class="">
                                                <i class="fas fa-chart-line font-50"></i>
                                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="box-bottom">
                                        <i class="far fa-clock"></i>
                                        <span class="update-time eng font-12">Update 02:15 PM</span>
                                    </div>
                                </div>
                                <div class="main-top-box box-clr-2 br-3 f6">
                                    <div class="box-top">
                                        <div class="item-title float-l">
                                            <div class="item-count">
                                                <span class="font-40 bold">
                                                    <i class="fas fa-marker"></i>
                                                    123
                                                </span>
                                            </div>
                                            <div class="item-tag">
                                                <span class="bold eng">Board Reg.(today)</span>
                                            </div>
                                        </div>
                                        <div class="item-icon float-l">
                                            <span class="">
                                                <i class="fas fa-chart-line font-50"></i>
                                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="box-bottom">
                                        <i class="far fa-clock"></i>
                                        <span class="update-time eng font-12">Update 02:15 PM</span>
                                    </div>
                                </div>
                                <div class="main-top-box box-clr-3 br-3 f6">
                                    <div class="box-top">
                                        <div class="item-title float-l">
                                            <div class="item-count">
                                                <span class="font-40 bold">
                                                    <i class="far fa-newspaper"></i>
                                                    345
                                                </span>
                                            </div>
                                            <div class="item-tag">
                                                <span class="bold eng">Article Reg.(today)</span>
                                            </div>
                                        </div>
                                        <div class="item-icon float-l">
                                            <span class="">
                                                <i class="fas fa-chart-line font-50"></i>
                                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="box-bottom">
                                        <i class="far fa-clock"></i>
                                        <span class="update-time eng font-12">Update 02:15 PM</span>
                                    </div>
                                </div>
                                <div class="main-top-box box-clr-4 br-3 f6">
                                    <div class="box-top">
                                        <div class="item-title float-l">
                                            <div class="item-count">
                                                <span class="font-40 bold">
                                                    <i class="fab fa-product-hunt"></i>
                                                    5
                                                </span>
                                            </div>
                                            <div class="item-tag">
                                                <span class="bold eng">Product Reg.(today)</span>
                                            </div>
                                        </div>
                                        <div class="item-icon float-l">
                                            <span class="">
                                                <i class="fas fa-chart-line font-50"></i>
                                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="box-bottom">
                                        <i class="far fa-clock"></i>
                                        <span class="update-time eng font-12">Update 02:15 PM</span>
                                    </div>
                                </div>

                            </div>
                            <!--if에 따라 바뀌는 부분-->
                            <c:if test="${template eq 'users' && mypage eq 'list' }">
                            	<%@ include file="/WEB-INF/views/admin/users/getUserListInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'users' &&  mypage eq 'view' }">
                            	<%@ include file="/WEB-INF/views/admin/users/getUserViewInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'users' &&  mypage eq 'modify' }">
                            	<%@ include file="/WEB-INF/views/admin/users/getUserModifyInc.jsp" %>
                            </c:if>
                            
                            <c:if test="${template eq 'board' && mypage eq 'list' }">
                            	<%@ include file="/WEB-INF/views/admin/board/getBoardListInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'board' && mypage eq 'view' }">
                            	<%@ include file="/WEB-INF/views/admin/board/getBoardViewInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'board' && mypage eq 'insert' }">
                            	<%@ include file="/WEB-INF/views/admin/board/setBoardInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'board' && mypage eq 'modify' }">
                            	<%@ include file="/WEB-INF/views/admin/board/getBoardModify.jsp" %>
                            </c:if>
                          
                            <c:if test="${template eq 'menu' && mypage eq 'list' }">
                            	<%@ include file="/WEB-INF/views/admin/menu/getMenuListInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'menu' && mypage eq 'insert' }">
                            	<%@ include file="/WEB-INF/views/admin/menu/setMenuInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'menu' && mypage eq 'modify' }">
                            	<%@ include file="/WEB-INF/views/admin/menu/getMenuModifyInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'popup' && mypage eq 'list' }">
                            	<%@ include file="/WEB-INF/views/admin/popup/getPopupListInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'popup' && mypage eq 'insert' }">
                            	<%@ include file="/WEB-INF/views/admin/popup/setPopupInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'popup' && mypage eq 'modify' }">
                            	<%@ include file="/WEB-INF/views/admin/popup/getPopupModifyInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'popup' && mypage eq 'view' }">
                            	<%@ include file="/WEB-INF/views/admin/popup/getPopupViewInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'siteConfig' && mypage eq 'list' }">
                            	<%@ include file="/WEB-INF/views/admin/siteConfig/getSiteConfigListInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'siteConfig' && mypage eq 'modify' }">
                            	<%@ include file="/WEB-INF/views/admin/siteConfig/getSiteConfigModifyInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'product' && mypage eq 'list' }">
                            	<%@ include file="/WEB-INF/views/admin/product/getProductListInc.jsp" %>
                            </c:if>
                            <c:if test="${template eq 'cate' && mypage eq 'list' }">
                            	<%@ include file="/WEB-INF/views/admin/cate/getCateListInc.jsp" %>
                            </c:if>
                            
                            <!--//if에 따라 바뀌는 부분-->
                        </div>
                    </div>
                </article>
            </section>
        </main>
<%@ include file="/WEB-INF/views/include/admin/footer.jspf" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="bg-gray">
    <div class="container max1000">
        <div class="border-bottom pb20">
            <div class="flex-box flex-j-space">
                <div class="">
                    <h3 class="large-content bold">제작한 프로젝트</h3>    
                </div>
            </div>
        </div>
        <div class="float-box-item w-100p">
            <c:forEach items="${myList}" var="myList" varStatus="vs">
                <div class="maker-item-box float-left item-lg-4 item-sm-6 item-xs-12 mt20">
                    <!--상품 주소-->
                    <a href="/page/mypageListModify?template=Reward&mypage=information&id=${myList.id}">
                        <div class="border-box bg-white">
                            <div class="img-box">
                                <!--상품 메인 이미지-->
                                <c:choose>
                                	<c:when test="${myList.main_img != null && myList.main_img ne ''}">
                                		<img src="${myList.img_upload_dir }/${myList.main_img }" alt="">
                                		
                                	</c:when>
                                	<c:otherwise>
                                		<img src="/images/common/no-img.png" alt="">
                                		
                                	</c:otherwise>
                                </c:choose>
                            </div>
                            <div class="txt-box">
                                <!--상품 제목-->
                                <h3 class="title text-max-line line1 mb20">
	                                <c:choose>
	                                	<c:when test="${myList.title != null && myList.title ne ''}">
	                                		${myList.title}
	                                	</c:when>
	                                	<c:otherwise>
	                                		${sessionScope.uname} 님의 프로젝트 ${vs.index +1 }
	                                	</c:otherwise>
	                                </c:choose>
                                </h3>
                                <!--상품분류 | 메이커이름-->
                                <p class="catogory mb20 gray text-max-line line1">
                                	<c:if test="${myList.category_name != null && myList.category_name ne ''}">
	                                		${myList.category_name} | 
                                	</c:if>
	                                <c:choose>
	                                	<c:when test="${myList.marker_name != null && myList.marker_name ne ''}">
	                                		${myList.marker_name}
	                                	</c:when>
	                                	<c:otherwise>
	                                		${sessionScope.uname}
	                                	</c:otherwise>
	                                </c:choose>
                                </p>
                                <div class="mb20 flex-box flex-a-center">
                                    <span class="icon-round-no-board icon-10 bg-status-${myList.status } inline-box mr10"></span>
                                    <span class="">
		                                <c:choose>
		                                	<c:when test="${myList.status eq '3'}">
		                                		${productStatus[myList.pStatus]}
		                                	</c:when>
		                                	<c:otherwise>
		                                		${auditStatus[myList.status]}
		                                	</c:otherwise>
		                                </c:choose>
                                    </span>
                                </div>
                            </div>
                            <div class="border-top txt-center p10">
                                <span class="small-title bold">스튜디오 바로가기</span>
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
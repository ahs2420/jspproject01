<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="">
    <div class="container max1000">
        <div class="border-bottom pb20">
            <div class="flex-box flex-j-space">
                <div class="">
                    <h3 class="large-content bold">전체펀딩내역</h3>    
                </div>
                <div class="position-rel">
                    <select class="h-100p select-no-arrow select-custom-arrow no-border pl10" id="select-fundingList">
                        <option value="all">전체</option>
                        <c:forTokens items="여행,디자인소품,패션"  delims="," var="serach">
                            <option value="${serach}">${serach}</option>
                        </c:forTokens>
                    </select>
                    <label for="select-fundingList"></label>
                </div>
            </div>
        </div>
        <div class="bg-white pt40 pb40">
            <c:forEach items="${orderList}" var="ovo" varStatus="vs">
                <div class="<c:if test="${vs.index != 0}">mt20</c:if> pb20 border-bottom">
                    <a href="/page/fundingDetail?id=${ovo.id}">
                        <div class="flex-box flex-j-space">
                            <p class="blue">${orderState[ovo.state]}</p>
                            <p class="gray tiny-content">${ovo.reg_date} 펀딩</p>
                        </div>
                        
                        <p class="mt10 gray bold tiny-title">${ovo.cate_title}</p>
                        <p class="gray bold tiny-content mt10"><span class="icon-round-no-board inline-box bg-gray-dark icon-10"></span> ${productStatus[ovo.status]}</p>
                        <p class="bold large-title mt5">${ovo.title}</p>
                        <p class="gray tiny-title mt5">by ${ovo.marker_name}</p>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</section>


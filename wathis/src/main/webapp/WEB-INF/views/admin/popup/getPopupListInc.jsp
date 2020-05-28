<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             팝업 목록
         </span>
         <span class="">
            <c:choose>
                <c:when test="${words eq ''}">
                    전체 팝업은 
                </c:when>
                <c:otherwise>
                    검색된 팝업은 
                </c:otherwise>
            </c:choose>
             <span class="orange">${count }</span> 개 입니다.<br />
         </span>
     </div>
     <div class="search-wrap margin-t10">
         <span class="font-16 bold">
             <button type="button" id="selectDelete-btn" data-target=".checkDel" data-url="/popup/deleteSelPopup" data-name="팝업을" class="btn-70 bold bo-pink">선택삭제</button>
             <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/popup/setPopup'">팝업 생성</button>
         </span>
         <span class="">
             <form action="/popup" method="GET">
                 <select name="searchOpt" class="sel-120">
                     <option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체</option>
                     <option value="title" <c:if test="${searchOpt eq 'title' }">selected</c:if>>팝업 제목</option>
                     <option value="display" <c:if test="${searchOpt eq 'display' }">selected</c:if>>팝업 위치</option>
                 </select>
                 <input type="text" name="words" id="words" class="input-150" value="${words }" />
                 <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
                 <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/popup'">전체보기</button>
             </form>
         </span>
     </div>
     <div id="board-list" class="board-list margin-t10">
         <table>
             <tr class="tr-50 f6 align bg-color-10">
                 <td class="td-5"><input type="checkbox" class="checkAll" id="checkAll" data-target=".checkDel" /></td>
                 <td class="td-5">NO</td>
                 <td class="td-15">팝업 제목/소제목</td>
                 <td class="td-10">팝업 위치</td>
                 <td class="td-10">팝업 상태</td>
                 <td class="td-15">팝업 시작일</td>
                 <td class="td-15">팝업 마감일</td>
                 <td class="td-15">비고</td>
             </tr>
             <c:forEach items="${pvoList }" var="pvo">
	             <tr class="tr-50 align">
	                 <td>
	                     <input type="checkbox" class="checkDel" value="${pvo.id }" />
	                 </td>
	                 <td>${pvo.id}</td>
	                 <td><a href="/popup/getPopup?id=${pvo.id }">${pvo.title}/${pvo.subtitle}</a></td>
	                 <td>${pvo.display }</td>
	                 <td>
                        ${status[pvo.status]}
                    </td>
                    <td>${pvo.start_date}</td>
                    <td>${pvo.end_date}</td>
	                 <td>
	                     <button type="button" onclick="javascript:location.href='/popup/getPopupModify?id=${pvo.id }'"  class="btn-50 bold bo-blue">수정</button>
	                     <button type="button" onclick="deleteItem(this)" data-url="/popup/setPopupDeleteAjax" data-id="${pvo.id }" data-error="팝업을"  class="btn-50 bold bo-pink">삭제</button>
	
	                 </td>
	             </tr>
	             <tr>
	                 <td class="tr-border bg-color-7" colspan="8"></td>
	             </tr>
             
             </c:forEach>
             
             <c:if test="${boardCount == 0}">
                <tr class="tr-40">
                    <td class="align bold font-16" colspan="8">검색결과가 없습니다.</td>
                </tr>
                <tr>
                    <td class="tr-border bg-color-7" colspan="8"></td>
                </tr>
            </c:if>
         </table>
         
         <div class="page-grp margin-t10 align">
            <!--시작 페이지가 1보다 클때 생성-->
            <c:if test="${paging.startPage>1 }">
	            <span class="">
	                <a href="/popup?template=popup&mypage=list&searchOpt=${searchOpt }&words=${words }&page=1" class="page-number board-page-number"><<</a>
	            </span>
	            <span class="">
	                <a href="/popup?template=popup&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.startPage-1}" 
	                class="page-number board-page-number"><</a>
	            </span>
            </c:if>
            <!--페이지 출력-->
         	<c:forEach begin="${paging.startPage}" end="${paging.endPage }" var="pageCnt">
	             <span class="">
                     <a href="/popup?template=popup&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${pageCnt}" class="page-number board-page-number <c:if test="${pageCnt==paging.page}">on</c:if> ">${pageCnt}</a>
	             </span>
         	</c:forEach>
             <!--마지막 페이지가 전체 페이지수 보다 작을 때만 출력-->
         	<c:if test="${paging.endPage < paging.pageNum}">
	             <span class="">
	                 <a href="/popup?template=popup&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.endPage+1 }" class="page-number board-page-number">></a>
	             </span>
	             <span class="">
	                 <a href="/popup?template=popup&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.pageNum}" class="page-number board-page-number">>></a>
	             </span>
             </c:if>
         </div>
     </div>
 </div>
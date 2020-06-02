<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             2. ${bvo.boardName} 게시판 목록
         </span>
         <span class="">
            <c:choose>
                <c:when test="${words eq ''}">
                    전체 게시물은 
                </c:when>
                <c:otherwise>
                    검색된 게시물은 
                </c:otherwise>
            </c:choose>
             <span class="orange">${count }</span> 개 입니다.<br />
         </span>
     </div>
     <div class="search-wrap margin-t10">
         <span class="font-16 bold">
             <button type="button" id="selectArticleDelete-btn" data-target=".checkDel" data-url="/article/deleteItemSelAjax" data-code="${bvo.boardCode}" data-name="게시물을" class="btn-70 bold bo-pink">선택삭제</button>
             <a href="/article/setArticle?boardCode=${bvo.boardCode }" target="_blank">
                <button type="button" id="" class="btn-80 bold bo-gray">게시물 작성</button>
             </a>
             <a href="/article?boardCode=${bvo.boardCode }" target="_blank">
                <button type="button" id="" class="btn-80 bold bo-gray">바로가기</button>
             </a>
             
         </span>
         <span class="">
             <form action="/article/admin" method="GET">
                <input type="hidden" name="boardCode" value="${bvo.boardCode}">
                 <select name="searchOpt" class="sel-120">
                    <option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체</option>
                    <option value="subject" <c:if test="${searchOpt eq 'subject' }">selected</c:if>>제목</option>
                    <option value="content" <c:if test="${searchOpt eq 'content' }">selected</c:if>>내용</option>
                 </select>
                 <input type="text" name="words" id="words" class="input-150" value="${words }" />
                 <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
                 <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/article/admin'">전체보기</button>
             </form>
         </span>
     </div>
     <div id="board-list" class="board-list margin-t10">
         <table>
             <tr class="tr-50 f6 align bg-color-10">
                <td class="w-5"><input type="checkbox" class="checkAll" id="checkAll" data-target=".checkDel" /></td>
                <td class="w-5">NO.</td>
                <td class="w-40">Subject.</td>
                <td class="w-10">Writer.</td>
                <td class="w-10">Visit.</td>
                <td class="w-10">Date.</td>
                <td class="w-20">Etc.</td>
             </tr>
             <c:forEach items="${avoList }" var="avo">
	             <tr class="tr-50 align">
	                 <td>
	                     <input type="checkbox" class="checkDel" value="${avo.id }" />
	                 </td>
	                 <td>${avo.id }</td>
	                 <td>
                        <a href="/article/detail?boardCode=${bvo.boardCode }&id=${avo.id }" target="_blank">
                            ${avo.subject }
                        </a>
                     </td>
	                 <td>${avo.writer }</td>
	                 <td>
                        ${avo.hit }
                    </td>
	                 <td>${avo.reg_date }</td>
	                 <td>
                         <a href="/article/modifyArticle?boardCode=${bvo.boardCode }&id=${avo.id }" target="_blank">
                            <button type="button"  class="btn-50 bold bo-blue">수정</button>
                        </a>
	                     
	                     <button type="button" onclick="deleteItem(this)" data-url="/article/deleteItemAjax" data-code="${bvo.boardCode}" data-id="${avo.id }" data-error="게시판을"  class="btn-50 bold bo-pink">삭제</button>
	
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
	                <a href="/article/admin?boardCode=${bvo.boardCode}&searchOpt=${searchOpt }&words=${words }&page=1" class="page-number board-page-number"><<</a>
	            </span>
	            <span class="">
	                <a href="/article/admin?boardCode=${bvo.boardCode}&searchOpt=${searchOpt }&words=${words }&page=${paging.startPage-1}" 
	                class="page-number board-page-number"><</a>
	            </span>
            </c:if>
            <!--페이지 출력-->
         	<c:forEach begin="${paging.startPage}" end="${paging.endPage }" var="pageCnt">
	             <span class="">
                     <a href="/article/admin?boardCode=${bvo.boardCode}&searchOpt=${searchOpt }&words=${words }&page=${pageCnt}" class="page-number board-page-number <c:if test="${pageCnt==paging.page}">on</c:if> ">${pageCnt}</a>
	             </span>
         	</c:forEach>
             <!--마지막 페이지가 전체 페이지수 보다 작을 때만 출력-->
         	<c:if test="${paging.endPage < paging.pageNum}">
	             <span class="">
	                 <a href="/article/admin?boardCode=${bvo.boardCode}&searchOpt=${searchOpt }&words=${words }&page=${paging.endPage+1 }" class="page-number board-page-number">></a>
	             </span>
	             <span class="">
	                 <a href="/article/admin?boardCode=${bvo.boardCode}&searchOpt=${searchOpt }&words=${words }&page=${paging.pageNum}" class="page-number board-page-number">>></a>
	             </span>
             </c:if>
         </div>
     </div>
 </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             2. 게시판 목록
         </span>
         <span class="">
            <c:choose>
                <c:when test="${words eq ''}">
                    전체 게시판은 
                </c:when>
                <c:otherwise>
                    검색된 게시판은 
                </c:otherwise>
            </c:choose>
             <span class="orange">${boardCount }</span> 개 입니다.<br />
         </span>
     </div>
     <div class="search-wrap margin-t10">
         <span class="font-16 bold">
             <button type="button" id="selectDelete-btn" data-target=".checkDel" data-url="/board/deleteSelBoard" data-name="게시판를" class="btn-70 bold bo-pink">선택삭제</button>
             <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/board/setBoard'">게시판 생성</button>
         </span>
         <span class="">
             <form action="/board" method="GET">
                 <select name="searchOpt" class="sel-120">
                     <option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체</option>
                     <option value="boardName" <c:if test="${searchOpt eq 'boardName' }">selected</c:if>>게시판 이름</option>
                     <option value="boardCode" <c:if test="${searchOpt eq 'boardCode' }">selected</c:if>>게시판 코드</option>
                 </select>
                 <input type="text" name="words" id="words" class="input-150" value="${words }" />
                 <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
                 <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/board'">전체보기</button>
             </form>
         </span>
     </div>
     <div id="board-list" class="board-list margin-t10">
         <table>
             <tr class="tr-50 f6 align bg-color-10">
                 <td class="td-5"><input type="checkbox" class="checkAll" id="checkAll" data-target=".checkDel" /></td>
                 <td class="td-5">NO</td>
                 <td class="td-15">게시판 코드</td>
                 <td class="td-15">게시판 이름</td>
                 <td class="td-15">게시판 색상</td>
                 <td class="td-15">게시판 생성일</td>
                 <td class="td-20">비고</td>
             </tr>
             <c:forEach items="${boardList }" var="bvo">
	             <tr class="tr-50 align">
	                 <td>
	                     <input type="checkbox" class="checkDel" value="${bvo.boardCode }" />
	                 </td>
	                 <td>${bvo.id }</td>
	                 <td><a href="/board/getBoard?id=${bvo.id }">${bvo.boardCode }</a></td>
	                 <td><a href="/article?boardCode=${bvo.boardCode }" target="_blank">${bvo.boardName }</a></td>
	                 <td>
                        <span class="valign padding-a-10 f6 sel-100" style="background-color: ${bvo.boardColor}">${bvo.boardColor }</span>
                    </td>
	                 <td>${bvo.reg_date }</td>
	                 <td>
	                     <button type="button" onclick="javascript:location.href='/board/getBoardModify?id=${bvo.id}'"  class="btn-50 bold bo-blue">수정</button>
	                     <button type="button" onclick="deleteItem(this)" data-url="/board/setBoardDeleteAjax" data-id="${bvo.boardCode }" data-error="게시판을"  class="btn-50 bold bo-pink">삭제</button>
	
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
	                <a href="/board?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=1" class="page-number board-page-number"><<</a>
	            </span>
	            <span class="">
	                <a href="/board?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.startPage-1}" 
	                class="page-number board-page-number"><</a>
	            </span>
            </c:if>
            <!--페이지 출력-->
         	<c:forEach begin="${paging.startPage}" end="${paging.endPage }" var="pageCnt">
	             <span class="">
                     <a href="/board?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${pageCnt}" class="page-number board-page-number <c:if test="${pageCnt==paging.page}">on</c:if> ">${pageCnt}</a>
	             </span>
         	</c:forEach>
             <!--마지막 페이지가 전체 페이지수 보다 작을 때만 출력-->
         	<c:if test="${paging.endPage < paging.pageNum}">
	             <span class="">
	                 <a href="/board?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.endPage+1 }" class="page-number board-page-number">></a>
	             </span>
	             <span class="">
	                 <a href="/board?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.pageNum}" class="page-number board-page-number">>></a>
	             </span>
             </c:if>
         </div>
     </div>
 </div>
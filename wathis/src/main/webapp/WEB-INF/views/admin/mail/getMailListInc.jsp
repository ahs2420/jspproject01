<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="main-member br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold noto">
             메일 목록
         </span>
         <span class="noto font font-16">
                <c:choose>
                    <c:when test="${words eq ''}">
                        전체 메일은 
                    </c:when>
                    <c:otherwise>
                        검색된 메일은 
                    </c:otherwise>
                </c:choose>
                 <span class="orange">${count }</span> 명 입니다.<br />
         </span>
     </div>
     <div class="search-wrap margin-t10">
         <span class="font-16 bold">
             <button type="button" id="selectDelete-btn" data-target=".checkDel" data-url="/mail/deleteSelMail" data-name="보낸 메일 정보를" class="btn-70 bold bo-pink">선택삭제</button>
             <button type="button" onclick="javascript:location.href='/mail/setMail'" class="btn-80 bold bo-blue">메일발송</button>
         </span>
         <span class="">
             <form action="/mail" method="GET">
                 <select name="searchOpt" class="sel-120">
                     <option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체</option>
                     <option value="title" <c:if test="${searchOpt eq 'title' }">selected</c:if>>제목</option>
                     <option value="content" <c:if test="${searchOpt eq 'content' }">selected</c:if>>내용</option>
                     <option value="mailto" <c:if test="${searchOpt eq 'mailto' }">selected</c:if>>메일주소</option>
                 </select>
                 <input type="text" name="words" id="words" class="input-150" value="${words }" />
                 <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
                 <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/mail'">목록보기</button>
             </form>
         </span>
     </div>
     <div id="member-list" class="member-list margin-t10">
         <table>
             <tr class="tr-40 f6 align">
                 <td class="td-5"><input type="checkbox" id="checkAll" class="checkAll" data-target=".checkDel" /></td>
                 <td class="td-10">번호</td>
                 <td class="td-20">메일주소</td>
                 <td class="td-30">제목</td>
                 <td class="td-20">보낸 날짜</td>
                 <td class="td-15">비고</td>
             </tr>
             <c:forEach items="${mvoList }" var="mvo">
	             <tr class="tr-40 align">
	                 <td> 
                        <input type="checkbox" class="checkDel" value="${mvo.id }" />
	                 </td>
                     <td>${mvo.id }</td>
                     <td>
                         <a href="/mail/getMailDetail?id=${mvo.id}">${mvo.mailto }</a>
                    </td>
                     <td>${mvo.title }</td>
                     <td>${mvo.reg_date }</td>
	                 <td>
                        <button type="button" onclick="deleteItem(this)" data-url="/mail/deleteMail" data-id="${mvo.id }" data-error="보낸 메일 정보를"  class="btn-50 bold bo-pink">삭제</button>
	                 </td>
	             </tr>
	             <tr>
	                 <td class="tr-border bg-color-7" colspan="5"></td>
	             </tr>
             
             </c:forEach>
             <c:if test="${count == 0}">
                <tr class="tr-40">
                    <td class="align bold font-16" colspan="5">검색결과가 없습니다.</td>
                </tr>
                <tr>
                    <td class="tr-border bg-color-7" colspan="5"></td>
                </tr>
            </c:if>
         </table>
         <div class="page-grp margin-t10 align">
            <!--시작 페이지가 1보다 클때 생성-->
            <c:if test="${paging.startPage>1 }">
	            <span class="">
	                <a href="/mail?searchOpt=${searchOpt }&words=${words }&page=1" class="page-number member-page-number"><<</a>
	            </span>
	            <span class="">
	                <a href="/mail?searchOpt=${searchOpt }&words=${words }&page=${paging.startPage-1}" 
	                class="page-number member-page-number"><</a>
	            </span>
            </c:if>
            <!--페이지 출력-->
         	<c:forEach begin="${paging.startPage}" end="${paging.endPage }" var="pageCnt">
	             <span class="">
                     <a href="/mail?searchOpt=${searchOpt }&words=${words }&page=${pageCnt}" class="page-number member-page-number <c:if test="${pageCnt==paging.page}">on</c:if> ">${pageCnt}</a>
	             </span>
         	</c:forEach>
             <!--마지막 페이지가 전체 페이지수 보다 작을 때만 출력-->
         	<c:if test="${paging.endPage < paging.pageCnt}">
	             <span class="">
	                 <a href="/mail?searchOpt=${searchOpt }&words=${words }&page=${paging.endPage+1 }" class="page-number member-page-number">></a>
	             </span>
	             <span class="">
	                 <a href="/mail?searchOpt=${searchOpt }&words=${words }&page=${paging.pageCnt}" class="page-number member-page-number">>></a>
	             </span>
             </c:if>
         </div>
     </div>
 </div>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             2. 게시판 설정 수정하기
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
             <button type="button" id="selectDelete-btn" class="btn-70 bold bo-pink">선택삭제</button>
             <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/board/setBoard'">게시판 생성</button>
         </span>
         <span class="">
             <form action="/board" method="GET">
                 <select name="searchOpt" class="sel-120">
                     <option value="all" <c:if test="${selectOpt eq 'all' }">selected</c:if>>전체</option>
                     <option value="boardName" <c:if test="${selectOpt eq 'boardName' }">selected</c:if>>게시판 이름</option>
                     <option value="boardCode" <c:if test="${selectOpt eq 'boardCode' }">selected</c:if>>게시판 코드</option>
                 </select>
                 <input type="text" name="words" id="words" class="input-150" value="${words }" />
                 <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
                 <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/board'">전체보기</button>
             </form>
         </span>
     </div>
     <div id="board-view" class="board-view margin-t30">
         <form action="/board/getBoardModify" method="POST" class="chkForm">
            <input type="hidden" name="id" value="${bvo.id}">
            <div class="font-16 margin-b10">
                <h1>
                <i class="fas fa-male"></i>
                게시판 설정 수정하기
                </h1>
            </div>
            <table>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">게시판 코드</td>
                <td class="w-35 padding-lr-5">
                    <input type="text" name="boardCode" class="input-200 padding-lr-5 chkItem" data-error="게시판 코드를" value="${bvo.boardCode}">
                    <span id="confirm" class="font-14 bold orange"></span>
                </td>
                <td class="bg-color-10 w-15 f6 align">게시판 이름</td>
                <td class="w-35 padding-lr-5">
                    <input type="text" name="boardName" class="input-200 padding-lr-5 chkItem" data-error="게시판 이름을" value="${bvo.boardName}">
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">게시판 색상</td>
                <td class="w-85 padding-lr-5" colspan="3">
                    <select class="sel-180 valign chkItem" id="boardColor" name="boardColor" data-error="게시판 색상을">
                        <option value="">선택</option>
                        <c:forTokens items="#5D1049,#B00020,#1A237E,#2962FF" delims="," var="item">
                            <option value="${item}" <c:if test="${bvo.boardColor eq item}">selected</c:if> >${item}</option>
                        </c:forTokens>
                    </select>
                    <span id="clrBox" class="clrBox valign margin-l10" style="background-color: ${bvo.boardColor}"></span>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">게시판 리스트 템플릿</td>
                <td class="w-35 padding-lr-5">
             		<c:forEach items="${listTemplate }" var="listTemplate" varStatus="vs">
	             		<label class="valign">
	             			<input type="radio" name="boardListTemplate" class="radio-btn valign" value="${listTemplate }"
	             				<c:if test="${listTemplate eq bvo.boardListTemplate}">checked</c:if>
	             			 >
	                    	${listTemplate }
	                    </label>
             		</c:forEach>
                </td>
                <td class="bg-color-10 w-15 f6 align">게시판 내용 템플릿</td>
                <td class="w-35 padding-lr-5">
             		<c:forEach items="${contentTemplate }" var="contentTemplate" varStatus="vs">
	             		<label class="valign">
	             			<input type="radio" name="boardContentTemplate" class="radio-btn valign" value="${contentTemplate }" 
	             				<c:if test="${contentTemplate eq bvo.boardContentTemplate}">checked</c:if>
	             			>
	                    	${contentTemplate }
	                    </label>
             		</c:forEach>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
        </table>
        <div class="btn-grp margin-t20">
            <div class="btn-left float-l">
                <button type="button" onclick="javascript:location.href='/board';" class="btn-50 bold bo-blue">목록</button>
            </div>
            <div class="btn-left float-r">
                <button type="submit" class="btn-80 bold bo-blue">게시판 수정</button>
                <button type="reset" onclick="javascript:location.href='/board';"  class= "btn-50 bold bo-pink">취소</button>
            </div>
            <div class="clearfix"></div>
        </div>
        </form>
     </div>
 </div>
 <script src="/js/admin/board/board.js"></script>
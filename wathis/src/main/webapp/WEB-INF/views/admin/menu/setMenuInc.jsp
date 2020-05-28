<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             메뉴 등록하기
         </span>
     </div>
     <div id="board-view" class="board-view margin-t30">
         <form action="/menu/setMenu" method="POST" class="chkForm">
            <c:if test="${mvo.id > 0}">
                <h1>${mvo.title} 하부 메뉴 입력</h1>
                <input type="hidden" name="parent_id"  value="${mvo.id}" />
                <input type="hidden" name="group_id" value="${mvo.group_id}" />
                <input type="hidden" name="dept" value="${mvo.dept}" />
            </c:if>
            
            <c:if test="${mvo.id eq 0}">
                <h1>대 메뉴 입력</h1>
                <input type="hidden" name="parent_id" value="0" />
                <input type="hidden" name="dept" value="1" />
            </c:if>
            <table>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">메뉴이름</td>
                <td class="w-85 padding-lr-5" colspan="3">
                    <select id="boardSel" class="sel-200 valign">
                    </select>
                    <input type="text" name="title" class="input-200 padding-lr-5 chkitem" data-error="메뉴이름을">
                    <span id="confirm" class="font-14 bold orange">*메뉴 이름은 상단 네비게이션바에 노출됩니다.</span>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">메뉴 URL</td>
                <td class="w-35 padding-lr-5">
                    <input type="text" name="url" class="input-200 padding-lr-5 chkItem" data-error="메뉴 URL을">
                </td>
                <td class="bg-color-10 w-15 f6 align">메뉴 출력 순서</td>
                <td class="w-35 padding-lr-5">
                    <input type="text" name="morder" class="input-200 padding-lr-5 chkitem" value="${morder}" data-error="메뉴 출력 순서를">
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
        </table>
        <div class="btn-grp margin-t20">
            <div class="btn-left float-l">
                <button type="button" onclick="javascript:location.href='/menu';" class="btn-50 bold bo-blue">목록</button>
            </div>
            <div class="btn-left float-r">
                <button type="submit" class="btn-80 bold bo-blue">메뉴 생성</button>
                <button type="reset" onclick="javascript:location.href='/menu';"  class= "btn-50 bold bo-pink">취소</button>
            </div>
            <div class="clearfix"></div>
        </div>
        </form>
     </div>
 </div>
 <script src="/js/menu/setMenu.js"></script>
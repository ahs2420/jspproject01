<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             사이트 설정
         </span>
     </div>
     <div class="margin-t10">
        <form action="/siteConfig/setSiteConfig" id="newSiteConfig" class="newSiteConfig chkForm" autocomplete="off" method="POST">
            <table class="margin-b20 margin-t20">
                <tr>
                    <th class="w-10">설정그룹</th>
                    <td class="w-20">
                        <select class="groupSel" id="newGroupSel" data-target="#new_group_id" class="sel-200">
                            <option value="">--새 그룹 작성--</option>
                        </select>
                        <input name="group_id" id="new_group_id" class="input-100 padding-lr-5 chkItem" data-error="설정 그룹을">
                    </td>
                    <th class="w-10">설정코드</th>
                    <td class="w-10">
                        <input type="text" name="title" data-target="#new_group_id" data-confirm="#newConfirm" class="input-100 padding-lr-5 chkItem newTitle" data-error="설정코드를" />
                        <p id="newConfirm" class="font-14 bold orange"></p>
                    </td>
                    <th class="w-10">설정 내용</th>
                    <td class="w-20">
                        <input type="text" name="content" class="input-200 padding-lr-5 chkItem" data-error="설정내용을"  />
                    </td>
                    <td id="" class="w-10">
                        <button type="submit" id="addConfig" class="btn-50 bo-blue bold">추가</button>
                    </td>
                </tr>
            </table>
        </form>
     </div>
     <div class="search-wrap margin-t10">
         <span class="font-16 bold">
             <button type="button" id="selectDelete-btn" data-target=".checkDel" data-url="/siteConfig/deleteSelSiteConfig" data-name="설정을" class="btn-70 bold bo-pink">선택삭제</button>
            
         </span>
     </div>
     <div id="board-list" class="board-list margin-t10">
         <table>
             <tr class="tr-50 f6 align bg-color-10">
                 <td class="td-5"><input type="checkbox" class="checkAll" id="checkAll" data-target=".checkDel" /></td>
                 <td class="td-20">설정 그룹</td>
                 <td class="td-20">설정 코드</td>
                 <td class="td-40">설정 내용</td>
                 <td class="td-15">비고</td>
             </tr>
             <c:forEach items="${svoList }" var="svo">
	             <tr class="tr-50 align">
	                 <td>
	                     <input type="checkbox" class="checkDel" value="${svo.id }" />
	                 </td>
	                 <td>${svo.group_id }</td>
	                 <td>${svo.title }</td>
	                 <td>${svo.content }</td>
	                 <td>
	                     <button type="button" onclick="javascript:location.href='/siteConfig/getSiteConfigModify?id=${svo.id }'"  class="btn-50 bold bo-blue">수정</button>
	                     <button type="button" onclick="deleteItem(this)" data-url="/siteConfig/setSiteConfigDeleteAjax" data-id="${svo.id }" data-error="팝업을"  class="btn-50 bold bo-pink">삭제</button>
	
                     </td>
	             </tr>
	             <tr>
	                 <td class="tr-border bg-color-7" colspan="8"></td>
	             </tr>
             
             </c:forEach>
         </table>
     </div>
 </div>
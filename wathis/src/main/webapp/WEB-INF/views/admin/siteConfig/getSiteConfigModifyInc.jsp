<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/css/datepicker/daterangepicker.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.16.0/moment.min.js"></script>
<script src="/js/datepicker/jquery.daterangepicker.min.js"></script>
 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
            사이트 설정 수정하기
         </span>
     </div>
     <div id="board-view" class="board-view margin-t30">
         <form action="/siteConfig/getSiteConfigModify" method="POST" class="chkForm" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${svo.id}" />
            <table>
            <colgroup>
                <col width="10%"/>
                <col width="20%"/>
                <col width="10%"/>
                <col width="20%"/>
                <col width="10%"/>
                <col width="*"/>
            </colgroup>
                <tr>
                    <td class="tbl-line" colspan="6"></td>
                </tr>
                <tr class="tr-45">
                    <td class="bg-color-10 f6 align">설정그룹</td>
                    <td class="padding-lr-5">
                        <select class="groupSel" id="newGroupSel" data-target="#new_group_id" class="sel-200">
                            <option value="">--새 그룹 작성--</option>
                        </select>
                        <input name="group_id" id="new_group_id" class="input-100 padding-lr-5 chkItem" value="${svo.group_id}" data-error="설정 그룹을">
                    </td>
                    <td class="bg-color-10 f6 align">설정코드</td>
                    <td class="padding-lr-5">
                        <input type="text" name="title" data-target="#new_group_id" data-confirm="#newConfirm" class="input-100 padding-lr-5 chkItem newTitle"  value="${svo.title}" data-error="설정코드를" />
                        <p id="newConfirm" class="font-14 bold orange"></p>
                    </td>
                    <td class="bg-color-10 f6 align">설정 내용	</td>
                    <td class="padding-lr-5">
                        <input type="text" name="content" class="input-200 padding-lr-5 chkItem" data-error="설정내용을" value="${svo.content}"  />
                    </td>
                </tr>
                <tr>
                    <td class="tbl-line" colspan="6"></td>
                </tr>
            </table>
        <div class="btn-grp margin-t20">
            <div class="btn-left float-l">
                <button type="button" onclick="javascript:location.href='/siteConfig';" class="btn-50 bold bo-blue">목록</button>
            </div>
            <div class="btn-left float-r">
                <button type="submit" class="btn-80 bold bo-blue">설정 수정</button>
                <button type="reset" onclick="javascript:location.href='/siteConfig';"  class= "btn-50 bold bo-pink">취소</button>
            </div>
            <div class="clearfix"></div>
        </div>
        </form>
     </div>
 </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/plugin/ckeditor/ckeditor.js"></script>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             메일 상세 정보
         </span>
     </div>
     <div id="board-view" class="board-view margin-t30">
            <table>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 w-15 f6 align">받는 사람 메일 주소</td>
                <td class="w-85 padding-lr-5">
                    ${mvo.mailto}
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 w-15 f6 align">메일 제목</td>
                <td class="w-85 padding-lr-5">
                    ${mvo.title}
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 w-15 f6 align">메일 내용</td>
                <td class="w-85 padding-lr-5">
                    ${mvo.content}
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
        </table>
        <div class="btn-grp margin-t20">
            <div class="btn-left float-r">
                <button type="button" onclick="javascript:location.href='/mail';" class="btn-50 bold bo-blue">목록</button>
            </div>
            <div class="clearfix"></div>
        </div>
     </div>
 </div>
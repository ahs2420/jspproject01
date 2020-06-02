<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/plugin/ckeditor/ckeditor.js"></script>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             메일 발송하기
         </span>
     </div>
     <div id="board-view" class="board-view margin-t30">
         <form action="/mail/setMail" method="POST" class="chkFormCke">
            <table>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 w-15 f6 align">받는 사람 메일 주소</td>
                <td class="w-85 padding-lr-5">
                    <input type="text" name="mailto" class="input-200 padding-lr-5 chkItem" data-error="받는 사람 메일 주소를">
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 w-15 f6 align">메일 제목</td>
                <td class="w-85 padding-lr-5">
                    <input type="text" name="title" class="input-200 padding-lr-5 chkItem" data-error="메일 제목를">
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-5 w-15 f6 align">메일 내용</td>
                <td class="w-85 padding-lr-5">
                    <textarea id="editor1" name="content" class="ckeditor chkitem ckeItem"></textarea>
                    <script>
                        CKEDITOR.replace('editor1', {
                            customConfig: '/plugin/ckeditor/config.js',
                            width: '100%',
                            height: '500',
                            filebrowserImageUploadUrl: '/cke/imageUpload?isHost=true'
                        });
                    </script>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
        </table>
        <div class="btn-grp margin-t20">
            <div class="btn-left float-l">
                <button type="button" onclick="javascript:location.href='/mail';" class="btn-50 bold bo-blue">목록</button>
            </div>
            <div class="btn-left float-r">
                <button type="submit" class="btn-80 bold bo-blue">메일 발송</button>
                <button type="reset" onclick="javascript:location.href='/mail';"  class= "btn-50 bold bo-pink">취소</button>
            </div>
            <div class="clearfix"></div>
        </div>
        </form>
     </div>
 </div>
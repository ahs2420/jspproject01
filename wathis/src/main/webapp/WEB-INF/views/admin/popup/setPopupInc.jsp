<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/css/datepicker/daterangepicker.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.16.0/moment.min.js"></script>
<script src="/js/datepicker/jquery.daterangepicker.min.js"></script>
 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             팝업 등록하기
         </span>
     </div>
     <div id="board-view" class="board-view margin-t30">
         <form action="/popup/setPopup" method="POST" class="chkForm" enctype="multipart/form-data">
            <input type="hidden" name="member_id" value="${sessionScope.id}" />
            <table>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">팝업 제목</td>
                <td class="w-35 padding-lr-5">
                    <input type="text" name="title" class="input-200 padding-lr-5 chkItem" data-error="팝업 제목을">
                </td>
                <td class="bg-color-10 w-15 f6 align">팝업 소제목</td>
                <td class="w-35 padding-lr-5">
                    <input type="text" name="subtitle" class="input-200 padding-lr-5 chkitem" data-error="팝업 소제목을">
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">팝업 이미지</td>
                <td class="w-35 padding-lr-5">
                    <input type="file" name="files" class="padding-lr-5 chkItem img-files" data-error="팝업 이미지를" data-preview=".preview-img"
                        data-file-type="img"
                        data-target=".img_name"
                    >
                    <div>
                        <button type="button">
                            <img class="preview-img dis-block" />
                        </button>
                        <span class="img_name"></span>
                    </div>

                </td>
                <td class="bg-color-10 w-15 f6 align">팝업 URL</td>
                <td class="w-35 padding-lr-5">
                    <input type="text" name="url" class="input-200 padding-lr-5 chkitem"  data-error="팝업 URL을">
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr><tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">팝업 시작일~마감일</td>
                <td class="w-35 padding-lr-5">
                    <span id="two-datePicker">
                        <input type="text" id="start_date" name="start_date" class="input-200 padding-lr-5 chkitem"  data-error="팝업 시작일을" readonly>~
                        <input type="text" id="end_date" name="end_date" class="input-200 padding-lr-5 chkitem"  data-error="팝업 마감일을" readonly>
                    </span>
                </td>
                <td class="bg-color-10 w-15 f6 align">팝업 위치</td>
                <td class="w-35 padding-lr-5">
                    <select name="display" class="sel-200 chkitem"  data-error="팝업 위치를">
                        <option value="main">메인</option>
                        <option value="product">리워드</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
        </table>
        <div class="btn-grp margin-t20">
            <div class="btn-left float-l">
                <button type="button" onclick="javascript:location.href='/popup';" class="btn-50 bold bo-blue">목록</button>
            </div>
            <div class="btn-left float-r">
                <button type="submit" class="btn-80 bold bo-blue">메뉴 생성</button>
                <button type="reset" onclick="javascript:location.href='/popup';"  class= "btn-50 bold bo-pink">취소</button>
            </div>
            <div class="clearfix"></div>
        </div>
        </form>
     </div>
 </div>
 <script src="/js/popup/setPopup.js"></script>
 <script>
     $(function(){
         var date = new Date()
         var today = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
        $('#two-datePicker').dateRangePicker(
        {
            startDate: today,
            separator : ' to ',
            getValue: function()
            {
                if ($('#start_date').val() && $('#end_date').val() )
                    return $('#start_date').val() + ' to ' + $('#end_date').val();
                else
                    return '';
            },
            setValue: function(s,s1,s2)
            {
                $('#start_date').val(s1);
                $('#end_date').val(s2);
            }
        });
     });
 </script>
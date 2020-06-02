<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet"  href="/css/fullcalendar/core.css" />
    <link rel="stylesheet"  href="/css/fullcalendar/daygrid.css" />
    <link rel="stylesheet"  href="/css/fullcalendar/list.css" />
    <link rel="stylesheet"  href="/css/fullcalendar/timegrid.css" />
    <script src="/js/fullcalendar/core.js" ></script>
    <script src="/js/fullcalendar/interaction.js" ></script>
    <script src="/js/fullcalendar/daygrid.js" ></script>
    <script src="/js/fullcalendar/list.js" ></script>
    <script src="/js/fullcalendar/timegrid.js" ></script>
    <script src="/js/fullcalendar/locales-all.js" ></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <div id="main-scheduler" class="bg-color-8 margin-t20 padding-a-20">
        <div class="title-wrap margin-b20">
            <span class="font-16 bold noto">
                4. 스케쥴러
            </span>
            <span></span>
        </div>
        <form action="" id="newSchedulerForm" class="newSchedulerForm chkForm" autocomplete="off" onsubmit="return false;">
            <input type="hidden" name="userName" value="${sessionScope.userName}" />
            <table class="margin-b20 margin-t20">
                <tr>
                    <th class="w-10">시작일자</th>
                    <td class="w-10">
                        <input type="text" name="startDate" class="input-200 padding-lr-5 chkItem" data-error="시작일자를" id="startDate" />
                    </td>
                    <th class="w-10">종료일자</th>
                    <td class="w-10">
                        <input type="text" name="endDate" class="input-200 padding-lr-5 chkItem" data-error="종료일자를" id="endDate" />
                    </td>
                    <th class="w-10">일정내용</th>
                    <td class="w-10">
                        <input type="text" name="scheduleContent" class="input-200 padding-lr-5 chkItem" data-error="일정내용을" id="scheduleContent" />
                    </td>
                    <td id="" class="ralign">
                        <button type="submit" id="addSchduleButton" class="btn-50 bo-blue bold">추가</button>
                    </td>
                </tr>
            </table>
        </form>
        <div id="calendar">

        </div>
    </div>
    <script>
        

            
      
    </script>
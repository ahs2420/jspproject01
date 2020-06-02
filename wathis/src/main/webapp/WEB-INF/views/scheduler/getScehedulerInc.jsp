<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href='../packages/core/main.css' rel='stylesheet' />
<link href='../packages/daygrid/main.css' rel='stylesheet' />
<link href='../packages/timegrid/main.css' rel='stylesheet' />
<link href='../packages/list/main.css' rel='stylesheet' />
<script src='../packages/core/main.js'></script>
<script src='../packages/interaction/main.js'></script>
<script src='../packages/daygrid/main.js'></script>
<script src='../packages/timegrid/main.js'></script>
<script src='../packages/list/main.js'></script>
<script src='../packages/list/core/locles/ko.js'></script>

<!-- date picker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>


   <div id="main-scheduler" class="bg-color-8 margin-t20 padding-a-20">
   	
	   	<div class="title-wrap margin-b20">
	   		<span class="font-16 bold noto">4. 스케줄러</span>
	   		<span></span>
	   	</div>
	   	
	   	<form id="newScheduleForm" class="newScheduleForm" autocomplete="off">
	   		<table class="mt20 mb20">
	   			<tr>
	   				<th class="w-10">시작일자</th>
	   				<td class="w-10">
	   					<input type="text" 
			   					id="startDate" 
			   					name="startDate"
			   					class="input-200 padding-lr-5">
	   				</td>
	   				<th class="w-10">종료일자</th>
	   				<td class="w-10">
	   					<input type="text" 
			   					id="endDate" 
			   					name="endDate"
			   					class="input-200 padding-lr-5">
	   				</td>
	   				<th class="w-10">일정내용</th>
	   				<td class="w-10">
	   					<input type="text" 
			   					id="scheduleContent" 
			   					name="scheduleContent"
			   					class="input-200 padding-lr-5" required>
	   				</td>
	   				<td id="" class="w-5 ralign">
	   					<button type="submit" id="addScheduleButton" class="btn-50 bo-blue bold">추가</button>
	   			</tr>
	   		</table>
	   		<input type="hidden" 
			   		name="userName"
			   		id="userName" 
			   		value="${sessionScope.userName }"/>
	   		</form>
   		<!-- fullcalendar 달력 출력 -->
   		<div id="calendar"></div>
   </div>
   
   <script>

	$(document).ready(function(){
		getScheduler();

		$("#startDate, #endDate").datepicker({
			dateFormat : 'yy-mm-dd'	
		});
		$("#addScheduleButton").click(function(){
			setScheduler();
		});
	});
	
	
	
	function setScheduler(){
		//ajax 입력 + json(keym value) : 달력 {startDate:2020-05-29}
			var reqdata = $("#newScheduleForm").serialize();
			$.ajax({
				type : "post",
				url : "/scheduler/setScheduler",
				data : reqdata,
				/* 그린 ->(urlencoding) %d%c%83 */
				/* %d%c%83 ->(urldecoding) 그린 */
				contentType : 'application/x-www-form-urlencoded; charset=utf-8',
				dataType : 'json',
				
				success : function(responseData){
					alert("일정이 추가 되었습니다.");
					window.location.reload;
				}
			});		
		}
	function getScheduler(){ //달력에 쓰기 + 출력
		var data =new Object();
		JSON.stringify(data); //json 타입으로 데이터를 담기 위한 준비

		$.ajax({
			type: "post",
			url: "/scheduler/getScheduler",
			data : data,
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',
			dataType : 'json',
			
			success :function(responseData){ //controller 넘어오는 데이터
				for(var i=0; i<responseData.data.length; i++){
					responseData.data[i].start = responseData.data[i].startDate;
					responseData.data[i].end = responseData.data[i].endDate;
					responseData.data[i].title = responseData.data[i].scheduleContent;					
				}
				makeCalendar(responseData.data);
			}
		});
	}
	</script>
   <script>
function makeCalendar(data){
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev,next,today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
      navLinks: true, // can click day/week names to navigate views
      editable: true, // display business hours
      eventLimit: true,
      locales:"ko"
      /* events: data */
    });
    calendar.render();
}
</script>
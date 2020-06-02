$(document).ready(function(){
	getCalendar();
    $("#startDate,#endDate").datepicker({
        dateFormat : 'yy-mm-dd'
    });
    $("#addSchduleButton").click(function(){
        addScheduler();
    });
});
function addScheduler(){
    var data=$("#newSchedulerForm").serialize();
    var option={
        "data":data,
        "url":"/scheduler/setScheduler",
        "contentType":"application/x-www-form-urlencoded; charset:utf-8;"
    }
    var ajaxResult = ajaxStan(option);
    if(ajaxResult.status){
        alert("일정이 추가되었습니다.");
        window.location.reload();
    }
}
function getCalendar(){
	var sendData= {
			
	};
    var option={
		"data":sendData,
        "url":"/scheduler/getScheduler",
        "contentType":"application/x-www-form-urlencoded; charset:utf-8;"
    };
    var data= new Object();
    JSON.stringify(data);
    var ajaxResult = ajaxStan(option);
    if(ajaxResult.status){
    	var i=0;
    	for(var avo of ajaxResult.data.data){
    		ajaxResult.data.data[i].start = avo.startDate;
    		ajaxResult.data.data[i].end = avo.endDate;
    		ajaxResult.data.data[i].title = avo.scheduleContent;
    		++i;
    	}
    	makeCalendar(ajaxResult.data.data);
    }
    
}
function makeCalendar(eventData){
    var initialLocaleCode = 'ko';
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
    plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
    header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
    },
    defaultView: 'dayGridMonth',
    locale: initialLocaleCode,
    navLinks: true, // can click day/week names to navigate views
    editable: true,
    eventLimit: true, // allow "more" link when too many events
    events: eventData
    });

    calendar.render();

}
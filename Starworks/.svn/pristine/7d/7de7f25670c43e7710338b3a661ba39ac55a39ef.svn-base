<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<!-- Fullcalendar css-->
<link href="/resources/assets/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
<link href="/resources/assets/plugins/fullcalendar/fullcalendar.print.min.css" rel="stylesheet" media="print">
<style>
		.fc-sticky 
		{
			font-size: 1.3em;
		}
		.fc-daygrid-dot-event > div
		{
			font-size: 1.3em;
		}
</style>

<div class="row" id="wrap">
	<input type="hidden" id="empCd" name="empCd" value="<sec:authentication property="principal.employeeVO.empCd"/>">
	<div id="calendar-wrap">
		<div id="calendar" ></div>
	</div>
</div>



<script type="text/javascript">
$(function(){
	$(".fc-daygrid-event").removeAttr("href");
});


document.addEventListener('DOMContentLoaded', function () {	
	$(".fc-daygrid-event").removeAttr("href");
	
	var eventsData;
	var empCd = $("#empCd").val();
	let data = {"empCd":empCd};
	
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	$.ajax({
		url: './schedule',
		type: 'POST',
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		async: false, 
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success: function(result) {
			eventsData = result;
// 			console.log("eventsData : " , eventsData);
		}	
	});
	var calendarEl = document.getElementById('calendar');
	
	var calendar = new FullCalendar.Calendar(calendarEl, {
		
		height:700,
		locale : 'ko',
		headerToolbar: {
			left: 'prev,next today',
			center: 'title',
			right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
		},
		navLinks: true, // can click day/week names to navigate views
		businessHours: true, // display business hours
		editable: true,
		selectable: true,
		selectMirror: true,
		droppable: true, // this allows things to be dropped onto the calendar
		
		select: function (arg) {
			var title = prompt('일정을 입력해주세요 : ');
			console.log(arg);
			if (title) {
				calendar.addEvent({
					title: title,
					start: arg.start,
					end: arg.end,
					allDay: arg.allDay
				})
			}else{	
				calendar.unselect()
			}
			let allDay = null;
			if(arg.allDay == 'ture'){
				allDay = 'ture';
			}
			
			
			let selectData = {"title":title, "sta":arg.startStr, "endTime":arg.endStr, "allDay":arg.allDay, "empCd":empCd, "color":""};
			console.log(selectData);
			
			// 일정 등록하기
			if(title != "" || title != null|| title!="null"){
				$.ajax({
					async:false,
					url:"./insertSchedule",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(selectData),
					type:"post",
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success:function(result){
						console.log("성공!!@@!!");
						location.reload(); 
					}
				}); // ajax end			
			}else{
				calendar.unselect()
			}
			
			calendar.unselect()
		},
		// 일정 삭제하기!!
		eventClick: function (arg) {
			console.log("arg", arg);
			console.log("arg", arg.event._def.publicId);
			let caldCd = arg.event._def.publicId
			let deleteData = {"empCd":empCd,"caldCd":caldCd};
			let eventTitle = arg.event._def.title;
			if (confirm(eventTitle+" 일정을 삭제하시겠습니까?")) {
				$.ajax({
					async:false,
					url:"./removeSchedule",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(deleteData),
					type:"post",
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success:function(result){		
						console.log("성공!!@@!!");
						location.reload(); 
					}
				});
						arg.event.remove()
				
			}else{
				return
				
			}
		},
		
		editable: true,
		dayMaxEvents: true,
		events : eventsData,
		
		// 일정 수정하기(drag/Drop)
		eventDrop: function(info) {
			let caldCd = info.event._def.publicId;		
			let start = info.event._instance.range.start; 
			let end = info.event._instance.range.end;
			let start2 = new Date(start).toISOString()+"";
			let end2 = new Date(end).toISOString()+"";
			let allDay = info.event.allDay;
			console.log("allDay : ", allDay);
			console.log("start2 : ", start2);
			console.log("info" , info);
			let updateData = {"empCd":empCd,"caldCd":caldCd, "sta":start2, "endTime":end2, "allDay":allDay};
			
		    if (confirm("일정을 수정하시겠습니까?")) {		    	
		    	$.ajax({
					async:false,
					url:"./updateSchedule",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(updateData),
					type:"post",
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success:function(result){
						console.log("성공!!@@!!");
						location.reload(); 
					}
				});
		    	
			}else{
		      info.revert();
			}
		},
		eventResize: function(info) {
			let caldCd = info.event._def.publicId;		
			let start = info.el.fcSeg.start -(9 * 60 * 60 * 1000);
			let end = info.el.fcSeg.end-(9 * 60 * 60 * 1000);
			let allDay = info.event.allDay;
			let updateData = {"empCd":empCd,"caldCd":caldCd, "sta":start, "endTime":end, "allDay":allDay};
			
			if (confirm("일정을 수정하시겠습니까?")) {
				$.ajax({
					async:false,
					url:"./updateSchedule",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(updateData),
					type:"post",
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success:function(result){
						console.log("성공!!@@!!");
					}
				});

			}else{
				info.revert();
			}
		}		
		
		

	});
	
	calendar.render();
	
});
</script>

<!-- Moment js-->
<script src="/resources/assets/plugins/moment/min/moment.min.js"></script>
<!-- Datepicker js-->
<script src="/resources/assets/plugins/jquery-ui/ui/widgets/datepicker.js"></script>
<!-- Full-calendar js-->
<script src="/resources/assets/plugins/fullcalendar/fullcalendar.min.js"></script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

	<link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css">
	<link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
	
	<style>
	.bg-c {
		background-color: #EAEDF7;
	}
	.col-fon {
		color: #6259CA;
		font-size: 15pt;
	}
	.tui-datepicker {z-index: 99;}
	.tui-datepicker table * {vertical-align: middle;}
	.tui-datetime-input {width: 100%;}
	.tui-datepicker-input {height: 50px;}
	.tui-datepicker-input > input {font-size: 3rem; font-weight: bold; text-align: center;}
	.tui-datepicker-input.tui-has-focus {border: 2px solid #6259CA;}
	</style>
	<script src="https://uicdn.toast.com/tui.code-snippet/v1.5.2/tui-code-snippet.min.js"></script>
	<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
	<script src="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.min.js"></script>
	<script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.min.js"></script>
	
	<script>
		var format = moment("yyyy-MM-dd");
		var header = "${_csrf.headerName}";
		var token = "${_csrf.token}";
		$(function() {
			let today = new Date();
			let year = today.getFullYear(); // 연
			let month = today.getMonth() + 1;  // 월
			if(month < 10) {
				month = "0" + month;
			}
			let date = today.getDate();  // 일
			if(date < 10) {
				date = "0" + date;
			}
			let hours = today.getHours(); // 시
			let minutes = today.getMinutes();  // 분
			let seconds = today.getSeconds();  // 초
			let tm = year + "-" + month + "-" + date + " " + hours;
			let tb = $("#datepicker-input").val() + " " + $('.t' + (hours - 1)).attr('data-time');
			let dt = year + "-" + month + "-" + date;
			// 캘린더 시간
			let calendarDate = year + "-" + month + "-" + date;
			let calendarStart;
			let calendarEnd;
			if($("#datepicker-input").val() < dt) {
				for(var i=0; i<$('.t'+hours).length; i++) {
					for(var j=9; j<22; j++) {
						$('.t' + j).eq(i).css('backgroundColor', 'rgb(204, 204, 204)');
						$('.t' + j).eq(i).removeAttr('data-bs-target');
						console.log('grey1 : ', $("#datepicker-input").val());
						console.log('grey2 : ', dt);
					}
				}
			}
			console.log('tm : ', tm);
			console.log('tb : ', tb);
			if(tm > tb) {
				for(var i=0; i<$('.t'+hours).length; i++) {
					for(var j=9; j<hours; j++) {
						$('.t' + j).eq(i).css('backgroundColor', 'rgb(204, 204, 204)');
						$('.t' + j).eq(i).removeAttr('data-bs-target');
						
					}
				}
			} else {
				console.log("tm이 작음");
			}
			
			$('table td').mouseover(function(){
				if($(this).css('backgroundColor') != 'rgb(204, 204, 204)') {
					$(this).css("cursor", "pointer");
					if($(this).css('backgroundColor') != 'rgb(98, 110, 214)') {
						  $(this).css("cursor", "pointer");
					      $(this).css("backgroundColor","rgb(100, 115, 225)");						
					}
				}
		    });
			$('table td').mouseout(function(){
				if($(this).css('backgroundColor') != 'rgb(204, 204, 204)') {
					if($(this).css('backgroundColor') != 'rgb(98, 110, 214)') {
					   $(this).css("backgroundColor","#fff");											
					}
				}
			});
			$('table td').click(function() {
				$('#roomNo').val($(this).attr('data-room'));
				$('#bookNo').val($(this).attr('data-room'));
				$('#dateRoom').val($('#datepicker-input').val());				
				$('#bookDate').val($('#datepicker-input').val());
				$('#bookMeet').val($(this).text());
				$('#bookContent').val($(this).attr('data-content'));
				$('#content').val('');
				let after = $("#datepicker-input").val() + " " + $(this).next().attr('data-time');
				if($(this).next().attr('data-time') === undefined) {
					$('#timeRoom').val($(this).attr('data-time') + ':00~' + '22:00');
					$('#bookTime').val($(this).attr('data-time') + ':00~' + '22:00');
				} else {
					$('#timeRoom').val($(this).attr('data-time') + ':00~' + $(this).next().attr('data-time') + ':00');
					$('#bookTime').val($(this).attr('data-time') + ':00~' + $(this).next().attr('data-time') + ':00');
				}
				if($('#bookMeet').val() == $('#userName').val() && after > tm) {
					console.log('after : ', after);
					console.log('tm : ', tm);
					console.log('bookMeet: ', $('#bookMeet').val());
					console.log('userName: ', $('#userName').val());
					console.log('true');
					$('#13-footer').css('display', 'block');
				} else if($('#bookMeet').val() == $('#userName').val() && $("#datepicker-input").val() > dt) {
					$('#13-footer').css('display', 'block');
				} else {
					$('#13-footer').css('display', 'none');
				}
				let time33 = $(this).data("time");
				calendarStart = calendarDate+"T"+time33+":00:00+09:00";
				calendarEnd = calendarDate+"T"+(time33+1)+":00:00+09:00";
				
			});
			
			
			$("#bookBtn").click(function() {
				let st = $('#timeRoom').val().substring(0, 2);
				let tmspl = $('#timeRoom').val().split('~');
				let et = tmspl[1].substring(0, 2);
				let book = {
					bookDt : $('#dateRoom').val(),
					stTi : st,
					endTi : et,
					bookCon : $('#content').val(),
					meetNo : $('#roomNo').val(),
					empNm : $('#meeter').val()
				};
				let title = $('#content').val() + $("#roomNo").val()+"호 회의";
				let calendarData = {"title":title, "sta":calendarStart, "endTime":calendarEnd, "allDay":"", "empCd":$("#empCd").val(), "color":"#FF99FF"};
				console.log(calendarData); 
				$.ajax({
					url: './bookPost',
					contentType:"application/json;charset=utf-8",
					data: JSON.stringify(book),
					type: 'post',
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success: function(result) {
						if(result > 0) {
							$('.btn-close').trigger('click');
							
							$.ajax({
								url: './book',
								type: 'post',
								beforeSend:function(xhr){
									xhr.setRequestHeader(header, token);
								},
								success: function(result) {
									for(var i=0; i<result.length; i++) {
										if($('#datepicker-input').val() == moment(result[i].bookDt).format("YYYY-MM-DD")) {
											for(var j=9; j<22; j++) {
												for(var k=0; k<$('#tbody tr').length; k++) {
													if($('.t' + j).eq(k).attr('data-room') == result[i].meetNo && $('.t' + j).eq(k).attr('data-time') == result[i].stTi) {
														$('.t' + j).eq(k).attr('data-content', result[i].bookCon);
													}
												}
											}
										}
									}						
								},
								error: function(error) {
									console.log('에러입니다.');
								}
							});
						}
					},
					error: function(error) {
						console.log('에러입니다.');
					}
				});
				// 이건 캘린더에 등록하기!!
				$.ajax({
					async:false,
					url:"/calendar/insertSchedule",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(calendarData),
					type:"post",
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success:function(result){
						if(result == 0){
							console.log("안성공!!@@!!");
						}
							console.log("성공!!@@!!");
					
					}
				}); 
				
			});
			$("#bookCancel").click(function() {
				let st = $('#timeRoom').val().substring(0, 2);
				let tmspl = $('#timeRoom').val().split('~');
				let et = tmspl[1].substring(0, 2);
				let book = {
					stTi : st,
					meetNo : $('#roomNo').val()
				};
				// 캘린더 작스
				let removeTitle = $("#bookContent").val()+$("#bookNo").val()+"호 회의";
				let removeData = {"title":removeTitle, "sta":calendarStart,"empCd":$("#empCd").val()};
				console.log(removeData);
				
				$.ajax({
					url: './bookDel',
					contentType:"application/json;charset=utf-8",
					data: JSON.stringify(book),
					type: 'post',
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success: function(result) {
						if(result > 0) {
							$('.btn-close').trigger('click');
							
							$.ajax({
								url: './book',
								type: 'post',
								beforeSend:function(xhr){
									xhr.setRequestHeader(header, token);
								},
								success: function(result) {
									for(var i=0; i<result.length; i++) {
										if($('#datepicker-input').val() == moment(result[i].bookDt).format("YYYY-MM-DD")) {
											for(var j=9; j<22; j++) {
												for(var k=0; k<$('#tbody tr').length; k++) {
													if($('.t' + j).eq(k).attr('data-room') == result[i].meetNo && $('.t' + j).eq(k).attr('data-time') == result[i].stTi) {
														$('.t' + j).eq(k).text(result[i].empNm);
														$('.t' + j).eq(k).css('backgroundColor', 'rgb(98, 110, 214)');
														$('.t' + j).eq(k).css('color', 'rgb(255, 255, 255)');
														$('.t' + j).eq(k).attr('data-bs-target', '#modaldemo13');
														$('.t' + j).eq(k).attr('data-content', '');
														if(result[i].bookSit == 1) {
															$('.t' + j).eq(k).css('backgroundColor', 'rgb(255, 255, 255)');
															$('.t' + j).eq(k).attr('data-bs-target', '#modaldemo12');
															$('.t' + j).eq(k).text('');
															$('.t' + j).eq(k).attr('data-content', '');
															console.log('bg : ', $('.t' + j).eq(k).css('backgroundColor'), 'j : ', j, 'k: ', k);
														}
													}
												}
											}
										}
									}						
								},
								error: function(error) {
									console.log('에러입니다.');
								}
							});
						}
						
					},
					error: function(error) {
						console.log('에러입니다.');
					}
				});
				
				// 캘린더 일정에도 지우기!!
				$.ajax({
					async:false,
					url:"/calendar/meetRemove",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(removeData),
					type:"post",
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success:function(result){		
						console.log("성공!!@@!!");
						location.reload(); 
					}
				});
				
			});
			
			setInterval(intervalAjax, 500);
			
		});
		function intervalAjax() {
			$.ajax({
				url: './book',
				type: 'post',
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success: function(result) {
					for(var i=0; i<result.length; i++) {
						if($('#datepicker-input').val() == moment(result[i].bookDt).format("YYYY-MM-DD")) {
							for(var j=9; j<22; j++) {
								for(var k=0; k<$('#tbody tr').length; k++) {
									if($('.t' + j).eq(k).attr('data-room') == result[i].meetNo && $('.t' + j).eq(k).attr('data-time') == result[i].stTi) {
										if(result[i].bookSit != 1) {
											$('.t' + j).eq(k).text(result[i].empNm);
											$('.t' + j).eq(k).css('backgroundColor', 'rgb(98, 110, 214)');
											$('.t' + j).eq(k).css('color', 'rgb(255, 255, 255)');
											$('.t' + j).eq(k).attr('data-bs-target', '#modaldemo13');
											$('.t' + j).eq(k).attr('data-content', result[i].bookCon);
										}
									}
								}
							}
						}
					}						
				},
				error: function(error) {
					console.log('에러입니다.');
				}
			});
		}
	</script>
	
<div style="text-align: center;">
	<h1 id="reload_target">회의실 예약</h1><br>
	<input id="userName" type="hidden" value="<sec:authentication property="principal.employeeVO.empNm" />">
</div>
<div class="row no-gutters justify-content-center mb-3">
	<div class="col-lg-12 text-center">
		<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
			<input type="text" id="datepicker-input" aria-label="Date-Time">
			<span class="tui-ico-date"></span>
		</div>
		<div id="wrapper" class="d-flex justify-content-center" style="margin-top: -1px;">
			<div class="tui-datepicker tui-hidden">
				<div class="tui-datepicker-body tui-datepicker-type-date">
					<div class="tui-calendar-container">
						<div class="tui-calendar">
							<div class="tui-calendar-header">
								<div class="tui-calendar-header-inner">
									<button class="tui-calendar-btn tui-calendar-btn-prev-month">Prev month</button>
									<em class="tui-calendar-title tui-calendar-title-month">2022.12</em>
									<button class="tui-calendar-btn tui-calendar-btn-next-month">Next month</button>
								</div>
								<div class="tui-calendar-header-info">
									<p class="tui-calendar-title-today">오늘: 2022.12.13 (화)</p>
								</div>
							</div>
							<div class="tui-calendar-body">
								<table class="tui-calendar-body-inner" cellspacing="0" cellpadding="0">
									<caption>
										<span>Dates</span>
									</caption>
									<thead class="tui-calendar-body-header">
										<tr>
											<th class="tui-sun" scope="col">일</th>
											<th scope="col">월</th>
											<th scope="col">화</th>
											<th scope="col">수</th>
											<th scope="col">목</th>
											<th scope="col">금</th>
											<th class="tui-sat" scope="col">토</th>
										</tr>
									</thead>
									<tbody>
										<tr class="tui-calendar-week">
											<td class="tui-calendar-date tui-calendar-prev-month tui-calendar-sun tui-is-selectable" data-timestamp="1669474800000">27</td>
											<td class="tui-calendar-date tui-calendar-prev-month tui-is-selectable" data-timestamp="1669561200000">28</td>
											<td class="tui-calendar-date tui-calendar-prev-month tui-is-selectable" data-timestamp="1669647600000">29</td>
											<td class="tui-calendar-date tui-calendar-prev-month tui-is-selectable" data-timestamp="1669734000000">30</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1669820400000">1</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1669906800000">2</td>
											<td class="tui-calendar-date tui-calendar-sat tui-is-selectable" data-timestamp="1669993200000">3</td>
										</tr>
										<tr class="tui-calendar-week">
											<td class="tui-calendar-date tui-calendar-sun tui-is-selectable" data-timestamp="1670079600000">4</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1670166000000">5</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1670252400000">6</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1670338800000">7</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1670425200000">8</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1670511600000">9</td>
											<td class="tui-calendar-date tui-calendar-sat tui-is-selectable" data-timestamp="1670598000000">10</td>
										</tr>
										<tr class="tui-calendar-week">
											<td class="tui-calendar-date tui-calendar-sun tui-is-selectable" data-timestamp="1670684400000">11</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1670770800000">12</td>
											<td class="tui-calendar-date tui-calendar-today tui-is-selectable" data-timestamp="1670857200000">13</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1670943600000">14</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1671030000000">15</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1671116400000">16</td>
											<td class="tui-calendar-date tui-calendar-sat tui-is-selectable" data-timestamp="1671202800000">17</td>
										</tr>
										<tr class="tui-calendar-week">
											<td class="tui-calendar-date tui-calendar-sun tui-is-selectable" data-timestamp="1671289200000">18</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1671375600000">19</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1671462000000">20</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1671548400000">21</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1671634800000">22</td>
											<td class="tui-calendar-date tui-is-selectable tui-is-selected" data-timestamp="1671721200000">23</td>
											<td class="tui-calendar-date tui-calendar-sat tui-is-selectable" data-timestamp="1671807600000">24</td>
										</tr>
										<tr class="tui-calendar-week">
											<td class="tui-calendar-date tui-calendar-sun tui-is-selectable" data-timestamp="1671894000000">25</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1671980400000">26</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1672066800000">27</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1672153200000">28</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1672239600000">29</td>
											<td class="tui-calendar-date tui-is-selectable" data-timestamp="1672326000000">30</td>
											<td class="tui-calendar-date tui-calendar-sat tui-is-selectable" data-timestamp="1672412400000">31</td>
										</tr>
										<tr class="tui-calendar-week">
											<td class="tui-calendar-date tui-calendar-next-month tui-calendar-sun tui-is-selectable" data-timestamp="1672498800000">1</td>
											<td class="tui-calendar-date tui-calendar-next-month tui-is-selectable" data-timestamp="1672585200000">2</td>
											<td class="tui-calendar-date tui-calendar-next-month tui-is-selectable" data-timestamp="1672671600000">3</td>
											<td class="tui-calendar-date tui-calendar-next-month tui-is-selectable" data-timestamp="1672758000000">4</td>
											<td class="tui-calendar-date tui-calendar-next-month tui-is-selectable" data-timestamp="1672844400000">5</td>
											<td class="tui-calendar-date tui-calendar-next-month tui-is-selectable" data-timestamp="1672930800000">6</td>
											<td class="tui-calendar-date tui-calendar-next-month tui-calendar-sat tui-is-selectable" data-timestamp="1673017200000">7</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
var pic_date = '' + ${param.Y} + '' + '-' + ${param.M} + '' + '-' + ${param.D} + ''; 
var cur_date;
if(pic_date != '0-0-0') {
	cur_date = new Date(pic_date); 
} else {
	cur_date = new Date();	
}
var datepicker = new tui.DatePicker('#wrapper', {
	date: cur_date,
	language: 'ko',
	input: {
		element: '#datepicker-input',
		format: 'yyyy-MM-dd'
	}
});
datepicker.on('change', function() {
	var tmp_date = datepicker.getDate();
	location.href='/meet/book?Y='+tmp_date.getFullYear()+'&M='+(tmp_date.getMonth() + 1)+'&D='+(tmp_date.getDate())+'#reload_target';
});

</script>
<div>
<input type="hidden" id="empCd" value="<sec:authentication property="principal.employeeVO.empCd" />"/>
	<table class="table text-nowrap text-md-nowrap table-bordered mg-b-0" style="text-align: center;">
		<thead>
			<tr class="bg-c">
				<th style="color: #6259CA; font-size: 15pt;">#</th>
				<th style="color: #6259CA; font-size: 15pt;">09:00</th>
				<th style="color: #6259CA; font-size: 15pt;">10:00</th>
				<th style="color: #6259CA; font-size: 15pt;">11:00</th>
				<th style="color: #6259CA; font-size: 15pt;">12:00</th>
				<th style="color: #6259CA; font-size: 15pt;">13:00</th>
				<th style="color: #6259CA; font-size: 15pt;">14:00</th>
				<th style="color: #6259CA; font-size: 15pt;">15:00</th>
				<th style="color: #6259CA; font-size: 15pt;">16:00</th>
				<th style="color: #6259CA; font-size: 15pt;">17:00</th>
				<th style="color: #6259CA; font-size: 15pt;">18:00</th>
				<th style="color: #6259CA; font-size: 15pt;">19:00</th>
				<th style="color: #6259CA; font-size: 15pt;">20:00</th>
				<th style="color: #6259CA; font-size: 15pt;">21:00</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<c:forEach var="list" items="${room}">
				<tr>
					<th scope="row" style="background-color: #EAEDF7; color: #6259CA; font-size: 15pt;">${list.meetNo}</th>
					<td class="t9" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="09" data-content="" data-bs-toggle="modal"></td>
					<td class="t10" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="10" data-content="" data-bs-toggle="modal"></td>
					<td class="t11" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="11" data-content="" data-bs-toggle="modal"></td>
					<td class="t12" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="12" data-content="" data-bs-toggle="modal"></td>
					<td class="t13" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="13" data-content="" data-bs-toggle="modal"></td>
					<td class="t14" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="14" data-content="" data-bs-toggle="modal"></td>
					<td class="t15" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="15" data-content="" data-bs-toggle="modal"></td>
					<td class="t16" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="16" data-content="" data-bs-toggle="modal"></td>
					<td class="t17" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="17" data-content="" data-bs-toggle="modal"></td>
					<td class="t18" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="18" data-content="" data-bs-toggle="modal"></td>
					<td class="t19" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="19" data-content="" data-bs-toggle="modal"></td>
					<td class="t20" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="20" data-content="" data-bs-toggle="modal"></td>
					<td class="t21" data-bs-target="#modaldemo12" data-room="${list.meetNo}" data-time="21" data-content="" data-bs-toggle="modal"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div class="modal fade" id="modaldemo12" style="display: none; margin-top: 280px; margin-left: 170px;" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content modal-content-demo">
			<div class="modal-header">
				<h6 class="modal-title">회의실 예약</h6>&nbsp; <button class="btn btn-sm ripple btn-primary" data-bs-container="body" data-bs-content="연속 2시간 초과 예약 시 관리자에 의해 취소될 수 있음" data-bs-placement="right" data-bs-popover-color="default" data-bs-toggle="popover" title="" type="button" data-bs-original-title="주의">필수사항</button>
				<button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button"></button>
			</div>
			<div class="modal-body">
				<div style="display: inline-block;">
					<h5>예약 위치</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="roomNo" class="form-control" value="" readonly="readonly" type="text" style="width: 80px; text-align: center;">
				</div>
				<hr>
				<div style="display: inline-block;">
					<h5>예약 일자</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="dateRoom" class="form-control" value="" readonly="readonly" type="text" style="width: 200px; text-align: center;">
				</div><br><br>
				<div style="display: inline-block;">
					<h5>예약 시간</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="timeRoom" class="form-control" value="" readonly="readonly" type="text" style="width: 200px; text-align: center;">
				</div>
				<hr>
				<div style="display: inline-block;">
					<h5>예약자 명</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="meeter" class="form-control" value="<sec:authentication property="principal.employeeVO.empNm"/>" readonly="readonly" type="text" style="width: 100px;" required="required">
				</div><br><br>
				<div style="display: inline-block;">
					<h5>사용 목적</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="content" class="form-control" value="" type="text" style="width: 200px;" required="required">
				</div>
			  </div>
			<div class="modal-footer">
				<button id="bookBtn" class="btn ripple btn-success" type="submit" style="float: right;">예약</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="modaldemo13" style="display: none; margin-top: 280px; margin-left: 170px;" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content modal-content-demo">
			<div class="modal-header">
				<h6 class="modal-title">회의실 예약</h6>&nbsp; <button class="btn btn-sm ripple btn-primary" data-bs-container="body" data-bs-content="연속 2시간 초과 예약 시 관리자에 의해 취소될 수 있음" data-bs-placement="right" data-bs-popover-color="default" data-bs-toggle="popover" title="" type="button" data-bs-original-title="주의">필수사항</button>
				<button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button"></button>
			</div>
			<div class="modal-body">
				<div style="display: inline-block;">
					<h5>예약 위치</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="bookNo" class="form-control" value="" readonly="readonly" type="text" style="width: 80px; text-align: center;">
				</div>
				<hr>
				<div style="display: inline-block;">
					<h5>예약 일자</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="bookDate" class="form-control" value="" readonly="readonly" type="text" style="width: 200px; text-align: center;">
				</div><br><br>
				<div style="display: inline-block;">
					<h5>예약 시간</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="bookTime" class="form-control" value="" readonly="readonly" type="text" style="width: 200px; text-align: center;">
				</div>
				<hr>
				<div style="display: inline-block;">
					<h5>예약자 명</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="bookMeet" class="form-control" value="" readonly="readonly" type="text" style="width: 100px;" required="required">
				</div><br><br>
				<div style="display: inline-block;">
					<h5>사용 목적</h5>
				</div>
				&nbsp;
				<div style="display: inline-block;">
					<input id="bookContent" class="form-control" value="" readonly="readonly" type="text" style="width: 200px;" required="required">
				</div>
			  </div>
			  <sec:authorize access="hasRole('ROLE_A03')">
			  <div id="admin-footer" class="modal-footer">
				<button id="bookCancel" class="btn ripple btn-danger" type="submit" style="float: right;">예약취소</button>
				</div>
			  </sec:authorize>
			  <sec:authorize access="hasAnyRole('ROLE_A01', 'ROLE_A02')">
			  <div id="13-footer" class="modal-footer" style="display: none;">
				<button id="bookCancel" class="btn ripple btn-danger" type="submit" style="float: right;">예약취소</button>
				</div>
			  </sec:authorize>
			
		</div>
	</div>
</div>

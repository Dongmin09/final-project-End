<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<!-- Fullcalendar css-->
<link href="/resources/assets/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
<link href="/resources/assets/plugins/fullcalendar/fullcalendar.print.min.css" rel="stylesheet" media="print">
<%-- <sec:authentication property="principal.employeeVO.empCd" /> --%>


<div class="row row-sm">
	<div class="col-md-6">
		<div class="card custom-card bd">
			<div class="card-header p-3 tx-medium my-auto tx-white bg-primary">
				출퇴근
				<input type="hidden" name="empCd"  id="empCd" value="<sec:authentication property='principal.employeeVO.empCd' />" />
				<input type="hidden"  id="affAtt" value=""/>
				<input type="hidden"  id="nonAtt" />
				<input type="hidden"  id="myDep" value="<sec:authentication property='principal.employeeVO.depCd' />" />
			</div>
			<div class="card-body">
							
				<div class=" d-flex flex-row justify-content-around">
					<p class="mg-b-0"><button class="btn ripple btn-outline-dark  btn-lg" id="btnOn"><i class="si si-arrow-down-circle"></i><br>출근</button></p>
					<p class="mg-b-0"><button class="btn ripple btn-outline-dark btn-lg"  id="btnOff"><i class="si si-clock"></i><br>퇴근</button></p>
				</div>
				<br>
			</div>
		</div>
	</div>
	<div class="col-md-6 ">
		<div class="card custom-card bd">
				<button type="button"  class="btn ripple btn-info btn-lg" id="btnVacation">휴가사용</button>
				<br>
			<div class="row row-sm">
				<div class="col-xl-4 col-lg-6 col-sm-6 pe-0 ps-0 border-end">
					<div class="card-body text-center">
						<h6 class="mb-0">연차</h6>
						<h2 class="mb-1 mt-2 number-font text-primary"><span class="counter year">77</span></h2>
					</div>
				</div>
				<div class="col-xl-4 col-lg-6 col-sm-6 pe-0 ps-0 border-end">
					<div class="card-body text-center">
						<h6 class="mb-0">사용 연차</h6>
						<h2 class="mb-1 mt-2 number-font text-primary"><span class="counter useCnt">0</span></h2>
					</div>
				</div>
				<div class="col-xl-4 col-lg-6 col-sm-6 pe-0 ps-0">
					<div class="card-body text-center">
						<h6 class="mb-0">사용 가능한 휴가 수</h6>
						<h2 class="mb-1 mt-2 number-font text-primary"><span class="counter remanet"></span></h2>
					</div>
				</div>
				
			</div>
			<br>
		</div>
	</div>
<!-- 	<div class="col-md-6 "> -->
<!-- 		<div class="card custom-card bd"> -->
<!-- 			<div class="card-header p-3 tx-medium my-auto tx-white bg-secondary"> -->
<!-- 				근무시간 -->
<!-- 			</div> -->
<!-- 			<div class="card-body"> -->
<!-- 				<h2 id="time" class="text-primary" style="text-align: center;">00h 00m</h2> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
</div>
<div class="row row-sm">
	<div class="col-md-12">
		<div class="card custom-card bd">
		<div class="card-header p-3 tx-medium my-auto tx-white bg-secondary"> 
		근무시간
		</div>
			<div class="row row-sm">
				<div class="col-xl-4 col-lg-6 col-sm-6 pe-0 ps-0 border-end">
					<div class="card-body text-center">
						<h6 class="mb-0">오늘 근무시간</h6>
						<h2 id="time"  class="mb-1 mt-2 number-font text-primary">00h 00m 00s</h2>
					</div>
				</div>
				<div class="col-xl-4 col-lg-6 col-sm-6 pe-0 ps-0 border-end">
					<div class="card-body text-center">
						<h6 class="mb-0">이번 주 근무시간</h6>
						<h2 class="mb-1 mt-2 number-font text-primary" id="weekTime"></h2>
					</div>
				</div>
				<div class="col-xl-4 col-lg-6 col-sm-6 pe-0 ps-0">
					<div class="card-body text-center">
						<h6 class="mb-0">이번 달 근무시간</h6>
						<h2 class="mb-1 mt-2 number-font text-primary" id="monthTime"></h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row row-sm">
	<div class="card custom-card bd">
		<div class="card-body">
			<div class="row" id="wrap">
				<div class="col" id="calendar-wrap">
					<div id="calendar"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- <div id="vacationform" style="display: none;"> -->
<%-- 	<c:import url="/approval/vacationform"></c:import> --%>
<!-- </div> -->

<script type="text/javascript">


// 오늘 근무시간 계산...
const time = $('#time');
function dutyTime(){
	//	 출근시간
	let aff = $("#affAtt").val();
	let hour = aff.substring(0,2);
	let min = aff.substring(3,5);
	let second = aff.substring(6,8);
	console.log("출근시간 : " + hour+min+second);

	
	// 현재시간
    const date = new Date();
    const hours = String(date.getHours()).padStart(2,"0");
    const minutes = String(date.getMinutes()).padStart(2, "0");
    const seconds = String(date.getSeconds()).padStart(2, "0");
	
    let riri = String(hours - hour).padStart(2, "0");
	let mimi =  String(minutes - min).padStart(2, "0");
	let sese = String(seconds - second).padStart(2, "0");
	
	if(mimi<0){
		riri = (riri-1);
		mimi = (60-Math.abs(mimi));
	}
	if(sese < 0){
		mimi = (mimi-1);
		sese =  (60-Math.abs(sese));
	}
	
	if(aff ==""){
		time.text();
	}else{
		time.text(String(riri).padStart(2, "0")+"h "+String(mimi).padStart(2, "0")+"m " +String(sese).padStart(2, "0") + "s" );		
	}
	console.log("time1 : " + riri+"h "+mimi+"m");
}

function goAway(){
	//	 출근시간
	let aff = $("#affAtt").val();
	let hour = aff.substring(0,2);
	let min = aff.substring(3,5);
	let second = aff.substring(6,8);
	console.log("출근시간 : " + hour+min+second);
	
	// 퇴근시간
	let noff = $("#nonAtt").val();
	let hour2 = noff.substring(0,2);
	let min2 = noff.substring(3,5);
	let second2 = noff.substring(6,8);
	
	let hh = (hour2 - hour);
	let mm =  (min2 - min);
	let ss =  (second2 - second);
	
	if(mm<0){
		hh =(hh-1);
		mm = (60-Math.abs(mm));
	}
	if(ss<0){
		mm =(mm-1);
		ss = (60-Math.abs(ss));
	}
	
	time.text(String(hh).padStart(2, "0")+"h "+ String(mm).padStart(2, "0")+"m " +  String(ss).padStart(2, "0") + "s");			
	console.log("time : " + hh+"h "+mm+"m");

}




</script>

<script type="text/javascript">
// 출근 버튼 만들기
	$("#btnOn").on("click",function(){
	   
		let header = "${_csrf.headerName}";
		let token = "${_csrf.token}";
		
		let empCd = $("#empCd").val();
		let data = {"empCd":empCd};
		
		$.ajax({
			url:"./goWork",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:(function(result){
				if(result>0){
					console.log("출근!");
					$("#btnOn").addClass("disabled");
					location.href="/attendance/attendance";
				}else{
					swal("","이미 출근이 지정되었습니다.","success");
				}
			
			})	// success end//
		})	// ajax end//
	});
	
	// 퇴근하기!!!
	$("#btnOff").on("click",function(){
		let header = "${_csrf.headerName}";
		let token = "${_csrf.token}";
		
		let empCd = $("#empCd").val();
		let data = {"empCd":empCd};
		
		$.ajax({
			url:"./leaveWork",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:(function(result){
				if(result>0){
					console.log("퇴근!!!!!");
					clearInterval();
					location.href="/attendance/attendance";
				}else{
					swal("퇴근 실패... 야근하세요..");
				}
			
			})	// success end//
		})	// ajax end//
		
	});
	

	
// 캘린더 구현////!!!	
document.addEventListener('DOMContentLoaded', function () {
	
	var calendarEl = document.getElementById('calendar');

	var calendar = new FullCalendar.Calendar(calendarEl, {
		customButtons: {
		    myCustomNext: {
		    	 icon:'chevron-right',
		      click: function() {
		    	  calendar.next()
		    	  let data = {"empCd":empCd};
		    	  let calendar2= $(".fc-daygrid-day");
		    	  calendar2.find(".fc-daygrid-day-events").empty();
		    	  $.ajax({
		    			url:"./dutyCheck",
		    			contentType:"application/json;charset=utf-8",
		    			data:JSON.stringify(data),
		    			type:"post",
		    			beforeSend:function(xhr){
		    				xhr.setRequestHeader(header, token);
		    			},
		    			success:function(result){
		    				
		    				for(var i=0; i < result.length; i++){
		    					var date = result[i].affDt;
		    					if(date == today){
		    			 			$("#affAtt").val(result[i].affAtt);
		    			 			$("#nonAtt").val(result[i].nonAtt);
		    			 		}
		    				 	for(var j=0; j < calendar2.length; j++){
		    				 		let cal = calendar2.eq(j).data("date");
		    				 		if(date == cal){
		    				 			calendar2.eq(j).find(".fc-daygrid-day-events").append("<p style='text-align:center;'>"+ result[i].workSitCd +"<br>출근 : " +result[i].affAtt+ "<br>퇴근 : "+result[i].nonAtt+"</p>");
		    				 		}		 	
		    				 	}
		    				}// end for////
		    			}	// success end//
		    		});
		    		$.ajax({
		    			url:"./vacationCheck",
		    			contentType:"application/json;charset=utf-8",
		    			data:JSON.stringify(data),
		    			type:"post",
		    			beforeSend:function(xhr){
		    				xhr.setRequestHeader(header, token);
		    			},
		    			success:function(result){
		    				for(var i=0; i < result.length; i++){
		    					var date = result[i].affDt;

		    					
		    				 	for(var j=0; j < calendar2.length; j++){
		    				 		let cal = calendar2.eq(j).data("date");
		    				 		if(date == cal){
		    				 			calendar2.eq(j).find(".fc-daygrid-day-events").append("<br><p style='text-align:center;'>"+ result[i].workSitCd +"</p>");
		    				 		}		 	
		    				 	}
		    				}// end for////
		    			}	// success end//
		    		});
		      }
		    }, // myCustomNext end 끝
		    myCustomPrev: {
		      icon:'chevron-left',
		      click: function() {
		    	  calendar.prev()
		    	  let data = {"empCd":empCd};
		    	  let calendar2= $(".fc-daygrid-day");
		    	  calendar2.find(".fc-daygrid-day-events").empty();
		    	  $.ajax({	    		
		    			url:"./dutyCheck",
		    			contentType:"application/json;charset=utf-8",
		    			data:JSON.stringify(data),
		    			type:"post",
		    			beforeSend:function(xhr){
		    				xhr.setRequestHeader(header, token);
		    			},
		    			success:function(result){
		    				
		    				for(var i=0; i < result.length; i++){
		    					var date = result[i].affDt;
		    					if(date == today){
		    			 			$("#affAtt").val(result[i].affAtt);
		    			 			$("#nonAtt").val(result[i].nonAtt);
		    			 		}
		    				 	for(var j=0; j < calendar2.length; j++){
		    				 		let cal = calendar2.eq(j).data("date");
		    				 		if(date == cal){
		    				 			calendar2.eq(j).find(".fc-daygrid-day-events").append("<p style='text-align:center;'>"+ result[i].workSitCd +"<br>출근 : " +result[i].affAtt+ "<br>퇴근 : "+result[i].nonAtt+"</p>");
		    				 		}		 	
		    				 	}
		    				}// end for////
		    			}	// success end//
		    		});
		      }
		    },  //myCustomPrev end 끝
		    empAttendButton: {  // 직원 근태 확인 버튼
				text: '직원근태확인',
				click: function() {
					$(".fc-myAttendBack-button").removeAttr("disabled");
		        	calendar.changeView('listWeek');
		    		let empCd = $("#empCd").val();
		    		let depCd = $("#myDep").val();
		    		let attData = {"empCd":empCd, "depCd":depCd};
		    		
		    		$.ajax({
		    			url:"./empAttend",
		    			contentType:"application/json;charset=utf-8",
		    			data:JSON.stringify(attData),
		    			type:"post",
		    			beforeSend:function(xhr){
		    				xhr.setRequestHeader(header, token);
		    			},
		    			success:function(result){
		    				calendar.addEventSource(result);
		    			}	// success end//
		    		}) 
		    		$(".fc-empAttendButton-button").attr("disabled", "disabled");
		        }
			},
		    myAttendBack: {  // 다시 내 근태 확인 버튼
				text: '나의 근태',
				click: function() {
					calendar.removeAllEvents();
					calendar.changeView('dayGridMonth');
					$(".fc-empAttendButton-button").removeAttr("disabled");
					$(".fc-myAttendBack-button").attr("disabled", "disabled");
					let data = {"empCd":empCd};
			    	  let calendar2= $(".fc-daygrid-day");
			    	  $.ajax({	    		
			    			url:"./dutyCheck",
			    			contentType:"application/json;charset=utf-8",
			    			data:JSON.stringify(data),
			    			type:"post",
			    			beforeSend:function(xhr){
			    				xhr.setRequestHeader(header, token);
			    			},
			    			success:function(result){
			    				
			    				for(var i=0; i < result.length; i++){
			    					var date = result[i].affDt;
			    					if(date == today){
			    			 			$("#affAtt").val(result[i].affAtt);
			    			 			$("#nonAtt").val(result[i].nonAtt);
			    			 		}
			    				 	for(var j=0; j < calendar2.length; j++){
			    				 		let cal = calendar2.eq(j).data("date");
			    				 		if(date == cal){
			    				 			calendar2.eq(j).find(".fc-daygrid-day-events").append("<p style='text-align:center;'>"+ result[i].workSitCd +"<br>출근 : " +result[i].affAtt+ "<br>퇴근 : "+result[i].nonAtt+"</p>");
			    				 		}		 	
			    				 	}
			    				}// end for////
			    			}	// success end//
			    		});
			    		$.ajax({
			    			url:"./vacationCheck",
			    			contentType:"application/json;charset=utf-8",
			    			data:JSON.stringify(data),
			    			type:"post",
			    			beforeSend:function(xhr){
			    				xhr.setRequestHeader(header, token);
			    			},
			    			success:function(result){
			    				for(var i=0; i < result.length; i++){
			    					var date = result[i].affDt;

			    					
			    				 	for(var j=0; j < calendar2.length; j++){
			    				 		let cal = calendar2.eq(j).data("date");
			    				 		if(date == cal){
			    				 			calendar2.eq(j).find(".fc-daygrid-day-events").append("<br><p style='text-align:center;'>"+ result[i].workSitCd +"</p>");
			    				 		}		 	
			    				 	}
			    				}// end for////
			    			}	// success end//
			    		});
		        }
			}
		  },
		height:700,
		locale : 'ko',
		headerToolbar: {
			left: 'myCustomPrev,myCustomNext empAttendButton',
			center: 'title',
			right: 'myAttendBack today'
		},
		navLinks: false, // can click day/week names to navigate views
		businessHours: true, // display business hours
		editable: false,
		selectable: false,
		selectMirror: false,
		droppable: false,
		editable: false,
		dayMaxEvents: true,
		eventResourceEditable: false
	
	});
	// 캘린더에 출근정보 보이게 하기!!
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	let calendar2= $(".fc-daygrid-day");
	let empCd = $("#empCd").val();
	let data = {"empCd":empCd};
	let today = $(".fc-day-today").data("date");
	

	calendar.render();
	
	
});
	
	
// 연차 현황 보이기
$(function(){
	$(".fc-myAttendBack-button").attr("disabled","disabled");
	$(".fc-non-business").remove();
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	let empCd = $("#empCd").val();
	let data = {"empCd":empCd};
	$.ajax({
		url:"./yearCheck",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
			if(result[0].employeeAuthVOList[0].authCd == 'ROLE_A01'){
				$(".fc-empAttendButton-button").css("display","none");
				$(".fc-myAttendBack-button").css("display","none");
			}
			if(result.length == 0){
				$(".year").text(0);
				$(".remanet").text(0);
			}else{
				$(".year").text(result[0].vacationList[0].yearCnt);
				
				let plus = result[0].vacationList[0].yearCnt;
				
				$(".remanet").text(plus);
			}
			// 휴가사용신청서
			$("#myDep").text(result[0].depCd);
			
			
		}	// success end//
	}) // ajax end//
	
	// 연차 사용 개수 체크하기
	$.ajax({
		url:"./useCount",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
			let useCnt= 0;
			console.log("휴가사용 " ,result);
			if(result.length == 0){
				$(".useCnt").text(0);
			}else{
				for(var i=0; i<result.length; i++){
					useCnt += result[i].vacUseVOList[0].useCnt
				}
				console.log("useCnt : " + useCnt);
				$(".useCnt").text(useCnt);
			}
		}	// success end//
	}) // ajax end//
	
	
// 출근정보 캘린더에 찍기!!
	let calendar2= $(".fc-daygrid-day");
	let today = $(".fc-day-today").data("date");
	console.log("today : " + today);	

	$.ajax({
		async:false,
		url:"./dutyCheck",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
			
			for(var i=0; i < result.length; i++){
				var date = result[i].affDt;
				if(date == today){
		 			$("#affAtt").val(result[i].affAtt);
		 			$("#nonAtt").val(result[i].nonAtt);
		 		}
			 	for(var j=0; j < calendar2.length; j++){
			 		let cal = calendar2.eq(j).data("date");
			 		if(date == cal){
			 			calendar2.eq(j).find(".fc-daygrid-day-events").append("<p style='text-align:center;'>"+ result[i].workSitCd +"<br>출근 : " +result[i].affAtt+ "<br>퇴근 : "+result[i].nonAtt+"</p>");
			 		}		 	
			 	}
			}// end for////
		}	// success end//
	});
	
	// 휴가를 썼으면 휴가도 체킁
	$.ajax({
		url:"./vacationCheck",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
			for(var i=0; i < result.length; i++){
				var date = result[i].affDt;

				
			 	for(var j=0; j < calendar2.length; j++){
			 		let cal = calendar2.eq(j).data("date");
			 		if(date == cal){
			 			calendar2.eq(j).find(".fc-daygrid-day-events").append("<br><p style='text-align:center;'>"+ result[i].workSitCd +"</p>");
			 		}		 	
			 	}
			}// end for////
		}	// success end//
	});
	

	// 휴가 사용하기
	$( "#btnVacation").on("click", function(){	
		if($(".remanet").text() == 0){
			swal("사용가능한 연차가 없습니다.","","error");
			return
		}
		window.open("/vacation/vacationform?empCd="+empCd, "_blank", "width=1300, height=1000");
	});
	
	// 이번주 근무 시간 확인하기!!
	$.ajax({
		url:"./weekTime",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
// 			console.log(result);
// 			console.log(result[0].affAtt);
			$("#weekTime").text(result[0].affAtt);
		}	// success end//
	});

	// 이번주 근무 시간 확인하기!!
	$.ajax({
		url:"./monthTime",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
			console.log(result);
			console.log(result[0].affAtt);
			$("#monthTime").text(result[0].affAtt);
		}	// success end//
	});
});

$(function(){
	let timer;
	let leave = $("#nonAtt").val();
	console.log("leave" , leave);
	
	if(leave == " " || leave =="" || leave ==null){
		setTimeout(dutyTime,100);
		console.log("leave" , leave);
		timer = setInterval(dutyTime, 1000);
	}else{
		console.log("제발멈춰");
		clearInterval(timer);
		goAway()
		setTimeout(goAway, 100);
	}
});
	
</script>




<!-- Moment js-->
<script src="/resources/assets/plugins/moment/min/moment.min.js"></script>

<!-- Datepicker js-->
<script src="/resources/assets/plugins/jquery-ui/ui/widgets/datepicker.js"></script>

<!-- Full-calendar js-->
<script src="/resources/assets/plugins/fullcalendar/fullcalendar.min.js"></script>

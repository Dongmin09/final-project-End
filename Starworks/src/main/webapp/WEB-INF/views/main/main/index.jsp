<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style type="text/css">

.read {
	font-weight: lighter;
	color: #adb5bd
}

</style>

<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<!-- Fullcalendar css-->
<link href="/resources/assets/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
<link href="/resources/assets/plugins/fullcalendar/fullcalendar.print.min.css" rel="stylesheet" media="print">
<link href="/resources/assets/plugins/multislider/multislider.css" rel="stylesheet">
<!-- Internal Owl Carousel css-->
<link href="/resources/assets/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
<!-- Internal Owl Carousel js-->
<script src="/resources/assets/plugins/owl-carousel/owl.carousel.js"></script>
<!-- 사원 -->
<input type="hidden"	id="empCd" value="<sec:authentication property="principal.employeeVO.empCd" />"/>
<sec:authorize access="hasAnyRole('ROLE_A01','ROLE_A02')">
<div class="row row-sm">
	<div class="col-lg-6 col-md-12">
		<div class="card custom-card">
			<div class="card-body h-100">
				<h5 class="card-title" style="float: left;">ToDO</h5>
				<h5><a href="/todo/todo" class="card-title text-muted" style="float: right;">자세히</a></h5>
			</div>
			<hr>
			<div class="table-responsive">
				<table id="example1"
					class="table table-bordered table-striped dataTable dtr-inline"
					aria-describedby="example1_info">
					<thead>
						<tr role="row">
							<th class="sorting" tabindex="0" aria-controls="example3"
								rowspan="1" colspan="1" style="width: 60%;"
								aria-label="Last name: activate to sort column ascending">제목</th>
							<th class="sorting" tabindex="0" aria-controls="example3"
								rowspan="1" colspan="1" style="width: 20%;"
								aria-label="Office: activate to sort column ascending">생성자</th>
							<th class="sorting" tabindex="0" aria-controls="example3"
								rowspan="1" colspan="1" style="width: 15%;"
								aria-label="Position: activate to sort column ascending">마감날짜</th>
							<th class="sorting" tabindex="0" aria-controls="example3"
								rowspan="1" colspan="1" style="width: 5%;"
								aria-label="Position: activate to sort column ascending">진행률</th>
						</tr>
					</thead>
					<tbody id="listBody">
						<c:if test="${not empty todoList }">
							<c:forEach items="${todoList }" var="todo">
								<tr>
									<td style="width: 60%;">${todo.tit}</td>
									<td style="width: 20%;">${todo.ctor}</td>
									<td style="width: 15%;"><fmt:formatDate value='${todo.endTi}' pattern='yy년 MM월 dd일'/></td>
									<td style="width: 5%;">${todo.progs}%</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty todoList }">
							<tr>
								<td colspan="4" style="text-align:center;" class="text-dark">Todo 리스트가 존재하지 않습니다.</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>	
		</div>
	</div>
	<div class="col-lg-6 col-md-12">
		<div class="card custom-card">
			<div class="card-body h-100">
				<h5 class="card-title" style="float: left;">일정</h5>
				<h5><a href="/calendar/calendar" class="card-title text-muted" style="float: right;">자세히</a></h5>
			</div>
			<hr>
			<div id="calendar" style="margin-left:5%; width:90%"></div>
			<br>
		</div>
	</div>
</div>

<div class="row row-sm">
	<div class="col-lg-6 col-md-12">
		<div class="card custom-card">
			<div class="card-body h-100">
				<h5 class="card-title" style="float: left;">메일</h5>
				<h5><a href="/mail/selectMailList" class="card-title text-muted" style="float: right;">자세히</a></h5>
			</div>
			<hr>
			<div class="table-responsive">
				<table id="example1"
					class="table table-bordered table-striped dataTable dtr-inline"
					aria-describedby="example1_info">
					<thead>
						<tr role="row"  style="text-align:center;">
	<!-- 						<th class="sorting" tabindex="0" aria-controls="example3" -->
	<!-- 							rowspan="1" colspan="1" style="width: 5%;" -->
	<!-- 							aria-label="Last name: activate to sort column ascending"></th> -->
							<th class="sorting" tabindex="0" aria-controls="example3"
								rowspan="1" colspan="1" style="width: 60%;"
								aria-label="Last name: activate to sort column ascending">제목</th>
							<th class="sorting" tabindex="0" aria-controls="example3"
								rowspan="1" colspan="1" style="width: 20%;"
								aria-label="Office: activate to sort column ascending">발송일시</th>
							<th class="sorting" tabindex="0" aria-controls="example3"
								rowspan="1" colspan="1" style="width: 5%;"
								aria-label="Position: activate to sort column ascending">수신자</th>
							<th class="sorting" tabindex="0" aria-controls="example3"
								rowspan="1" colspan="1" style="width: 5%;"
								aria-label="Position: activate to sort column ascending">읽음 여부</th>
						</tr>
					</thead>
					<tbody id="listBody">
						<c:if test="${not empty list }">
							<c:forEach items="${list }" var="mail">
								<tr>
	<%-- 								<td class="inbox-small-cells" style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" ><i class="fa fa-star <c:if test="${mail.emlImpYn eq 'Y'}">text-warning</c:if> <c:if test="${mail.emlImpYn ne 'Y'}">text-dark</c:if>"></i></td> --%>
	<%-- 								<td class="inbox-small-cells" style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" ><i class="fa fa-bookmark"></i></td> --%>
									<td style="width: 60%;"><a href="/mail/selectMailDetail/${mail.emlCd}" id="fn_read" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>">${mail.emlTit }</a>
									</td>
									<td style="width: 20%;"  class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" >${fn:substring(mail.emlDendDt,0,16)}</td>
									<td style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" >${mail.recNm }</td>
									<td style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" >${mail.locName }</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty list }">
							<tr>
								<td colspan="7" style="text-align:center;" class="text-dark">받은 메일이 존재하지 않습니다.</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>	
		</div>
	</div>
	<div class="col-lg-6 col-md-12">
		<div class="card custom-card">
			<div class="card-body h-100">
				<h5 class="card-title" style="float: left;">결재</h5>
				<h5><a href="/approval/approvalMain" class="card-title text-muted" style="float: right;">자세히</a>
				</h5>
			</div>
			<hr>
		<!--  -->
			<div class="col-sm-6 col-md-6 col-lg-6 col-xl-3"
				style="margin-right: 3.5%;">
				<div class="card custom-card bg-black-1"
					style="border: 1px solid gray; width: 300px;">
					<div class="card-body">
						<div class="card-item">
							<div class="card-item-body">
								<div class="card-item-stat">
									<h4 class="font-weight-bold">요청결재(수신)</h4>
									<br>
									<h5 class="font-weight-bold" id="getReceive"></h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="col-sm-6 col-md-6 col-lg-6 col-xl-3" style="margin-left: 48.5%; margin-top: -150px;">
				<div class="card custom-card bg-black-1"
					style="border: 1px solid gray; width: 300px;">
					<div class="card-body">
						<div class="card-item">
							<div class="card-item-body">
								<div class="card-item-stat">
									<h4 class="font-weight-bold">결재내역(수신)</h4>
									<br>
									<h5 class="font-weight-bold" id="getReceiveCmp"></h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
		</div>
	</div>
</div>

<div class="row row-sm">
	<div class="col-lg-6 col-md-12">
		<div class="card custom-card">
			<div class="card-body h-100">
				<h5 class="card-title" style="float: left;">공지사항</h5>
				<h5><a href="/noti/selectNotiList" class="card-title text-muted" style="float: right;">자세히</a></h5>
			</div>
			<hr>
			<div id="example3_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
				<div class="row">
					<div class="col-sm-12">
						<table id="example1"
							class="table table-bordered table-striped dataTable dtr-inline"
							aria-describedby="example1_info">
							<thead>
								<tr role="row">
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 60%;"
										aria-label="Last name: activate to sort column ascending">제목</th>
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 20%;"
										aria-label="Office: activate to sort column ascending">작성일</th>
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 5%;"
										aria-label="Position: activate to sort column ascending">작성자</th>
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 5%;"
										aria-label="Office: activate to sort column ascending">조회수</th>
								</tr>
							</thead>
							<tbody id="listBody">
								<c:if test="${not empty mainList }">
										<c:forEach items="${mainList }" var="noti">
											<tr>
												<td>
													<a href="/noti/selectNotiDetail/${noti.notiNo}">${noti.tit }</a>
												</td>
												<td>${noti.regDt }</td>
												<td>${noti.empNm }</td>
												<td>${noti.viewCnt }</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${empty mainList }">
									<tr>
										<td colspan="6">등록된 게시글이 존재하지 않습니다.</td>
									</tr>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-6 col-md-12">
		<div class="card custom-card">
			<div class="card-body h-100">
				<h5 class="card-title" style="float: left;">커뮤니티</h5>
				<h5><a href="/commu/selectCommuList" class="card-title text-muted" style="float: right;">자세히</a></h5>
			</div>
			<hr>
			<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
				<div class="row">
					<div class="col-sm-12">
						<table id="example1"
							class="table table-bordered table-striped dataTable dtr-inline"
							aria-describedby="example1_info">
							<thead>
								<tr role="row">
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 60%;"
										aria-label="Last name: activate to sort column ascending">제목</th>
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 20%;"
										aria-label="Office: activate to sort column ascending">작성일</th>
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 5%;"
										aria-label="Position: activate to sort column ascending">작성자</th>
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 5%;"
										aria-label="Office: activate to sort column ascending">조회수</th>
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 5%;"
										aria-label="Office: activate to sort column ascending">댓글수</th>
									<th class="sorting" tabindex="0" aria-controls="example3"
										rowspan="1" colspan="1" style="width: 5%;"
										aria-label="Office: activate to sort column ascending">추천수</th>
								</tr>
							</thead>
							<tbody id="listBody">
								<c:if test="${not empty commuList }">
										<c:forEach items="${commuList }" var="commu">
											<tr>
												<td><a href="/commu/selectCommuDetail/${commu.comNo}" class="order-1">${commu.tit }</a></td>
												<td>${commu.regDt }</td>
												<td>익명</td>
												<td>${commu.viewCnt }</td>
												<td>${commu.comCmmt }</td>
												<td>${commu.hitCnt }</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${empty commuList }">
									<tr>
										<td colspan="6">등록된 게시글이 존재하지 않습니다.</td>
									</tr>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<br>


</sec:authorize>

<!-- 관리자 -->
<sec:authorize access="hasRole('ROLE_A03')">
	<div class="row row-sm">
		<div class="col-lg-6 col-md-12">
			<div class="card custom-card">
				<div class="card-body h-100">
					<h5 class="card-title" style="float: left;">메일</h5>
					<h5><a href="/mail/selectMailList" class="card-title text-muted" style="float: right;">자세히</a></h5>
				</div>
					<hr>
					<div class="table-responsive">
					<table id="example1"
						class="table table-bordered table-striped dataTable dtr-inline"
						aria-describedby="example1_info">
						<thead>
							<tr role="row"  style="text-align:center;">
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 60%;"
									aria-label="Last name: activate to sort column ascending">제목</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 20%;"
									aria-label="Office: activate to sort column ascending">발송일시</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 5%;"
									aria-label="Position: activate to sort column ascending">수신자</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 5%;"
									aria-label="Position: activate to sort column ascending">읽음 여부</th>
							</tr>
						</thead>
						<tbody id="listBody">
							<c:if test="${not empty mainMailList }">
								<c:forEach items="${mainMailList }" var="mail">
									<tr>
		<%-- 								<td class="inbox-small-cells" style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" ><i class="fa fa-star <c:if test="${mail.emlImpYn eq 'Y'}">text-warning</c:if> <c:if test="${mail.emlImpYn ne 'Y'}">text-dark</c:if>"></i></td> --%>
		<%-- 								<td class="inbox-small-cells" style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" ><i class="fa fa-bookmark"></i></td> --%>
										<td style="width: 60%;"><a href="/mail/selectMailDetail/${mail.emlCd}" id="fn_read" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>">${mail.emlTit }</a>
										</td>
										<td style="width: 20%;"  class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" >${fn:substring(mail.emlDendDt,0,16)}</td>
										<td style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" >${mail.recNm }</td>
										<td style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" >${mail.locName }</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty mainMailList }">
								<tr>
									<td colspan="7" style="text-align:center;" class="text-dark">받은 메일이 존재하지 않습니다.</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>							
			</div>
		</div>
		<div class="col-lg-6 col-md-12">
			<div class="card custom-card">
				<div class="card-body h-100">
				<h5 class="card-title" style="float: left;">가입 승인 대기</h5>
				<h5><a href="/account/account" class="card-title text-muted" style="float: right;">자세히</a></h5>
				</div>
				<div id="owl-demo2" class="owl-carousel owl-carousel-icons2 owl-loaded owl-drag">
					<div class="owl-stage-outer">
						<div class="owl-stage">
						<c:forEach var="notPosiList" items="${notPosiList}"  varStatus="stat">
							<div class="owl-item">
								<div class="item">
									<div class="card">
										<div class="card-body user-card text-center">
											<div class="mt-2">
												<h5 class="mb-1">${notPosiList.empNm}</h5>
												<p class="mb-1"><fmt:formatDate value='${notPosiList.empSignDt}' pattern='yyyy년 MM월 dd일' /></p>
												<span class="text-muted"><i class="far fa-check-circle text-success me-1"></i>${notPosiList.empCd}</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						
						</c:forEach>
						</div>
					</div>
				</div><br>
			</div>
		</div>
	</div>

<div class="row row-sm">
	<div class="col-lg-6 col-md-12">
		<div class="card custom-card">
			<div class="card-body h-100">
				<h5 class="card-title" style="float: left;">회의실 예약관리</h5>
				<h5><a href="/meet/book" class="card-title text-muted" style="float: right;">자세히</a></h5>
			</div>
			<div class="table-responsive border">
				<table class="table text-nowrap text-md-nowrap table-hover mg-b-0" style="border-top: 0px;">
					<thead>
						<tr>
							<th>회의실</th>
							<th>이름</th>
							<th>시간</th>
							<th>사용목적</th>
						</tr>
					</thead>
					<tbody id="meet">
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="col-lg-6 col-md-12">
		<div class="card custom-card">
			<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">결재</h5>
			<h5><a href="/approval/approvalMain" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<!--  -->
			<div class="col-sm-6 col-md-6 col-lg-6 col-xl-3"
				style="margin-right: 3.5%;">
				<div class="card custom-card bg-black-1"
					style="border: 1px solid gray; width: 300px;">
					<div class="card-body">
						<div class="card-item">
							<div class="card-item-body">
								<div class="card-item-stat">
									<h4 class="font-weight-bold">요청결재(수신)</h4>
									<br>
									<h5 class="font-weight-bold" id="getReceive"></h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="col-sm-6 col-md-6 col-lg-6 col-xl-3" style="margin-left: 48.5%; margin-top: -150px;">
				<div class="card custom-card bg-black-1"
					style="border: 1px solid gray; width: 300px;">
					<div class="card-body">
						<div class="card-item">
							<div class="card-item-body">
								<div class="card-item-stat">
									<h4 class="font-weight-bold">결재내역(수신)</h4>
									<br>
									<h5 class="font-weight-bold" id="getReceiveCmp"></h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



</sec:authorize>
<script>
//결재부분 ajax
//1) 결재 사인 개수 ajax
function getReceive(){
//	alert("1) 요청결재(수신)");
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	//empCd : 로그인 아이디
	let empCd = $("#empCd").val();
	console.log("empCd?" + empCd);
	//#개
	let getReceive = $("#getReceive").val();
	
	let data = {"empCd" : empCd};
	console.log("data" + data);
	
	console.log("empcd 오냐? " + empCd);
	console.log("getReceive 오냐? " + getReceive);
	
	$.ajax({
		url : '/approval/getReceive',
		type : 'post',
		data : JSON.stringify(data),
		contentType:'application/json;charset=utf-8',
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},		
		success: function(result){
			$("#getReceive").html(result+"개의 요청결재가 있습니다.");
		} // success 종료
	})// ajax 끝
} // function getReceive 종료


//2) 결재 내역 개수 ajax
function getReceiveCmp(){
// 	alert("2) 결재내역(수신)");
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	//empCd : 로그인 아이디
	let empCd = $("#empCd").val();
	//#개
	let getReceiveCmp = $("#getReceiveCmp").val();
	
	let data = {"empCd" : empCd};
	
	console.log("empcd 오냐? " + empCd);
	console.log("getReceiveCmp 오냐? " + getReceiveCmp);
	
	$.ajax({
		url : '/approval/getReceiveCmp',
		type : 'post',
		data : JSON.stringify(data),
		contentType:'application/json;charset=utf-8',
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},		
		success: function(result){
			console.log("dfdf : " + result);
			$("#getReceiveCmp").html(result+"개의 결재내역이 있습니다.");
// 			alert("여기 오면 개수 찍히는거");
		} // success 종료
	})// ajax 끝
} // function getReceiveCmp 종료



//결재부분 끝




//Full Calendar
document.addEventListener('DOMContentLoaded', function () {

	var calendarEl = document.getElementById('calendar');
	var eventsData;
	var empCd = $("#empCd").val();
	let data = {"empCd":empCd};
	
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	$.ajax({
		url: '/calendar/schedule',
		type: 'POST',
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		async: false, 
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success: function(result) {
			eventsData = result;
			console.log("eventsData : " , eventsData);
		}	
	});
	var calendar = new FullCalendar.Calendar(calendarEl, {
		locale : 'ko',
		height:160,
		initialView: 'listWeek',
		headerToolbar: false,
		navLinks: false, // can click day/week names to navigate views
		businessHours: true, 
		editable: false,
		selectable: false,
		selectMirror: false,
		droppable: false,
		editable: false,
		dayMaxEvents: false,
		events:eventsData
	});

	calendar.render();
});

$(function() {
	getReceive();
	getReceiveCmp();
	var header = "${_csrf.headerName}";
	var token = "${_csrf.token}";
	var date = new Date();
	var today = moment(date).format("YYYY-MM-DD");
	$.ajax({
		url: '/meet/book',
		type: 'post',
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success: function(result) {
			let tbl = "";
			let cnt = 0;
			for(let i=0; i<result.length; i++) {
				if(result[i].bookSit == 0) {
					if(today == moment(result[i].bookDt).format("YYYY-MM-DD")) {
						cnt++;
						tbl += '<tr>';
						tbl += '<td>' + result[i].meetNo + '호</td>';
						tbl += '<td>' + result[i].empNm + '</td>';
						tbl += '<td>' + moment(result[i].bookDt).format("YYYY년 MM월 DD일") + ' ' +result[i].stTi + '시 ~ ' + result[i].endTi + '시' + '</td>';
						if(result[i].bookCon == null) {
							result[i].bookCon = "";
							tbl += '<td>' + result[i].bookCon + '</td>';
						} else {
							tbl += '<td>' + result[i].bookCon + '</td>';							
						}
						tbl += '</tr>';
					}
				}
			}
			console.log('cnt : ', cnt);
			if(cnt == 0) {
				tbl += '<tr>';
				tbl += '<td colspan="4" style="text-align: center;">회의실에약 정보가 없습니다.</td>';				
				tbl += '</tr>';
				console.log('cnt : ', cnt);
			}
			$('#meet').html(tbl);
		}
	});
});


</script>



<!-- Moment js-->
<script src="/resources/assets/plugins/moment/min/moment.min.js"></script>
<!-- Datepicker js-->
<script src="/resources/assets/plugins/jquery-ui/ui/widgets/datepicker.js"></script>
<!-- Full-calendar js-->
<script src="/resources/assets/plugins/fullcalendar/fullcalendar.min.js"></script>
<!-- Multislider js -->
<script src="/resources/assets/plugins/multislider/multislider.js"></script>
<script src="/resources/assets/js/carousel.js"></script>

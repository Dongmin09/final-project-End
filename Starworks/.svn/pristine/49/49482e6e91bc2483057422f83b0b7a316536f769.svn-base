<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script>
	var socket = null;
	var thrHtml = "";
	var fullHtml = "";
	var noHtml = "";
	var format = moment("yyyy-MM-dd");
	$(function() {
		connectWs();
	});
	
	function connectWs() {
		var ws = new SockJS("/alram");
		socket = ws;
		ws.onopen = function() {
			console.log('open');
			let cd = $('#cd').val();
			alertList(cd);
		};
		
		ws.onmessage = function(event) {
			let notif = event.data;
			if (notif != null && notif.trim() != '') {
				var data = JSON.parse(notif);
				if(data.type == "reply") {
					Notify(data.title + " 게시글에 댓글이 달렸습니다.",
						function () { 
							location.href = './selectCommuDetail/' + data.param;
						},
						function () { 
						},
						'info'
					);
				}
			}
			
		};
		
		ws.onclose = function() {
			console.log('close');
		};
	}
	Notify = function(text, callback, close_callback, style) {
	
		var time = '3000';
		var $container = $('#notifications');
	 
		var html = $('<div class="alert alert-info' + ' hide" style="margin-top: 50px;">' +  " " + text + '</div>');
	  
		$('<a>',{
			text: '×',
			class: 'button close',
			style: 'padding-left: 10px;',
			href: '#',
			click: function(e){
				e.preventDefault()
				close_callback && close_callback()
				remove_notice()
			}
		}).prependTo(html)
	
		$container.prepend(html)
		html.removeClass('hide').hide().fadeIn('slow')
	
		function remove_notice() {
			html.stop().fadeOut('slow').remove()
		}
		
		var timer =  setInterval(remove_notice, time);
	
		$(html).hover(function(){
			clearInterval(timer);
		}, function(){
			timer = setInterval(remove_notice, time);
		});
		
		html.on('click', function () {
			clearInterval(timer)
			callback && callback()
			remove_notice()
		});
	  
	  
	}

	function logout() {
		document.frm.submit();
	}
	$(function() {
		window.addEventListener('message', function(e) {
//	 		console.log('parent message');
//	 		console.log("e.data : ", e.data); // { childData : 'test data' }
//	 		console.log("e.origin : ", e.origin); //http://123.com(자식창 도메인)
			if(e.data.ttl == 0) {
				$('.bg-success').text('');
			} else {
				$('.bg-success').text(e.data.ttl);
			}
			if(e.data.type == 'message') {
// 				$('#pic').attr('src', '/resources/profileImg/' + e.data.pic);
				$('.me-auto').text(e.data.name);
				$('.toast-body').text(e.data.message);
				const toastLiveExample = document.getElementById('liveToast');
				const toast = new bootstrap.Toast(toastLiveExample);

			    toast.show(); 
			}
		});
		$('#alertFooter').click(function() {
			$('#alertList').html(fullHtml);
			$('#alertFooter').css('display', 'none');
		});
		$('html').click(function(e) {   
			if($(e.target).parents('.etc').length < 1){
				if($('#alrCnt1').text() > 0) {
					$('#alertList').html(thrHtml);
					$('#alertFooter').css('display', 'block');					
				}
			}
			
		});
		$(document).on("click", ".alr", function(event){
			let alrNo = $(this).children().children().children('input').eq(0).val();
			var header = "${_csrf.headerName}";
			var token = "${_csrf.token}";
			
			$.ajax({
				url: '/alertCheck',
				data: {alrNo:alrNo},
				type: 'post',
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success: function(result) {
					console.log('result : ', result);
				},
				error: function(error) {
					console.log('에러입니다');
				}
			});
		});
		
		var cheader = "${_csrf.headerName}";
		var ctoken = "${_csrf.token}";
		var empCd = $('#cd').val();
		let data = {"empCd":empCd};
		$.ajax({
			url: '/alertCount',
			data: {empCd:empCd},
			type: 'post',
			beforeSend:function(xhr){
				xhr.setRequestHeader(cheader, ctoken);
			},
			success: function(result) {
				
				if(result == 0) {
					$('#alrCnt1').css('display', 'none');					
				} else {
					$('#alrCnt1').css('display', 'block');
					$('#alrCnt1').text(result);
				}
				$('#alrCnt2').text(result + '개의 알림이 있습니다');
			},
			error: function(error) {
				console.log('에러입니다');
			}
		});
		$.ajax({
			url:"/main/empDetail",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(cheader, ctoken);
			},
			success:(function(data){
				console.log("야호 : " , data);
				$("#headerImg").attr("src","/resources/profileImg/"+data[0].profile);
			})
		});// ajax end
		
	});
	function alertList(empCd) {
		var header = "${_csrf.headerName}";
		var token = "${_csrf.token}";
		console.log('empCd : ', empCd);
		$.ajax({
			url: '/alertList',
			data: {empCd:empCd},
			type: 'post',
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success: function(result) {
				
				if(result == '') {
					fullHtml += '<div style="margin-top: 10px; margin-bottom: 10px;">';
					fullHtml += '<div class="media-body">';
					fullHtml += '<p style="text-align: center;">알림이 없습니다</p>';
					fullHtml += '</div>';
					fullHtml += '</div>';
					thrHtml = fullHtml;
					$('#alertFooter').css('display', 'none');
					$('#alertList').html(thrHtml);
				} else {
					for(var i=0; i<result.length; i++) {
						var timeStr = moment(result[i].alrDt).format("YYYY-MM-DD HH:mm:ss");
						var timeObj = new Date(timeStr);
						var time = displayedAt(timeObj);
						if(result[i].alrType == 'reply') {
							fullHtml += '<a class="alr" href="/commu/selectCommuDetail/' + result[i].alrParam + '">';							
						} else if(result[i].alrType == 'todo') {
							fullHtml += '<a class="alr" href="/todo/todo">';
						}
						fullHtml += '<div class="media new">';
						fullHtml += '<div class="media-body">';
						fullHtml += '<p>' + result[i].alrCon + '</p>';
						fullHtml += '<span>' + time + '</span>';
						fullHtml += '<input type="hidden" value="' + result[i].alrNo + '">';
						fullHtml += '</div>';
						fullHtml += '</div>';
						fullHtml += '</a>';
						if(i <= 2) {
							thrHtml = fullHtml;
						}
						$('#alertList').html(thrHtml);
						$('#alertFooter').css('display', 'block');
					}
				}
				console.log('result : ', result);
			},
			error: function(error) {
				console.log("에러입니다.");
			}
		});
	}
	function displayedAt(createdAt) {
		// 가져온 날짜 : createdAt
		// 현재 시간 : nowDate2
		// 현재 날짜 시간 : nowDate
		// 밀리초 : milliSeconds
		// 초 : seconds
		var nowDate2 = new Date();
		nowDate2 = getTimeStamp(nowDate2);
		var nowDate = new Date(nowDate2);
		const milliSeconds = nowDate - createdAt
		const seconds = (milliSeconds) / 1000
		if (seconds < 60) return '방금 전';
		const minutes = seconds / 60
		if (minutes < 60) return Math.floor(minutes) + '분 전';
		const hours = minutes / 60
		if (hours < 24) return Math.floor(hours) + '시간 전';
		const days = hours / 24
		if (days < 7) return Math.floor(days) + '일 전';
		const weeks = days / 7
		if (weeks < 5) return Math.floor(weeks) + '주 전';
		const months = days / 30
		if (months < 12) return Math.floor(months) + '개월 전';
		const years = days / 365
		timeStr = "";
		return Math.floor(years) + '년 전';
	}
	
	function getTimeStamp(d) {
	  var s =
	    leadingZeros(d.getFullYear(), 4) + '-' +
	    leadingZeros(d.getMonth() + 1, 2) + '-' +
	    leadingZeros(d.getDate(), 2) + ' ' +

	    leadingZeros(d.getHours(), 2) + ':' +
	    leadingZeros(d.getMinutes(), 2);
	  return s;
	}

	function leadingZeros(n, digits) {
	  var zero = '';
	  n = n.toString();

	  if (n.length < digits) {
	    for (i = 0; i < digits - n.length; i++)
	      zero += '0';
	  }
	  return zero + n;
	}
	
</script>
<style>
	#notifications {
	    cursor: pointer;
	    position: fixed;
	    right: 0px;
	    z-index: 9999;
	    top: 1px;
	    margin-top: 22px;
	    margin-right: 15px;
	    max-width: 500px;   
	    font-size: 16pt;
	}
</style>
<div id="msgStack"></div>
		<!-- Main Header-->
		<sec:authorize access="isAuthenticated()">
		<input id="cd" type="hidden" value="<sec:authentication property="principal.employeeVO.empCd" />" />
		<div class="main-header side-header sticky">
			<div class="main-container container-fluid">
				<div class="main-header-left">
					<a class="main-header-menu-icon" href="javascript:void(0)" id="mainSidebarToggle"><span></span></a>
					<div class="hor-logo">
						<a class="main-logo" href="index.html">
							<img src="/resources/assets/img/brand/logo.png" class="header-brand-img desktop-logo" alt="logo">
							<img src="/resources/assets/img/brand/logo-light.png" class="header-brand-img desktop-logo-dark"
								alt="logo">
						</a>
					</div>
				</div>
				<div class="main-header-center">
					<div class="responsive-logo">
						<a href="index.html"><img src="/resources/assets/img/brand/logo.png" class="mobile-logo" alt="logo"></a>
						<a href="index.html"><img src="/resources/assets/img/brand/logo-light.png" class="mobile-logo-dark"
								alt="logo"></a>
					</div>
					<div class="input-group">
<!-- 						<div class="input-group-btn search-panel"> -->
<!-- 							<select class="form-control select2"> -->
<!-- 								<option label="All categories"> -->
<!-- 								</option> -->
<!-- 								<option value="IT Projects"> -->
<!-- 									IT Projects -->
<!-- 								</option> -->
<!-- 								<option value="Business Case"> -->
<!-- 									Business Case -->
<!-- 								</option> -->
<!-- 								<option value="Microsoft Project"> -->
<!-- 									Microsoft Project -->
<!-- 								</option> -->
<!-- 								<option value="Risk Management"> -->
<!-- 									Risk Management -->
<!-- 								</option> -->
<!-- 								<option value="Team Building"> -->
<!-- 									Team Building -->
<!-- 								</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 						<input type="search" class="form-control rounded-0" placeholder="Search for anything..."> -->
<!-- 						<button class="btn search-btn"><i class="fe fe-search"></i></button> -->
					</div>
				</div>
				<div class="main-header-right">
					<button class="navbar-toggler navresponsive-toggler" type="button" data-bs-toggle="collapse"
						data-bs-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4"
						aria-expanded="false" aria-label="Toggle navigation">
						<i class="fe fe-more-vertical header-icons navbar-toggler-icon"></i>
					</button>
					<!-- Navresponsive closed -->
					<div class="navbar navbar-expand-lg  nav nav-item  navbar-nav-right responsive-navbar navbar-dark  ">
						<div class="collapse navbar-collapse" id="navbarSupportedContent-4">
							<div class="d-flex order-lg-2 ms-auto">
								
								<!-- Theme-Layout -->
								<div class="dropdown d-flex main-header-theme">
									<a class="nav-link icon layout-setting">
										<span class="dark-layout">
											<i class="fe fe-sun header-icons"></i>
										</span>
										<span class="light-layout">
											<i class="fe fe-moon header-icons"></i>
										</span>
									</a>
								</div>
								<!-- Theme-Layout -->
								<!-- country -->
<!-- 								<div class="dropdown main-header-notification flag-dropdown"> -->
<!-- 									<a class="nav-link icon country-Flag"> -->
<!-- 										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"> -->
<%-- 											<circle cx="256" cy="256" r="256" fill="#f0f0f0" /> --%>
<!-- 											<g fill="#0052b4"> -->
<!-- 												<path -->
<!-- 													d="M52.92 100.142c-20.109 26.163-35.272 56.318-44.101 89.077h133.178L52.92 100.142zM503.181 189.219c-8.829-32.758-23.993-62.913-44.101-89.076l-89.075 89.076h133.176zM8.819 322.784c8.83 32.758 23.993 62.913 44.101 89.075l89.074-89.075H8.819zM411.858 52.921c-26.163-20.109-56.317-35.272-89.076-44.102v133.177l89.076-89.075zM100.142 459.079c26.163 20.109 56.318 35.272 89.076 44.102V370.005l-89.076 89.074zM189.217 8.819c-32.758 8.83-62.913 23.993-89.075 44.101l89.075 89.075V8.819zM322.783 503.181c32.758-8.83 62.913-23.993 89.075-44.101l-89.075-89.075v133.176zM370.005 322.784l89.075 89.076c20.108-26.162 35.272-56.318 44.101-89.076H370.005z" /> -->
<!-- 											</g> -->
<!-- 											<g fill="#d80027"> -->
<!-- 												<path -->
<!-- 													d="M509.833 222.609H289.392V2.167A258.556 258.556 0 00256 0c-11.319 0-22.461.744-33.391 2.167v220.441H2.167A258.556 258.556 0 000 256c0 11.319.744 22.461 2.167 33.391h220.441v220.442a258.35 258.35 0 0066.783 0V289.392h220.442A258.533 258.533 0 00512 256c0-11.317-.744-22.461-2.167-33.391z" /> -->
<!-- 												<path -->
<!-- 													d="M322.783 322.784L437.019 437.02a256.636 256.636 0 0015.048-16.435l-97.802-97.802h-31.482v.001zM189.217 322.784h-.002L74.98 437.019a256.636 256.636 0 0016.435 15.048l97.802-97.804v-31.479zM189.217 189.219v-.002L74.981 74.98a256.636 256.636 0 00-15.048 16.435l97.803 97.803h31.481zM322.783 189.219L437.02 74.981a256.328 256.328 0 00-16.435-15.047l-97.802 97.803v31.482z" /> -->
<!-- 											</g> -->
<!-- 										</svg> -->
<!-- 									</a> -->
<!-- 									<div class="dropdown-menu"> -->
<!-- 										<a href="javascript:void(0)" class="dropdown-item d-flex "> -->
<!-- 											<span class="avatar  me-3 align-self-center bg-transparent"><img -->
<!-- 													src="/resources/assets/img/flags/french_flag.jpg" alt="img"></span> -->
<!-- 											<div class="d-flex"> -->
<!-- 												<span class="mt-2">French</span> -->
<!-- 											</div> -->
<!-- 										</a> -->
<!-- 										<a href="javascript:void(0)" class="dropdown-item d-flex"> -->
<!-- 											<span class="avatar  me-3 align-self-center bg-transparent"><img -->
<!-- 													src="/resources/assets/img/flags/germany_flag.jpg" alt="img"></span> -->
<!-- 											<div class="d-flex"> -->
<!-- 												<span class="mt-2">Germany</span> -->
<!-- 											</div> -->
<!-- 										</a> -->
<!-- 										<a href="javascript:void(0)" class="dropdown-item d-flex"> -->
<!-- 											<span class="avatar me-3 align-self-center bg-transparent"><img -->
<!-- 													src="/resources/assets/img/flags/italy_flag.jpg" alt="img"></span> -->
<!-- 											<div class="d-flex"> -->
<!-- 												<span class="mt-2">Italy</span> -->
<!-- 											</div> -->
<!-- 										</a> -->
<!-- 										<a href="javascript:void(0)" class="dropdown-item d-flex"> -->
<!-- 											<span class="avatar me-3 align-self-center bg-transparent"><img -->
<!-- 													src="/resources/assets/img/flags/russia_flag.jpg" alt="img"></span> -->
<!-- 											<div class="d-flex"> -->
<!-- 												<span class="mt-2">Russia</span> -->
<!-- 											</div> -->
<!-- 										</a> -->
<!-- 										<a href="javascript:void(0)" class="dropdown-item d-flex"> -->
<!-- 											<span class="avatar  me-3 align-self-center bg-transparent"><img -->
<!-- 													src="/resources/assets/img/flags/spain_flag.jpg" alt="img"></span> -->
<!-- 											<div class="d-flex"> -->
<!-- 												<span class="mt-2">spain</span> -->
<!-- 											</div> -->
<!-- 										</a> -->
<!-- 									</div> -->
<!-- 								</div> -->
								<!-- country -->
								<!-- Full screen -->
								<div class="dropdown">
									<a class="nav-link icon full-screen-link">
										<i class="fe fe-maximize fullscreen-button fullscreen header-icons"></i>
										<i class="fe fe-minimize fullscreen-button exit-fullscreen header-icons"></i>
									</a>
								</div>
								<!-- Full screen -->
								<!-- Notification -->
								<button type="button" style="display: none;" id="liveToastBtn">Show live toast</button>
								<div class="dropdown main-header-notification">
									<a class="nav-link icon" href="">
										<i class="fe fe-bell header-icons"></i>
										<span id="alrCnt1" class="badge bg-danger nav-link-badge"></span>
									</a>
									<div class="dropdown-menu etc">
										<div class="header-navheading" style="padding: 10px 10px 10px; background-color: #6259CA; index: 9;">
											<p id="alrCnt2" class="main-notification-text" style="font-size: 12pt; color: #FFFFFF;"></p>
										</div>
										<div class="main-notification-list" id="alertList" style="height: auto; overflow: scroll; max-height: 300px;">
											
										</div>
										<div class="dropdown-footer" id="alertFooter">
											<a href="#" id="alertMore">+ 더 보기</a>
										</div>
									</div>
								</div>
								<div id="notifications"></div>
								<!-- Notification -->
								<!-- Messages -->
								<div id="msg" class="dropdown main-header-notification">
									<a id="messages" class="nav-link icon" href="">
										<i class="fe fe-message-square header-icons"></i>
										<span class="badge bg-success nav-link-badge"></span>
									</a>
									<div class="dropdown-menu" style="width: 710px;">
										<iframe id="the_iframe" style="" src="http://192.168.142.3:8859/chat?userid=<sec:authentication property="principal.employeeVO.empId"/>&username=<sec:authentication property="principal.employeeVO.empNm"/>" width="700vw" height="650vh"frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=no vspace=0> </iframe>
									</div>
								</div>
								<!-- Messages -->
								<!-- Profile -->
								<div id="chat_toast" class="toast-container position-fixed bottom-0 end-0 p-3" style="cursor: pointer;">
								  <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
								    <div class="toast-header">
<!-- 								      <img id="pic" src="" class="rounded me-2" alt=""> -->
								      <strong class="me-auto"></strong>
								      <small></small>
								      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
								    </div>
								    <div class="toast-body">
								    </div>
								  </div>
								</div>
								<div class="dropdown main-profile-menu">
									<a class="d-flex" href="javascript:void(0)">
										<span class="main-img-user"><img alt="avatar" id="headerImg"
												src=""></span>
									</a>
									<div class="dropdown-menu">
										<div class="header-navheading">
											<h6 class="main-notification-title"><sec:authentication property="principal.employeeVO.empNm" /></h6>
<!-- 											<p class="main-notification-text">직급</p> -->
										</div>
										<a class="dropdown-item border-top" href="/main/profile">
											<i class="fe fe-user"></i> 마이 페이지
										</a>
										<form name="frm"action="/logout" method="post">
											<a class="dropdown-item" href="javascript:logout()">
												<i class="fe fe-power"></i> 로그아웃
											</a>
										<sec:csrfInput/>
										</form>
									</div>
								</div>
								<!-- Profile -->
								<!-- Sidebar -->
<!-- 								<div class="dropdown  header-settings"> -->
<!-- 									<a href="javascript:void(0)" class="nav-link icon" data-bs-toggle="sidebar-right" -->
<!-- 										data-bs-target=".sidebar-right"> -->
<!-- 										<i class="fe fe-align-right header-icons"></i> -->
<!-- 									</a> -->
<!-- 								</div> -->
								<!-- Sidebar -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</sec:authorize>
		<!-- End Main Header-->

<script>
</script>

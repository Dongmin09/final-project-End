<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<style>
	a:not([href]):not([tabindex]){
		color:snow;
	}
</style>
<sec:authentication property='principal.employeeVO.payCd' var="payCd"/>
<sec:authentication property='principal.employeeVO.coCd' var="coCd"/>
<div class="row row-sm">
	<div class="col-xl-12 col-lg-12">
		<div class="card custom-card">
			<div class="card-body">
				<div>
<%-- 			<p><sec:authentication property="principal.employeeVO.employeeAuthVOList[0].authCd"/></p> --%>
				<input type="hidden" id="payCd" name="payCd" value="${payCd}" />
				<input type="hidden" id="coCd" name="coCd" value="${coCd}" />
					<h1 class="">제품 및 가격안내</h1>
					<p class="text-muted">규모·환경·예산에 맞게 도입할 수 있는 다양한 유형의 제품을 합리적인 가격으로 제공합니다.</p>
				</div>
				<div class="pricing-tabs">
					<div class=" text-center">
						<div class="pri-tabs-heading">
							<ul class="nav nav-price">
								<li><a class="active show" data-bs-toggle="tab" href="#year">Year</a></li>
								<li><a class="" data-bs-toggle="tab" href="#month">Month</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane  active show" id="year">
								<div class="row row-sm">
									<div class="col-sm-6 col-lg-4">
										<div class="card overflow-hidden">
											<div class="text-center card-pricing pricing1">
												<div class="p-2 text-white bg-danger fs-20">Basic</div>
												<div class="p-3 font-weight-normal mb-0"><span class="price">무료체험</span></div>
												<div class="card-body text-center pt-0">
													<ul class="list-unstyled mb-0">
														<li><i class="fe fe-check me-2 text-success"></i><strong> </strong> 전자결재 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 게시판 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong>  일정 관리</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 메일</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> toDo</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 회의실 관리</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 자료실</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 통계</li>
													</ul>
												</div>
												<div class="card-footer text-center">
												<c:choose>
													<c:when test="${payCd eq 1}">
														<a class="btn ripple btn-danger btn-block" style="text-color:white;">무료 체험중</a>
													</c:when>
													<c:otherwise>
														<a class="btn ripple btn-danger btn-block" id="basic">무료체험</a>
													</c:otherwise>
												</c:choose>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-lg-4 mg-t-10 mg-lg-t-0">
										<div class="card overflow-hidden">
											<div class="text-center card-pricing pricing1">
												<div class="p-2 text-white bg-secondary fs-20">Standard</div>
												<div class="p-3 font-weight-normal mb-0"><span class="price">30000원/년</span></div>
												<div class="card-body text-center pt-0">
													<ul class="list-unstyled mb-0">
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 전자결재 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 게시판 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong>  일정 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 메일</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> toDo</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 회의실 관리</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 자료실</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 통계</li>
													</ul>
												</div>
												<div class="card-footer text-center">
													<c:choose>
													<c:when test="${payCd eq 2}">
														<a class="btn ripple btn-secondary btn-block" >구독중</a>
													</c:when>
													<c:otherwise>
														<a class="btn ripple btn-secondary btn-block" id="standard">구독하기</a>
													</c:otherwise>
												</c:choose>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-lg-4 mg-t-10 mg-lg-t-0">
										<div class="card overflow-hidden">
											<div class="text-center card-pricing pricing1">
												<div class="p-2 text-white bg-primary fs-20">Premium</div>
												<div class="p-3 font-weight-normal mb-0"><span class="price">50000원/년</span></div>
												<div class="card-body text-center pt-0">
													<ul class="list-unstyled mb-0">
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 전자결재 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 게시판 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong>  일정 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 메일</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> toDo</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 회의실 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 자료실</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 통계</li>
													</ul>
												</div>
												<div class="card-footer text-center">
													<c:choose>
													<c:when test="${payCd eq 3}">
														<a class="btn ripple btn-primary btn-block" style="text-color:white;">구독중</a>
													</c:when>
													<c:otherwise>
														<a class="btn ripple btn-primary btn-block" id="premium">구독하기</a>
													</c:otherwise>
												</c:choose>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="month">
								<div class="row row-sm">
									<div class="col-sm-6 col-lg-4">
										<div class="card overflow-hidden">
											<div class="text-center card-pricing pricing1">
												<div class="p-2 text-white bg-danger fs-20">Basic</div>
												<div class="p-3 font-weight-normal mb-0"><span class="price">무료체험</span></div>
												<div class="card-body text-center pt-0">
													<ul class="list-unstyled mb-0">
														<li><i class="fe fe-check me-2 text-success"></i><strong> </strong> 전자결재 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 게시판 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong>  일정 관리</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 메일</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> toDo</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 회의실 관리</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 자료실</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 통계</li>
													</ul>
												</div>
												<div class="card-footer text-center">
													<c:choose>
													<c:when test="${payCd eq 1}">
														<a class="btn ripple btn-danger btn-block" style="text-color:white;">무료 체험중</a>
													</c:when>
													<c:otherwise>
														<a class="btn ripple btn-danger btn-block" id="basicM">무료체험</a>
													</c:otherwise>
												</c:choose>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-lg-4 mg-t-10 mg-lg-t-0">
										<div class="card overflow-hidden">
											<div class="text-center card-pricing pricing1">
												<div class="p-2 text-white bg-secondary fs-20">Standard</div>
												<div class="p-3 font-weight-normal mb-0"><span class="price">3000원/월</span></div>
												<div class="card-body text-center pt-0">
													<ul class="list-unstyled mb-0">
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 전자결재 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 게시판 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 일정 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 메일</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> toDo</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 회의실 관리</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 자료실</li>
														<li><i class="fe fe-x me-2 text-danger"></i><strong></strong> 통계</li>
													</ul>
												</div>
												<div class="card-footer text-center">
													<c:choose>
													<c:when test="${payCd eq 2}">
														<a class="btn ripple btn-secondary btn-block"  style="text-color:white;">구독중</a>
													</c:when>
													<c:otherwise> 
														<a class="btn ripple btn-secondary btn-block" id="standardM">구독하기</a>
													</c:otherwise>
												</c:choose>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-lg-4 mg-t-10 mg-lg-t-0">
										<div class="card overflow-hidden">
											<div class="text-center card-pricing pricing1">
												<div class="p-2 text-white bg-primary fs-20" >Premium</div>
												<div class="p-3 font-weight-normal mb-0"><span class="price">5000원/월</span></div>
												<div class="card-body text-center pt-0">
													<ul class="list-unstyled mb-0">
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 전자결재 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 게시판 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 일정 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 메일</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> toDo</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 회의실 관리</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 자료실</li>
														<li><i class="fe fe-check me-2 text-success"></i><strong></strong> 통계</li>
													</ul>
												</div>
												<div class="card-footer text-center">
												<c:choose>
													<c:when test="${payCd eq 3}">
														<a class="btn ripple btn-primary btn-block" style="text-color:white;">구독중</a>
													</c:when>
													<c:otherwise>
														<a class="btn ripple btn-primary btn-block" id="premiumM">구독하기</a>
													</c:otherwise>
												</c:choose>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){ 
let header = "${_csrf.headerName}";
let token = "${_csrf.token}";
let coCd = $("#coCd").val();

	var IMP = window.IMP; // 생략 가능
	IMP.init("imp71272843"); // 예: imp00000000
	$("#basic").click(function(){ 
		basic(); //버튼 클릭하면 호출 
	}); 
	
	function basic() {
		IMP.init('imp71272843'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
		IMP.request_pay({
			pg : "html5_inicis.INIpayTest",
			pay_method : "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'STARWORKS베이직',
			amount : 100,
			buyer_email : '',
			buyer_name : 'STARWORKS',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				$('input[name=payCd]').attr('value',1);
				let payCd = $("#payCd").val();
				console.log("payCd: " , payCd);
				let data = {"payCd":payCd,"coCd":coCd};
				console.log("aaa: " , data);
				$.ajax({
					url:"/subpay/subpay",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(data),
					type:"post",
					beforeSend:function(xhr){
					   xhr.setRequestHeader(header,token);
					},
					success:(function(result){
						console.log("result: " , result);
						if(result > 0){
							var msg = '결제가 완료되었습니다. 다시 로그인 해주시기 바랍니다.';
							swal(msg);
						}setTimeout(function(){
	                          location.href = "javascript:logout()";
	                    },2000);
					})
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				var msg2 = '에러내용 : ' + rsp.error_msg;
				swal(msg,msg2,"");
			}
		});
	}
		
	$("#standard").click(function(){ 
		standard(); //버튼 클릭하면 호출 
	}); 
	
	function standard() {
		IMP.init('imp71272843'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
		IMP.request_pay({
			pg : "html5_inicis.INIpayTest",
			pay_method : "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'STARWORKS스탠다드',
			amount : 30000,
			buyer_email : '',
			buyer_name : 'STARWORKS',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				$('input[name=payCd]').attr('value',2);
				let payCd = $("#payCd").val();
				console.log("payCd: " , payCd);
				let data = {"payCd":payCd,"coCd":coCd};
				console.log("aaa: " , data);
				$.ajax({
					url:"/subpay/subpay",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(data),
					type:"post",
					beforeSend:function(xhr){
					   xhr.setRequestHeader(header,token);
					},
					success:(function(result){
						console.log("result: " , result);
						if(result > 0){
							var msg = '결제가 완료되었습니다. 다시 로그인 해주시기 바랍니다.';
							swal(msg);
						}setTimeout(function(){
	                          location.href = "javascript:logout()";
	                    },2000);
					})
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				var msg2 = '에러내용 : ' + rsp.error_msg;
				swal(msg,msg2,"");
			}
		});
	}
		
	$("#premium").click(function(){ 
		premium(); //버튼 클릭하면 호출 
	}); 
	
	function premium() {
		IMP.init('imp71272843'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
		IMP.request_pay({
			pg : "html5_inicis.INIpayTest",
			pay_method : "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'STARWORKS프리미엄',
			amount : 50000,
			buyer_email : '',
			buyer_name : 'STARWORKS',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				$('input[name=payCd]').attr('value',3);
				let payCd = $("#payCd").val();
				console.log("payCd: " , payCd);
				let data = {"payCd":payCd,"coCd":coCd};
				console.log("aaa: " , data);
				$.ajax({
					url:"/subpay/subpay",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(data),
					type:"post",
					beforeSend:function(xhr){
					   xhr.setRequestHeader(header,token);
					},
					success:(function(result){
						console.log("result: " , result);
						if(result > 0){
							var msg = '결제가 완료되었습니다. 다시 로그인 해주시기 바랍니다.';
							swal(msg);
						}setTimeout(function(){
	                          location.href = "javascript:logout()";
	                    },2000);
					})
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				var msg2 = '에러내용 : ' + rsp.error_msg;
				swal(msg,msg2,"");
			}
		});
	}
	$("#basicM").click(function(){ 
		basicM(); //버튼 클릭하면 호출 
	}); 
	
	function basicM() {
		IMP.init('imp71272843'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
		IMP.request_pay({
			pg : "html5_inicis.INIpayTest",
			pay_method : "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'STARWORKS베이직(월)',
			amount : 10,
			buyer_email : '',
			buyer_name : 'STARWORKS',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				$('input[name=payCd]').attr('value',1);
				let payCd = $("#payCd").val();
				console.log("payCd: " , payCd);
				let data = {"payCd":payCd,"coCd":coCd};
				console.log("aaa: " , data);
				$.ajax({
					url:"/subpay/subpay",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(data),
					type:"post",
					beforeSend:function(xhr){
					   xhr.setRequestHeader(header,token);
					},
					success:(function(result){
						console.log("result: " , result);
						if(result > 0){
							var msg = '결제가 완료되었습니다. 다시 로그인 해주시기 바랍니다.';
							swal(msg);
						}setTimeout(function(){
	                          location.href = "javascript:logout()";
	                    },2000);
					})
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				var msg2 = '에러내용 : ' + rsp.error_msg;
				swal(msg,msg2,"");
			}
		});
	}
	$("#standardM").click(function(){ 
		standardM(); //버튼 클릭하면 호출 
	}); 
	
	function standardM() {
		IMP.init('imp71272843'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
		IMP.request_pay({
			pg : "html5_inicis.INIpayTest",
			pay_method : "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'STARWORKS스탠다드(월)',
			amount : 3000,
			buyer_email : '',
			buyer_name : 'STARWORKS',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				$('input[name=payCd]').attr('value',2);
				let payCd = $("#payCd").val();
				console.log("payCd: " , payCd);
				let data = {"payCd":payCd,"coCd":coCd};
				console.log("aaa: " , data);
				$.ajax({
					url:"/subpay/subpay",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(data),
					type:"post",
					beforeSend:function(xhr){
					   xhr.setRequestHeader(header,token);
					},
					success:(function(result){
						console.log("result: " , result);
						if(result > 0){
							var msg = '결제가 완료되었습니다. 다시 로그인 해주시기 바랍니다.';
							swal(msg);
						}setTimeout(function(){
	                          location.href = "javascript:logout()";
	                    },2000);
					})
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				var msg2 = '에러내용 : ' + rsp.error_msg;
				swal(msg,msg2,"");
			}
		});
	}
		
	$("#premiumM").click(function(){ 
		premiumM(); //버튼 클릭하면 호출 
	}); 
	
	function premiumM() {
		IMP.init('imp71272843'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
		IMP.request_pay({
			pg : "html5_inicis.INIpayTest",
			pay_method : "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'STARWORKS프리미엄(월)',
			amount : 5000,
			buyer_email : '',
			buyer_name : 'STARWORKS',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				$('input[name=payCd]').attr('value',3);
				let payCd = $("#payCd").val();
				console.log("payCd: " , payCd);
				let data = {"payCd":payCd,"coCd":coCd};
				console.log("aaa: " , data);
				$.ajax({
					url:"/subpay/subpay",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(data),
					type:"post",
					beforeSend:function(xhr){
					   xhr.setRequestHeader(header,token);
					},
					success:(function(result){
						console.log("result: " , result);
						if(result > 0){
							var msg = '결제가 완료되었습니다. 다시 로그인 해주시기 바랍니다.';
							swal(msg);
						}setTimeout(function(){
	                          location.href = "javascript:logout()";
	                    },2000);
					})
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				var msg2 = '에러내용 : ' + rsp.error_msg;
				swal(msg,msg2,"");
			}
		});
	}
});
</script>
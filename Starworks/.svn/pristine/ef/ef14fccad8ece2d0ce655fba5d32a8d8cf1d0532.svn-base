<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap css-->
<!-- Internal Quill css-->
<link href="/resources/assets/plugins/quill/quill.snow.css" rel="stylesheet">
<link href="/resources/assets/plugins/quill/quill.bubble.css" rel="stylesheet">

<!-- Internal richtext css-->
<link rel="stylesheet" href="/resources/assets/plugins/wysiwyag/richtext.css">
<div class="row row-sm">
	<!-- header -->
	<div class="page-header">
		<div>
			<h2 class="font-weight-bold">
				결재보관함 
				<input id="empCode" type="hidden" value="<sec:authentication property='principal.employeeVO.empCd'/>">
			</h2>
		</div>
	</div>
</div>
<!-- 결재 상황판  -->
<div class="row row-sm"> 
	<div class="col-sm-6 col-md-6 col-lg-6 col-xl-2" style="margin-right: 3.5%;">
		<div class="card custom-card bg-black-1" style="border: 1px solid gray; width: 220px">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat">
							<h4 class="font-weight-bold">요청결재(수신)</h4>
							<h5 class="font-weight-bold" id="getReceive"></h5>
						</div>
					</div>
					<button class="btn ripple btn-primary" id="btnA01">조회하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6 col-md-6 col-lg-6 col-xl-2" style="margin-right: 3.5%;">
		<div class="card custom-card bg-black-1" style="border: 1px solid gray; width: 220px">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat">
							<h4 class="font-weight-bold">결재내역(수신)</h4>
							<h5 class="font-weight-bold" id="getReceiveCmp"></h5>
						</div>
					</div>
					<button class="btn ripple btn-primary" id="btnA02">조회하기</button>
				</div>
			</div>
		</div>
	</div>


	<!-- ====================================  -->
	<div class="col-sm-6 col-md-6 col-lg-6 col-xl-2" style="margin-right: 3.5%;">
		<div class="card custom-card bg-black-1" style="border: 1px solid gray; width: 220px">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat">
							<h4 class="font-weight-bold">진행결재(상신)</h4>
							<h5 class="font-weight-bold" id="getReport">없음</h5>
						</div>
					</div>
					<button class="btn ripple btn-primary" id="RbtnA01">조회하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6 col-md-6 col-lg-6 col-xl-2" style="margin-right: 3.5%;">
		<div class="card custom-card bg-black-1" style="border: 1px solid gray; width: 220px">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat">
							<h4 class="font-weight-bold">완료결재(상신)</h4>
							<h5 class="font-weight-bold" id="getReportCmp">0건</h5>
						</div>
					</div>
					<button class="btn ripple btn-primary" id="RbtnA02">조회하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6 col-md-6 col-lg-6 col-xl-2">
		<div class="card custom-card bg-black-1" style="border: 1px solid gray; width: 220px">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat">
							<h4 class="font-weight-bold">반려결재(상신)</h4>
							<h5 class="font-weight-center" id="getReportRet"></h5>
						</div>
					</div>
					<button class="btn ripple btn-primary" id="RbtnA03">조회하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
	<!-- ====================================  -->
<!-- 결재 목록 보여주기  -->
	<div class="row row-sm">
		<div class="col-lg-12">
			<div class="card custom-card" style="border: 1px solid #d9d9d9; margin-top: 3.5%">
				<div class="card-body">
					<!--  -->
					<h2 id="approvalTit">결재 목록</h2>
					<div class="table-responsive">
						<table
							class="table text-nowrap text-md-nowrap table-bordered mg-b-0">
							<thead>
								<tr>
									<th>결재번호</th>
									<th>제목</th>
									<th>등록일자</th>
									<th>작성자</th>
									<th>결재상황</th>
								</tr>
							</thead>
							<tbody id="resultTbl"></tbody>
						</table>
						<input id="flag" type="hidden" value="">
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Moment js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
		
<!-- /////////////////////수신요청 ajax///////////////////// -->		
<script type="text/javascript">

var empCd = $("#empCode").val();



//1) 결재 사인 개수 ajax
function getReceive(){
// 	alert("1) 요청결재(수신)");
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	//empCd : 로그인 아이디
	let empCd = $("#empCode").val();
	//#개
	let getReceive = $("#getReceive").val();
	
	let data = {"empCd" : empCd};
	
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
			$("#getReceive").html(result+"개");
		} // success 종료
	})// ajax 끝
} // function getReceive 종료

//2) 결재 내역 개수 ajax
function getReceiveCmp(){
// 	alert("2) 결재내역(수신)");
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	//empCd : 로그인 아이디
	let empCd = $("#empCode").val();
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
			$("#getReceiveCmp").html(result+"개");
// 			alert("여기 오면 개수 찍히는거");
		} // success 종료
	})// ajax 끝
} // function getReceiveCmp 종료

//3) 진행 결재 개수 ajax
function getReport(){
// 	alert("3) 진행결재 상신 개수");
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	//empCd : 로그인 아이디
	let empCd = $("#empCode").val();
	//#개
	let getReport = $("#getReport").val();
	
	let data = {"empCd" : empCd};
	
	console.log("empcd 오냐? " + empCd);
	console.log("getReceiveCmp 오냐? " + getReport);
	
	$.ajax({
		url : '/approval/getReport',
		type : 'post',
		data : JSON.stringify(data),
		contentType:'application/json;charset=utf-8',
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},		
		success: function(result){
			console.log("dfdf : " + result);
			$("#getReport").html(result+"개");
// 			alert("여기 오면 개수 찍히는거");
		} // success 종료
	})// ajax 끝
} // function getReceiveCmp 종료

//4) 완료 결재 개수 ajax
function getReportCmp(){
// 	alert("3) 진행결재 상신 개수");
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	//empCd : 로그인 아이디
	let empCd = $("#empCode").val();
	//#개
	let getReportCmp = $("#getReportCmp").val();
	
	let data = {"empCd" : empCd};
	
	console.log("empcd 오냐? " + empCd);
	console.log("getReportCmp 오냐? " + getReportCmp);
	
	$.ajax({
		url : '/approval/getReportCmp',
		type : 'post',
		data : JSON.stringify(data),
		contentType:'application/json;charset=utf-8',
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},		
		success: function(result){
			console.log("dfdf : " + result);
			$("#getReportCmp").html(result+"개");
// 			alert("여기 오면 개수 찍히는거");
		} // success 종료
	})// ajax 끝
} // function getReceiveCmp 종료

//5) 반려 결재 개수 ajax
function getReportRet(){
// 	alert("3) 진행결재 상신 개수");
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	//empCd : 로그인 아이디
	let empCd = $("#empCode").val();
	//#개
	let getReportRet = $("#getReportRet").val();
	
	let data = {"empCd" : empCd};
	
	console.log("empcd 오냐? " + empCd);
	console.log("getReportCmp 오냐? " + getReportRet);
	
	$.ajax({
		url : '/approval/getReportRet',
		type : 'post',
		data : JSON.stringify(data),
		contentType:'application/json;charset=utf-8',
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},		
		success: function(result){
			console.log("dfdf : " + result);
			$("#getReportRet").html(result+"개");
// 			alert("여기 오면 개수 찍히는거");
		} // success 종료
	})// ajax 끝
} // function getReportRet 종료

function ajaxInter() {
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	$.ajax({
		url:"./approvalReceive",
		type:"post",
		data:{empCd:empCd},
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
			let tbl = "";
			console.log("result" , result.length);
			
			for(var i =0; i<result.length; i++) {
				tbl += "<tr>";
				
				// 기안서
				if(result[i].formNo == 0){
					tbl += "<td>"+ result[i].apprNo +"</td>";
				}	
				// 지출
				if(result[i].formNo == 1){
					tbl += "<td style='color:blue;'><a onclick=window.open('/approval/payformDetail?apprNo="+result[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result[i].apprNo +"</a></td>";
				}
				
				// 휴가신청서
			   	if(result[i].formNo == 2){
                     tbl += "<td style='color:blue;'><a onclick=window.open('/vacation/vacationFormDetail?apprNo="+result[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result[i].apprNo +"</a></td>";
                }
				
				tbl += "<td>"+result[i].apprTit+"</td>";
				tbl += "<td>"+moment(result[i].regDt).format("YYYY년 MM월 DD일")+"</td>";
				tbl += "<td>"+result[i].writer+"</td>";
				tbl += "<td>결재대기(수신)</td>";
				tbl += "</tr>";
			}
			console.log('tbl : ', tbl);
			$("#resultTbl").html(tbl);
			$("#approvalTit").html("결재목록");
				
		},
		
		error: function(error) {
			console.log('에러입니다');
			console.log(error);
		}
		
	});
}
$(function(){
	//1) 요청결재(수신)
	getReceive();
	
	//2) 결재내역(수신)
	getReceiveCmp();
	
	//3) 진행결재(상신)
	getReport();
	
	//4 완료결재 상신
	 getReportCmp();
	
	//5 반려결재 상신
	getReportRet();
	
	
	let sti;
	$("#btnA01").click(function(){
		clearInterval(sti);
		ajaxInter();
		console.log("empCd : " + empCd);
		sti = setInterval(ajaxInter, 500);
		
		
	
		
		
	});
	
	// 진료 상태
 	$("#btnA02").click(function(){
 		clearInterval(sti);
 		//empCd
 		var empCd = $("#empCode").val();
 		var line0 = $("#line0").val();
 		console.log("empCd : " + empCd);
 		console.log("line0 : " + line0);
 		
 		let header = "${_csrf.headerName}";
 		let token = "${_csrf.token}";
		
 		$.ajax({
 			url:"./selectAllList",
 			type:"post",
 			data:{empCd:empCd},
 			beforeSend:function(xhr){
 				xhr.setRequestHeader(header, token);
			},
			success:function(result){
				console.log('result : ' , result);
				console.log("result.length : " + result.length);
				let tbl = "";
				
				for(var i =0; i<result.length; i++){
					tbl += "<tr>";
				
					// 기안서
					if(result[i].formNo == 0){
						tbl += "<td>"+ result[i].apprNo +"</td>";
					}	
					
					// 지출결의서	
					if(result[i].formNo == 1){
						tbl += "<td style='color:blue;'><a onclick=window.open('/approval/payformDetail?apprNo="+result[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result[i].apprNo +"</a></td>";
					}
				
					// 휴가신청서
				   if(result[i].formNo == 2){
	                     tbl += "<td style='color:blue;'><a onclick=window.open('/vacation/vacationFormDetail?apprNo="+result[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result[i].apprNo +"</a></td>";
	                  }
			
					tbl += "<td>"+result[i].apprTit+"</td>";
					tbl += "<td>"+moment(result[i].regDt).format("YYYY년 MM월 DD일")+"</td>";
					tbl += "<td>"+result[i].writer+"</td>";
					
				/* 	if(result[i].apprSitCd == 'A01'){
						tbl += "<td>결재진행중(수신)</td>";
					} */
					if(result[i].apprSitCd == 'A02'){
						tbl += "<td>결재완료(수신)</td>";
					}
					
					if(result[i].apprSitCd == 'A03'){
						tbl += "<td>결재반려(수신)&nbsp;</td>";
					}
						tbl += "</tr>";
				
				} // for문 끝
					
						$("#resultTbl").html(tbl);
			}, 
					
				error: function(error) {
				console.log('에러입니다');
				console.log(error);
			},
			
		});//ajax 끝
			
	}); // btnA02 click끝
		
	
	
	/* ===========================상신요청(내가 결재요청한거)=================================== */
var data = {"empCd":empCd};
	
	$("#RbtnA01").click(function(){
		clearInterval(sti);
		//empCd
		console.log("empCd : " + empCd);
		
		let header = "${_csrf.headerName}";
		let token = "${_csrf.token}";
		
		$.ajax({
			url:"/approval/approvalReport",
			data:JSON.stringify(data),
			dataType:'json',
			contentType:'application/json;charset=utf-8',
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result2){
				console.log('result2 : ', result2);
				//console.log('regDt : ', moment(result2[0].regDt).format("YYYY-MM-DD"));
				console.log("result.length : " + result2.length);
				let tbl = "";
				//console.log("result2" , result2[0].apprNo);
				for(var i =0; i<result2.length; i++){
					if(result2[i].apprSitCd == 'A01' ){
						tbl += "<tr>";
					
					// 기안서
					if(result2[i].formNo == 0){
						tbl += "<td>"+ result2[i].apprNo +"</td>";
					}	
						
						
					// 지출결의서
					if(result2[i].formNo == 1){
						tbl += "<td style='color:blue;'><a onclick=window.open('/approval/payformDetail?apprNo="+result2[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result2[i].apprNo +"</a></td>";
					}
					
					// 휴가신청서
				   if(result2[i].formNo == 2){
	                     tbl += "<td style='color:blue;'><a onclick=window.open('/vacation/vacationFormDetail?apprNo="+result2[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result2[i].apprNo +"</a></td>";
	                  }
						
						tbl += "<td>"+result2[i].apprTit+"</td>";
						tbl += "<td>"+moment(result2[i].regDt).format("YYYY년 MM월 DD일")+"</td>";
						tbl += "<td>"+result2[i].writer+"</td>";
						tbl += "<td>결재진행(상신)</td>";
						
						
						tbl += "<tr>";
					}
					
				} 
					tbl += "</table>";
					$("#resultTbl").html(tbl);
					
			},
			
			error: function(error) {
				console.log('에러입니다');
				console.log(error);
			}
		});	
	});
	
	$("#RbtnA02").click(function(){
		clearInterval(sti);
		//empCd
		let empCd = "${employeeVO.empCd}";
		console.log("empCd : " + empCd);
		//apprSitCd
		let apprSitCd = "A02";
		console.log("apprSitCd : " + apprSitCd);
		console.log("완료 결재");
		
		/*  */
		console.log("empCd : " + empCd);
		
		let header = "${_csrf.headerName}";
		let token = "${_csrf.token}";
		
		$.ajax({
			url:"/approval/approvalReport",
			data:JSON.stringify(data),
			dataType:'json',
			contentType:'application/json;charset=utf-8',
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result2){
				console.log('result2 : ', result2);
				console.log('regDt : ', moment(result2[0].regDt).format("YYYY년 MM월 DD일"));
				console.log("result2.length : " + result2.length);
				let tbl = "";
				console.log("result2" , result2[0].apprNo);
				
				for(var i =0; i<result2.length; i++){
					if(result2[i].apprSitCd == 'A02'){
						
						tbl += "<tr>";
						
						// 기안서
						if(result2[i].formNo == 0){
							tbl += "<td>"+ result2[i].apprNo +"</td>";
						}
						
						
						// 지출결의서
						if(result2[i].formNo == 1){
							tbl += "<td style='color:blue;'><a onclick=window.open('/approval/payformDetail?apprNo="+result2[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result2[i].apprNo +"</a></td>";
						}
						
						// 휴가신청서
					   if(result2[i].formNo == 2){
		                     tbl += "<td style='color:blue;'><a onclick=window.open('/vacation/vacationFormDetail?apprNo="+result2[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result2[i].apprNo +"</a></td>";
		                  }
						
						tbl += "<td>"+result2[i].apprTit+"</td>";
						tbl += "<td>"+moment(result2[i].regDt).format("YYYY년MM월DD일")+"</td>";
						tbl += "<td>"+result2[i].writer+"</td>";
						tbl += "<td>결재완료(상신)</td>";
						tbl += "<tr>";
					}  
				} 
				
				
					tbl += "</table>";
					$("#resultTbl").html(tbl);
					
			},
			
			error: function(error) {
				console.log('에러입니다');
				console.log(error);
			}
		});	
	});
	
	$("#RbtnA03").click(function(){
		clearInterval(sti);
		//empCd
		let empCd = "${employeeVO.empCd}";
		console.log("empCd : " + empCd);
		//apprSitCd
		console.log("완료된 결재");
		
		console.log("empCd : " + empCd);
		
		let header = "${_csrf.headerName}";
		let token = "${_csrf.token}";
		
		$.ajax({
			async:false,
			url:"/approval/returnAppr",
			data:JSON.stringify(data),
			dataType:'json',
			contentType:'application/json;charset=utf-8',
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result2){
				console.log('result2 : ', result2);
				console.log('regDt : ', moment(result2[0].regDt).format("YYYY-MM-DD"));
				console.log("result2.length : " + result2.length);
				let tbl = "";
				console.log("result2[0].apprSitCd " + result2[0].apprSitCd);
				
				for(var i =0; i<result2.length; i++){
					if(result2[i].apprSitCd  == 'A03'){
						
						tbl += "<tr>";
						// 기안서
						if(result2[i].formNo == 0){
							tbl += "<td>"+ result2[i].apprNo +"</td>";
						}
						// 지출결의
						if(result2[i].formNo == 1){
							tbl += "<td style='color:blue;'><a onclick=window.open('/approval/payformDetail?apprNo="+result2[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result2[i].apprNo +"</a></td>";
						}
						
						// 휴가신청서
					   if(result2[i].formNo == 2){
		                     tbl += "<td style='color:blue;'><a onclick=window.open('/vacation/vacationFormDetail?apprNo="+result2[i].apprNo+"','_blank','width=900px,height=1000px'); return false; >"+ result2[i].apprNo +"</a></td>";
		                  }
						
						tbl += "<td>"+result2[i].apprTit+"</td>";
						tbl += "<td>"+moment(result2[i].regDt).format("YYYY년 MM월 DD일")+"</td>";
						tbl += "<td>"+result2[i].writer+"</td>";
						
						if(result2[i].apprSitCd == 'A03'){
							tbl += "<td>결재반려(상신)&nbsp;&nbsp;<button class='btn ripple btn-light' id='btnPop' type='button' data-bs-container='body' data-bs-content='"+result2[i].lineSeqVOList[0].apprRea+"' data-bs-placement='top' data-bs-popover-color='head-primary' title='반려사유' data-bs-toggle='popover'>반려사유</button></td>";							
						}
						tbl += "<tr>";
					}
				} 
					tbl += "</table>";
					$("#resultTbl").html(tbl);

					var popover = new bootstrap.Popover(document.querySelector('[data-bs-popover-color="head-primary"]'), {
						template: '<div class="popover popover-head-primary" role="tooltip"><div class="popover-arrow"><\/div><h3 class="popover-header"><\/h3><div class="popover-body"><\/div><\/div>'
					})
				
					
			},
			
			error: function(error) {
				console.log('에러입니다');
				console.log(error);
			}
		});	
		
		
		
	});
	
	/// 메인 스크립트 끝 부분입니다.
	

});


$(document).on('click', "#btnPop",function(e) {
	$('[data-bs-toggle="popover"]').each(function() {
		if (!$(this).is(e.target) && $(this).has(e.target).length === 0 && $('.popover').has(e.target).length === 0) {
			(($(this).popover('hide').data('bs.popover') || {}).inState || {}).click = false // fix for BS 3.3.6
		}
	});
});

</script>


<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
		
<div class="row row-sm">
	<!-- header -->
	<div class="page-header">
		<div>
			<h1 class="main-content-title tx-24 mg-b-5">결재상신함
			<sec:authentication var="employeeVO" property='principal.employeeVO' />
			</h1>
		</div>
	</div>
</div>
<!-- 결재 상황판  -->
<div class="row row-sm">
	<div class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
		<div class="card custom-card" style="border: 1px solid black;">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat" >
							<h1 class="font-weight-bold">대기중인 결재</h1>
							<h4 class="font-weight-bold" id="A01Count">없음</h4>
						</div>
					</div>
					<button class="btn ripple btn-light" id="btnA01">조회하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
		<div class="card custom-card" style="border: 1px solid black;">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat">
							<h1 class="font-weight-bold">진행중인 결재</h1>
							<h4 class="font-weight-bold" id="A02Count">0건</h4>
						</div>
					</div>
					<button class="btn ripple btn-light" id="btnA02">조회하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
		<div class="card custom-card" style="border: 1px solid black;">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat">
							<h1 class="font-weight-bold">완료된 결재</h1>
							<h4 class="font-weight-center" id="A03Count"></h4>
						</div>
					</div>
					<button class="btn ripple btn-light" id="btnA03">조회하기</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 결재 목록 보여주기  -->
<div class="row row-sm">
	<div class="col-lg-12">
		<div class="card custom-card">
			<div class="card-body">
				<!--  -->
				<h2>조회된 목록</h2>
				<div class="table-responsive">
					<table
						class="table text-nowrap text-md-nowrap table-bordered mg-b-0">
						<thead>
							<tr>
								<th>결재번호</th>
								<th>제목</th>
								<th>등록일자</th>
								<th>작성자</th>
								<th>결재종류</th>
								<th>결재상황</th>
							</tr>
						</thead>
						<tbody id="listResult">
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<!--  -->




		
	<!-- Jquery js-->
	<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

	<!-- Bootstrap js-->
	<script src="/resources/assets/plugins/bootstrap/js/popper.min.js"></script>
	<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- Internal Chart.Bundle js-->
	<script src="/resources/assets/plugins/chart.js/Chart.bundle.min.js"></script>

	<!-- Peity js-->
	<script src="/resources/assets/plugins/peity/jquery.peity.min.js"></script>

	<!-- Select2 js-->
	<script src="/resources/assets/plugins/select2/js/select2.min.js"></script>
	<script src="/resources/assets/js/select2.js"></script>

	<!-- Perfect-scrollbar js -->
	<script src="/resources/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

	<!-- Sidemenu js -->
	<script src="/resources/assets/plugins/sidemenu/sidemenu.js"></script>

	<!-- Sidebar js -->
	<script src="/resources/assets/plugins/sidebar/sidebar.js"></script>

	<!-- Internal Morris js -->
	<script src="/resources/assets/plugins/raphael/raphael.min.js"></script>
	<script src="/resources/assets/plugins/morris.js/morris.min.js"></script>

	<!-- Circle Progress js-->
	<script src="/resources/assets/js/circle-progress.min.js"></script>
	<script src="/resources/assets/js/chart-circle.js"></script>

	<!-- Internal Dashboard js-->
	<script src="/resources/assets/js/index.js"></script>

	<!-- Color Theme js -->
	<script src="/resources/assets/js/themeColors.js"></script>

	<!-- Sticky js -->
	<script src="/resources/assets/js/sticky.js"></script>

	<!-- Custom js -->
	<script src="/resources/assets/js/custom.js"></script>
	<!-- Moment js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>


<!-- ///////////////////////////////////////////////////////////////////// -->		
<script type="text/javascript">
$(function(){
	var empCd = "${employeeVO.empCd}";
	var data = {"empCd":empCd};
	
	$("#btnA01").click(function(){
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
			success:function(result){
				console.log('result : ', result);
				console.log('regDt : ', moment(result[0].regDt).format("YYYY-MM-DD"));
				console.log("result.length : " + result.length);
				let str = "";
				console.log("result" , result[0].apprNo);
				let countA01 = 0;
				let countA02 = 0;
				let countA03 = 0;
				for(var i =0; i<result.length; i++){
					if(result[i].apprSitCd == 'A01'){
						countA01++;
						str += "<tr>";
						str += "<td>"+result[i].apprNo+"</td>";
						str += "<td>"+result[i].apprTit+"</td>";
						str += "<td>"+moment(result[i].regDt).format("YYYY-MM-DD")+"</td>";
						str += "<td>"+result[i].writer+"</td>";
						str += "<td>"+result[i].formNo+"</td>";
						str += "<td>결재대기</td>";
						
						
						str += "<tr>";
					}else if(result[i].apprSitCd == 'A02'){
						countA02++;
						
					}else if((result[i].apprSitCd == 'A03') || (result[i].apprSitCd =='A04')){
						countA03++;
					}
					
				} 
				$("#A01Count").html(countA01+"개");
				$("#A02Count").html(countA02+"개");
				$("#A03Count").html(countA03+"개");
					str += "</table>";
					$("#listResult").html(str);
					
					
			},
			
			error: function(error) {
				console.log('에러입니다');
				console.log(error);
			}
		});	
	});
	
	$("#btnA01").trigger("click");
	
	$("#btnA02").click(function(){
		//empCd
		let empCd = "${employeeVO.empCd}";
		console.log("empCd : " + empCd);
		//apprSitCd
		let apprSitCd = "A02";
		console.log("apprSitCd : " + apprSitCd);
		console.log("진행중인 결재");
		
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
			success:function(result){
				console.log('result : ', result);
				console.log('regDt : ', moment(result[0].regDt).format("YYYY-MM-DD"));
				console.log("result.length : " + result.length);
				let str = "";
				console.log("result" , result[0].apprNo);
				
				for(var i =0; i<result.length; i++){
					if(result[i].apprSitCd == 'A02'){
						
						str += "<tr>";
						str += "<td>"+result[i].apprNo+"</td>";
						str += "<td>"+result[i].apprTit+"</td>";
						str += "<td>"+moment(result[i].regDt).format("YYYY-MM-DD")+"</td>";
						str += "<td>"+result[i].writer+"</td>";
						str += "<td>"+result[i].formNo+"</td>";
						str += "<td>결재진행</td>";
						
						
						str += "<tr>";
					}
						
				/* 	 if(result[i].apprSitCd == '2'){
						str += <td>"결재완료"</td>;
					} */
					
				} 
					str += "</table>";
					$("#listResult").html(str);
					
			},
			
			error: function(error) {
				console.log('에러입니다');
				console.log(error);
			}
		});	
	});
	
	$("#btnA03").click(function(){
		//empCd
		let empCd = "${employeeVO.empCd}";
		console.log("empCd : " + empCd);
		//apprSitCd
		let apprSitCd = "A03";
		console.log("apprSitCd : " + apprSitCd);
		console.log("완료된 결재");
		
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
			success:function(result){
				console.log('result : ', result);
				console.log('regDt : ', moment(result[0].regDt).format("YYYY-MM-DD"));
				console.log("result.length : " + result.length);
				let str = "";
				console.log("result" , result[0].apprNo);
				
				for(var i =0; i<result.length; i++){
					if((result[i].apprSitCd == 'A03') || (result[i].apprSitCd =='A04')){
						
						str += "<tr>";
						str += "<td>"+result[i].apprNo+"</td>";
						str += "<td>"+result[i].apprTit+"</td>";
						str += "<td>"+moment(result[i].regDt).format("YYYY-MM-DD")+"</td>";
						str += "<td>"+result[i].writer+"</td>";
						str += "<td>"+result[i].formNo+"</td>";
						
						if(result[i].apprSitCd == 'A03'){
							str += "<td>결재완료</td>";
						}
						
						if(result[i].apprSitCd == 'A04'){
							str += "<td>결재반려&nbsp;&nbsp;<button class='btn ripple btn-light'>새 작성</button></td>";
						}
						str += "<tr>";
					}
						
											/* 	 if(result[i].apprSitCd == '2'){
													str += <td>"결재완료"</td>;
												} */
				} 
					str += "</table>";
					$("#listResult").html(str);
					
			},
			
			error: function(error) {
				console.log('에러입니다');
				console.log(error);
			}
		});	
		
		
		
	});
	
	
});
</script>
<!-- <script type="text/javascript">
$("#formNo").change(function(param){
	//alert($("#formNo").val());
	$.ajax({
		url:"/resources/approvalMain/form/"+$("#formNo").val(),
		success: function(result){
			console.log(result);
			$("#formData").html(result);
		}
	})
})
apprAllList


$.ajax({
	url:"/approval/approvalAllList",
	datatype:"GET",
	success:function(data){
		
	}
	
	
})

</script> -->
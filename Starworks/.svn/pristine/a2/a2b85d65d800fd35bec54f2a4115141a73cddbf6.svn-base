<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
		
<div class="row row-sm">
	<!-- header -->
	<div class="page-header">
		<div>
			<h1 class="main-content-title tx-24 mg-b-5">결재수신함
			<input id="empCode" type="hidden" value="<sec:authentication property='principal.employeeVO.empCd'/>">
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
							<h1 class="font-weight-bold">요청한 결재</h1>
							<h4 class="font-weight-bold" id="A01Count"></h4>
						</div>
					</div>
					<button class="btn ripple btn-light"  id="btnA01">조회하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
		<div class="card custom-card" style="border: 1px solid black;">
			<div class="card-body">
				<div class="card-item">
					<div class="card-item-body">
						<div class="card-item-stat" >
							<h1 class="font-weight-bold">결재 내역</h1>
							<h4 class="font-weight-bold" id="A02Count"></h4>
						</div>
					</div>
					<button class="btn ripple btn-light"  id="btnA02">조회하기</button>
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
						
			<%-- 			<c:if test="${apprVOList}">
							</table>
								<h3>
									조회된 목록이 없습니다.
								</h3>
						</c:if> --%>
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
	var empCd = $("#empCode").val();
	$("#btnA01").click(function(){
		//empCd
		console.log("empCd : " + empCd);
		
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
				console.log('result : ' , result);
				console.log("result.length : " + result.length);
				let str = "";
				console.log("result" , result[0].apprNo);
				
				let countA01 = 0;
				let countA02 = 0;
				
				for(var i =0; i<result.length; i++){
					if((result[i].apprSitCd == 'A01')){
						countA01++;
						str += "<tr>";
						str += "<td>"+result[i].apprNo+"</td>";
						str += "<td>"+result[i].apprTit+"</td>";
						str += "<td>"+moment(result[i].regDt).format("YYYY-MM-DD")+"</td>";
						str += "<td>"+result[i].writer+"</td>";
						str += "<td>"+result[i].formNo+"</td>";
						str += "<td>결재대기</td>";
						
						/* str += "<td>"+result[i].apprSitCd+"</td>"; */
						str += "<tr>";
						
					}else if((result[i].apprSitCd == 'A03') || result[i].apprSitCd == 'A04'){
						countA02++;
					}
					
					
				} 
					$("#A01Count").html(countA01+"개");
					$("#A02Count").html(countA02+"개");
						str += "</tabel>";
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
		var empCd = $("#empCode").val();
		console.log("empCd : " + empCd);
		//apprSitCd
		let apprSitCd = "A03";
		console.log("apprSitCd : " + apprSitCd);
		console.log("완료 결재");
		
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
				console.log('result : ' , result);
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
							str += "<td>결재반려&nbsp;&nbsp;<button class='btn ripple btn-light'>반려사유</button></td>";
						}
						str += "<tr>";
						
					}
					
				} 
						str += "</tabel>";
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

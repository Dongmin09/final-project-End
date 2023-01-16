<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<style>
	select{
		width: 200px;
	}
	tr{
	height: 50px;
	}
</style>
<!-- Select2 css -->
<link href="/resources/assets/plugins/select2/css/select2.min.css" rel="stylesheet">
<!-- DATA TABLE CSS -->
<link href="/resources/assets/plugins/datatable/css/dataTables.bootstrap5.css" rel="stylesheet">
<link href="/resources/assets/plugins/datatable/css/buttons.bootstrap5.min.css" rel="stylesheet">
<link href="/resources/assets/plugins/datatable/css/responsive.bootstrap5.css" rel="stylesheet">
<!-- InternalFileupload css-->
<link href="/resources/assets/plugins/fileuploads/css/fileupload.css" rel="stylesheet" type="text/css">





	<div class="example">
		<div class="panel panel-primary tabs-style-2">
			<div class=" tab-menu-heading">
				<div class="tabs-menu1">
					<!-- Tabs -->
					<ul class="nav panel-tabs main-nav-line">
						<li><a href="#tab4" class="nav-link mt-1 active" data-bs-toggle="tab">신규계정 승인</a></li>
<!-- 						<li><a href="#tab5" class="nav-link mt-1" data-bs-toggle="tab">Tab 02</a></li> -->
<!-- 						<li><a href="#tab6" class="nav-link mt-1"  data-bs-toggle="tab">Tab 03</a></li> -->
					</ul>
				</div>
			</div>
			<div class="panel-body tabs-menu-body main-content-body-right border">
				<div class="tab-content">
					<div class="tab-pane active" id="tab4">
						<div class="tab-pane active show table-responsive border" id="tabCont1">
							<table class="table text-nowrap text-md-nowrap table-hover mg-b-0">
								<thead>
									<tr>
										<th>#</th>
										<th>사원번호</th>
										<th>ID</th>
										<th>이름</th>
										<th>부서</th>
										<th>직급</th>
										<th>재직상태</th>
										<th>권한</th>
										<th></th>	
									</tr>
								</thead>
								<tbody>
								<c:forEach var="list" items="${list}"  varStatus="stat">
									
									<tr>
										<td>${stat.count} </td>
										<td>${list.empCd}
											<input type="hidden" name="empCd" id="empCd${stat.count}" value="${list.empCd}"/>
											<input type="hidden" name=empEml id="empEml${stat.count}" value="${list.empEml}"/>
										</td>
										<td>${list.empId}</td>
										<td>${list.empNm}</td>
										<td>
											<div class="form-group "style="height:10px;">
												<select name="depCd" id="depList${stat.count}" class="form-select depCd"></select>
											</div>			
										</td>
										
										<td> 
											<div class="form-group" style="height:10px;">
												<select name="commCd" id="code${stat.count}" class="form-select" >
												<option value=''>선택하세요</option>
												<c:forEach var="posiList" items="${posiList}">
													<option id="${posiList.commCd}"  value="${posiList.commCd}"
													<c:if test='${posiList.commCdNm ==  list.posiCd}'>selected="selected"</c:if> >
													${posiList.commCdNm}							
													</option>		
												</c:forEach>
												</select>
											</div>
										</td>
										
										<td>
											<div class="form-group " style="height:10px;">
												<select name="empSitCd" id="empSitCd${stat.count}" class="form-select empSitCd"></select>
											</div>			
										</td>
										<td>
											<div class="form-group " style="height:10px;">
												<select name="authCd" id="authCd${stat.count}" class="form-select"></select>
											</div>			
										</td>
										
										<td>
											<button type="button" id="${stat.count}" class="btn ripple btn-outline-success btn-rounded btn-sm"><i class="mdi mdi-account-plus"></i> 승인</button>
											<button type="button" id="${stat.count}" class="btn ripple btn-outline-danger btn-rounded btn-sm"><i class="mdi mdi-account-remove"></i> 거절</button>
										</td>
									</tr>
								</c:forEach>
								<c:if test="${empty list}"><tr><td colspan="9" style="text-align: center;">가입 승인이 필요한 직원이 없습니다.</td></tr></c:if>
								</tbody>
							</table>
						</div>
					</div>
<!-- 					<div class="tab-pane" id="tab5"> -->
<!-- 						<p>dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p> -->
<!-- 						<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime</p> -->
<!-- 						<p class="mb-0">placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p> -->
<!-- 					</div> -->
<!-- 					<div class="tab-pane" id="tab6"> -->
<!-- 						<p>praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,</p> -->
<!-- 						<p class="mb-0">similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p> -->
<!-- 					</div> -->
				</div>
			</div>
		</div>
	</div>




<script type="text/javascript">
	// 신규회원 관리
	$.ajax({   // select에 부서코드 불러오기
		url:"./depList",
		datatype:"json",
		type:"get",
		success:function(data){
			$(".depCd").append("<option value=''>선택하세요</option> ");
			
			$.each(data,function(index,item){
					
				$(".depCd").append("<option id='"+ item.depCd +"' value='"+
						item.depCd +"' >"  + item.depNm + "</option> ");											
			});
		}
	});
	
	$.ajax({   // select에 재직코드 불러오기
		url:"./workList",
		datatype:"json",
		type:"get",
		success:function(data){
			$(".empSitCd").append("<option value=''>선택하세요</option> ");
			$.each(data,function(index,item){		
				$(".empSitCd").append("<option id='"+ item.commCd +"' value='"+
						item.commCd +"' >"  + item.commCdNm + "</option> ");											
			});
		}
	});
	
	$.ajax({   // select에 권한코드 불러오기
		url:"./authList",
		datatype:"json",
		type:"get",
		success:function(data){
			$("select[name='authCd']").append("<option value=''>선택하세요</option> ");			
			$.each(data,function(index,item){
				$("select[name='authCd']").append("<option id='"+ item.commCd +"' value='"+
						item.commCd +"' >"  + item.commCdNm + "</option> ");											
			});
		}
	});
	
	
// 권한, 직급, 부서 설정 주기
$(document).on("click", ".btn-outline-success", function(){
	let id = $(this).attr("id");
	console.log($("#code"+id).val());
	console.log($("#empCd"+id).val());
	console.log($("#depList"+id).val());
	console.log($("#authCd"+id).val());
	
	let empCd = $("#empCd"+id).val();
	let depCd = $("#depList"+id).val();
	let posiCd = $("#code"+id).val();
	let empSitCd = $("#empSitCd"+id).val();
	let authCd = $("#authCd"+id).val();
	
	let authData={"authCd":authCd, "empCd":empCd};
	let data = {"empCd":empCd, "depCd":depCd, "posiCd":posiCd, "empSitCd":empSitCd};
	let vacData={"empCd":empCd};
	// 스프링 시큐리티를 위한 토큰처리(csrf)
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	$.ajax({
		url:"./authInsert",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(authData),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		}
	});
	$.ajax({
		url:"./insertVacation",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(authData),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		}
	});
	$.ajax({
		url:"./empUpdate",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:(function(result){
			if(result>0){

				location.href="/account/account";
			}else{
				swal("변경되지 않았습니다.");
			}
		})
	});

	
});

// 권한 승인 거절
$(document).on("click", ".btn-outline-danger", function(){
	let id = $(this).attr("id");
	let empCd = $("#empCd"+id).val();
	let email = $("#empEml"+id).val();
	console.log(email);
	
	let DelData = {"empCd":empCd};
	// 스프링 시큐리티를 위한 토큰처리(csrf)
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";

	swal({
		  title: "승인을 거부 하시겠습니까?",
		  text: "승인을 거절할 시 정보는 삭제됩니다.",
		  type: "error",
		  showCancelButton: true,
		  confirmButtonText : "예",
		  cancelButtonText : "아니오",
		  closeOnConfirm: false,
		  closeOnCancel: false,
		  showLoaderOnConfirm: true
	
	} , function(isConfirm){
		if(isConfirm){
			if(email != "" || email != null){
				$.ajax({
					type:"GET",
					url : "/account/authRefusal",
					data : {email : email},
					contentType :"text/plain;charset=UTF-8"
				});	
			}

			$.ajax({
				url:"/employee/empDelete",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(DelData),
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:(function(result){
					if(result>0){
						location.href="/account/account";
					}else{
						swal("다시 시도해주세요.");
					}
				})
			})
		}else{
			swal("취소합니다.", ":)", "error");
		}
	});
});



</script>





<!-- Internal Data Table js -->
<script src="/resources/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/dataTables.bootstrap5.js"></script>
<script src="/resources/assets/plugins/datatable/js/dataTables.buttons.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.bootstrap5.min.js"></script>
<!-- <script src="/resources/assets/plugins/datatable/js/jszip.min.js"></script> -->
<script src="/resources/assets/plugins/datatable/pdfmake/pdfmake.min.js"></script>
<script src="/resources/assets/plugins/datatable/pdfmake/vfs_fonts.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.html5.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.print.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.colVis.min.js"></script>
<script src="/resources/assets/plugins/datatable/dataTables.responsive.min.js"></script>
<script src="/resources/assets/plugins/datatable/responsive.bootstrap5.min.js"></script>
<script src="/resources/assets/js/table-data.js"></script>
<script src="/resources/assets/js/select2.js"></script>
<!-- Select2 js-->
<script src="/resources/assets/plugins/select2/js/select2.min.js"></script>

<!-- Internal Fileuploads js-->
<script src="/resources/assets/plugins/fileuploads/js/fileupload.js"></script>
<script src="/resources/assets/plugins/fileuploads/js/file-upload.js"></script>



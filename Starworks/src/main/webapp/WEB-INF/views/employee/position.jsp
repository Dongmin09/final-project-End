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




				<div id="example1_wrapper"
					class="dataTables_wrapper dt-bootstrap5 no-footer">
					
					<div class="row">
						<div class="col-sm-12">
							<table
								class="table table-bordered border-bottom dataTable no-footer"
								id="example3" role="grid" aria-describedby="example1_info">
								<thead>
									<tr role="row">
										<th class="wd-20p sorting sorting_asc" tabindex="0"
											aria-controls="example1" rowspan="1" colspan="1"
											aria-sort="ascending"
											aria-label="Name: activate to sort column descending"
											style="width: 115.969px;">사원번호</th>
										<th class="wd-25p sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="Position: activate to sort column ascending"
											style="width: 186.234px;">직원명</th>
										<th class="wd-20p sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="Office: activate to sort column ascending"
											style="width: 107.203px;">부서</th>
										<th class="wd-15p sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="Age: activate to sort column ascending"
											style="width: 62.4062px;">직급</th>
										<th class="wd-20p sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 102.188px;">재직상태</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="allList" items="${allList}" varStatus="stat">
									<c:if test="${stat.count%2==0}"><tr class="odd"></c:if>
									<c:if test="${stat.count%2!=0}"><tr class="even"></c:if>
										<td class="sorting_1">${allList.empCd}</td>
										<td>
											<a class="btn-link" id="${allList.empCd}" data-bs-target="#modaldemo1" data-bs-toggle="modal" href="" style="color: #746AB0;">${allList.empNm}</a>
										</td>
										<td>${allList.depCd}</td>
										<td>${allList.posiCd}</td>
										<td>${allList.empSitCd}</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
			
				</div><!-- 회원전체 리스트 end -->


<!-- 각각 회원 전체 정보 모달로 띄우기 -->
<div class="modal" id="modaldemo1" style="display: none;" aria-modal="true" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content modal-content-demo">
			<div class="modal-header">
				<h6 class="modal-title">직원 정보</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button"></button>
			</div>
			<div class="modal-body">
			
			<!-- 뭘 넣어야할까.... -->
				<input type="file" class="dropify" id="empImg" name="uploadFile" data-height="200">

				<div class="row row-sm">
					<div class="col-md-6">
						<div class="form-group">
							<p class="mg-b-10">이름</p>
							<input type="text" class="form-control"  id="detailNm" name="empNm"/>
						</div>
						<div class="form-group">
							<p class="mg-b-10">부서</p>
							<select name="depCd" id="empDepCd" class="form-select" >
								<c:forEach var="depList" items="${depList}">
									<option id="${depList.depCd}"  value="${depList.depCd}">
									${depList.depNm}							
									</option>		
								</c:forEach>						
							</select>
						</div>
						<div class="form-group">
							<p class="mg-b-10">연락처</p>
							<input type="text" class="form-control" name="empTel" id="empTel">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<p class="mg-b-10">사원번호</p>
							<input type="text" class="form-control"  id="detailCd" name="empCd" readonly="readonly"/>
						</div>
						<div class="form-group">
							<p class="mg-b-10">직급</p>
							<select name="posiCd" id="posiCd" class="form-select" >
								<c:forEach var="position" items="${posiList}">
									<option id="${position.commCd}"  value="${position.commCd}">
									${position.commCdNm}							
									</option>		
								</c:forEach>						
							</select>
						</div>
						<div class="form-group">
							<p class="mg-b-10">재직상태</p>
							<select name="empSitCd" id="empSitCd" class="form-select" >
								<c:forEach var="workList" items="${workList}">
									<option id="${workList.commCd}"  value="${workList.commCd}">
									${workList.commCdNm}							
									</option>		
								</c:forEach>						
							</select>
						</div>
					</div>
					<div class="col-md-12 ">
						<div class="form-group mb-0">
							<p class="mg-b-10">주소</p>
							<input type="text" class="form-control" name="post" id="post">
							<input type="text" class="form-control" name="addr" id="addr">
							<input type="text" class="form-control" name="detAddr" id="detAddr">
						</div>
					</div>
				</div>
						
			</div>
			<div class="modal-footer">
				<button class="btn ripple btn-primary" type="button" id="btnModi"><i class="typcn  typcn-edit"></i>  수정</button>
				<button class="btn ripple btn-dark" data-bs-dismiss="modal" type="button"><i class="typcn  typcn-delete-outline"></i> 닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 모달 종료!!================ -->



<script type="text/javascript">


// 회원정보 불러오기
$(document).on("click", ".btn-link", function(){
	let empCd = $(this).attr("id");
	console.log("id :" + empCd);
	let data = {"empCd":empCd}; 
	
	// 
	$(".dropify-render").find('img').remove();
	$(".dropify-preview").css("display","none");
	$(".dropify-filename-inner").html("");
	
	// 스프링 시큐리티를 위한 토큰처리(csrf)
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	$.ajax({
		url:"./empDetail",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:(function(data){
			console.log("success : " , data);
			$("#detailCd").val(data[0].empCd);
			$("#post").val(data[0].post);
			$("#addr").val(data[0].addr);
			$("#detAddr").val(data[0].detAddr);
			$("#detailNm").val(data[0].empNm);
			$("#empTel").val(data[0].empTel);
			$("#posiCd").val(data[0].posiCd).prop("selected", true);
			$("#empDepCd").val(data[0].depCd).prop("selected", true);
			$("#empSitCd").val(data[0].empSitCd).prop("selected", true);
			
			if(data[0].profile != null){
				$(".dropify-preview").css("display","block");
				$(".dropify-render").append($("<img id='empImg'/>").attr('src', "/resources/profileImg/"+data[0].profile));
				$(".dropify-filename-inner").html(data[0].profile);
				
			}
			console.log($(".dropify-filename-inner").html());
			
		})
	});// ajax end
	
});


// 직원 정보 수정하기
$(document).on("click", "#btnModi", function(){
	let detailCd = $("#detailCd").val();
	let post = $("#post").val();
	let addr = $("#addr").val();
	let detAddr = $("#detAddr").val();
	let empNm = $("#detailNm").val();
	let empTel= $("#empTel").val();
	let posiCd= $("#posiCd").val();
	let depCd = $("#empDepCd").val();
	let empSitCd = $("#empSitCd").val();
	let profile =  $(".dropify-filename-inner").html();
	let img = $("#empImg").get(0).files[0];

	let data ={"empCd":detailCd, "post":post, "addr":addr, "detAddr":detAddr
			, "empNm":empNm, "empTel":empTel, "posiCd":posiCd, "depCd":depCd
			, "empSitCd":empSitCd};

	console.log("sddsdfsfds",empSitCd);
	// 스프링 시큐리티를 위한 토큰처리(csrf)
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	$.ajax({
		url:"./empModify",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:(function(result){
			if(result>0){
				location.href="/employee/position";
			}else{
				swal("변경되지 않았습니다.");
			}
		})
	});
	console.log($("#empImg").get(0).files[0]);
	if($("#empImg").get(0).files[0] !=null){
		profileUpload(img, detailCd);
	}
	
});

$(document).on("change", "#empImg", function(){
	console.log($("#empImg").get(0).files[0]);
});


function profileUpload(img, detailCd){
	
	let formData = new FormData();
	formData.append("uploadFile", img);
	formData.append("empCd", detailCd);
	console.log("formData : " , formData);
	

	// 스프링 시큐리티를 위한 토큰처리(csrf)
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	$.ajax({
		url: "/employee/uploadProfile",
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data:formData,
		dataType:"json",
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
			console.log("result : " + result);
			console.log("uploaded");
			let filename = result.profile;
		}
	});
}


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



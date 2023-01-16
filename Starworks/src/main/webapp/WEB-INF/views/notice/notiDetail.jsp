<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<!-- Internal Jquery.maskedinput js-->
<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script>

<!-- Internal Ion-rangeslider js-->
<script src="/resources/assets/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>

<!-- Internal Form-elements js-->
<script src="/resources/assets/js/form-elements.js"></script>
<style>
p {
	font-size: 17px;
}
</style>
<div class="card-body">
	<input type="hidden" value="${notiVO.notiNo }" name="notiNo" />
	<div class="col-xl-12 col-lg-12 col-md-12">
		<div class="mt-4 mb-4">
			<h2 class="mt-1 mb-3">${notiVO.tit }</h2>
			<h5 class="text-success text-uppercase">
				<a href="#" class="text-success fs-18 me-2"> <i
					class="fe fe-user"></i>
				</a> ${notiVO.empNm }
			</h5>
			<div class="item-card-desc d-md-flex mb-3">
				<a href="#" class="d-flex"> </a><a href="#"
					class="text-primary fs-18 me-2"><i class="fe fe-calendar"></i></a>
				<span class="my-auto text-dark">등록일
					${notiVO.regDt }</span> <a href="#" class="d-flex me-4">
				</a><a href="#" class="text-primary fs-18 me-2"><i class="fe fe-eye"></i></a>
				<span class="my-auto text-dark">조회수 ${notiVO.viewCnt } 회</span> <!-- <a
					href="#" class="d-flex me-4"> </a><a href="#"
					class="text-primary fs-18 me-2"><i class="fe fe-thumbs-up"></i></a>
				</span> -->
			</div>
			<h6 class="mt-4 fs-16"></h6>
			<p>${notiVO.con }</p>
		</div>
	</div>
	<sec:authorize access="isAuthenticated()"/>
	<sec:authentication property="principal.employeeVO.empCd" var="userEmpCd"/>
	
	
	<!-- ========== 첨부파일  ============ -->
	<!-- ============================= -->
	
	<c:if test="${!empty attchVO.atchFileCd }">
		<hr>
		
		<button class="tag tag-attachments rounded-30 bg-info" onclick="fn_downloadFile(${notiVO.notiNo});">
			<span class="me-2">
				<i class="mdi mdi-file-image tx-24"></i>
			</span> ${attchVO.atchFileOrgNm } 
		</button>
	</c:if>
	
	
	
	
	<hr>
	<div class="d-flex flex-row justify-content-end mg-b-20">
	<sec:authorize access="hasRole('ROLE_A03')">
		<c:if test="${notiVO.empCd eq userEmpCd }">
			<div style="float: right; margin: 0 0 0 5px;">
				<button type="button" id="updateBtn" class="btn ripple btn-warning"
					onclick="fn_updateBtn();">수정</button>
			</div>
			<div style="float: right; margin: 0 0 0 5px;">
				<button type="button" id="deleteBtn" class="btn ripple btn-danger"
					onclick="fn_callDelBtn();">삭제</button>
			</div>
		</c:if>
	</sec:authorize>
		<div style="float: right; margin: 0 0 0 5px;">
			<button type="button" id="goListBtn" class="btn ripple btn-dark">
				목록</button>
		</div>
	</div>
</div>

<!-- 삭제 form -->
<form action="/noti/deleteNoti" name="notiDeleteForm">
	<input type="hidden" name="notiNo" value="${notiVO.notiNo }" />
	<input type="hidden" name="atchFileCd" value="${attchVO.atchFileCd }" />
</form>

<script type="text/javascript">
	// 시큐리티 토큰용
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	// 게시글 번호
	let notiNo = $("input[name='notiNo']").val();
	
	// 삭제 확인 알림
	function fn_callDelBtn(){
		swal({
			  title: "삭제 하시겠습니까?",
			  text: "삭제를 원하시면 삭제 버튼을 클릭해주세요.",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonClass: "btn-danger",
			  confirmButtonText: "삭제",
			  cancelButtonText: "취소",
			  closeOnConfirm: false,
			  closeOnCancel: false
			},
			function(isConfirm) {
				$("form[name='notiDeleteForm']").submit();
			
		});
	}
	
	// 수정
	$("#updateBtn").on("click", function() {
		location.href = "/noti/notiUpdateForm/"+notiNo;
	});
	
	// 목록으로 
	$("#goListBtn").on("click", function() {
		location.href = "/noti/selectNotiList";
	});
	
	// 파일 다운로드
	function fn_downloadFile(notiNo) {
		let url	= "/noti/downloadNotiFile?notiNo="+notiNo;
		$(location).attr("href", url);
	}
	

</script>
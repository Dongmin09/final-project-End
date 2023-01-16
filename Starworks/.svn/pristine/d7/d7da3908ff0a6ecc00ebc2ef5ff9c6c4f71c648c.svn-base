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

<div class="card-body">
	<input type="hidden" value="${depVO.depNo }" name="comNo" />
	<div class="col-xl-12 col-lg-12 col-md-12">
		<div class="mt-4 mb-4">
			<h2 class="mt-1 mb-3">${depVO.tit }</h2>
			<h5 class="text-success text-uppercase">
				<a href="#" class="text-success fs-18 me-2"> <i
					class="fe fe-user"></i>
				</a> 익명
			</h5>
			<div class="item-card-desc d-md-flex mb-3">
				<a href="#" class="d-flex"> </a><a href="#"
					class="text-primary fs-18 me-2"><i class="fe fe-calendar"></i></a>
				<span class="my-auto text-dark">등록일 
					${fn:substring(depVO.regDt,0,10) }</span> <a href="#"
					class="d-flex me-4"> </a><a href="#"
					class="text-primary fs-18 me-2"><i class="fe fe-eye"></i></a> <span
					class="my-auto text-dark">조회수 ${depVO.viewCnt } 회</span> <a
					href="#" class="d-flex me-4"> </a><a href="#"
					class="text-primary fs-18 me-2"><i class="fe fe-thumbs-up"></i></a>
				<span class="my-auto text-dark">좋아요 <span id="hitCnt"
					class="hitCnt"></span> 회
				</span>
				<!-- 				<a href="#" class="d-flex me-4"> -->
				<!-- 					</a><a href="#" class="text-primary fs-18 me-2"><i class="fe fe-thumbs-down"></i></a> -->
				<!-- 					<span class="my-auto text-dark">싫어요 <span id="dehitCnt" class="dehitCnt"></span> 회</span>	 -->
			</div>
			<h6 class="mt-4 fs-16"></h6>
			<p>${depVO.con }</p>
		</div>
	</div>
	<hr>
	<sec:authorize access="isAuthenticated()"/>
	<sec:authentication property="principal.employeeVO.empCd" var="userEmpCd"/>
<%-- 	<sec:authentication property="principal.authority" var="authority" /> --%>
	
	<div class="d-flex flex-row justify-content-end mg-b-20">
	<c:if test="${depVO.empCd eq userEmpCd }">
		<div style="float: right; margin: 0 0 0 5px;">
			<button type="button" id="updateBtn" class="btn ripple btn-warning"
				onclick="fn_updateBtn();">수정</button>
		</div>
		<div style="float: right; margin: 0 0 0 5px;">
			<button type="button" id="deleteBtn" class="btn ripple btn-danger"
				onclick="fn_callDelBtn();">삭제</button>
		</div>
	</c:if>
		<div style="float: right; margin: 0 0 0 5px;">
			<button type="button" id="goListBtn" class="btn ripple btn-dark">
				목록</button>
		</div>
	</div>
	
</div>

<!-- 삭제 form -->
<form action="/dep/deleteDep" name="depDeleteForm">
	<input type="hidden" name="depNo" value="${depVO.depNo }" />
</form>

<script type="text/javascript">
	// 시큐리티 토큰용
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	// 게시글 번호
	let depNo = $("input[name='depNo']").val();
	let chk = "N";
	
	// 삭제 확인 알림
	function fn_callDelBtn(){
		swal({
			title: "삭제 하시겠습니까?",
			text: "삭제를 원하시면 삭제 버튼을 클릭해주세요.",
			type: "warning",
			showCancelButton: true,
			confirmButtonText: "삭제",
			cancelButtonText: "취소",
			closeOnConfirm: false,
			closeOnCancel: false
		},
		function(isConfirm) {
			if (isConfirm) {
				$("form[name='depDeleteForm']").submit();
			} 
			else {
				swal("삭제 취소", "삭제를 취소하였습니다.", "error");
			}
		});
	}
	
	
	// 수정
	$("#updateBtn").on("click", function() {
		location.href = "/dep/depUpdateForm/"+depNo;
	})
	
	// 목록으로 
	$("#goListBtn").on("click", function() {
		location.href = "/dep/selectDepBoardList";
	})
	
	// 댓글 list 조회
	function fn_getComCmmtList(depNo){
		
		$.ajax({
			url:"/dep/selectComCmmt",
			data: {
				"depNo" : depNo
			},
			async: false,
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(data){
				// 다시 조회
				fn_getHitCnt(depNo);
				// 추천 or 비추천 중복방지 
				fn_callSwal("추천을 완료하였습니다.")
				chk = "Y";		
			}
		});
		
		
		
	}
	

</script>
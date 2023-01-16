<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- Internal Jquery.maskedinput js-->
<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script>

<!-- Internal Ion-rangeslider js-->
<script src="/resources/assets/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>

<!-- Internal Form-elements js-->
<script src="/resources/assets/js/form-elements.js"></script>

<div>
	
	<sec:authentication property="principal.employeeVO.empCd" var="empCd"/>
	<!-- Row -->
	<!-- insert,update,delete 할 거 위에 form으로 감싸줌 -->
	<!-- action에 있는 url로 submit을 해줌  -->
	<form name="depInsert" id="depInsertForm" action="/dep/insertDep" method="POST">
		<!-- 나중에 세션물리는거 코드 추가할때 hidden값으로 현재 로그인되어있는 ID를 가져가던지, 또는 controller 파라미터에서 받아줌  추가필요-->
		<input type="hidden" name="empCd" value="${empCd }"/>
		<input type="hidden" name="depNo" value="${depVO.depNo != null ? depVO.depNo : 0 }" /> <!-- 수정일 떄 가져가는 pk -->
		
		<div class="form-group">
			<label class="">제목</label> 
			<!-- name값이 해당 컨트롤러 파라미터vo에 있는 값이면 (CommuVO commuVO) 자동으로 해당 vo에 값을 매핑해줌 -->
			<input type="text" class="form-control" name="tit" value="${depVO.tit }"
				placeholder="제목을 입력하세요" onfocus="this.placeholder=''"
				onblur="this.placeholder='제목을 입력하세요'" required>
		</div>
		<label>내용</label>
		<div>
			<textarea id="summernote" name="con" required >${depVO.con }</textarea>
		</div>
		<script>
			$(document).ready(function() {
				$('#summernote').summernote({
					height : 300,
					minHeight : null,
					maxHeight : null,
					focus : true,
					lang : "kr-KR",
					placeholder : '내용을 입력하세요'
				});
			});
		</script>
		<!-- End Row -->
		<div class="card-footer">
			<div style="float:right;margin:0 0 0 10px;">
				<a href="/dep/selectDepBoardList" 
				class="btn ripple btn-light">취소</a>
			</div>
			<div style="float:right;margin:0 2px 0 0;" >
				<button type="submit" 
				class="btn ripple btn-primary">등록</button>
			</div>
		</div>
 		<sec:csrfInput/> 
	</form> <!-- submit 버튼은 form 안에 있어야됨 (그래야 속해있는 form을 보내주니깐)-->
</div>

<script type="text/javascript">

$(function () {
	let flg = "${flg }";
	
	// 수정일시에 action 을 바꿔주기
	if(flg == "update"){
		$("#depInsertForm").attr("action", "/dep/updateDep");
	}
	
	
})



</script>


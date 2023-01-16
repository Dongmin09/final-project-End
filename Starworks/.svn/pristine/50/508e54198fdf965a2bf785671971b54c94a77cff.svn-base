<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<!-- Favicon -->
<link rel="icon" href="../assets/img/brand/favicon.ico" type="image/x-icon"/>

<!-- Bootstrap css-->
<link  id="style" href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

<!-- Icons css-->
<link href="resources/assets/plugins/web-fonts/icons.css" rel="stylesheet"/>
<link href="resources/assets/plugins/web-fonts/font-awesome/font-awesome.min.css" rel="stylesheet">
<link href="resources/assets/plugins/web-fonts/plugin.css" rel="stylesheet"/>

<!-- Style css-->
<link href="resources/assets/css/style.css" rel="stylesheet">

<!-- Select2 css-->
<link href="resources/assets/plugins/select2/css/select2.min.css" rel="stylesheet">

<!-- Internal Quill css-->
<link href="resources/assets/plugins/quill/quill.snow.css" rel="stylesheet">
<link href="resources/assets/plugins/quill/quill.bubble.css" rel="stylesheet">

<!-- InternalFancy uploader css-->
 <link href="resources/assets/plugins/fancyuploder/fancy_fileupload.css" rel="stylesheet" />

<!-- Mutipleselect css-->
<link rel="stylesheet" href="resources/assets/plugins/multipleselect/multiple-select.css">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- InternalFileupload css-->
<link href="/resources/assets/plugins/fileuploads/css/fileupload.css" rel="stylesheet" type="text/css"/> 

<!-- InternalFancy uploader css-->
<link href="/resources/assets/plugins/fancyuploder/fancy_fileupload.css" rel="stylesheet" />

<!-- Internal Jquery.maskedinput js-->
<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script>

<!-- Internal Ion-rangeslider js-->
<script src="/resources/assets/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>

<!-- Internal Form-elements js-->
<script src="/resources/assets/js/form-elements.js"></script>

<!--Internal Fancy uploader js-->
<script src="/resources/assets/plugins/fancyuploder/jquery.ui.widget.js"></script>
<script src="/resources/assets/plugins/fancyuploder/jquery.fileupload.js"></script>
<script src="/resources/assets/plugins/fancyuploder/jquery.iframe-transport.js"></script>
<script src="/resources/assets/plugins/fancyuploder/jquery.fancy-fileupload.js"></script>
<script src="/resources/assets/plugins/fancyuploder/fancy-uploader.js"></script>
    
<!-- Internal Fileuploads js-->
<script src="/resources/assets/plugins/fileuploads/js/fileupload.js"></script>
<script src="/resources/assets/plugins/fileuploads/js/file-upload.js"></script>

<!-- Internal Blog Post js-->
<script src="/resources/assets/js/blog-post.js"></script>

<!-- Internal Quill js-->
<script src="/resources/assets/plugins/quill/quill.min.js"></script>

<!-- Custom js -->
<script src="/resources/assets/js/custom.js"></script>



<div>
	<sec:authentication property="principal.employeeVO.empCd" var="empCd"/>
	<!-- Row -->
	<!-- insert,update,delete 할 거 위에 form으로 감싸줌 -->
	<!-- action에 있는 url로 submit을 해줌  -->
	<form name="notiInsert" id="notiInsertForm" action="/noti/insertNoti" method="post" enctype="multipart/form-data"> <!--   -->
		<!-- 나중에 세션물리는거 코드 추가할때 hidden값으로 현재 로그인되어있는 ID를 가져가던지, 또는 controller 파라미터에서 받아줌  추가필요-->
		<input type="hidden" name="empCd" value="${empCd }"/>
		<input type="hidden" name="notiNo" value="${notiVO.notiNo != null ? notiVO.notiNo : 0 }" /> <!-- 수정일 떄 가져가는 pk -->
		
		<div class="form-group">
			<label class="">제목</label> 
			<!-- name값이 해당 컨트롤러 파라미터vo에 있는 값이면 (CommuVO commuVO) 자동으로 해당 vo에 값을 매핑해줌 -->
			<input type="text" class="form-control" name="tit" value="${notiVO.tit }"
				placeholder="제목을 입력하세요" onfocus="this.placeholder=''"
				onblur="this.placeholder='제목을 입력하세요'" required>
		</div>
		<label>내용</label>
		<div>
			<textarea id="summernote" name="con" required >${notiVO.con }</textarea>
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
		
		
		<!-- ========== 파일첨부  ============ -->
		<!-- ============================= -->
		<br>
		<label class="">파일 첨부</label>
		
		
		<div class="row row-sm" id="divFileInput">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="input-group file-browser">
					<input type="text" class="form-control border-end-0 browse-file" placeholder="파일을 선택하세요" readonly id="userFile" >
					<label class="input-group-btn">
						<span class="btn btn-primary">
							파일찾기 <input type="file" style="display: none;" id="fileInput" name="boFile" >
						</span>
					</label>
				</div>
			</div>
		</div>
		<div class="row row-sm">
			<div class="col-sm-12 col-md-12 col-lg-12 mg-b-10">
				<div class="input-group file-browser">
					<c:if test="${!empty attchVO.atchFileCd }">
						<button type="button" class="tag tag-attachments rounded-30 bg-info" onclick="fn_deleteFile('${attchVO.atchFileCd}');" id="fileListBtn">
							<span class="me-2">
								<i class="mdi mdi-file-image tx-24"></i>
							</span> ${attchVO.atchFileOrgNm } 
							<i class="fe fe-x mt-2 ms-4"></i>
						</button>
					</c:if>
				</div>
			</div>
		</div>
	
		
		<div class="card-footer">
			<div style="float:right;margin:0 0 0 10px;">
				<a href="/noti/selectNotiList" 
				class="btn ripple btn-light">취소</a>
			</div>
			<div style="float:right;margin:0 2px 0 0;" >
				<button type="submit" 
				class="btn ripple btn-primary">등록</button>
			</div>
		</div>
		<sec:csrfInput/>
	</form> 
</div>

<script type="text/javascript">
	// 시큐리티 토큰용
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	let atchFileCd = "${attchVO.atchFileCd}";
	
	$(function () {
		let flg = "${flg }";
		
		// 수정일시에 action 을 바꿔주기
		if(flg == "update"){
			$("#notiInsertForm").attr("action", "/noti/updateNoti");
		}
		
		if(atchFileCd != "" && atchFileCd != null){
			$("#divFileInput").css("display","none");
		}
		
	})
	
	// 파일 첨부 눌렀을 때 파일명 input에 넣어주기
	$("#fileInput").on("change" , function() {
		let fileName= $(this).val().split('/').pop().split('\\').pop(); // 파일 명만 추출
		// 추출한 파일명 삽입
		$("#userFile").val(fileName);
	})
	
	// 파일 삭제 
	function fn_deleteFile(atchFileCd){
		swal({
		  title: "파일을 삭제하시겠습니까?",
		  text: "삭제버튼을 누르면 삭제됩니다.",
		  type: "info",
		  showCancelButton: true,
		  closeOnConfirm: false,
		  showLoaderOnConfirm: true
		}, function () {
			
			$.ajax({
				url:"/noti/deleteFile",
				data: {
					"atchFileCd" : atchFileCd
				},
				async: false,
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(data){
					// ui 없애기
					$("#fileListBtn").hide();
					// 파일 input display
					$("#divFileInput").css("display","block");
					
				}
			});
			setTimeout(function () {
				swal("해당 파일이 삭제 되었습니다!");
			 }, 2000);
		});
		
		
		
	}


</script> 


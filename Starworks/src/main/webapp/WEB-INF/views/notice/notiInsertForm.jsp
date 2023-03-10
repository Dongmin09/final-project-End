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
	<!-- insert,update,delete ??? ??? ?????? form?????? ????????? -->
	<!-- action??? ?????? url??? submit??? ??????  -->
	<form name="notiInsert" id="notiInsertForm" action="/noti/insertNoti" method="post" enctype="multipart/form-data"> <!--   -->
		<!-- ????????? ?????????????????? ?????? ???????????? hidden????????? ?????? ????????????????????? ID??? ???????????????, ?????? controller ?????????????????? ?????????  ????????????-->
		<input type="hidden" name="empCd" value="${empCd }"/>
		<input type="hidden" name="notiNo" value="${notiVO.notiNo != null ? notiVO.notiNo : 0 }" /> <!-- ????????? ??? ???????????? pk -->
		
		<div class="form-group">
			<label class="">??????</label> 
			<!-- name?????? ?????? ???????????? ????????????vo??? ?????? ????????? (CommuVO commuVO) ???????????? ?????? vo??? ?????? ???????????? -->
			<input type="text" class="form-control" name="tit" value="${notiVO.tit }"
				placeholder="????????? ???????????????" onfocus="this.placeholder=''"
				onblur="this.placeholder='????????? ???????????????'" required>
		</div>
		<label>??????</label>
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
					placeholder : '????????? ???????????????'
				});
			});
		</script>
		
		
		<!-- ========== ????????????  ============ -->
		<!-- ============================= -->
		<br>
		<label class="">?????? ??????</label>
		
		
		<div class="row row-sm" id="divFileInput">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="input-group file-browser">
					<input type="text" class="form-control border-end-0 browse-file" placeholder="????????? ???????????????" readonly id="userFile" >
					<label class="input-group-btn">
						<span class="btn btn-primary">
							???????????? <input type="file" style="display: none;" id="fileInput" name="boFile" >
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
				class="btn ripple btn-light">??????</a>
			</div>
			<div style="float:right;margin:0 2px 0 0;" >
				<button type="submit" 
				class="btn ripple btn-primary">??????</button>
			</div>
		</div>
		<sec:csrfInput/>
	</form> 
</div>

<script type="text/javascript">
	// ???????????? ?????????
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	let atchFileCd = "${attchVO.atchFileCd}";
	
	$(function () {
		let flg = "${flg }";
		
		// ??????????????? action ??? ????????????
		if(flg == "update"){
			$("#notiInsertForm").attr("action", "/noti/updateNoti");
		}
		
		if(atchFileCd != "" && atchFileCd != null){
			$("#divFileInput").css("display","none");
		}
		
	})
	
	// ?????? ?????? ????????? ??? ????????? input??? ????????????
	$("#fileInput").on("change" , function() {
		let fileName= $(this).val().split('/').pop().split('\\').pop(); // ?????? ?????? ??????
		// ????????? ????????? ??????
		$("#userFile").val(fileName);
	})
	
	// ?????? ?????? 
	function fn_deleteFile(atchFileCd){
		swal({
		  title: "????????? ?????????????????????????",
		  text: "??????????????? ????????? ???????????????.",
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
					// ui ?????????
					$("#fileListBtn").hide();
					// ?????? input display
					$("#divFileInput").css("display","block");
					
				}
			});
			setTimeout(function () {
				swal("?????? ????????? ?????? ???????????????!");
			 }, 2000);
		});
		
		
		
	}


</script> 


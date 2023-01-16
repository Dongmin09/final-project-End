<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script src="/resources/assets/plugins/jquery/jquery-ui.js"></script>
<script src="/resources/js/jquery.iframe-transport.js"></script>
<script src="/resources/js/jquery.fancy-fileupload.js"></script>

<!-- 제이쿼리 validate -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<div class="card custom-card p-3 bg-gray-100">
	<nav class="nav main-nav flex-column flex-md-row">
		<a class="nav-link active" href="/mail/mailSend">메일 쓰기</a>
		<a class="nav-link" href="/mail/selectMailList"><i class="fe fe-mail"></i> 받은 메일함</a>
		<a class="nav-link" href="/mail/sendList"><i class="fe fe-send"></i> 보낸 메일함</a>
		<a class="nav-link" href="/mail/delList"><i class="fe fe-trash"></i> 휴지통</a>
	</nav>
</div>
<form name="insertMailForm" action="/mail/insertMail" id="insertMailForm" method="post" enctype="multipart/form-data">
<div class="card custom-card bd">
	<div class="card-header">
		<h3 class="card-title tx-18">
			<label class="main-content-label tx-27">메일 쓰기</label>
		</h3>
	</div>
	<div class="card-body">
			<div class="form-group">
				<div class="row align-items-center">
					<label class="col-sm-3 col-xl-2 form-label tx-semibold">보내는 사람</label>
					<div class="col-sm-9 col-xl-10">
						<input type="text" class="form-control" value="<sec:authentication property="principal.employeeVO.empNm"/>" readonly="readonly">
						<!-- 받는사람 emlCd -->
						<input type="hidden" value="<sec:authentication property="principal.employeeVO.empCd"/>" name="empCd">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row align-items-center">
					<label class="col-sm-3 col-xl-2 form-label tx-semibold">받는 사람</label>
					<div class="col-sm-9 col-xl-10">
						<!-- 받는사람 multi select -->
						<select class="form-control select2" multiple="multiple" id="emlSendList" name="emlCallCd" >
						</select>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row align-items-center">
					<label class="col-sm-3 col-xl-2 form-label tx-semibold">참조</label>
					<div class="col-sm-9 col-xl-10">
						<select class="form-control select2" multiple="multiple" id="emlRefList" name="emlRefCd">
						</select>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<div class="row align-items-center">
					<label class="col-sm-3 col-xl-2 form-label tx-semibold">중요 여부</label>
					<div class="col-sm-9 col-xl-10">
						<div class="d-md-flex ad-post-details">
							<label class="custom-control custom-radio mb-2 me-4">
								<input type="radio" class="custom-control-input" name="emlImpYn" value="N" checked="">
								<span class="custom-control-label">일반</span>
							</label>
							<label class="custom-control custom-radio  mb-2 me-4">
								<input type="radio" class="custom-control-input" name="emlImpYn" value="Y" >
								<span class="custom-control-label">중요</span>
							</label>
						
						</div>
					</div>
				</div>		
			</div>
			<div class="form-group">
				<div class="row align-items-center">
					<label class="col-sm-3 col-xl-2 form-label tx-semibold">제목</label>
					<div class="col-sm-9 col-xl-10">
						<input type="text" class="form-control" placeholder="제목을 입력하세요" name="emlTit" value="${mailVO.emlTit }">
					</div>
				</div>		
			</div>
			<c:if test="${flg ne 'reply' }">
			<div class="form-group">
				<div class="row align-items-center">
					<label class="col-sm-3 col-xl-2 form-label tx-semibold">파일 첨부</label>
					<label class="col-sm-3 col-xl-2 form-label tx-semibold"><button type="button" class="btn ripple btn-success btn-icon" onclick="fn_plusFile();"><i class="fe fe-plus" ></i></button></label>
					
					<div id='divFileInput'>
						<div class="row row-sm" >
							<label class="col-sm-3 col-xl-2 form-label tx-semibold"></label>
							<div class="col-sm-6 col-md-6">
								<div class="input-group file-browser">
									<input type="text" class="form-control border-end-0 browse-file"
										placeholder="파일을 선택하세요" readonly id="userFile"> 
									<label class="input-group-btn"> 
										<span class="btn btn-primary" id="fileBtnSpan">파일찾기 
											<input type="file" style="display: none;" class="fileInput" name="mailFile" onchange='fn_mailFileChange(this)'>
										</span>
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<c:if test="${flg eq 'reply' }">
			<div class="form-group">
				<div class="row align-items-center">
					<label class="col-sm-3 col-xl-2 form-label tx-semibold">파일 첨부</label>
					<div class="col-sm-9 col-xl-10" >
						<c:if test="${!empty atchList }">
							<c:forEach var="file" items="${atchList }" varStatus="stat">
								<div class="d-inline-flex">
									<button class="${file.fileClass }" onclick="fn_downloadFile(${file.atchFileCd},${file.atchFileNo });">
										<span class="me-2">
											<i class="mdi mdi-file-image tx-24"></i>
										</span> ${file.atchFileOrgNm } 
									</button>
								</div>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
			</c:if>
			<div class="form-group">
				<div class="row">
					<label class="col-sm-3 col-xl-2 form-label tx-semibold"></label>
					<div>
						<textarea id="summernote" name="emlCon" required>
						<c:if test="${flg eq 'reply' }">
							<p>---------Original Message---------<br><br>
								<b>From:&nbsp;</b>
								<span>${mailVO.recTot }</span><br>
								<b>To:</b>&nbsp;
								<c:forEach var="receive" items="${reList }" varStatus="stat">
									<c:if test="${receive.emlRefYn eq 'N' }">
										${receive.recTot } &nbsp;&nbsp;
									</c:if>
								</c:forEach>
								<br>
								<b>Cc:</b>&nbsp;
								<span>
								<c:forEach var="receive" items="${reList }" varStatus="stat">
									<c:if test="${receive.emlRefYn eq 'Y' }">
										${receive.recTot } &nbsp;&nbsp;
									</c:if>
								</c:forEach>
								</span><br>
								<b>Sent:</b>&nbsp;${fn:substring(mailVO.emlDendDt,0,16)} <br>
								<b>Subject:</b>&nbsp;${mailVO.emlTit }<br>
								<br>
							</p>
						</c:if>
							${mailVO.emlCon }
						<c:if test="${flg eq 'reply' }">
							<br><br>
						<p>-----------------------------------</p>
						<br>
						</c:if>	
					    </textarea>
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
				</div>
			</div>

			<div>
				<br>
			</div>
			<div>
<!-- 				<p>-----Original Message-----<br> -->
<!-- 					<b>From:&nbsp;</b> -->
<!-- 					<span>윤동기</span><br> -->
<!-- 					<b>To:</b>&nbsp;윤동기;<br> -->
<!-- 					<b>Cc:&nbsp;</b> -->
<!-- 					<span>윤동기;</span><br> -->
<!-- 					<b>Sent:</b>&nbsp;2022-12-19 (월) <br> -->
<!-- 					<b>Subject:</b>&nbsp;윤동기 입니다.. 💌<br> -->
<!-- 					<br> -->
<!-- 				</p> -->
			</div>
		</div>
	<div class="card-footer d-sm-flex rounded-0">
		<div class="btn-list ms-auto">
			<button type="submit" class="btn btn-primary">보내기</button>
			<button type="button" class="btn btn-light">취소</button>
		</div>
	</div>
</div>
<sec:csrfInput/>
</form>

<script type="text/javascript" src="/resources/js/jquery.fileupload.js"></script>
<script type="text/javascript" src="/resources/js/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="/resources/js/jquery.fancy-fileupload.js"></script>


<script type="text/javascript">
	// 시큐리티 토큰용
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	let flg = "${flg }";
	
	$(function() {    
// 		fn_setAutoComplete();
		// 이메일 수신자 
	    fn_setEmpSendList();
		// 이메일 참조자 둘이 합칠수 있는데 귀찮아서 그냥 분기함 ..
	    fn_setEmpSendRefList();
	    
	    if(flg == "reply"){
	    	let emlTit =  "Re: "+ "${mailVO.emlTit }";
	    	$("input[name='emlTit']").val(emlTit);
	    	$("input[name='mailFile']").prop('disabled',true);
	    	$("#fileBtnSpan").attr("class", "btn btn-dark");
	    }
	});

	// 이메일 수신자 
	function fn_setEmpSendList(){
		$.ajax({
			url : "/mail/empList",
			beforeSend : function(xhr){
				xhr.setRequestHeader(header, token);
			},
			data : {
				"emlCd" : "${mailVO.emlCd }"
			},
			success : function(ret){
				let optionHtml = "";
				$.each(ret, function (index, item) {
					optionHtml += "<option value='"+item.empCd+"'";
					if(flg == "reply"){
						item.empSelected == 'Y' ? optionHtml+=" selected " : optionHtml
						optionHtml += ">"+item.total+"</option>";
					}else {
						optionHtml +=">"+item.total+"</option>";
					}
				})
				// 받는사람 
				$("#emlSendList").html(optionHtml);
				
				if(flg == "reply"){
					$("#emlSendList").prop('disabled',true);
				}
			},
			error : function(xhr) {
				console.log(xhr);
			}
		});
	}
		
	// 이메일 참조자
	function fn_setEmpSendRefList(){
		$.ajax({
			url : "/mail/refList",
			beforeSend : function(xhr){
				xhr.setRequestHeader(header, token);
			},
			data : {
				"emlCd" : "${mailVO.emlCd }"
			},
			success : function(ret){
				let optionHtml = "";
				$.each(ret, function (index, item) {
					optionHtml += "<option value='"+item.empCd+"'";
					if(flg == "reply"){
						item.empSelected == 'Y' ? optionHtml+=" selected " : optionHtml
						optionHtml += ">"+item.total+"</option>";
					}else {
						optionHtml +=">"+item.total+"</option>";
					}
				})
				// 참조
				$("#emlRefList").html(optionHtml);
				
				if(flg == "reply"){
					$("#emlRefList").prop('disabled',true);
				}
			},
			error : function(xhr) {
				console.log(xhr);
			}
		});
		
	}

	function fn_mailFileChange(thisObj){
		
		let fileName= $(thisObj).val().split('/').pop().split('\\').pop(); // 파일 명만 추출
		// 추출한 파일명  list 만들기
		$(thisObj).parent().parent().siblings().val(fileName);
		
		// 뱃지 이쁜거
// 		let fileType = fileName.split('.')[1].toLowerCase();
// 		let color = "bg-primary";
// 		let icon = "mdi mdi-file-image";
		
//  		if($.inArray(fileType, ['doc','docx','hwp']) >= 0){
//  			color = "bg-info";
//  			icon = "mdi mdi-file-word";
//  		}
//  		else if($.inArray(fileType, ['xls','xlsx']) >= 0){
//  			color = "bg-success";
//  			icon = "mdi mdi-file-excel";
//  		}
//  		else if($.inArray(fileType, ['pdf']) >= 0){
//  			color = "bg-danger";
//  			icon = "mdi mdi-file-pdf";
//  		}
//  		else if($.inArray(fileType, ['zip']) >= 0){
//  			color = "bg-warning";
//  			icon = "mdi mdi-zip-box";
//  		}
		
		
// 		let fileBtn = "<button type='button' class='tag tag-attachments-sm rounded-3 "+color+" mt-0' onclick='fn_deleteFile(this);' id='fileListBtn'>";
// 		fileBtn += "		<span class='me-2'>";
// 		fileBtn += "			<i class='"+icon+" tx-24'></i>"+fileName;
// 		fileBtn += "		</span><i class='fe fe-x mt-2 ms-4'></i>";
// 		fileBtn += "</button>";
											
// 		$(".fileBadge").append(fileBtn);
		
		
	}
	
	
	// 버튼누르면 첨부파일 에서 삭제
	function fn_deleteFile(thisObj){
		thisObj.remove();		
	}
	
	
	// 버튼누르면 첨부파일 추가
	function fn_plusFile(){
		let fileHtml = '<div class="row row-sm" >';
		fileHtml += '		<label class="col-sm-3 col-xl-2 form-label tx-semibold"></label>';
		fileHtml += '		<div class="col-sm-6 col-md-6">';
		fileHtml += '			<div class="input-group file-browser">';
		fileHtml += '			<input type="text" class="form-control border-end-0 browse-file" placeholder="파일을 선택하세요" readonly id="userFile">';
		fileHtml += '			<label class="input-group-btn"> ';
		fileHtml += '				<span class="btn btn-primary">파일찾기  ';
		fileHtml += '					<input type="file" style="display: none;" class="fileInput" name="mailFile" onchange="fn_mailFileChange(this)"> ';
		fileHtml += '				</span>';
		fileHtml += '			</label>';
		fileHtml += '			</div>';
		fileHtml += '		</div>';
		fileHtml += '	</div>';
		
		$("#divFileInput").append(fileHtml);			
	}
	
	
	// submithandler
	$("form[name='insertMailForm']").validate({
		submitHandler: function(form) {
			
			// disabled 된거 풀기
			$("#emlSendList").removeAttr('disabled');
			$("#emlRefList").removeAttr('disabled');
			
			let emlImpYn = $("#emlImpYn:checked").val();
			form.append("emlImpYn",emlImpYn);
			
			$(form).submit();
		}
	});
	
	
	
// autocomplete 
// 	function fn_setAutoComplete(){
		
// 		$("#searchParam").autocomplete({
// 		    source: function (request, response) {
// 				$.ajax({
// 					url : "/mail/autoComplete",
// 					data : { "searchParam" : request.term },
// 					async : false,
// 					type :"post",
// 					beforeSend : function(xhr){
// 						xhr.setRequestHeader(header, token);
// 					},
// 					success : function(data){
// 						console.log("data",data);
		            	
// 		                response(
// 		                    $.map(data, function (item) {
// 		                        return {
// 		                            label: item.empNm,
// 		                            value: item.empNm,
// // 		                            idx: item.IDX,
// 		                        }
// 		                    })
// 		                )
// 					},
// 					error : function(xhr) {
// 						console.log(xhr);

// 					}
// 				});
		    	
// 		    },
// 		    focus: function (event, ui) {
// 		        return false;					//한글 에러 잡기용도로 사용됨
// 		    },
// 		    select: function (event, ui) {
// 		    	// 뱃지 생성이 될려나
// 		    	let input = document.querySelector('#searchParam');
// 		    	new Tagify(input)
// 		    	return false;
// 		    },
// 		    minLength: 1,					// 최소 글자수
// 		    autoFocus: true, 				//첫번째 항목 자동 포커스 기본값 false
// 		    delay: 100,
//             close : function(event){   			 //자동완성창 닫아질때 호출
//                 console.log(event);
//             }
		    
// 		}).autocomplete( "instance" )._renderItem = function( ul, item ) {    //요 부분이 UI를 마음대로 변경하는 부분
// 			return $( "<div class='list-group'>" ).data( "item.autocomplete", item )
// 			.append( '<a class="list-group-item list-group-item-action" href="#">' +  item.label + '</a>' )
// 			.appendTo( ul );
	    
// 		};
// 	}

// mail send
		

</script>

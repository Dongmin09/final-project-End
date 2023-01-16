<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<!-- Internal Jquery.maskedinput js-->
<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script>

<!-- Internal Ion-rangeslider js-->
<script src="/resources/assets/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>

<!-- Internal Form-elements js-->
<script src="/resources/assets/js/form-elements.js"></script>

<style type="text/css">

.repAll {
	display : none ;
}

</style>


<div class="card-body">
	<input type="hidden" value="${commuVO.comNo }" name="comNo" />
	<input type="hidden" value="${commuVO.empCd }" id="writer" />
	<input type="hidden" value="<sec:authentication property="principal.employeeVO.empCd" />" id="repWriter" />
	<input type="hidden" value="${commuVO.tit }" id="htitle" />
	<div class="col-xl-12 col-lg-12 col-md-12">
		<div class="mt-4 mb-4">
			<h2 class="mt-1 mb-3">${commuVO.tit }</h2>
			<h5 class="text-success text-uppercase">
				<a href="#" class="text-success fs-18 me-2"> <i
					class="fe fe-user"></i>
				</a> 익명
			</h5>
			<div class="item-card-desc d-md-flex mb-3">
				<a href="#" class="d-flex"> </a><a href="#"
					class="text-primary fs-18 me-2"><i class="fe fe-calendar"></i></a>
				<span class="my-auto text-dark">등록일
					${commuVO.regDt }</span> <a href="#"
					class="d-flex me-4"> </a><a href="#"
					class="text-primary fs-18 me-2"><i class="fe fe-eye"></i></a> <span
					class="my-auto text-dark">조회수 ${commuVO.viewCnt } 회</span> <a
					href="#" class="d-flex me-4"> </a><a href="#"
					class="text-primary fs-18 me-2"><i class="fe fe-thumbs-up"></i></a>
				<span class="my-auto text-dark">좋아요 <span id="hitCnt"
					class="hitCnt"></span> 회
				</span>
				<!-- 				<a href="#" class="d-flex me-4"> -->
				<!-- 					</a><a href="#" class="text-primary fs-18 me-2"><i class="fe fe-thumbs-down"></i></a> -->
				<!-- 					<span class="my-auto text-dark">싫어요 <span id="dehitCnt" class="dehitCnt"></span> 회</span>	 -->
				<a href="#" class="d-flex ms-auto"> </a><a href="#"
					class="text-primary fs-18 me-2"><i
					class="mdi mdi-message-outline"></i></a> <span
					class="my-auto text-dark">댓글 <span class="repCnt"></span> 개
				</span>
			</div>
			<h6 class="mt-4 fs-16"></h6>
			<p>${commuVO.con }</p>
			<!-- ============ 추천수 =========== -->
			<!-- ============================== -->
			<div class="d-flex flex-row justify-content-center mg-b-20">
				<div class="pd-10">
					<button type="button"
						class="btn bg-info btn-circle btn-xl hit-swal-timer"
						onclick="fn_setHitCnt('hit',${commuVO.comNo });">
						<span class="fe fe-thumbs-up tx-30"></span><br>
						<span id="hitCnt" class="hitCnt"></span>
					</button>
				</div>
				<div class="pd-10">
					<button type="button"
						class="btn bg-black-1 btn-circle btn-xl hit-swal-timer"
						onclick="fn_setHitCnt('dehit',${commuVO.comNo });">
						<span class="fe fe-thumbs-down tx-30"></span><br>
						<span id="deHitCnt" class="dehitCnt"></span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<sec:authorize access="isAuthenticated()"/>
	<sec:authentication property="principal.employeeVO.empCd" var="userEmpCd"/>
<%-- 	<sec:authentication property="principal.authority" var="authority" /> --%>
	
	<div class="d-flex flex-row justify-content-end mg-b-20">
	<c:if test="${commuVO.empCd eq userEmpCd }">
		<div style="float: right; margin: 0 0 0 5px;">
			<button type="button" id="updateBtn" class="btn ripple btn-primary"
				onclick="fn_updateBtn();">수정</button>
		</div>
		<div style="float: right; margin: 0 0 0 5px;">
			<button type="button" id="deleteBtn" class="btn ripple btn-danger"
				onclick="fn_callDelBtn();">삭제</button>
		</div>
	</c:if>
		<div style="float: right; margin: 0 0 0 5px;">
			<button type="button" id="goListBtn" class="btn ripple btn-light">
				목록</button>
		</div>
	</div>
	
	<div class="mt-4">
	</div>
	<!-- ============ 댓글 =========== -->
	<!-- ============================== -->
	<div class="mt-4">
		<div class="">
			<div class="row">
				<div class="col-xl-12 mt-4">
					<!-- ============ 댓글쓰기 =========== -->
					<!-- ============================== -->
					<div class="border shadow-sm list-card">
						<div class="p-4">
							<h5 class="mt-0 mb-1 font-weight-semibold tx-16 float-start me-3"><sec:authentication property="principal.employeeVO.empNm" /></h5>
							<span class="text-muted tx-13">익명</span> <br>
							<textarea class="form-control" name="example-textarea-input"
								rows="4" placeholder="익명으로 댓글이 작성됩니다." id="commuConTxt"></textarea>
							<button class="btn ripple btn-main-primary btn-block"
								type="button" onclick="fn_setCommuComment(this);" data-parno="N">댓글 입력</button>
						</div>
					</div>
					<hr style="height: 0px;">
					<!-- ============ 댓글목록 =========== -->
					<!-- ============================== -->
					<div class="card">
						<div class="card-body p-0">
							<div class="d-flex p-3 bg-light-transparent">
								<h5 class="float-start main-content-label mb-0 mt-2">댓글  <span class="repCnt"></span>개</h5>
								<!-- <a href="#" class="btn btn-outline-primary btn-sm float-end ms-auto">Top Rated</a> -->
							</div>
							<div id="repListBody">
						</div>
						<div class="border-top px-4 pb-2 pt-4"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<!-- 삭제 form -->
<form action="/commu/deleteCommu" name="commuDeleteForm">
	<input type="hidden" name="comNo" value="${commuVO.comNo }" />
</form>

<script type="text/javascript">
	// 시큐리티 토큰용
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	// 로그인 userEmpcd
	let userEmpCd = "${userEmpCd }";
	
	// 게시글 번호
	let comNo = $("input[name='comNo']").val();
	let chk = "N";
	
	$(function() {
		// 추천 list
		fn_getHitCnt(comNo);
		// 댓글 list
		fn_getComCmmtList(comNo);
	});
	
	// 추천 list
	function fn_getHitCnt(comNo){
		$.ajax({
			url:"/commu/selectHit",
			data: {
				"comNo" : comNo
			},
			async: false,
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(data){
				if(!data){
					$(".hitCnt").text("0");
					$(".dehitCnt").text("0");
				}else {
					$(".hitCnt").text(data.hitCnt);
					$(".dehitCnt").text(data.deHitCnt);
				}
			},
			error: function(xhr) {
				console.log(xhr);
			}
		});
		
	}
	
	// 추천수 클릭
	function fn_setHitCnt(flg, comNo){
		// 이미 추천한 게시글인지 확인 필요할까?
		if(chk!="Y"){
			// 
			$.ajax({
				url:"/commu/updateHit",
				data: {
					"flg" : flg,
					"comNo" : comNo
				},
				async: false,
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(data){
					// 다시 조회
					fn_getHitCnt(comNo);
					// 추천 or 비추천 중복방지 
					fn_callSwal("추천을 완료하였습니다.")
					chk = "Y";		
				},
				error: function(xhr) {
					console.log(xhr);
				}
			});
			
		}else {
			fn_callSwal("이미 추천을 완료하였습니다.");
			return false;
		}		
		
	}
	
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
				$("form[name='commuDeleteForm']").submit();
			} 
			else {
				swal("삭제 취소", "삭제를 취소하였습니다.", "error");
			}
		});
	}
	
	
	// 수정
	$("#updateBtn").on("click", function() {
		location.href = "/commu/updateForm/"+comNo;
	})
	
	// 목록으로 
	$("#goListBtn").on("click", function() {
		location.href = "/commu/selectCommuList";
	})
	
	// 댓글 list 조회
	function fn_getComCmmtList(comNo){
		
		$.ajax({
			url:"/commu/selectCommuRep",
			data: {
				"comNo" : comNo
			},
			async: false,
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(data){
				if(data.length > 0 ){
					$(".repCnt").text(data.length);
					fn_setCommuRepList(data)
				}else {
					// 등록된 댓글이 없습니다
					$(".repCnt").text("0");
					$(repListBody).html(fn_setNoRepHtml());
				}
			}
		});
	}
	
	// 댓글 list
	function fn_setCommuRepList(data){
		
		let repHtml = "";
		
		for(const i in data){
			repHtml += "<div class='media mt-0 p-4 border-bottom border-top ";
			//  bg-gray-100 은 내댓글일때 
			data[i].empCd == userEmpCd ? repHtml += "bg-gray-100" : repHtml
// 			parseInt(data[i].lvl) >= 2 ? repHtml += "bg-gray-100" : repHtml 
			repHtml += "'>";
// 			parseInt(data[i].lvl) >= 2 ? repHtml += "	<i class='fe fe-corner-down-right'></i>" : repHtml 
					
			repHtml += "	<div class='d-flex me-3'></div>";
			repHtml += "	<div class='media-body'>";
			repHtml += "		<h4 class='mt-0 mb-1 font-weight-semibold tx-16 float-start me-3'>";
			repHtml += "		익명";
			repHtml += "			<span class='fs-14 ms-0' data-bs-toggle='tooltip' data-bs-placement='top' title='' data-bs-original-title='verified'>";
			repHtml += "				<i class='fa fa-check-circle-o text-success'></i>";
			repHtml += "			</span>";
			// empcd랑 data.empcd랑 같을때
			data[i].empCd == userEmpCd ? repHtml += "			<span class='badge bg-pill bg-info'>내댓글</span>" : repHtml
			
			repHtml += "		</h4>";
			// 부서 보여져야 될때만
			repHtml += "		<span class='text-muted tx-13'>익명 댓글 입니다.</span>";
			repHtml += "		<span class='text-muted float-end me-3'>"+data[i].regDt+"</span>";
			repHtml += "		<p class='font-13  mb-2 mt-2'>";
			repHtml += "			<label id='txtCon"+data[i].cmmtNo+"'>"+data[i].con+"</label>";
			// 수정할때 
			repHtml += "			<textarea name='con' id='inputCon"+data[i].cmmtNo+"' rows='4' class='form-control repAll inputRep"+data[i].cmmtNo+"'>"+data[i].con+"</textarea>";
			repHtml += "			<div class='d-flex flex-row-reverse mg-b-20 inputRep"+data[i].cmmtNo+"''>";
			repHtml += "				<button class='btn ripple btn-dark btn-sm repAll  inputRep"+data[i].cmmtNo+"'' style='margin: 0 0 0 5px;' onclick='fn_resetUpdateComRep("+data[i].cmmtNo+",this)' data-con='"+data[i].con+"'>취소</button>";
			repHtml += "				<button class='btn ripple btn-primary btn-sm repAll inputRep"+data[i].cmmtNo+"'' style='margin: 0 0 0 5px;' onclick='fn_updateComRep("+data[i].cmmtNo+")' >수정</button>";
			repHtml += "			</div>"; 
			repHtml += "		</p>";
			
			if(data[i].empCd == userEmpCd){
				
				repHtml += "		<div class='d-flex flex-row-reverse btnRepAll'>";
				repHtml += "			<button type='button' class='btn ripple btn-danger btn-sm btnRep"+data[i].cmmtNo+"' onclick='fn_deleteComRep("+data[i].cmmtNo+")' style='margin: 0 0 0 5px;'>삭제</button>";
				repHtml += "			<button type='button' class='btn ripple btn-primary btn-sm btnRep"+data[i].cmmtNo+"' onclick='fn_updateFormComRep("+data[i].cmmtNo+")' style='margin: 0 0 0 5px;'>수정</button>";
				repHtml += "		</div>";
				
			}
			// 자기 댓글일때
			repHtml += "	</div>";
			repHtml += "</div>";
			
		}
		// 댓글 list
		$("#repListBody").html(repHtml);
		
	}
	
	// 댓글 입력
	function fn_setCommuComment(thisObj) {
		let writer = $('#writer').val();
		let repWriter = $('#repWriter').val();
		let comNo = $("input[name='comNo']").val();
		let title = $('#htitle').val();
		// 답글은 con이 달라야됨 일단 댓글기준임 
		let jsonData = { 
			"comNo" : comNo , 
			"empCd" : "<c:out value='${userEmpCd }' />"  
		}
		// 상위 댓글 번호가 없을떄 
		if(thisObj.dataset["parno"] == "N"){
			jsonData["con"] = $("#commuConTxt").val();
		}else {
			jsonData["con"] = $("").val();
			jsonData["parno"] = thisObj.dataset["parno"];
		}
		
		$.ajax({
			url:"/commu/insertCommuRep",
			data: jsonData,
			async: false,
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(data){
				// text reset
				$("#commuConTxt").val("");
				//소켓
           		if(socket) {
        			let socketMsg = "reply,"+writer+","+repWriter+","+comNo+","+title;
        			console.log(socketMsg);
        			socket.send(socketMsg);
           		}
				// 댓글 list 다시 불러오기
				fn_getComCmmtList(comNo);
				
			}
		});
		
		
	}
	
	// 댓글 수정 display none
	function fn_updateFormComRep(cmmtNo){
		// 기존 텍스트 + 수정 ,삭제 버튼  hide
		$("#txtCon"+cmmtNo).css('display','none');
		$(".btnRep"+cmmtNo).css('display','none');
		
		// textarea 풀기
		$(".inputRep"+cmmtNo).css('display','block');
		
	}
	
	// 댓글 수정 취소 display block & 기존값으로 다시 넣어두기
	function fn_resetUpdateComRep(cmmtNo, thisObj){
		// 기존 값으로 되돌리기
		$("#inputCon"+cmmtNo).val(thisObj.dataset.con);
		// 기존 텍스트 + 수정 ,삭제 버튼  hide
		$("#txtCon"+cmmtNo).css('display','block');
		$(".btnRep"+cmmtNo).css('display','block');
		
		// textarea 풀기
		$(".inputRep"+cmmtNo).css('display','none');
		
	}
	
	// 진짜 update 수정
	function fn_updateComRep(cmmtNo){
		
		let updateCon = $("#inputCon"+cmmtNo).val();
		
		$.ajax({
			url:"/commu/updateCommuRep",
			data: {
				"cmmtNo" : cmmtNo,
				"con"	 : updateCon
			},
			async: false,
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(data){
				// 댓글 list 다시 불러오기
				fn_getComCmmtList(comNo);
			}
		});
	}

	// 댓글 삭제
	function fn_deleteComRep(cmmtNo){
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
		  if (isConfirm) {
				$.ajax({
					url:"/commu/deleteCommuRep",
					data: {
						"cmmtNo" : cmmtNo
					},
					async: false,
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success:function(data){
						// 댓글 list 다시 불러오기
						fn_getComCmmtList(comNo);
					}
				});  
			swal("삭제되었습니다!", "해당 댓글은 삭제처리 되었습니다.", "success");
		  } else {
			swal("취소되었습니다!", "댓글 삭제가 취소되었습니다.", "error");
		  }
		});
	}
	
	
	// 등록된 댓글이 없습니다
	function fn_setNoRepHtml(){
		let noHtml = "";
		
		noHtml += "<div class='media mt-0 p-4 border-bottom border-top bg-warning-transparent mg-b-20'>";
		noHtml += "		<div class='d-flex me-3'></div>";
		noHtml += "		<div class='media-body d-flex flex-row justify-content-center'>";
		noHtml += "			<p class='font-13  mb-2 mt-2'><i class='fe fe-send'></i>&nbsp;등록된 댓글이 존재하지 않습니다</p>";
		noHtml += "		</div>";
		noHtml += "</div>";
		
		return 	noHtml;	
	}
</script>
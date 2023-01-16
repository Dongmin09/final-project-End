<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<!-- Internal Jquery.maskedinput js-->
<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script>

<!-- Internal Ion-rangeslider js-->
<script src="/resources/assets/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>

<!-- Internal Form-elements js-->
<script src="/resources/assets/js/form-elements.js"></script>


<!-- Page Header -->
<div class="main-content">

	<div class="main-container container-fluid">
		<div class="inner-body">

			<!-- Row -->
			<div class="row row-sm">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="card custom-card">
						<div class="card-body">
						<input type="hidden" value="${mailVO.emlCd }" name="emlCd" />
							<div class="email-media">
								<div class="mb-4 d-lg-flex">
									<h2>${mailVO.emlTit }</h2>
									<div class="ms-auto d-none d-md-flex fs-18">
										<a href="#" class="me-3 tx-inverse"><i class="fe fe-printer" data-bs-toggle="tooltip" title="" data-bs-original-title="Print"></i></a>
										<a href="#" class="tx-inverse"><i class="fe fe-tag" data-bs-toggle="tooltip" title="" data-bs-original-title="Undo"></i></a>
									</div>
								</div>
								<div class="media mt-0">
									<div class="media-body tx-inverse">
										<div class="float-end d-none d-md-flex fs-15">
											<small class="me-2">${mail.emlDendDtToString}</small>
											<small class="me-2"><i class="fe fe-star" data-bs-toggle="tooltip" title="" data-bs-original-title="Rated"></i></small>
											<small class="me-2"><i class="fa fa-reply" data-bs-toggle="tooltip" title="" data-bs-original-title="Reply"></i></small>
											<div class="me-2">
												<a href="#" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
												<i class="fe fe-more-horizontal text-dark" data-bs-toggle="tooltip" title="" data-bs-original-title="View more"></i></a>
												<div class="dropdown-menu dropdown-menu-end shadow">
													<a class="dropdown-item" href="#">답장</a>
													<a class="dropdown-item" href="#">삭제</a>
													<a class="dropdown-item" href="#">출력</a>
												</div>
											</div>
										</div>
										<div class="d-md-flex mb-3">
											<div class="">
												<a href="#" class="d-flex"> </a><a href="#"
												class="text-success fs-18 me-2"> <i
														class="fe fe-send"></i></a>
												<span class="my-auto text-dark">보낸 사람&nbsp;&nbsp;&nbsp;&nbsp;
													${mailVO.recTot } &nbsp;&nbsp;&nbsp;&nbsp;
												</span>
											</div>
											<div class="mg-l-auto">
												<a href="#" class="d-flex"> </a><a href="#"
												class="text-success fs-18 me-2"> <i
														class="fe fe-clock"></i></a>
												<span class="my-auto text-dark">발송 시간&nbsp;&nbsp;&nbsp;&nbsp;
														${fn:substring(mailVO.emlDendDt,0,16)} &nbsp;&nbsp;&nbsp;&nbsp;
												</span> 
											</div>
										</div>
											
										<div class="d-md-flex mb-3">
											<div class="">
												<a href="#" class="d-flex"> </a><a href="#"
												class="text-success fs-18 me-2"> <i
														class="fe fe-at-sign"></i></a>
												<span class="my-auto text-dark">참조&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<c:forEach var="receive" items="${reList }" varStatus="stat">
														<c:if test="${receive.emlRefYn eq 'Y' }">
															${receive.recTot } &nbsp;&nbsp;&nbsp;&nbsp;
														</c:if>
													</c:forEach>
												</span>
											</div>
										</div>
										<div class="d-md-flex mb-3">
											<div class="">
												<a href="#" class="d-flex"> </a><a href="#"
												class="text-success fs-18 me-2"> <i
														class="fe fe-mail"></i></a>
												<span class="my-auto text-dark">받는 사람&nbsp;&nbsp;&nbsp;&nbsp;
													<c:forEach var="receive" items="${reList }" varStatus="stat">
														<c:if test="${receive.emlRefYn eq 'N' }">
															${receive.recTot } &nbsp;&nbsp;&nbsp;&nbsp;
														</c:if>
													</c:forEach>
												</span>
											</div>
										</div>
										
										<div class="media-title font-weight-semiblod"><span class="tx-18 font-weight-bold"></span>
											<small class="me-2 d-md-none"><i class="fe fe-star" data-bs-toggle="tooltip" title="" data-bs-original-title="Rated"></i></small>
											<small class="me-2 d-md-none"><i class="fa fa-reply" data-bs-toggle="tooltip" title="" data-bs-original-title="Reply"></i></small>
										</div>
									</div>
								</div>
							</div>
							<hr>
							<div class="eamil-body">
								<br>
								<p>${mailVO.emlCon }</p>
								<br><br><br>
								<hr>
								<div class="email-attch">
									<div class="float-end">
										<a href="#"><i class="fa fa-download text-dark" data-bs-toggle="tooltip" title="" data-bs-original-title="Download"></i></a>
									</div>
									<div class="d-md-flex mb-3">
										<div class="">
											<a href="#" class="d-flex"> </a><a href="#"
											class="text-success fs-18 me-2"> <i
													class="fe fe-upload-cloud"></i></a>
											<span class="my-auto text-dark">첨부파일&nbsp;&nbsp;&nbsp;&nbsp;
												${fn:length(atchList) }&nbsp;&nbsp;건 
											</span>
										</div>
									</div>
									<div class="emai-img">
										<div class="row row-sm">
											<c:forEach var="file" items="${atchList }" varStatus="stat">
												<div class="d-inline-flex">
													<button class="${file.fileClass }" onclick="fn_downloadFile(${file.atchFileCd},${file.atchFileNo });">
														<span class="me-2">
															<i class="mdi mdi-file-image tx-24"></i>
														</span> ${file.atchFileOrgNm } 
													</button>
												</div>
											</c:forEach>
<!-- 											<div class="col-sm-3"> -->
<!-- 												<a href="#"><img class="w-100" src="../assets/img/media/19.jpg" alt="Generic placeholder image"></a> -->
<!-- 												<h6 class="mb-3 mt-3 mb-lg-0">img_02.jpg <small class="text-muted">18kb</small></h6> -->
<!-- 											</div> -->
<!-- 											<div class="col-sm-3"> -->
<!-- 												<a href="#"><img class="w-100" src="../assets/img/media/20.jpg" alt="Generic placeholder image"></a> -->
<!-- 												<h6 class=" mt-3 mb-lg-0">img_03.jpg <small class="text-muted">21kb</small></h6> -->
<!-- 											</div> -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer">
							<button type="button" class="btn ripple btn-primary mt-1 mb-1" onclick="fn_goReplyForm('${mailVO.emlCd }');"><i class="fa fa-reply"></i> 답장</button>
							<button type="button" class="btn ripple btn-secondary mt-1 mb-1" onclick=""><i class="fa fa-share"></i> 전달</button>
							<div style="float: right; margin: 0 0 0 5px;">
								<button type="button" id="goListBtn" class="btn ripple btn-light">
									목록</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Row -->
		</div>
	</div>
</div>
<!-- End Main Content-->



<script type="text/javascript">
	// 시큐리티 토큰용
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	// 게시글 번호
	let notiNo = $("input[name='emlCd']").val();
	
	// 목록으로 
	$("#goListBtn").on("click", function() {
		location.href = "/mail/selectMailList";
	})
	
	// 답장하기
	function fn_goReplyForm(emlCd) {
		location.href = "/mail/repMailForm?emlCd="+emlCd;
	}
	
</script>
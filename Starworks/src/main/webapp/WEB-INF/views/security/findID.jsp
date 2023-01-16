<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
	
	@font-face {
	    font-family: 'MICEGothic Bold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
	    font-weight: 700;
	    font-style: normal;
	}
	
	* {
		font-family : 'MICEGothic Bold'
	}
</style>
<head>

		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
		<meta name="description" content="Spruha -  Admin Panel HTML Dashboard Template">
		<meta name="author" content="Spruko Technologies Private Limited">
		<meta name="keywords" content="admin,dashboard,panel,bootstrap admin template,bootstrap dashboard,dashboard,themeforest admin dashboard,themeforest admin,themeforest dashboard,themeforest admin panel,themeforest admin template,themeforest admin dashboard,cool admin,it dashboard,admin design,dash templates,saas dashboard,dmin ui design">

		<!-- Favicon -->
		<link rel="icon" href="/resources/assets/img/brand/favicon.ico" type="image/x-icon">

		<!-- Title -->
		<title>STARWORKS - 아이디 찾기</title>

		<!-- Bootstrap css-->
		<link id="style" href="/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Icons css-->
		<link href="/resources/assets/plugins/web-fonts/icons.css" rel="stylesheet">
		<link href="/resources/assets/plugins/web-fonts/font-awesome/font-awesome.min.css" rel="stylesheet">
		<link href="/resources/assets/plugins/web-fonts/plugin.css" rel="stylesheet">

		<!-- Style css-->
		<link href="/resources/assets/css/style.css" rel="stylesheet">

		<!-- Internal Sweet-Alert css -->
		<link href="/resources/assets/plugins/sweet-alert/sweetalert.css" rel="stylesheet">
	</head>
<body class="ltr main-body leftmenu error-1 light-theme">

		<!-- Loader -->
		<div id="global-loader" style="display: none;">
			<img src="/resources/assets/img/loader.svg" class="loader-img" alt="Loader">
		</div>
		<!-- End Loader -->

		<!-- Page -->
		<div class="page main-signin-wrapper">

			<!-- Row -->
			<div class="row signpages text-center">
				<div class="col-md-12">
					<div class="card">
						<div class="row row-sm">
							<div class="col-lg-6 col-xl-5 d-none d-lg-block text-center bg-primary details">
								<div class="mt-3 pt-3 p-2 pos-absolute">
									<img src="/resources/assets/img/brand/logo-light.png" class="header-brand-img mb-4" alt="logo">
									<div class="clearfix"></div>
									<img src="/resources/assets/img/svgs/user.svg" class="ht-100 mb-0" alt="user">
									<h5 class="mt-4 text-white">Search Your ID</h5>
									<span class="tx-white-6 tx-13 mb-5 mt-xl-0">Signup to create, discover and connect with the STARWORKS</span>
								</div>
							</div>
							<div class="col-lg-6 col-xl-7 col-xs-12 col-sm-12 login_form ">
								<div class="main-container container-fluid">
									<div class="row row-sm">
										<div class="card-body mt-2 mb-2">
											<img src="/resources/assets/img/brand/logo-light.png" class="d-lg-none header-brand-img text-start float-start mb-4 error-logo-light" alt="logo">
											<img src="/resources/assets/img/brand/logo.png" class=" d-lg-none header-brand-img text-start float-start mb-4 error-logo" alt="logo">
											<div class="clearfix"></div>
											<h5 class="text-start mb-2">아이디 찾기</h5>
											<form>
												<div class="form-group text-start">
													<label>이름</label>
													<input id="empNm" name="empNm" class="form-control" placeholder="Enter your name" type="text" value="">
												</div>
												<div class="form-group text-start">
													<label>이메일</label>
													<input id="empEml" name="empEml" class="form-control" placeholder="Enter your email" type="text" value="">
												</div>
												<div class="content" id="result_id"></div>
												<button type="button" id="findID" class="btn ripple btn-main-primary btn-block">아이디 찾기</button>
											</form>
											<div class="card-footer border-top-0 ps-0 mt-3 text-start ">
												<p class="mb-0"><a href="signin">로그인 하기</a></p>
												<p class="mb-0"><a href="findPW">비밀번호 찾기</a></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Row -->

		</div>
		<!-- End Page -->

		<!-- Jquery js-->
		<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

		<!-- Bootstrap js-->
		<script src="/resources/assets/plugins/bootstrap/js/popper.min.js"></script>
		<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

		<!-- Select2 js-->
		<script src="/resources/assets/plugins/select2/js/select2.min.js"></script>
		<script src="/resources/assets/js/select2.js"></script>

		<!-- Perfect-scrollbar js -->
		<script src="/resources/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

		<!-- Color Theme js -->
		<script src="/resources/assets/js/themeColors.js"></script>

		<!-- Custom js -->
		<script src="/resources/assets/js/custom.js"></script>

		<!-- Internal Sweet-Alert js -->
		<script src="/resources/assets/plugins/sweet-alert/sweetalert.min.js"></script>
<div class="main-navbar-backdrop"></div></body>
<script type="text/javascript">
$('#findID').click(function(){
	let empNm = $("#empNm").val();
	let empEml = $("#empEml").val();
	let data = {"empNm":empNm, "empEml":empEml};
	let header="${_csrf.headerName}";
	let token="${_csrf.token}";
	console.log("empNm : " + empNm + " | empEml : " + empEml);
	console.log("data : " + JSON.stringify(data));
	
	$.ajax({
		url : "/security/findID",
		method : "post",
		dataType : "text",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		beforeSend:function(xhr){
			xhr.setRequestHeader(header,token);
		},
		success : function(data) {
			if (data != 0) {
				swal(data);
			} else {
				$("#result_id").text("해당정보가 없습니다.");
				$("#result_id").css("color","red");
			}
		},
		error : function(xhr) {
			alert("에러코드 = " + xhr.status);
		}
	});
});
</script>
</html>
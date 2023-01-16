<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
		<title>STARWORKS - 로그인</title>

		<!-- Bootstrap css-->
		<link id="style" href="/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Icons css-->
		<link href="/resources/assets/plugins/web-fonts/icons.css" rel="stylesheet">
		<link href="/resources/assets/plugins/web-fonts/font-awesome/font-awesome.min.css" rel="stylesheet">
		<link href="/resources/assets/plugins/web-fonts/plugin.css" rel="stylesheet">

		<!-- Style css-->
		<link href="/resources/assets/css/style.css" rel="stylesheet">

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
								<div class="mt-5 pt-4 p-2 pos-absolute">
									<img src="/resources/assets/img/brand/logo-light.png" class="d-lg-none header-brand-img text-start float-start mb-4 error-logo-light" alt="logo">
									<img src="/resources/assets/img/brand/logo.png" class=" d-lg-none header-brand-img text-start float-start mb-4 error-logo" alt="logo">
									<div class="clearfix"></div>
									<img src="/resources/assets/img/svgs/user.svg" class="ht-100 mb-0" alt="user">
									<h5 class="mt-4 text-white">STARWORKS</h5>
									<span class="tx-white-6 tx-13 mb-5 mt-xl-0">Signup to create, discover and connect with the global STARWORKS</span>
								</div>
							</div>
							<div class="col-lg-6 col-xl-7 col-xs-12 col-sm-12 login_form ">
								<div class="main-container container-fluid">
									<div class="row row-sm">
										<div class="card-body mt-2 mb-2">
											<img src="/resources/assets/img/brand/logo.png" class=" d-lg-none header-brand-img text-start float-start mb-4" alt="logo">
											<div class="clearfix"></div>
											
											<form action="/login" method="post">
												<h5 class="text-start mb-2">STARWORKS 로그인</h5>
												<div class="form-group text-start">
													<label>아이디</label>
													<input class="form-control" name="username" placeholder="Enter your ID" type="text">
												</div>
												<div class="form-group text-start">
													<label>비밀번호</label>
													<input class="form-control" name="password" placeholder="Enter your password" type="password">
												</div>
												<button type="submit" class="btn ripple btn-main-primary btn-block">로그인</button>
												<sec:csrfInput/>
											</form>
											
											<div class="text-start mt-5 ms-0">
												<div class="mb-1"><a href="findID">아이디 찾기   </a>  <a href="findPW">   비밀번호 찾기</a></div>
												<div><a href="signupAdmin1">회원가입</a> 관리자 </div>
												<div><a href="signupMember">회원가입</a> 직원 </div>
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

	
<div class="main-navbar-backdrop"></div></body>
</body>
</html>
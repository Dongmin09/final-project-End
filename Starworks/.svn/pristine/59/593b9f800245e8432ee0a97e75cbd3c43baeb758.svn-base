<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  
<!DOCTYPE html>
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
<html>
<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
		<meta name="description" content="Spruha -  Admin Panel HTML Dashboard Template">
		<meta name="author" content="Spruko Technologies Private Limited">
		<meta name="keywords" content="admin,dashboard,panel,bootstrap admin template,bootstrap dashboard,dashboard,themeforest admin dashboard,themeforest admin,themeforest dashboard,themeforest admin panel,themeforest admin template,themeforest admin dashboard,cool admin,it dashboard,admin design,dash templates,saas dashboard,dmin ui design">

		<!-- Favicon -->
		<link rel="icon" href="/resources/assets/img/brand/favicon.ico" type="image/x-icon">

		<!-- Title -->
		<title>STARWORKS - 회원가입</title>

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
								<div class="mt-5 pt-5 p-2 pos-absolute">
									<img src="/resources/assets/img/brand/logo-light.png" class="header-brand-img mb-4" alt="logo">
									<div class="clearfix"></div>
									<img src="/resources/assets/img/svgs/user.svg" class="ht-100 mb-0" alt="user">
									<h5 class="mt-4 text-white">Create Your Account</h5>
									<span class="tx-white-6 tx-13 mb-5 mt-xl-0">Signup to create, discover and connect with the global STARWORKS</span>
								</div>
							</div>
							<div class="col-lg-6 col-xl-7 col-xs-12 col-sm-12 login_form ">
								<div class="main-container container-fluid">
									<div class="row row-sm">
										<div class="card-body mt-2 mb-2">
											<img src="/resources/assets/img/brand/logo-light.png" class="d-lg-none header-brand-img text-start float-start mb-4 error-logo-light" alt="logo">
											<img src="/resources/assets/img/brand/logo.png" class=" d-lg-none header-brand-img text-start float-start mb-4 error-logo" alt="logo">
											<div class="clearfix"></div>
											<h5 class="text-start mb-2">STARWORKS 회원가입</h5>
											<p class="mb-4 text-muted tx-13 ms-0 text-start">관리자(회사정보)</p>
											<form name="frm" id="frm" method="post" action="/security/insertCom">
												<div class="form-group text-start">
													<label>회사URL</label>
													<input id="url" name="url" class="form-control" value="" placeholder="Enter your companyURL" type="text" style="width:93%;" required />
													<div class="check_font" id="url_check"></div>
												</div>
												
												<div class="form-group text-start">
													<label>회사명</label>
													<input id="coNm" name="coNm" class="form-control" value="" placeholder="Enter your company name" type="text" style="width:93%;" required />
												</div>
												
												<div class="form-group text-start">
													<label>직종</label>
													<select name="ocptCd" id="ocptCd" class="form-control" tabindex="-1" aria-hidden="true" style="width: 93%;" >
														<option value="">Choose your occupation</option>
														<option value="건설·채굴">건설·채굴</option>
														<option value="경영·사무·금융·보험직">경영·사무·금융·보험직</option>
														<option value="교육·법률·사회복지·경찰·소방직 및 군인직">교육·법률·사회복지·경찰·소방직 및 군인직</option>
														<option value="농림어업직">농림어업직</option>
														<option value="미용·여행·숙박·음식·경비·돌봄·청소직">미용·여행·숙박·음식·경비·돌봄·청소직</option>
														<option value="보건·의료직">보건·의료직</option>
														<option value="설치·정비·생산직">설치·정비·생산직</option>
														<option value="연구 및 공학기술직">연구 및 공학기술직</option>
														<option value="영업·판매·운전·운송직">영업·판매·운전·운송직</option>
														<option value="예술·디자인·방송·스포츠직">예술·디자인·방송·스포츠직</option>
														<option value="기타">기타</option>
													</select>
												</div>
												
												<div class="form-group text-start">
													<label>회사 연락처</label>
													<input id="coTelNum" name="coTelNum" class="form-control" value="" placeholder="Enter your company contact" type="text"  maxlength="13" oninput="phoneJ2(this)" style="width:93%;" required />
													<div class="check_font" id="phone_check"></div>
												</div>
												
												<div class="form-group text-start">
													<div><label>사업자등록번호</label></div>
													<input id="coBrNum" name="coBrNum" class="form-control" value="" placeholder="Check your number of trader's registration" type="text" maxlength="12" oninput="regiJ2(this)" style="width:93%;" required />
													<div class="check_font" id="coBrNum_check"></div>
												</div>
												<input type="submit" id="signupCompany" name="signupCompany" class="btn ripple btn-main-primary btn-block" value="다음 단계" style="width:93%;" />
											<sec:csrfInput/>
											</form>
											
											<div class="text-start mt-5 ms-0">
												<p class="mb-0">이미 가입한 계정이 있으신가요? <a href="signin">로그인 하기</a></p>
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
		<script src="/resources/assets/plugins/sweet-alert/jquery.sweet-alert.js"></script>
<div class="main-navbar-backdrop"></div></body>

<script type="text/javascript">

//모든 공백 체크 정규식
var empJ = /\s/g;
// 전화번호 정규식
// var phoneJ = /^(0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4]))-(\d{3,4})-(\d{4})$/
var phoneJ = /^(\d{2,3})-(\d{3,4})-(\d{4})$/
var phoneJ2 = (target) => {
	 target.value = target.value
	   .replace(/[^0-9]/g, '')
	   .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
	}
// 사업자등록번호 정규식
var regiJ = /([0-9]{3})-([0-9]{2})-([0-9]{5})/;
var regiJ2 = (target) => {
	 target.value = target.value
	   .replace(/[^0-9]/g, '')
	  .replace(/^(\d{0,3})(\d{0,2})(\d{0,5})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
	}
	
// url 유효성 검사(1 = 중복 / 0 != 중복)
// url 중복 체크
$("#url").blur(function() {
// id = "id_reg" / name = "userId"
let url = $('#url').val();
$.ajax({
	url : '${pageContext.request.contextPath}/security/checkURL?url='+ url,
	type : 'get',
	success : function(data) {
		console.log("1 = 중복o / 0 = 중복x : "+ data);							
		
		if (data == 1) {
				// 1 : URL가 중복되는 문구
				$("#url_check").text("사용중인 URL입니다.");
				$("#url_check").css("color", "red");
			} else {
				$("#url_check").text("");
			}
		}, error : function() {
				console.log("실패");
		}
	});
});

	
// 연락처
$('#coTelNum').blur(function(){
	console.log($(this).val());
	if(phoneJ.test($(this).val())){
		console.log(phoneJ.test($(this).val()));
		$("#phone_check").text('');
	} else {
		$('#phone_check').text('전화번호를 확인해주세요');
		$('#phone_check').css('color', 'red');
	}
});	

	
$("#coBrNum").blur(function(){
	// 국세청_사업자등록정보 진위확인 및 상태조회 서비스
	let bno = $("#coBrNum").val();
	let a = bno.split('-');
	let b = a.join('');
	var data = {
		    "b_no": [b] // 사업자번호 "xxxxxxx" 로 조회 시,
		   }; 
		   
		$.ajax({
		  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=dsegVI0XZWbBTctMw03s2JztxvwzyR2dqXLH7PwBSZd3AkwLiJUWBovr7O56uBZ0v2nKqKT%2Fuje8vTlK3EOATw%3D%3D",  // serviceKey 값을 xxxxxx에 입력
		  type: "POST",
		  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
		  dataType: "JSON",
		  contentType: "application/json",
		  accept: "application/json",
		  success: function(result) {
		      console.log(result);
		      console.log(result.data[0].tax_type);
		      console.log(bno);
		      console.log(a.join(""));
		      if(result.data[0].tax_type != '국세청에 등록되지 않은 사업자등록번호입니다.'){
		    	  $('#coBrNum_check').text(result.data[0].tax_type);
				  $('#coBrNum_check').css('color', 'green');
		      }else{
		    	  $('#coBrNum_check').text(result.data[0].tax_type);
				  $('#coBrNum_check').css('color', 'red');
		      }
		  },
		  error: function(result) {
		      console.log(result.responseText); //responseText의 에러메세지 확인
		  }
		});
});


//가입하기 실행 버튼 유효성 검사!
var inval_Arr = new Array(5).fill(false);
$('#signupCompany').click(function(){
	// 회사URL 
	if ($('#url').val()!=''){
		inval_Arr[0] = true;
	} else {
		inval_Arr[0] = false;
	}
	// 회사명
	if ($('#coNm').val()!=''){
		inval_Arr[1] = true;
	} else {
		inval_Arr[1] = false;
	}
	// 직종
	if ($('#ocptCd').val()!='') {
		inval_Arr[2] = true;	
	} else {
		inval_Arr[2] = false;
	}
	// 회사 연락처
	if (phoneJ.test($('#coTelNum').val())){
		inval_Arr[3] = true;
	} else {
		inval_Arr[3] = false;
	}
	// 사업자등록번호
	if ($('#coBrNum_check').css('color', 'green')==true) {
		inval_Arr[4] = true;
	} else {
		inval_Arr[4] = false;
	}
	
	var validAll = true;
	for(var i = 0; i < inval_Arr.length; i++){
		
		if(inval_Arr[i] == false){
			validAll = false;
		}
	}
	
// 	if(validAll){ // 유효성 모두 통과
// 		swal("회사정보 입력 완료","", "success");
// 	} else{
// 		swal("입력한 정보들을 다시 확인해주세요","", "error");
// 	}
});

</script>

</html>
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

		<!-- Bootstrap css -->
		<link id="style" href="/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Icons css -->
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
											<p class="mb-4 text-muted tx-13 ms-0 text-start">직원 </p>
											<form name="frm" id="frm" method="post" action="/security/insertEmp">
											
												<div class="form-group text-start">
													<label>아이디</label>
													<input id="empId" name="empId" class="form-control" value="" placeholder="Enter your ID" type="text" style="width:93%;" required />
													<div class="check_font" id="id_check"></div>
												</div>
												
												<div class="form-group text-start">
													<label>비밀번호</label>
													<div class="form-inline">
														<input id="empPw" name="empPw" class="form-control" value="" placeholder="Enter your password" type="password" style="width:93%;" required />
														<input type="checkbox" id="eye" style="display:none;" value="eye1"><img id="eye" style="cursor:pointer; width:7%; height:5%;" onclick="f_eye1()" src="/resources/assets/img/pngs/eye1.png" />
													</div>
													<div class="check_font" id="pw_check"></div>
												</div>
												<div class="form-group text-start">
													<label>비밀번호 확인</label>
													<div class="form-inline">
														<input id="empPw2" name="empPw2" class="form-control" value="" placeholder="Check your password" type="password" style="width:93%;" required />
														<input type="checkbox" id="eye" style="display:none;" value="eye1"><img id="eye" style="cursor:pointer; width:7%; height:5%;" onclick="f_eye2()" src="/resources/assets/img/pngs/eye1.png" />
													</div>
													<div class="check_font" id="pw2_check"></div>
												</div>
												
												<div class="form-group text-start">
													<label>이름</label>
													<input id="empNm" name="empNm" class="form-control" placeholder="Enter your name" type="text" value="${param.nickname}" style="width:93%;" required />
													<div class="check_font" id="name_check"></div>
												</div>
												
												<div class="form-group text-start email_auth">
													<div><label>이메일</label></div>
													<input id="empEml" name="empEml" class="form-control" value="" placeholder="Enter your Email" type="text" style="width:93%" required /><input id="email2" type="hidden" value="" />
													<div class="check_font" id="email_check"></div>
												</div>
												<div class="form-inline mb-3">
													<div class="mail_check_input_box" id="mail_check_input_box_false">
														<input type="text" class="mail_check_input form-control col-8" disabled="disabled">
														<button id="mail_check_button" class="btn btn-outline-primary btn-sm">인증번호 전송</button>
													</div>
												</div>
												<!-- 인증번호 확인 -->
												<div class="alert alert-success" id="alert-success-email" style="width:93%">인증번호가 일치합니다.</div>
												<div class="alert alert-danger" id="alert-danger-email" style="width:93%">인증번호가 일치하지 않습니다.</div>

												<div class="form-group text-start">
													<label>연락처</label>
													<input id="empTel" name="empTel" class="form-control" value="" placeholder="Enter your phone number" type="text" maxlength="13" oninput="phoneJ2(this)" style="width:93%;" required />
													<div class="check_font" id="phone_check"></div>
												</div>
												<div class="form-group text-start">
													<label>주소</label>
													<div class="form-inline">
														<input type="text" class="form-control col-6" name="post" id="post" placeholder="Enter your postCode" style="width:50%; margin-right:6px;" />
														<button type="button" class="btn btn-outline-primary btn-sm" id="btnZipCode" name="btnZipCode" onclick="openHomeSearch()">주소 찾기</button>
													</div>
													<input type="text" class="form-control" name="addr" id="addr" placeholder="Enter your address" style="width:93%;" readonly />
													<input type="text" class="form-control" name="detAddr" id="detAddr" placeholder="Enter your detail address" style="width:93%;" />
												</div>
												
												<div class="form-group text-start">
													<label>회사URL</label>
													<input id="coCd" name="coCd" class="form-control" value="" placeholder="Enter your companyURL" type="text" style="width:93%;" required />
													<div class="check_font" id="coCd_check"></div>
												</div>
												
												<input type="button" id="signup" name="signup" class="btn ripple btn-main-primary btn-block" value="가입하기" onclick="OKConfirm()" style="width:93%;" />
											<sec:csrfInput/>
											</form>
											
											<div class="text-start mt-5 ms-0">
												<p class="mb-0">이미 가입한 계정이 있으신가요? <a href="/security/signin">로그인 하기</a></p>
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

		<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

		<!-- Bootstrap js -->
		<script src="/resources/assets/plugins/bootstrap/js/popper.min.js"></script>
		<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

		<!-- Select2 js -->
		<script src="/resources/assets/plugins/select2/js/select2.min.js"></script>
		<script src="/resources/assets/js/select2.js"></script>

		<!-- Perfect-scrollbar js -->
		<script src="/resources/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

		<!-- Color Theme js -->
		<script src="/resources/assets/js/themeColors.js"></script>

		<!-- Custom js -->
		<script src="/resources/assets/js/custom.js"></script>
		
		<!-- 다음 우편번호 api -->
		<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
		
		
		<!-- Internal Sweet-Alert js -->
		<script src="/resources/assets/plugins/sweet-alert/sweetalert.min.js"></script>
		
		
<div class="main-navbar-backdrop"></div></body>

<script type="text/javascript">

//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9]{4,12}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/; 
// 이름 정규식
var nameJ = /^[가-힣]{2,6}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9])-([0-9]{4})-([0-9]{4})$/;
var phoneJ2 = (target) => {
	 target.value = target.value
	   .replace(/[^0-9]/g, '')
	  .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
	}


// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
// 	아이디 중복 체크
$("#empId").blur(function() {
	// id = "id_reg" / name = "userId"
	let empId = $('#empId').val();
	$.ajax({
		url : '${pageContext.request.contextPath}/security/checkId?empId='+ empId,
		type : 'get',
		success : function(data) {
			console.log("1 = 중복o / 0 = 중복x : "+ data);							
			
			if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					$("#id_check").text("사용중인 아이디입니다.");
					$("#id_check").css("color", "red");
// 					$("#signup").attr("disabled", true);
				} else {
					
					if(idJ.test(empId)){
						// 0 : 아이디 길이 / 문자열 검사
						$("#id_check").text("");
// 						$("#signup").attr("disabled", false);
			
					} else if(empId == ""){
						
						$('#id_check').text('아이디를 입력해주세요.');
						$('#id_check').css('color', 'red');
// 						$("#signup").attr("disabled", true);				
						
					} else {
						
						$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
						$('#id_check').css('color', 'red');
// 						$("#signup").attr("disabled", true);
					}
					
				}
			}, error : function() {
					console.log("실패");
			}
		})
	});
	
// 	회사 중복 체크
$("#coCd").blur(function() {
	// id = "id_reg" / name = "userId"
	let coCd = $('#coCd').val();
	$.ajax({
		url : '${pageContext.request.contextPath}/security/checkCoCd?coCd='+ coCd,
		type : 'get',
		success : function(data) {
			if (data > 0) {
					// 1 : 아이디가 중복되는 문구
					$("#coCd_check").text("등록된 회사 URL입니다.");
					$("#coCd_check").css("color", "green");
// 					$("#signup").attr("disabled", true);
				} else if(coCd == "" || data == 0){
					$('#coCd_check').text('URL을 입력해주세요.');
					$('#coCd_check').css('color', 'red');
// 					$("#signup").attr("disabled", true);				
				} 
			}, error : function() {
					console.log("실패");
			}
		});
	});
	
	
// 비밀번호 유효성 검사
// 1-1 정규식 체크
$('#empPw').blur(function(){
	if(pwJ.test($('#empPw').val())){
		console.log('true');
		$('#pw_check').text('');
	}else{
		console.log('false');
		$('#pw_check').text('숫자 or 문자로만 4~12자리 입력');
		$('#pw_check').css('color', 'red');
	}
});

// 1-2 패스워드 일치 확인
$('#empPw2').blur(function(){
	if($('#empPw').val() != $(this).val()){
		$('#pw2_check').text('비밀번호가 일치하지 않습니다.');
		$('#pw2_check').css('color', 'red');
	} else{
		$('#pw2_check').text('');
	}
});
	
	
// 이름에 특수문자가 들어가지 않도록 설정
$('#empNm').blur(function(){
	if (nameJ.test($(this).val())) {
		console.log(nameJ.test($(this).val()));
		$("#name_check").text('');
		
	} else {
		$('#name_check').text('이름을 확인해주세요');
		$('#name_check').css('color', 'red');
	}
});

// 이메일
$('#empEml').blur(function(){
	if (mailJ.test($(this).val())) {
		console.log(mailJ.test($(this).val()));
		$("#email_check").text('');
	} else {
		$('#email_check').text('올바른 형식의 이메일 주소를 입력해 주세요');
		$('#email_check').css('color', 'red');
	}
});

// 연락처
$('#empTel').blur(function(){
	console.log($(this).val());
	if(phoneJ.test($(this).val())){
		console.log(phoneJ.test($(this).val()));
		$("#phone_check").text('');
	} else {
		$('#phone_check').text('휴대폰번호를 확인해주세요');
		$('#phone_check').css('color', 'red');
	}
});


//가입하기 실행 버튼 유효성 검사!
function OKConfirm(){
	var inval_Arr = new Array(7).fill(false);
	// 아이디 정규식
	if (idJ.test($('#empId').val())){
		inval_Arr[0] = true;
	} else {
		inval_Arr[0] = false;
	}
	// 비밀번호가 같은 경우 && 비밀번호 정규식
	if (($('#empPw').val() == ($('#empPw2').val()))
			&& pwJ.test($('#empPw').val())) {
		inval_Arr[1] = true;
	} else {
		inval_Arr[1] = false;
	}
	// 이름 정규식
	if (nameJ.test($('#empNm').val())) {
		inval_Arr[2] = true;	
	} else {
		inval_Arr[2] = false;
	}
	// 이메일 정규식
	if (mailJ.test($('#empEml').val())){
		inval_Arr[3] = true;
	} else {
		inval_Arr[3] = false;
	}
	// 휴대폰번호 정규식
	if (phoneJ.test($('#empTel').val())) {
		inval_Arr[4] = true;
	} else {
		inval_Arr[4] = false;
	}
	// 주소
	if (($('#post').val())!=''){
		inval_Arr[5] = true;
	} else {
		inval_Arr[5] = false;
	}
	// 회사 url
	if (($('#coCd').val())!=''){
		inval_Arr[6] = true;
	} else {
		inval_Arr[6] = false;
	}
	
	var validAll = true;
	for(var i = 0; i < inval_Arr.length; i++){
		if(inval_Arr[i] == false){
			validAll = false;
		}
	}
	
	if(validAll){ // 유효성 모두 통과
		swal('회원가입 완료되었습니다.', '', 'success');
	} else{
		swal("입력한 정보들을 다시 확인해주세요.", "", "error");
	}
	setTimeout("document.frm.submit()",3000);
}


// 비밀번호 password/text 눈알
var v_eyes = document.querySelectorAll("#eye");
var v_pw1 = document.querySelector("#empPw");
var v_pw2 = document.querySelector("#empPw2");
function f_eye1() {
	if(v_eyes[0].checked == true) {
		v_eyes[0].checked = false;
		v_eyes[1].src = "/resources/assets/img/pngs/eye1.png";
		v_pw1.type = "password";
	} else {
		v_eyes[0].checked = true;
		v_eyes[1].src = "/resources/assets/img/pngs/eye2.png";
		v_pw1.type = "text";
	}
}

function f_eye2() {
	if(v_eyes[2].checked == true) {
		v_eyes[2].checked = false;
		v_eyes[3].src = "/resources/assets/img/pngs/eye1.png";
		v_pw2.type = "password";
	} else {
		v_eyes[2].checked = true;
		v_eyes[3].src = "/resources/assets/img/pngs/eye2.png";		
		v_pw2.type = "text";
	}
}


//인증번호 알림창 가림
$("#alert-success-email").hide();
$("#alert-danger-email").hide();
//true일시 전송

//인증번호를 저장할 변수
var code = "";
//인증번호 이메일 전송
$("#mail_check_button").on("click",function(e){
	e.preventDefault();
	var email = $("input[name='empEml']").val();
	var checkBox = $(".mail_check_input");
	
	$.ajax({
		type:"GET",
		url : "/security/mailCheck",
		data : {email : email},
		contentType :"text/plain;charset=UTF-8",
		success : function(data){ //인증번호를 가져옴
			checkBox.attr("disabled",false); //인증번호 입력 가능
			checkBox.val(''); // 기존에 값이 있었으면 지워줌
			$("#alert-success-email").hide();
			$("#alert-danger-email").hide();
			checkCode = false;
			code = data; // 인증번호를 변수에 저장
		}
	});
});

//인증코드 입력 시 동일성 확인
$(".mail_check_input").keyup(function() {
	var inputCode = $(".mail_check_input").val();
	if (inputCode != "" || code != "") {
		if (inputCode == code) {
			$("#alert-success-email").show();
			$("#alert-danger-email").hide();
			$(".mail_check_input").attr("disabled",true); //인증번호 입력 멈춤
			checkCode = true;
		} else {
			$("#alert-success-email").hide();
			$("#alert-danger-email").show();
			checkCode = false;
		}
	}
});


//다음 우편번호 검색
$("#btnZipCode").on("click",function(){
    new daum.Postcode({
       oncomplete:function(data){
          //zipCode
          $("input[name='post']").val(data.zonecode);   //우편번호5자리
          //addressName
          $("input[name='addr']").val(data.address);   //주소
          //addressDetail
          $("input[name='detAddr']").val(data.buildingName);   //상세 주소
       }
    }).open();
 });
	

</script>
</html>
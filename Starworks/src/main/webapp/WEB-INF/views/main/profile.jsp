<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  

<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<!-- InternalFileupload css-->
<link href="/resources/assets/plugins/fileuploads/css/fileupload.css" rel="stylesheet" type="text/css">
<%-- <sec:authentication property="principal.employeeVO.empCd" /> --%>
<input type="hidden" id="myImg" value="<sec:authentication property="principal.employeeVO.profile" /> ">
<input type="hidden" id="bfSign" value="" />
<div class="row row-sm">
	<div class="col-lg-12 col-md-12">
		<div class="card custom-card main-content-body-profile">
			<div class="tab-content bd">
				<div class="main-content-body tab-pane p-4 border-top-0 active" id="edit">
					<div class="card-body">
					<div class="row">
					<div class="col-xl-6 col-lg-12 col-md-12">
					
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">사원 번호</label>
									</div>
									<div class="col-md-9">
										<input type="text" class="form-control" id="empCd" name="empCd" value="<sec:authentication property="principal.employeeVO.empCd" />"  readonly="readonly">
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">아이디</label>
									</div>
									<div class="col-md-9">
										<input type="text" class="form-control" id="empId" name="empId" value="<sec:authentication property="principal.employeeVO.empId" />"  readonly="readonly">
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">이름</label>
									</div>
									<div class="col-md-9">
										<input type="text" class="form-control" id="empNm" name="empNm" value="<sec:authentication property="principal.employeeVO.empNm" />"readonly="readonly" required="required">
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">비밀번호</label>
									</div>
									<div class="col-md-9">
										<input type="password" class="form-control"  id="empPw" name="empPw"value="" required="required" readonly="readonly" aria-describedby="validationServer03Feedback">
										<input type="hidden" class="form-control"  id="empPw2" value="<sec:authentication property="principal.employeeVO.empPw" />" >
										
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">비밀번호 재입력</label>
									</div>
									<div class="col-md-9">
										<input type="password" class="form-control"  id="pwCheck" name="pwCheck" value="" placeholder="비밀번호를 입력해주세요"  required="required" readonly="readonly">
										<div id="validationServer03Feedback" class="invalid-feedback">
												비밀번호가 틀립니다.
										</div>
									</div>
								</div>
							</div>

							</div><!--col-xl-6 col-lg-12 col-md-12 end  -->
							<div class="col-xl-6 col-lg-12 col-md-12">
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">Email</label>
									</div>
									<div class="col-md-9">
										<input type="text" class="form-control" id="empEml" name="empEml"value="" readonly="readonly">
										<input type="hidden" class="form-control"  id="empEml2" value="<sec:authentication property="principal.employeeVO.empEml" />" >
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">우편번호</label>
									</div>
									<div class="col-md-4">
										<input type="text" class="form-control"  id="post" name="post" value="" readonly="readonly">
										<input type="hidden" class="form-control"  id="post2" value="<sec:authentication property="principal.employeeVO.post" />" >										
									</div>
									<div class="col-md-4">
										<button class="btn ripple btn-info disabled" >주소검색</button>
									</div>
										
								</div>
							</div>
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">기본주소</label>
									</div>
									<div class="col-md-9">
										<input type="text" class="form-control"  id="addr" name="addr" value="" readonly="readonly">
										<input type="hidden" class="form-control"  id="addr2" value="<sec:authentication property="principal.employeeVO.addr" />" >	
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">상세주소</label>
									</div>
									<div class="col-md-9">
										<input type="text" class="form-control"  id="detAddr" name="detAddr" value="" readonly="readonly">
										<input type="hidden" class="form-control"  id="detAddr2" value="<sec:authentication property="principal.employeeVO.detAddr" />" >	
									</div>
								</div>
							</div>
	
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">연락처</label>
									</div>
									<div class="col-md-9">
										<input type="text" class="form-control"  id="empTel" name="empTel" value="" readonly="readonly">
										<input type="hidden" class="form-control"  id="empTel2" value="<sec:authentication property="principal.employeeVO.empTel" />" >	
									</div>
								</div>
							</div>
							</div><!-- col-xl-6 col-lg-12 col-md-12 -->
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">프로필 사진 변경</label>
									</div>
									<div class="col-md-9">
										<input type="file" class="dropify" id="empImg" name="uploadFile" data-height="200" disabled style="cursor: default;">
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="row row-sm">
									<div class="col-md-2">
										<label class="form-label">결재 사인</label>
									</div>
									<div class="col-md-9" style="display: inline-block;">
										<img id="sign" src="" width="300px" height="200px" style="border: 1px solid black; display: inline-block;" />
										<div style="display: inline-block;">
											<button id="mdl9" class="btn ripple btn-primary btn-with-icon" data-bs-target="#modaldemo9" data-bs-toggle="modal" style="display: none;" ><i class="si si-pencil"></i> 수정</button>
										</div>
									</div>
								</div>
							</div>
				
						<div class="d-flex flex-row justify-content-end">
								<div class="btn-list row-3" style="display: none;" >
									<button class="btn ripple btn-primary btn-with-icon d-inline-block" id="btn-success" type="button"><i class="mdi mdi-account-settings-variant"></i>수정</button>
									<button class="btn ripple btn-dark btn-with-icon d-inline-block btn-cancel" type="button"><i class="mdi mdi-account-settings"></i>취소</button>
								</div>
								</div>
							<div class="d-flex flex-row justify-content-end">
								<button class="btn ripple btn-primary btn-with-icon btn-info-edit"><i class="mdi mdi-account-edit"></i> 수정하기</button>
							</div>
						
					</div> <!-- row end -->
					</div> <!-- card body end -->
				</div>  <!-- main-content-body end -->
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="modaldemo9" style="display: none;" aria-modal="true" role="dialog">
	<div class="modal-dialog modal-xl" role="document">
		<div class="modal-content modal-content-demo">
			<div class="modal-header">
				<h6 class="modal-title">결재 사인</h6>
				<button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button" id="sign-close"></button>
			</div>
			<div class="modal-body" style="margin-left: 150px;">
				<canvas id='canvas' width='800' height='500' style="border:1px solid black"></canvas>
			</div>
			<div class="modal-footer">
				<button class="btn ripple btn-primary" type="button" id="saveSign">저장</button>
				<button id="resetBtn" class="btn ripple btn-dark" type="button">지우기</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	// 결재 사인
	var canvas = document.getElementById('canvas');
	var ctx = canvas.getContext('2d');
	var rect = canvas.getBoundingClientRect();  // 터치 스크린

	var pos = {
       drawable : false,
       x : -1,
       y : -1,
    };
    
    canvas.addEventListener("mousedown", listener);
    canvas.addEventListener("mousemove", listener);
    canvas.addEventListener("mouseup", listener);
    canvas.addEventListener("mouseout", listener);
    
    /// 터치 스크린
    canvas.addEventListener("touchstart", listener);
    canvas.addEventListener("touchmove", listener);
    canvas.addEventListener("touchend", listener);
    
    function listener(e){
        switch(e.type){
            case "mousedown":
                drawStart(e);
                break;
            case "mousemove":
                if(pos.drawable)
                    draw(e);
                break;
            case "mouseout":
            case "mouseup":
                drawEnd();
                break;
            case "touchstart":
                touchStart(e);
                break;
            case "touchmove":
                if(pos.drawable)
                    touch(e);
                break;
            case "touchend":
                drawEnd();
                break;
            default:
        }
    }
    
    function drawStart(e){
        pos.drawable = true;
        ctx.beginPath();
        pos.x = e.offsetX;
        pos.y = e.offsetY;
        ctx.moveTo(pos.x, pos.y);
    }
    function touchStart(e){
        pos.drawable = true;
        ctx.beginPath();
        pos.x = e.touches[0].pageX - rect.left
        pos.y = e.touches[0].pageY - rect.top
        ctx.moveTo(pos.x, pos.y);
    }
    function draw(e){
        ctx.lineTo(e.offsetX, e.offsetY);
        pos.x = e.offsetX;
        pos.y = e.offsetY;
        ctx.lineWidth = 15;
        ctx.stroke();
    }
    function touch(e){
        ctx.lineTo(e.touches[0].pageX - rect.left, e.touches[0].pageY - rect.top);
        pos.x = e.touches[0].pageX - rect.left;
        pos.y = e.touches[0].pageY - rect.top;
        ctx.stroke();
    }
    function drawEnd(){
        pos.drawable = false;
        pos.x = -1;
        pos.y = -1;
    }

	let mmyImg = $("#myImg").val();
	let arr = mmyImg.split("/");
		
	function isCanvasBlank(canvas) {
		const blank = document.createElement('canvas');
		
		blank.width = canvas.width;
		blank.height = canvas.height;
		
		return canvas.toDataURL() === blank.toDataURL();
	}
	$(function(){
		var imgDataUrl;
		$('#saveSign').click(function() {
			imgDataUrl = canvas.toDataURL('image/png');
			if(isCanvasBlank(canvas)) {
				swal("사인이 없습니다.", "사인을 그려주세요.", "error");
				return;
			}
			$('#sign').attr('src', imgDataUrl);
			console.log('imgDataUrl : ', imgDataUrl);
			$('#sign-close').trigger('click');
		});
		
		let empCd = $("#empCd").val();
		let data = {"empCd":empCd}; 
		console.log(empCd);
		// 스프링 시큐리티를 위한 토큰처리(csrf)
		let header = "${_csrf.headerName}";
		let token = "${_csrf.token}";
		$.ajax({
			url:"./empDetail",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:(function(data){
				console.log("success : " , data);
				$("#empPw").val(data[0].empPw);
				$("#post").val(data[0].post);
				$("#addr").val(data[0].addr);
				$("#detAddr").val(data[0].detAddr);				
				$("#empTel").val(data[0].empTel);
				$("#empEml").val(data[0].empEml);
				
				if(data[0].profile != null){
					$("#myImg").attr("src","/resources/profileImg/"+data[0].profile);
					$(".dropify-preview").css("display","block");
					$(".dropify-render").append($("<img id='empImg'/>").attr('src', "/resources/profileImg/"+data[0].profile));
					$(".dropify-filename-inner").html(data[0].profile);
					
				}
				if(data[0].profile != null) {
					$('#sign').attr('src', '/resources/profileSign/' + data[0].sign);
					$('#bfSign').val('/resources/profileSign/' + data[0].sign);
				}
				console.log($(".dropify-filename-inner").html());
				
			})
		});// ajax end
		
		// 수정하기 누르면 수정 submit button 나오게 하기 readonly 해제하기
		$(".btn-info-edit").on("click",function(){
			$(this).css("display","none");
			$(".btn-list").css("display","block");
			$("#empPw").removeAttr("readonly");
			$("#pwCheck").removeAttr("readonly");
			$("#empEml").removeAttr("readonly");
			$("#post").removeAttr("readonly");
			$("#addr").removeAttr("readonly");
			$("#detAddr").removeAttr("readonly");
			$("#empTel").removeAttr("readonly");
			$(".btn-info").removeClass("disabled");
			$("#mdl9").css('display', 'block');
			$('#empImg').removeAttr('disabled');
			$('#empImg').css('cursor', 'pointer');
		});
		
		// 캔버스 전체지우기
		$('#resetBtn').click(function() {
			ctx.clearRect(0, 0, canvas.width, canvas.height);
		});
		
		// 취소 button누르면 다시 수정하기로 변하기	
		$(".btn-cancel").on("click", function(){
			$(".btn-list").css("display","none");
			$(".btn-info-edit").css("display","block");
			$(".btn-info").addClass(" disabled");
			$("#empEml").attr("readonly","readonly");
			$("#post").attr("readonly","readonly");
			$("#addr").attr("readonly","readonly");
			$("#detAddr").attr("readonly","readonly");
			$("#empTel").attr("readonly","readonly");
			$("#empPw").attr("readonly","readonly");
			$("#pwCheck").attr("readonly","readonly");
			$('#mdl9').css('display', 'none');
			$('#empPw').removeClass('parsley-success');
			$('#empPw').removeClass('parsley-error');
			$('#pwCheck').val('');
			$("#pwCheck").removeClass(" parsley-error");
			// 다시 원래 나의 정보로 맞추기
			$.ajax({
			url:"./empDetail",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:(function(data){
				console.log("success : " , data);
				$("#empPw").val(data[0].empPw);
				$("#post").val(data[0].post);
				$("#addr").val(data[0].addr);
				$("#detAddr").val(data[0].detAddr);				
				$("#empTel").val(data[0].empTel);
				$("#empEml").val(data[0].empEml);
				
				if(data[0].profile != null){
					$("#myImg").attr("src","/resources/profileImg/"+data[0].profile);
					$(".dropify-preview").css("display","block");
					$(".dropify-render").html($("<img id='empImg'/>").attr('src', "/resources/profileImg/"+data[0].profile));
					$(".dropify-filename-inner").html(data[0].profile);
					
				}
				if(data[0].sign != null) {
					$('#sign').attr('src', '/resources/profileSign/' + data[0].sign);
					$('#bfSign').val('/resources/profileSign/' + data[0].sign);
				}
				console.log($(".dropify-filename-inner").html());
				
			})
		});// ajax end
			$('#empImg').attr('disabled', 'disabled');
			$('#empImg').css('cursor', 'default');
			$('#sign').attr('src', $('#bfSign').val());
			ctx.clearRect(0, 0, canvas.width, canvas.height);
		});
		
		// 우편번호 검색
		$(".btn-info").on("click",function(){
			new daum.Postcode({
				oncomplete: function(data) {
					$('#post').val(data.zonecode); // 우편번호 (5자리)
					$('#addr').val(data.address);
					$('#detAddr').val(data.buildingName);			
				}
			}).open();
		});
		
		let pw = $("#pwCheck");
		let pass = $("#empPw");
		// 비밀번호 체크
		$('#pwCheck').keyup(function(){
			if(pass.val() != pw.val()){
				pw.addClass(" parsley-error");
			}
			if(pass.val() == pw.val()){
				pw.removeClass(" parsley-error");
				pw.addClass(" parsley-success");
				$("#btn-success").removeClass(" disabled");
			}
		});
		
		// 직원 정보 수정하기
		$("#btn-success").on("click", function(){
			if(pw.val()==null || pw.val() == ""){
				pw.focus();
				pw.addClass(" parsley-error");
				setTimeout(() => pw.removeClass(" parsley-error"), 2000);

				return
			}else if (pw.val() != pass.val()) {
				pw.focus();
				return
			}else if(pw.val() == pass.val()){
				let empCd = $("#empCd").val();
				let empPw = $("#empPw").val();
				let post = $("#post").val();
				let addr = $("#addr").val();
				let detAddr = $("#detAddr").val();
				let empTel= $("#empTel").val();
				let empEml= $("#empEml").val();
				$('#mdl9').css('display', 'none');
				ctx.clearRect(0, 0, canvas.width, canvas.height);
				let profile =  $(".dropify-filename-inner").html();
				let img = $("#empImg").get(0).files[0];
				$('#pwCheck').removeClass('parsley-success');
				$('#pwCheck').removeClass('parsley-error');
				let data ={"empCd":empCd, "post":post, "addr":addr, "detAddr":detAddr
						, "empTel":empTel, "empPw":empPw, "empEml":empEml};
		
				// 스프링 시큐리티를 위한 토큰처리(csrf)
				let header = "${_csrf.headerName}";
				let token = "${_csrf.token}";
				
				$.ajax({
					url:"./empModify",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(data),
					type:"post",
					beforeSend:function(xhr){
						xhr.setRequestHeader(header, token);
					},
					success:(function(result){
						if(result>0){
							$(".btn-list").css("display","none");
							$(".btn-info-edit").css("display","block");
							$(".btn-info").addClass(" disabled");
							$("#empEml").attr("readonly","readonly");
							$("#post").attr("readonly","readonly");
							$("#addr").attr("readonly","readonly");
							$("#detAddr").attr("readonly","readonly");
							$("#empTel").attr("readonly","readonly");
							$("#empPw").attr("readonly","readonly");							
							$("#pwCheck").val('');
							$("#pwCheck").attr("readonly","readonly");
						}else{
							swal("변경되지 않았습니다.");
						}
					})
				});
				console.log($("#empImg").get(0).files[0]);
				if($("#empImg").get(0).files[0] !=null){
					profileUpload(img, empCd);
					console.log("됐다");
				}
				if($('#sign').attr('src') != $('#bfSign').val()) {
					var blobBin = atob(imgDataUrl.split(',')[1]);	// base64 데이터 디코딩
				    var array = [];
				    for (var i = 0; i < blobBin.length; i++) {
				        array.push(blobBin.charCodeAt(i));
				    }
				    var file = new Blob([new Uint8Array(array)], {type: 'image/png'});	// Blob 생성
				    var formdata = new FormData();	// formData 생성
				    formdata.append("file", file);	// file data 추가
				    formdata.append("empCd", empCd);
				    $.ajax({
				        type : 'post',
				        url : './saveIamge',
				        data : formdata,
				        processData : false,	// data 파라미터 강제 string 변환 방지!!
				        contentType : false,	// application/x-www-form-urlencoded; 방지!!
				        beforeSend:function(xhr){
							xhr.setRequestHeader(header, token);
						},
				        success : function (data) {
				        	$('#sign-close').trigger('click');
				        }
				    });
				}
			}
		});
		
		$("#empImg").on("change", function(){
			console.log($("#empImg").get(0).files[0]);
		});
	});

	function profileUpload(img, empCd){
		
		let formData = new FormData();
		formData.append("uploadFile", img);
		formData.append("empCd", empCd);
		console.log("formData : " , formData);
		

		// 스프링 시큐리티를 위한 토큰처리(csrf)
		let header = "${_csrf.headerName}";
		let token = "${_csrf.token}";
		$.ajax({
			url: "/main/uploadProfile",
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			data:formData,
			dataType:"json",
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result){
				console.log("result : " + result);
				console.log("uploaded");
				let filename = result.profile;
			}
		});
	}

</script>



<!-- Internal Fileuploads js-->
<script src="/resources/assets/plugins/fileuploads/js/fileupload.js"></script>
<script src="/resources/assets/plugins/fileuploads/js/file-upload.js"></script>
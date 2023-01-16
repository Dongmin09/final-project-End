<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  

	<style>
		.demo { overflow:auto; border:1px solid silver;  }, 
		#main{ overflow:auto;}
	</style>
	<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script src="/resources/js/jstree.min.js"></script>
<link rel="stylesheet" href="/resources/css/jstreeStyle.min.css" />

	<div class="row" >
		<div class="col" style="text-align:left;">
			<input type="text" value="" style="box-shadow:inset 0 0 4px #eee; width:120px; margin:0; padding:6px 12px; border-radius:4px; border:1px solid silver; font-size:1.1em;" id="demo_q" placeholder="Search">
			<input type="hidden" id="nodeId" value="<sec:authentication property="principal.employeeVO.empCd" />"/>
			<button type="button" class="btn ripple btn-light" id="openAll">전체열기/닫기</button>
		</div>
	</div>
	<br>
	<div class="row" >
		<div id="tree" class="demo col-md-3 "  style="height: 600px; ">
	</div>
		<div id="main" class="demo col" style="display: none; height: 600px;" >
			<br>
			<h3 id="info"></h3>
			<p style="text-align: center;"><img id="empImg" style="height: 200px"></p>
			<div class="row">
				<div class="col">
					<p>사원번호 : <input type="text" class="form-control"  id="empCd"  name="empCd"  value="" readonly="readonly"/></p>
					<p>이름 : <input type="text"  class="form-control" id="empNm"  name="empNm" value="" readonly="readonly"/></p>
					<p>직급 : <input type="text"  class="form-control" id="posiCd"  name="posiCd" value="" readonly="readonly"/></p>
				</div>
				<div class="col">
					<p>재직상태 : <input type="text"  class="form-control" id="empSitCd"  name="empSitCd" value="" readonly="readonly"/></p>
					<p>연락처 : <input type="text"  class="form-control" id="empTel"  name="empTel" value="" readonly="readonly"/></p>
				</div>
			</div>
		</div>
	</div>


<script type="text/javascript"> // 페이지 내 조직도....
	
	// 조직도 검색 하기
	var to = false;
	$(document).on("keyup", "#demo_q", function(){		
		if(to) { clearTimeout(to); }
		to = setTimeout(function () {
			var v = $('#demo_q').val();
			$('#tree').jstree(true).search(v);
		}, 250);
	});
	
	let nodeId = $("#nodeId").val();
	// 조직도 만들기 
		$('#tree').jstree({
			'core' : {
				'data' : {
					"url" : "/tree/jsonData" ,
					"dataType" : "json" 
				}
			},
// 			'state':{
// 				'opened': true
// 			},
		    'types':{
				'default' : {
					"icon" : "/resources/css/person.png"
				}
			}, 
			'plugins' : ["types","search"],
			
			
		}).on("ready.jstree",function(e, data){
			$('#tree').jstree('select_node', nodeId); 
		}); 
		
		
	$(document).on("click", ".jstree-leaf", function(){
	console.log("nodeid : ", $('#tree').jstree(true).get_node(this).id);
// 			console.log("id : " + $(this).attr("id"));
			let empCd = $(this).attr("id");
			
			let data1 = {"empCd": empCd};
			
			$("#empCd").val(empCd);
			// 스프링 시큐리티를 위한 토큰처리(csrf)
			let header = "${_csrf.headerName}";
			let token = "${_csrf.token}";
			
			$.ajax({
				url:"./list",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(data1),
				type:"post",
				dataType: 'json',
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(data){
					console.log("success : " , data);
					console.log(data[0].empNm);
					console.log(data[0].empPw);
					$("#empCd").val(data[0].empCd);
					$("#empNm").val(data[0].empNm);
					$("#empPw").val(data[0].empPw);
					$("#posiCd").val(data[0].posiCd);
					$("#empSitCd").val(data[0].empSitCd);
					$("#empTel").val(data[0].empTel);
					
					if(data[0].profile ==null){
						$("#empImg").attr("src","/resources/profileImg/no-Img.png");
					}else{						
						$("#empImg").attr("src","/resources/profileImg/"+data[0].profile);
					}
					
					$("#info").text(data[0].depCd);
						
					$("#main").css("display","block");
					
					let id = $("#nodeId").val();
					if(id == empCd ){
						$(".btn-icon-list").css("display","none");
					}
					if(id != empCd){
						$(".btn-icon-list").removeAttr("style");
					}
				},
				error: function() {
					console.log("에러");
				}
			});

	});
// 전체 열기 닫기	
	let mode = "close";
	$(document).on("click","#openAll",function(){
		if(mode == "close"){
			$('#tree').jstree('open_all'); 
			mode = "open";	
			
		}else if(mode == "open"){
			mode = "close";
			$('#tree').jstree('close_all');
		}
	});
	


	</script>


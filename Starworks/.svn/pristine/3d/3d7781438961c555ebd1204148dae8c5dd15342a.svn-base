<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script src="/resources/js/jstree.min.js"></script>
<link rel="stylesheet" href="/resources/css/jstreeStyle.min.css" />
	<style>
		.demo { overflow:auto;  }, 
		#main{ overflow:auto;}
	</style>


<p style="text-align: right;"><a class="btn ripple btn-primary" data-bs-target="#select2modal" data-bs-toggle="modal" href="">부서추가</a></p>
<input type="hidden" name="editDepNm"  id="editDepNm" />
<input type="hidden" name="editDepCd"  id="editDepCd" />
<div class="modal " id="select2modal" aria-modal="true" role="dialog" style="display: none;">
	<div class="modal-dialog" role="document">
		<div class="modal-content modal-content-demo">
			<div class="modal-header">
				<h6 class="modal-title">부서생성</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button"></button>				
			</div>
		<form action="/department/depPlus" method="post">
			<div class="modal-body">
				<div class="form-group">
					<label>상위부서</label>
					<select id="codeList" class="form-select" ></select>
				</div>
				<div class="form-group">
					<label>팀명</label>
					<input type="hidden" name="depPar" id="depPar" class="form-control">
					<input type="text" value="" name="depNm" id="depNm" required="required" class="form-control">
				</div>
					<sec:csrfInput/>
			</div>
			<div class="modal-footer">
				<button type="submit" class="btn ripple btn-primary" id="depPlus">부서추가</button>
			</div>
				</form>
		</div>
	</div>
</div>


<div class="row">
	<div class="col-lg-3">
		<div id="tree" class="demo "  style="height: 600px; "></div>
	</div>
	<div class="col">
		<div class="table-responsive border userlist-table">
			<table class="table card-table table-striped table-vcenter text-nowrap mb-0" >
				<thead>
					<tr>
						<th class="wd-lg-8p"><span>#</span></th>
						<th class="wd-lg-8p"><span>상위부서</span></th>
						<th class="wd-lg-8p"><span>부서 명</span></th>
						<th class="wd-lg-8p"><span>수정/삭제</span></th>
					</tr>
				</thead>
				<tbody>
					
				<c:forEach var="depList" items="${depList}" varStatus="sta">
					<tr id="depList">
						<td>${sta.count}<input type="hidden" name="depCd" id="depCd${sta.count}" value="${depList.depCd}"/></td>
						<td>${depList.codeList[0].commCdNm}</td>
						<td id="td${sta.count}">${depList.depNm}</td>
						<td>
							<button type="button"  class="btn btn-sm btn-info sub" id="${sta.count}">
								<i class="fe fe-edit-2"></i>
							</button>
							<a href="#" class="btn btn-sm btn-danger"  id="del${sta.count}" data-id="${sta.count}">
								<i class="fe fe-trash"></i>
							</a>
						</td>
					</tr>
				</c:forEach>	
				
				</tbody>
			</table>
		</div>
	</div>
</div>
<br>




<script type="text/javascript">// 모달 부서 추가 
	$.ajax({
		url:"./code",
		datatype:"json",
		type:"get",
		success:function(data){
			$.each(data,function(index,item){
				if(item.commCdExp == '#'){
					$("#codeList").append("<option selected>선택하세요</option> ");
					return
				}
				$("#codeList").append("<option id='"+ item.commCd +"' value='"+
					item.commCd +"'> "  + item.commCdNm + "</option> ");
			});
		}
	});
	
	$(document).on("click", "#codeList ", function(){
		console.log($(this).val());
		let val = $(this).val();
		$("#depPar").val(val);
	});
	$(document).on("click", ".btn-secondary ", function(){
		$("#depPar").val("");
		$("#depNm").val("");
	});
 

</script>   


<script> // 부서명 수정, 부서 삭제

		let mode = "delete";
		
		//수정 취소 / 삭제 처리
		$(".btn-danger").on("click",function(){
			if(mode=="delete"){
				console.log("삭제모드");
				let DelId = $(this).data("id");
				let depCd = $("#depCd"+DelId).val();
				console.log("depCd : " + depCd);
				
					goRemove(depCd)
				
			}else{
				console.log("수정모드");
				let editId = $(this).data("id");
				console.log("editId : " + editId);
				
				$("#td"+editId).text($("#editDepNm").val());				
				
				mode = "delete";
				
				//쓰레기통 아이콘으로 변경
				$("#del"+editId).find("i").attr("class","fe fe-trash");
			}
		});

		//수정모드로 변경한 후 submit
		$(".sub").click(function(e){
			
			console.log("왔다");
			let id = $(this).attr("id");
			console.log("id : " + id);
			let data = $("#td"+id).text();
					
			if(mode=="delete"){
				//editDepNm에 값 넣어주기
				$("#editDepNm").val(data);
				//editDepCd에 값 넣어주기
				$("#editDepCd").val($("#depCd"+id).val());
				$("#td"+id).text("");
				$("#td"+id).append("<input type='text' name='depNm1' id='depNm1' value='"+data+"' class='form-control input-sm'  style='width:200px;' required='required' />");
				$("#del"+id).find("i").attr("class","mdi mdi-backspace");
			}else{
				let depNm = $("#depNm1").val();
				let depCd = $("#editDepCd").val();
				
				console.log("depNm : " + depNm + ", depCd : " + depCd);
				
				goUpdate(depNm, depCd);
							
			}
			
			//수정모드로 변경
			mode = "edit";
			
			
		});
	
		// 부서명 수정 ajax 함수
		function goUpdate(depNm, depCd){
			console.log("depNm : " + depNm + ", depCd : " + depCd);
			
			let depData = {"depNm":depNm,"depCd":depCd};
			
			// 스프링 시큐리티를 위한 토큰처리(csrf)
			let header = "${_csrf.headerName}";
			let token = "${_csrf.token}";
			
			//ajax로 update 처리 => Controller에서 골뱅이RequestBody DepartmentVO departmentVO
			$.ajax({
				url:"./updateDep",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(depData),
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:(function(result){
					console.log("result : ", result);
					
					if(result>0){		// 성공시
						swal("수정되었습니다!!");
						setTimeout(function () {
							location.href="/department/depAdmin";
					}, 1000);
					}else{
						alert("수정되지 않았습니다.");
					}
				})
			});
			
		}
		
// 		function goRemove(depCd){
		const goRemove = (depCd) => {   // 부서 삭제하기!!
			console.log("이제 삭제한다!!");
			let depData = {"depCd":depCd};
			
			// 스프링 시큐리티를 위한 토큰처리(csrf)
			let header = "${_csrf.headerName}";
			let token = "${_csrf.token}";
			swal({
				  title: "팀을 삭제 하시겠습니까?",
				  text: "삭제시 다시 복구할 수 없습니다.",
				  type: "info",
				  showCancelButton: true,
				  confirmButtonText : "예",
				  cancelButtonText : "아니오",
				  closeOnConfirm: false,
				  closeOnCancel: false,
				  showLoaderOnConfirm: true
			
			} , function(isConfirm){
				if(isConfirm){
					$.ajax({
						url:"./deleteDep",
						contentType:"application/json;charset=utf-8",
						data:JSON.stringify(depData),
						type:"post",
						beforeSend:function(xhr){
							xhr.setRequestHeader(header, token);
						},
						success:(function(result){
							console.log("result : ", result);
							
							if(result>0){		// 성공시
								swal("삭제되었습니다!!");
								setTimeout(function () {
									location.href="/department/depAdmin";
							}, 1000);
							
							
							}else{
								swal("삭제되지 않았습니다.");
							}
						})
					});
				}else{
					swal("취소합니다.", "삭제하지 않았습니다. :)", "error");
					return
				}
				
			});
		}
		
		// 부서 추가하기!!
		const goInsert = (depCd, depNm, depPar) => {  
			let insertData = {"depCd":depCd, "depNm":depNm, "depPar":depPar};
			// 스프링 시큐리티를 위한 토큰처리(csrf)
			let header = "${_csrf.headerName}";
			let token = "${_csrf.token}";
			$.ajax({
				url:"./insertDep",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(insertData),
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:(function(result){
					console.log("result : ", result);
					
					if(result>0){		// 성공시
						swal("새로운 부서가 등록 되었습니다!!");
						setTimeout(function () {
							location.href="/department/depAdmin";
					}, 1000);
					}else{
						alert("부서가 등록되지 않았습니다.");
					}
				})
			});
			
		}
	
</script>

<script>
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
			"animation" : 0,
			'check_callback' : true,
			'data' : {
				"url" : "/tree/departmentData" ,
				"dataType" : "json" 
			}
		},

	    'types':{
			
	    	'default' : {
				"icon" : "/resources/css/person.png"
			}
		}, 
		'plugins' : ["types","search","contextmenu"],
		'contextmenu' : {
			'items' : function(node) {
// 				console.log("node" ,node);
				console.log("parent : " , node.parents.length);
				 var tree = $("#tree").jstree(true);
	             return {
						"create_folder":{
							"separator_after"	: true,
							"label"				: "부서추가",
							"action"			: function (data) {
								var inst = $.jstree.reference(data.reference),
									obj = inst.get_node(data.reference);
								
								console.log("obj : " , obj);
								if(obj.parents.length !=2){
									swal("이곳에는 부서를 추가할 수 없습니다.", "", "info");
									return
								}else{
									inst.create_node(obj, { type : "default" }, "last", function (new_node) {
										setTimeout(function () { inst.edit(new_node); },0);
									});
								}
							}
						},
						'Rename': {
							"separator_before": false,
							"separator_after": true,
							"label": "수정",
							"action": function(obj) {
								console.log("rename : " , node);
							
								if(node.parents.length == 3){
									tree.edit(node);
								}else{
									swal("수정할 수 없습니다.", "'팀'만 수정이 가능합니다. :)", "error");
									return
								}
							}
						},
						
						"Remove": {
		                     "separator_before": false,
		                     "separator_after": false,
		                     "label": "삭제",
		                     "action": function (obj) {
									let depData = {"depCd":node.id};
									let depCd = node.id;
									if(node.parents.length == 3){
		                        		console.log("성공");
		                        		goRemove(depCd)
	                        		      	
	                        		}else{
		                        		swal("삭제할 수 없습니다.", "'팀'만 삭제 가능합니다. :)", "error");
		                          		return 
		                        	} // else end
	                       	 } // action end
	                    } // remove end
	             } // return end

			}
			
		},
	}).on("ready.jstree",function(e){
		$('#tree').jstree('open_all'); 
	}).on("rename_node.jstree",function(obj, val){   // 기존 부서명 수정된 값을 여기서 불러오기가 가능함
		let depCd = val.node.id; 
		let depNm = val.text;
		let depPar = val.node.parent;
		console.log(val.node.parents.length);
			if(depNm == val.old){ // 기존명과 변함이 없으면 return
				return
			}
			if(val.old ==  "New node"){  // 부서추가
				goInsert(depCd, depNm, depPar)
				return
			}
			goUpdate(depNm, depCd)   // 부서명 수정 
	
	});
	


</script>



















<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<style type="text/css">

.read {
	font-weight: lighter;
	color: #adb5bd
}



</style>

<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<div class="row row-sm">
	<div class="card custom-card p-3 bg-gray-100">
		<nav class="nav main-nav flex-column flex-md-row">
			<a class="nav-link" href="/mail/mailSend">메일 쓰기</a>
			<a class="nav-link" href="/mail/selectMailList"><i class="fe fe-mail"></i> 받은 메일함</a>
			<a class="nav-link active" href="/mail/sendList"><i class="fe fe-send"></i> 보낸 메일함</a>
			<a class="nav-link" href="/mail/delList"><i class="fe fe-trash"></i> 휴지통</a>
		</nav>
	</div>
	<div class="mail-option">
<!-- 		<div class="chk-all border-0"> -->
<!-- 			<div class="btn-group"> -->
<!-- 				<a data-bs-toggle="dropdown" href="#" class="btn mini all" aria-expanded="false"> -->
<!-- 					All -->
<!-- 					<i class="fe fe-chevron-down"></i> -->
<!-- 				</a> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#"> None</a></li> -->
<!-- 					<li><a href="#"> Read</a></li> -->
<!-- 					<li><a href="#"> Unread</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="btn-group"> -->
<!-- 			<a href="#" class="btn mini tooltips"> -->
<!-- 				<i class="fe fe-refresh-cw"></i> -->
<!-- 			</a> -->
<!-- 		</div> -->
			<button id="deleteButton" class="btn ripple btn-danger">삭제</button>
	</div>
	<div class="table-responsive">
<!-- 		<table class="table table-inbox text-md-nowrap table-hover text-nowrap"> -->
		<table id="example1"
		class="table table-bordered table-striped dataTable dtr-inline"
		aria-describedby="example1_info">
			<thead>
				<tr role="row"  style="text-align:center;">
					<th class="inbox-small-cells" style="width: 5%;">
						<label class="custom-control custom-checkbox mb-0">
							<input type="checkbox" class="custom-control-input" id="check_all">
							<span class="custom-control-label"></span>
						</label>
					</th>
					<th class="sorting" tabindex="0" aria-controls="example3"
						rowspan="1" colspan="1" style="width: 5%;"
						aria-label="Last name: activate to sort column ascending"></th>
					<th class="sorting" tabindex="0" aria-controls="example3"
						rowspan="1" colspan="1" style="width: 60%;"
						aria-label="Last name: activate to sort column ascending">제목</th>
					<th class="sorting" tabindex="0" aria-controls="example3"
						rowspan="1" colspan="1" style="width: 20%;"
						aria-label="Office: activate to sort column ascending">발송일시</th>
					<th class="sorting" tabindex="0" aria-controls="example3"
						rowspan="1" colspan="1" style="width: 5%;"
						aria-label="Position: activate to sort column ascending">발신자</th>
				</tr>
			</thead>
			<tbody id="listBody">
				
				<c:if test="${not empty list }">
					<c:forEach items="${list }" var="mail">
						<tr>
							<td class="inbox-small-cells" style="width: 5%;">
								<label class="custom-control custom-checkbox mb-0">
									<input type="checkbox" class="custom-control-input del" id="check_unit_" name="chkList" value="${mail.emlCd }">
									<span class="custom-control-label"></span>
								</label>
<%-- 								<input class="form-control" value="<sec:authentication property="principal.employeeVO.empCd"/>" type=hidden name="ctor" id="ctor" readonly> --%>
							</td>
							<td class="inbox-small-cells" style="width: 5%;"><i class="fa fa-star <c:if test="${mail.emlImpYn eq 'Y'}">text-warning</c:if> <c:if test="${mail.emlImpYn ne 'Y'}">text-dark</c:if>"></i></td>
							<td style="width: 60%;" ><a href="/mail/selectMailDetail/${mail.emlCd}" id="fn_read" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>">${mail.emlTit }</a>
							</td>
							<td style="width: 20%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" >${mail.emlDendDtToString }</td>
							<td style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" ><sec:authentication property='principal.employeeVO.empNm'/></td>
							<td style="width: 5%;" class="<c:if test="${mail.emlReadYn eq '1'}">read</c:if>" >${mail.locName }</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty list }">
					<tr>
						<td colspan="7" style="text-align:center;" class="text-dark">보낸 메일이 존재하지 않습니다.</td>
					</tr>
				</c:if>
			</tbody>
		</table>
	</div>
			<!-- mail-content -->
</div>

<form name="deleteForm" method="post" action="/mail/updateDel">
	<input type="hidden" name="idList" />
</form>

<script type="text/javascript">
	// 시큐리티 토큰용
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
    $(function(){
        $('#check_all').change(function(){
            if($("#check_all").is(":checked")) {
                $('input[id^="check_unit_"]').each((index, item) => {
                	$(item).prop("checked", true);
                });
            }
            else {
                $('input[id^="check_unit_"]').each( (index,item)=>{
                    $(item).prop("checked", false);
                });
            }
        });
    }); 
    
    $("#deleteButton").click(function(){
		//모든 체크박스
    	let chkAllBoxArr = [];
		//체크된 체크박스
    	let chkBoxArr = [];
    	
		$('input[id^="check_unit_"]').each((index, item) => {
			chkAllBoxArr.push($(item).val());
		});
		
		console.log("chkAllBoxArr : " + chkAllBoxArr);
		
		$("input:checkbox[name='chkList']:checked").each((index, item) => {
			console.log('item : ', $(item).val());
			chkBoxArr.push($(item).val());
		});
		
		console.log("chkBoxArr : " + chkBoxArr);
    	
    	let cnt = $("input:checkbox[name='chkList']:checked").length;
    	if(cnt == 0) {
    		alert("삭제할 항목을 선택해 주세요.");
    	}
    	if(cnt > 0) {
    		let con = confirm("선택한 메일 " + cnt + "개를 삭제하시겠습니까?");
    		if(con == true) {
    			alert("삭제 수행2");   
    			$.ajax({
    				url:"/mail/sendDel",
    				data: {
    					"mailArr" : chkBoxArr	
    				},
    				type:"post",
    				beforeSend: function(xhr) {
    					xhr.setRequestHeader(header,token);
    	            },
    	            success: function(result) {
   	            		// 삭제된 것들은
	   	         		$('input[id^="check_unit_"]:checked').each((index, item) => {
	   	            		// 체크박스 풀어주고
	   	            		console.log('item : ', $(item).val());
							$(item).prop("checked", false);
							$("#check_all").prop("checked", false);
							
	   	            		alert("선택한 메일 " + cnt + "개가 휴지통으로 이동했습니다.");
	   	            		// 페이지 새로고침
	   	            		location.reload();
		   	     		});
   	            		
    	            }
    	            , error : function(xhr) {
   	            		alert("삭제가 되지 않았습니다.");
					}
    			});
    		}
    		else {
    			alert("삭제가 취소되었습니다.");
    		}
    	}
	});
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.ui.widget.js"></script>
<link href="/resources/assets/plugins/fancyuploder/fancy_fileupload.css" rel="stylesheet">
<link href="/resources/assets/plugins/fileuploads/css/fileupload.css" rel="stylesheet" type="text/css">
<!-- Select2 css -->
<link href="/resources/assets/plugins/select2/css/select2.min.css" rel="stylesheet">
<!-- DATA TABLE CSS -->
<link href="/resources/assets/plugins/datatable/css/dataTables.bootstrap5.css" rel="stylesheet">
<link href="/resources/assets/plugins/datatable/css/buttons.bootstrap5.min.css" rel="stylesheet">
<link href="/resources/assets/plugins/datatable/css/responsive.bootstrap5.css" rel="stylesheet">
<style>
  #chkAll {
    position: absolute;
    top: 10.5px;
  }
  
  .tdchk{  
   	vertical-align: middle; 
   	text-align:center;  
   	padding-left:47px;
  }  
</style>
<!-- Page Header -->
<div >
<sec:authentication property="principal.employeeVO.empCd" var="prcEmpCd"/>
<sec:authentication property="principal.employeeVO.depCd" var="prcDepCd"/>
<input type="hidden" name="company" value="company"/>
		<div>
			<button type="button" id="${stat.count}" class="btn ripple btn-danger btn delbtn">삭제</button>
			<button type="button" id="${stat.count}" class="btn aaa btn-light btn downloadbtn" ><i class="fe fe-download"></i> 다운로드</button>
		</div>
		<hr>
</div>
<!-- End Page Header -->
<div class="tab-pane table-responsive" id="tabCont2">
	<div id="example1_wrapper"
		class="dataTables_wrapper dt-bootstrap5 no-footer">
		
		<div class="row">
			<div class="col-sm-12">
				<table
					class="table table-bordered border-bottom dataTable no-footer table-striped"
					id="example3" role="grid" aria-describedby="example1_info">
					<thead>
						<tr role="row">
							<th style="width: 1%;text-align:center;"><input type="checkbox" name="chkAll" id="chkAll" value="${totalRefeVO.refeCd}" /></th>
							<th class="wd-25p sorting" tabindex="0" aria-controls="example1"
								rowspan="1" colspan="1"
								aria-label="Position: activate to sort column ascending"
								style="width: 25%;">파일명</th>
							<th class="wd-20p sorting" tabindex="0" aria-controls="example1"
								rowspan="1" colspan="1"
								aria-label="Office: activate to sort column ascending"
								style="width: 5%;">등록자</th>
							<th class="wd-15p sorting" tabindex="0" aria-controls="example1"
								rowspan="1" colspan="1"
								aria-label="Age: activate to sort column ascending"
								style="width:5%;">등록일시</th>
							<th class="wd-20p sorting" tabindex="0" aria-controls="example1"
								rowspan="1" colspan="1"
								aria-label="Salary: activate to sort column ascending"
								style="width: 5%;">조회 수</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="totalRefeVO" items="${totalRefeVOList}" varStatus="stat">
					<c:set var = "name" value = "${totalRefeVO.refeCd}"/>
					<c:set var = "refeName" value = "${fn:substring(name, 0, 3)}" />
					<c:if test="${refeName eq 'R01'}">
							<input type="hidden" id="refeCd${stat.count}" name="refeCd" value="${totalRefeVO.refeCd}"/>
							<input type="hidden" class="refeFileNm" id="refeFileNm${stat.count}" name="refeFileNm" value="${totalRefeVO.refeFileNm}"/> 
							<input type="hidden" class="selcount" id="${stat.count}" />
							<td class="tdchk"><input type="checkbox" name="chkList" id="chkbox" value="${totalRefeVO.refeCd}"/></td>
							<td><a href="/reference/detail?refeCd=${totalRefeVO.refeCd}">${totalRefeVO.refeFileOrgNm}</a></td>
							<td>${totalRefeVO.employeeVOList[0].empNm}</td>
							<td><fmt:formatDate value="${totalRefeVO.regTi}" pattern="yy년MM월dd일  HH시mm분"/></td>
							<td><fmt:formatNumber value='${totalRefeVO.viewCnt}' pattern='#,###' /></td>
						</tr>
<%-- 					<p>${totalRefeVO.depCd},${refeName }</p> --%>
					</c:if>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<form action="/reference/downloadZipFile" id="frm2" method="post">
	<div class="input-group date"> 
		<input type="hidden" name="refeCd" id="refeCd" class="form-control" value="" />
	</div>
	<sec:csrfInput/>
</form>
<!-- End Row -->
<iframe id="ifrm" name="ifrm" style="display:none;"></iframe>
<script type="text/javascript">
$(document).ready(function() {
	$("#chkAll").click(function() {
		if($("#chkAll").is(":checked")) $("input[name=chkList]").prop("checked", true);
		else $("input[name=chkList]").prop("checked", false);
	});

	$("input[name=chk]").click(function() {
		var total = $("input[name=chkList]").length;
		var checked = $("input[name=chkList]:checked").length;

		if(total != checked) $("#chkAll").prop("checked", false);
		else $("#chkAll").prop("checked", true); 
	});
});
</script>
<script type="text/javascript" src="/resources/js/jquery.fileupload.js"></script>
<script type="text/javascript" src="/resources/js/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="/resources/js/jquery.fancy-fileupload-reference.js"></script>
<!-- Internal Data Table js -->
<script src="/resources/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/dataTables.bootstrap5.js"></script>
<script src="/resources/assets/plugins/datatable/js/dataTables.buttons.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.bootstrap5.min.js"></script>
<!-- <script src="/resources/assets/plugins/datatable/js/jszip.min.js"></script> -->
<script src="/resources/assets/plugins/datatable/pdfmake/pdfmake.min.js"></script>
<script src="/resources/assets/plugins/datatable/pdfmake/vfs_fonts.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.html5.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.print.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.colVis.min.js"></script>
<script src="/resources/assets/plugins/datatable/dataTables.responsive.min.js"></script>
<script src="/resources/assets/plugins/datatable/responsive.bootstrap5.min.js"></script>
<script src="/resources/assets/js/table-data.js"></script>
<script src="/resources/assets/js/select2.js"></script>
<!-- Select2 js-->
<script src="/resources/assets/plugins/select2/js/select2.min.js"></script>
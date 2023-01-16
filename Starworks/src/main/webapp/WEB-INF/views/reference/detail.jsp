<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<c:set var = "exten" value = "${totalRefeVO.refeFileExten}"/>
<c:set var = "refeExten" value = "${fn:split(exten,'/')}" />
<hr>
<table class="table text-nowrap text-md-nowrap table-bordered table-striped">
  <thead>
    <tr>
      <th colspan="6" style="font-size:20px; ">자료 상세 보기</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" class="bg-gray-200">파일명</th>
      <td colspan="5">${totalRefeVO.refeFileOrgNm}</td>
<%--       <td colspan="5">${totalRefeVO.refeTit}</td> --%>
    </tr>
    <tr>
      <th scope="row" class="bg-gray-200">등록자</th>
      <td colspan="2">${totalRefeVO.employeeVOList[0].empNm}</td>
    </tr>
    <tr>
      <th scope="row" class="bg-gray-200">등록일시</th>
      <td ><fmt:formatDate value="${totalRefeVO.regTi}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
    </tr>
  </tbody>
</table>
<div class="card custom-card">
	<div class="">
		<div class="main-content-body main-content-body-contacts">
			<div class="main-contact-info-header pt-3">
				<div class="media-body">
					<h6>${totalRefeVO.refeCon}</h6>
				</div>
			</div>
			<div class="main-contact-info-body">
				<div class="media-list">
					<div class="media">
						<div class="media-body">
							<div>
								<label style="font-size:16px;">첨부</label><a download href="/resources/refeUpload${totalRefeVO.refeFileNm}">${totalRefeVO.refeFileOrgNm}</a>
<%-- 								<span class="tag tag-attachments rounded-30 bg-danger"><span class="me-2"><i class="mdi mdi-file-pdf tx-24"><a download href="/resources/refeUpload${totalRefeVO.refeFileNm}">${totalRefeVO.refeFileOrgNm}</a></i></span></span> --%>
							</div>
						</div>
					</div>
					<button type="button" onclick="back()" class="btn ripple btn-light btn" style="float:right;">목록</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
function back(){
	var para = document.referrer.split('/')[4];
	console.log("referre: " + "/reference/"+para);
	location.href="/reference/"+para;
}
</script>
<!-- datatables -->
<script src="/resources/assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/resources/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/resources/assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/resources/assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/resources/assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/resources/assets/plugins/jszip/jszip.min.js"></script>
<script src="/resources/assets/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/resources/assets/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/resources/assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/resources/assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/resources/assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
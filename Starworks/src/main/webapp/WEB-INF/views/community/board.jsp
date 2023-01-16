<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Internal Jquery.maskedinput js-->
<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script>

<!-- Internal Ion-rangeslider js-->
<script src="/resources/assets/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>

<!-- Internal Form-elements js-->
<script src="/resources/assets/js/form-elements.js"></script>

<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<style>
.dataTables_wrapper div.dataTables_filter {
    text-align: right;
}

label {
    display: inline-block;
    margin-bottom: 0.5rem;
    display: inline-flex;
}
div.dataTables_paginate ul.pagination {
	justify-content: flex-end;
}
.row>* {
	width: 0%;
}
</style>
<div style="text-align: center;">
	<h1 id="reload_target">커뮤니티</h1><br>
</div>	
	<div class="card-body">
		<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
			<div class="row">
				<div class="col-sm-12">
					<table id="example1"
						class="table table-bordered table-striped dataTable dtr-inline"
						aria-describedby="example1_info">
						<thead>
							<tr role="row">
								<th class="sorting sorting_asc" tabindex="0"
									aria-controls="example3" rowspan="1" colspan="1"
									style="width: 5%;" aria-sort="ascending"
									aria-label="First name: activate to sort column descending">순번</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 60%;"
									aria-label="Last name: activate to sort column ascending">제목</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 20%;"
									aria-label="Office: activate to sort column ascending">작성일</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 5%;"
									aria-label="Position: activate to sort column ascending">작성자</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 5%;"
									aria-label="Office: activate to sort column ascending">조회수</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 5%;"
									aria-label="Office: activate to sort column ascending">댓글수</th>
								<th class="sorting" tabindex="0" aria-controls="example3"
									rowspan="1" colspan="1" style="width: 5%;"
									aria-label="Office: activate to sort column ascending">추천수</th>
							</tr>
						</thead>
						<tbody id="listBody">
							<c:if test="${not empty list }">
									<c:forEach items="${list }" var="commu">
										<tr>
											<td>${commu.rnum }</td>
											<td><a href="/commu/selectCommuDetail/${commu.comNo}" class="order-1">${commu.tit }</a></td>
											<td>${commu.regDt }</td>
											<td>${commu.viewCnt }</td>
											<td>${commu.comCmmt }</td>
											<td>${commu.hitCnt }</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty list }">
								<tr>
									<td colspan="6">등록된 게시글이 존재하지 않습니다.</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="card-footer">
		<div style="float:right; margin: 0 0 0 5px;">
			<a href="/commu/insertForm" class="btn ripple btn-primary">등록</a>
		</div>
	</div>
	


<script type="text/javascript">
	// table dnd
	$(function () {
	    $("#example1").DataTable({
			"responsive" : true,
			"lengthChange" : false,
			"autoWidth" : false,
			"ordering" : true,
	  		"order": [[0, 'desc']]
		}).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
	
		$('#example2').DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false,
			"responsive" : true,
		});
	});

</script>









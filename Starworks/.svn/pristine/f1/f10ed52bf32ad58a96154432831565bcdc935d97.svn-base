<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/jquery.mentiony.css">
<title>Insert title here</title>
<script type="text/javascript"
	src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.mentiony.js"></script>
<script>
	function renameKey ( obj, oldKey, newKey ) {
		obj[newKey] = obj[oldKey];
		delete obj[oldKey];
	}
	$(function() {
		$('textarea.mention1').mentiony({
	    onDataRequest: function (mode, keyword, onDataRequestCompleteCallback) {
	        // 스프링 시큐리티를 위한 토큰처리(csrf)
		let header = "${_csrf.headerName}";
		let token = "${_csrf.token}";
		
		$.ajax({
			type : "post",
			url : "/mentionList",
			dataType : "json",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success : function(response) {
				const arr1 = response;
				arr1.forEach( obj => renameKey( obj, 'empId', 'id' ) );
				
				const arr2 = arr1;
				arr2.forEach( obj => renameKey( obj, 'empNm', 'name' ) );
				
				const arr3 = arr2;
				arr3.forEach( obj => renameKey( obj, 'profile', 'avatar' ) );
				
				const arr4 = arr3;
				arr4.forEach( obj => renameKey( obj, 'depNm', 'info' ) );
				
				console.log( 'ajax : ', arr4 );
				var data = arr4;
                // NOTE: Assuming this filter process was done on server-side
                data = jQuery.grep(data, function( item ) {
                    return item.name.toLowerCase().indexOf(keyword.toLowerCase()) > -1;
                });
                // End server-side

                // Call this to populate mention.
                onDataRequestCompleteCallback.call(this, data);
			}
		});
		},
	    timeOut: 500, // Timeout to show mention after press @
	    debug: 1, // show debug info
		});
	});
</script>
</head>
<body>
	<div class="col-sm-6 demo">
		<textarea id="t1" name="mention1" class="mention1" rows="6">Try to @John</textarea>
	</div>
</body>
</html>
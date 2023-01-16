<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> 
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<div>
	<iframe id="the_iframe" style="" src="http://localhost:8859/chat?userid=<sec:authentication property="principal.employeeVO.empId"/>&username=<sec:authentication property="principal.employeeVO.empNm"/>" width="700vw" height="650vh"frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=no vspace=0> </iframe>
</div>

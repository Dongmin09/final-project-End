<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<!--  js  시작 -->
	<!--  js  시작 -->

<!-- Internal Quill css-->
<link href="/resources/assets/plugins/quill/quill.snow.css" rel="stylesheet">
<link href="/resources/assets/plugins/quill/quill.bubble.css" rel="stylesheet">

<!-- Internal richtext css-->
<link rel="stylesheet" href="/resources/assets/plugins/wysiwyag/richtext.css">
<script>
   $(function() {
      $("#sel").on("change", function() {
         if($("#sel").val() == "1") {
            $("#aa").css("display", "block");
            $("#bb").css("display", "none");
            $("#cc").css("display", "none");
         }
         if($("#sel").val() == "2") {
            $("#bb").css("display", "block");
            $("#aa").css("display", "none");
            $("#cc").css("display", "none");
         }
         if($("#sel").val() == "3") {
            $("#cc").css("display", "block");
            $("#bb").css("display", "none");
            $("#aa").css("display", "none");
         }
      })
   });
   
   
   
</script>
    <!-- js 끝  -->
</head>


   <select id="sel">
      <option value="0" selected="selected">:: 선택해주세요 ::</option>
      <option value="1">기안서</option>
      <option value="2">지출 결의서</option>
      <option value="3">연차 신청서</option>
   </select>
   
   <div id="aa" style="display: none;">
      <c:import url="/approval/draftform"></c:import>
   </div>
   <div id="bb" style="display: none;">
      <c:import url="/approval/payform"></c:import>
   </div>
   <div id="cc" style="display: none;">
      <c:import url="/approval/vacationform"></c:import>
   </div>

<script src="/resources/js/jstree.min.js"></script>
<link rel="stylesheet" href="/resources/css/jstreeStyle.min.css" />

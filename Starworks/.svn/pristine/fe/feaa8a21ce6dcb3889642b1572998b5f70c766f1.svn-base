<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
  <head>
	<!-- 구글 차트 호출을 위한 js 파일 라이브러리 임포트 -->
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
    	    function drawChart() {
    	    	 var data = google.visualization.arrayToDataTable([
    	         	['COMM_CD_NM', 'PRICE', { role: 'style' }],
    	         	['평균', ${avg}, '#d3cffc'],
    	         	<c:forEach var="arr" items="${depExpense}" varStatus="stat">
    	 	            ['${arr.COMM_CD_NM}',  ${arr.PRICE}, '#534c9f'],
    	             </c:forEach>
    	         ]);

        var options = {
          title:'금년 부서별 결제금액',
          fontSize: 15,
          pieSliceText: 'value'
        };

        var chart = new google.visualization.BarChart(document.getElementById('barchart_values'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="barchart_values" style="width: 900px; height: 500px;"></div>
  </body>
</html>

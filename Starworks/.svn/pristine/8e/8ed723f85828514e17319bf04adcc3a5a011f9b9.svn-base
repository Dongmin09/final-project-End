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
          ['입/퇴사자', '인원(명)'],
          ['입사자 수', ${signempcnt}],
          ['퇴사자 수', ${leaveempcnt}]
        ]);

        var options = {
      	  colors:['#9990fd','#6259ca'],
          title:'금년 입/퇴사자 수 현황',
          pieHole: 0.4,
          pieSliceText: 'value',
          fontSize: 25,
          
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 구글 차트 호출을 위한 js 파일 라이브러리 임포트 -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
    	  var data = google.visualization.arrayToDataTable([
    	  	  ['부서','2022년', '2023년']
    	  <c:forEach var="depapprcnt" items="${depapprcnt}" varStatus="stat">
              ,["${depapprcnt.COMM_CD_NM}", "${depapprcnt.CNT}" , "${depapprcntlast[stat.index].CNT}"]
    	  </c:forEach>
            ]);

        var options = {
          chart: {
            title: '부서 별 결재량',
            subtitle: 'Sales, Expenses, and Profit: 2014-2017',
            fontSize: 30,
          },
          series: {
	          0: { color: '#9990fd' },
	          1: { color: '#6259ca' }
	        }
        };

        
        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <div id="columnchart_material" style="width: 1200px; height: 500px;"></div>
  </body>
</html>

<div id="chart_div"></div>


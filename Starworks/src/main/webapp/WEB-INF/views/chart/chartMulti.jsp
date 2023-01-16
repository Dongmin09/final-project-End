<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<html>
  <head>
	<!-- 구글 차트 호출을 위한 js 파일 라이브러리 임포트 -->
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	
	<script type="text/javascript">
      google.charts.load('current', {'packages':['bar','corechart']});
      google.charts.setOnLoadCallback(drawChart);
      google.charts.setOnLoadCallback(drawChart2);
      google.charts.setOnLoadCallback(drawChart3);
      google.charts.setOnLoadCallback(drawChart4);
     
      function drawChart() {
    	  var data = google.visualization.arrayToDataTable([
    	  	  ['회의실','2022년', '2023년']
    	  <c:forEach var="mc" items="${meetcnt}" varStatus="stat">
              ,["${mc.MEET_NO}", "${mc.CNT}" , "${meetcntlast[stat.index].CNT}"]
    	  </c:forEach>
            ]);

        var options = {
          chart: {
            title: '회의실 별 사용 현황',
            subtitle: '2022-2023',
            
          },
	        series: {
	          0: { color: '#9990fd' },
	          1: { color: '#6259ca' }
	        }
          
        };

        
        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
      
      function drawChart2() {
    	  var data = google.visualization.arrayToDataTable([
    	  	  ['부서','2022년', '2023년']
    	  <c:forEach var="depapprcnt" items="${depapprcnt}" varStatus="stat">
              ,["${depapprcnt.COMM_CD_NM}", "${depapprcnt.CNT}" , "${depapprcntlast[stat.index].CNT}"]
    	  </c:forEach>
            ]);

        var options = {
          chart: {
            title: '부서 별 결재량',
            subtitle: '2022-2023',
            fontSize: 30,
          },
          series: {
	          0: { color: '#9990fd' },
	          1: { color: '#6259ca' }
	        }
        };

        
        var chart = new google.charts.Bar(document.getElementById('columnchart_material2'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
      
      
      function drawChart3() {
    	  var data = google.visualization.arrayToDataTable([
              ['입/퇴사자', '인원(명)'],
              ['입사자 수', ${signempcnt}],
              ['퇴사자 수', ${leaveempcnt}]
            ]);

            var options = {
          	  colors:['#9990fd','#6259ca'],
              title:'금년 입/퇴사자 수 현황',
              subtitle: '2023',
              pieHole: 0.4,
              pieSliceText: 'value',
              fontSize: 15,
              
            };

        
        var chart = new google.visualization.PieChart(document.getElementById('columnchart_material3'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
      
      function drawChart4() {
    	  var data = google.visualization.arrayToDataTable([
	         	['부서', '금액', { role: 'style' }],
	         	['평균', ${avg}, '#d3cffc'],
	         	<c:forEach var="arr" items="${depExpense}" varStatus="stat">
	 	            ['${arr.COMM_CD_NM}',  ${arr.PRICE}, '#534c9f'],
	             </c:forEach>
	         ]);

		  var options = {
		    title:'금년 부서별 결제금액',
		    subtitle: '2023',
		    fontSize: 15,
		    pieSliceText: 'value'
		  };


        
        var chart = new google.visualization.BarChart(document.getElementById('columnchart_material4'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
<body>
    <!--Table and divs that hold the pie charts-->
    <table class="columns" style="width:100%;">
      <tr>
        <td><div id="columnchart_material" style="width: 500px; height: 300px;"></div></td>
        <td><div id="columnchart_material2" style="width: 500px; height: 300px;"></div></td>
      </tr>
      <tr>
        <td><div id="columnchart_material3" style="width: 500px; height: 300px;"></div></td>
        <td><div id="columnchart_material4" style="width: 500px; height: 300px;"></div></td>
      </tr>
    </table>
  </body>
</html>

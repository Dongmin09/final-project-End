<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  

<!DOCTYPE html>
<html id="demo">
<head>
	<style type="text/css">
	
	@font-face {
	    font-family: 'MICEGothic Bold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
	    font-weight: 700;
	    font-style: normal;
	}
	
	* {
		font-family : 'MICEGothic Bold'
	}
	
	table thead {
		font-size: medium;
	}
	
    .xyz {
        background-size: auto;
        text-align: center;
        padding-top: 100px;
    }
    .btn-circle.btn-sm {
        width: 30px;
        height: 30px;
        padding: 6px 0px;
        border-radius: 15px;
        font-size: 8px;
        text-align: center;
    }
    .btn-circle.btn-md {
        width: 50px;
        height: 50px;
        padding: 7px 10px;
        border-radius: 25px;
        font-size: 10px;
        text-align: center;
    }
    .btn-circle.btn-xl {
        width: 90px;
        height: 90px;
        padding: 10px 16px;
        border-radius: 35px;
        font-size: 12px;
        text-align: center;
    }
	
	</style>
	<meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
	<meta name="description" content="Spruha -  Admin Panel HTML Dashboard Template">
	<meta name="author" content="Spruko Technologies Private Limited">
	<meta name="keywords"
		content="admin,dashboard,panel,bootstrap admin template,bootstrap dashboard,dashboard,themeforest admin dashboard,themeforest admin,themeforest dashboard,themeforest admin panel,themeforest admin template,themeforest admin dashboard,cool admin,it dashboard,admin design,dash templates,saas dashboard,dmin ui design">

	<!-- Favicon -->
	<link rel="icon" href="/resources/assets/img/brand/favicon.ico" type="image/x-icon" />
 
	<!-- Title -->
	<title>STARWORKS</title>

	<!-- Bootstrap css-->
	<link  id="style" href="/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

	<!-- Icons css-->
	<link href="/resources/assets/plugins/web-fonts/icons.css" rel="stylesheet" />
	<link href="/resources/assets/plugins/web-fonts/font-awesome/font-awesome.min.css" rel="stylesheet">
	<link href="/resources/assets/plugins/web-fonts/plugin.css" rel="stylesheet" />

	<!-- Style css-->
	<link href="/resources/assets/css/style.css" rel="stylesheet">

	<!-- Select2 css-->
	<link href="/resources/assets/plugins/select2/css/select2.min.css" rel="stylesheet">

	<!-- Mutipleselect css-->
	<link rel="stylesheet" href="/resources/assets/plugins/multipleselect/multiple-select.css">
	
	<!-- Internal Sweet-Alert css -->
	<link href="/resources/assets/plugins/sweet-alert/sweetalert.css" rel="stylesheet">

	
</head>


<body class="ltr main-body leftmenu">

	<!-- Loader -->
	<div id="global-loader">
		<img src="/resources/assets/img/loader.svg" class="loader-img" alt="Loader">
	</div>
	<!-- End Loader -->


	<!-- Page -->
	<div class="page">

		<!-- Main Header-->
		<tiles:insertAttribute name="header" />
		<!-- End Main Header-->

		<!-- Sidemenu -->
		<tiles:insertAttribute name="aside" />  
		<!-- End Sidemenu -->

		<!-- Main Content-->
		<div class="main-content side-content pt-0">
			<div class="main-container container-fluid">
				<div class="inner-body">
					
					<!-- Page Header -->
					<div class="page-header" style="min-height: 0px;">
					</div>
					<!-- End Page Header -->

					<!--Row-->			
					<div>
						<tiles:insertAttribute name="body" />
					</div>											
					<!-- Row end -->
				</div>
			</div>
		</div>
		<!-- End Main Content-->

		<!-- Main Footer-->
		<tiles:insertAttribute name="footer" />
		<!--End Footer-->



	</div>
	<!-- End Page -->

	<!-- Back-to-top -->
	<a href="#top" id="back-to-top"><i class="fe fe-arrow-up"></i></a>
	
	<!-- Jquery js-->
<!-- 	<script src="/resources/assets/plugins/jquery/jquery.min.js"></script> -->

	<!-- Bootstrap js-->
	<script src="/resources/assets/plugins/bootstrap/js/popper.min.js"></script>
	<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- Internal Chart.Bundle js-->
	<script src="/resources/assets/plugins/chart.js/Chart.bundle.min.js"></script>

	<!-- Peity js-->
	<script src="/resources/assets/plugins/peity/jquery.peity.min.js"></script>

	<!-- Select2 js-->
	<script src="/resources/assets/plugins/select2/js/select2.min.js"></script>
	<script src="/resources/assets/js/select2.js"></script>

	<!-- Perfect-scrollbar js -->
	<script src="/resources/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

	<!-- Sidemenu js -->
	<script src="/resources/assets/plugins/sidemenu/sidemenu.js"></script>

	<!-- Sidebar js -->
	<script src="/resources/assets/plugins/sidebar/sidebar.js"></script>

	<!-- Internal Morris js -->
	<script src="/resources/assets/plugins/raphael/raphael.min.js"></script>
	<script src="/resources/assets/plugins/morris.js/morris.min.js"></script>

	<!-- Circle Progress js-->
	<script src="/resources/assets/js/circle-progress.min.js"></script>
	<script src="/resources/assets/js/chart-circle.js"></script>

	<!-- Internal Dashboard js-->
	<script src="/resources/assets/js/index.js"></script>

	<!-- Color Theme js -->
	<script src="/resources/assets/js/themeColors.js"></script>

	<!-- Sticky js -->
	<script src="/resources/assets/js/sticky.js"></script>

	<!-- Custom js -->
	<script src="/resources/assets/js/custom.js"></script>
	
	<!-- Internal Sweet-Alert js -->
	<script src="/resources/assets/plugins/sweet-alert/sweetalert.min.js"></script>
	<script src="/resources/assets/plugins/sweet-alert/jquery.sweet-alert.js"></script>
	
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

<!-- 	<!-- Internal Jquery.maskedinput js--> -->
<!-- 	<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script> -->

<!-- 	<!-- Internal Ion-rangeslider js--> -->
<!-- 	<script src="/resources/assets/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script> -->
	
<!-- 	<!-- Internal Form-elements js--> -->
<!-- 	<script src="/resources/assets/js/form-elements.js"></script> -->
</body>

<script type="text/javascript">
	let result = "";
	
	// 자동으로 꺼지는 알람
	function fn_callSwal(title){
		swal({
			title: title,
			timer: 1000
		})
	}

	
</script>



</html>
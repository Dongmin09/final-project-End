<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!--  -->
<script src="/resources/js/jstree.min.js"></script>
<link rel="stylesheet" href="/resources/css/jstreeStyle.min.css" />
<script type="text/javascript" src="/resources/js/jquery.ui.widget.js"></script>
<link href="/resources/assets/plugins/fancyuploder/fancy_fileupload.css" rel="stylesheet">
<link href="/resources/assets/plugins/fileuploads/css/fileupload.css" rel="stylesheet" type="text/css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!--  -->
<head>
	
<title>payform</title>
    
 <style type="text/css">
        body {margin:0;padding-left:0;padding-right:0;padding-bottom:0;padding-top:2mm;}
.hce {margin:0;padding:0;position:absolute;overflow:hidden;}
.hme {margin:0;padding:0;position:absolute;}
.hhe {margin:0;padding:0;position:relative;}
.hhi {display:inline-block;margin:0;padding:0;position:relative;background-size:contain;}
.hls {margin:0;padding:0;position:absolute;}
.hfS {margin:0;padding:0;position:absolute;}
.hcD {margin:0;padding:0;position:absolute;}
.hcI {margin:0;padding:0;position:absolute;}
.hcS {margin:0;padding:0;position:absolute;}
.hfN {margin:0;padding:0;position:relative;}
.hmB {margin:0;padding:0;position:absolute;}
.hmO {margin:0;padding:0;position:absolute;}
.hmT {margin:0;padding:0;position:absolute;}
.hpN {display:inline-block;margin:0;padding:0;position:relative;white-space:nowrap;}
.htC {display:inline-block;margin:0;padding:0;position:relative;vertical-align:top;overflow:hidden;}
.haN {display:inline-block;margin:0;padding:0;position:relative;}
.hdu {margin:0;padding:0;position:relative;}
.hdS {margin:0;padding:0;position:absolute;}
.hsC {margin:0;padding:0;position:absolute;}
.hsR {margin:0;padding:0;position:absolute;}
.hsG {margin:0;padding:0;position:absolute;}
.hsL {margin:0;padding:0;position:absolute;}
.hsT {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsE {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsA {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsP {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsV {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsO {margin:0;padding:0;position:absolute;}
.hsU {margin:0;padding:0;position:absolute;overflow:hidden;}
.hpi {margin:0;padding:0;position:absolute;}
.hch {margin:0;padding:0;position:absolute;}
.hcG {margin:0;padding:0;position:absolute;}
.heq {margin:0;padding:0;position:absolute;}
.heG {margin:0;padding:0;position:absolute;}
.htA {margin:0;padding:0;position:absolute;}
.hvi {margin:0;padding:0;position:absolute;}
.htb {margin:0;padding:0;position:absolute;}
.htG {margin:0;padding:0;position:absolute;}
.hfJ {margin:0;padding:0;position:absolute;}
.hfG {margin:0;padding:0;position:absolute;}
.hfB {margin:0;padding:0;position:absolute;}
.hfR {margin:0;padding:0;position:absolute;}
.hfC {margin:0;padding:0;position:absolute;}
.hfO {margin:0;padding:0;position:absolute;}
.hfL {margin:0;padding:0;position:absolute;}
.hfM {margin:0;padding:0;position:absolute;}
.hfE {margin:0;padding:0;position:absolute;}
.hpl {margin:0;padding:0;position:absolute;}
.hs {margin:0;padding:0;position:absolute;overflow:visible;}
.hpa {position:relative;padding:0;overflow:hidden;margin-left:2mm;margin-right:0mm;margin-bottom:2mm;margin-top:0mm;border:1px black solid;box-shadow:1mm 1mm 0 #AAAAAA;}
.hpa::after {content:'';position:absolute;margin:0;padding:0;left:0;right:0;top:0;bottom:0;background-color:white;z-index:-2;}
.hrt {display:inline-block;margin:0;padding:0;position:relative;white-space:inherit;vertical-align:middle;line-height:1.1;}
.hco {display:inline-block;margin:0;padding:0;position:relative;white-space:inherit;}
.hcc {margin:0;padding:0;position:absolute;}
.hls {clear:both;}
[onclick] {cursor:pointer;}
.cs0 {font-size:10pt;color:#000000;font-family:"함초롬바탕";}
.cs1 {font-size:10pt;color:#000000;font-family:"함초롬돋움";}
.cs2 {font-size:9pt;color:#000000;font-family:"함초롬돋움";}
.cs3 {font-size:9pt;color:#000000;font-family:"함초롬바탕";}
.cs4 {font-size:9pt;color:#000000;font-family:"함초롬돋움";letter-spacing:-0.03em;}
.cs5 {font-size:20pt;color:#000000;font-family:"함초롬바탕";font-weight:bold;}
.cs6 {font-size:12pt;color:#000000;font-family:"함초롬바탕";font-weight:bold;}
.cs7 {font-size:17pt;color:#000000;font-family:"굴림";font-weight:bold;}
.cs8 {font-size:10pt;color:#000000;font-family:"함초롬바탕";}
.cs9 {font-size:12pt;color:#000000;font-family:"굴림체";font-weight:bold;}
.cs10 {font-size:11pt;color:#000000;font-family:"굴림";font-weight:bold;}
.cs11 {font-size:11pt;color:#000000;font-family:"굴림";}
.ps0 {text-align:justify;}
.ps1 {text-align:left;}
.ps2 {text-align:justify;}
.ps3 {text-align:justify;}
.ps4 {text-align:justify;}
.ps5 {text-align:justify;}
.ps6 {text-align:justify;}
.ps7 {text-align:justify;}
.ps8 {text-align:justify;}
.ps9 {text-align:justify;}
.ps10 {text-align:justify;}
.ps11 {text-align:justify;}
.ps12 {text-align:center;}
.ps13 {text-align:right;}
.ps14 {text-align:justify;}
.ps15 {text-align:center;}
.ps16 {text-align:left;}
.ps17 {text-align:left;}
.ps18 {text-align:center;}
.ps19 {text-align:center;}
@media print {
.hpa {margin:0;border:0 black none;box-shadow:none;}
body {padding:0;}

}

    </style>
</head>

<body>

    <div class="hpa" style="width:210mm;height:297mm;">
			<form name="payfrm" id="payfrm" action="/approval/payformInsert?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
			<div>
			<input name="line0" id="payCode0" type="hidden" value=""> 
			<input name="line1" id="payCode1" type="hidden" value=""> 
			<input name="line2" id="payCode2" type="hidden" value="">
			<input name="line3" id="payCode3" type="hidden" value="">
			<input name="apprNo" id="apprNo" type="hidden" value="${apprNo}">
			</div>
			<div>
			<input name="lineP0" id="lineP0" type="hidden" value=""> 
			<input name="lineP1" id="lineP1" type="hidden" value=""> 
			<input name="lineP2" id="lineP2" type="hidden" value="">
			<input name="lineP3" id="lineP3" type="hidden" value="">
			</div>
			<div>
			<input name="sign[0]" id="empName0" type="hidden" value=""> 
			<input name="sign[1]" id="empName1" type="hidden" value=""> 
			<input name="sign[2]" id="empName2" type="hidden" value="">
			<input name="sign[3]" id="empName3" type="hidden" value="">
			</div>
			<input name="apprTit" type="hidden" value="지출결의서" >
			<input name="formNo" type="hidden" value="1" style="width: 50px">
			<input name="apprSitCd" type="hidden" value="A01" style="width: 50px">
			<input id="empCd" name="empCd" type="hidden" value="<sec:authentication property='principal.employeeVO.empCd'/>">
			<input id="depCd" name="depCd" type="hidden" value="<sec:authentication property='principal.employeeVO.depCd'/>">
			<input id="sign" name="sign" type="hidden" value="<sec:authentication property='principal.employeeVO.sign'/>">
			<div class="hcD" style="left:10mm;top:24.99mm;">
            <div class="hcI">
                <div class="hls ps0"
                    style="line-height:2.79mm;white-space:nowrap;left:0mm;top:-0.18mm;height:3.53mm;width:0mm;"></div>
                <div class="hls ps13"
                    style="line-height:3.43mm;white-space:nowrap;left:0mm;top:249.13mm;height:4.23mm;width:190.01mm;">
                </div>
            </div>
        </div>
        <div class="htb" style="left:11mm;width:192.01mm;top:25.99mm;height:249.34mm;"><svg class="hs"
                viewBox="-2.50 -2.50 197.01 254.34" style="left:-2.50mm;top:-2.50mm;width:197.01mm;height:254.34mm;">
                <defs>
                    <pattern id="w_00" width="10" height="10" patternUnits="userSpaceOnUse">
                        <rect width="10" height="10" fill="rgb(211,211,235)" />
                    </pattern>
                </defs>
                <path fill="url(#w_00)" d="M0,33.57L28.11,33.57L28.11,48.08L0,48.08L0,33.57Z "></path>
                <path fill="url(#w_00)" d="M0,48.08L28.11,48.08L28.11,62.58L0,62.58L0,48.08Z "></path>
                <path fill="url(#w_00)" d="M106.04,48.08L140.04,48.08L140.04,62.58L106.04,62.58L106.04,48.08Z "></path>
                <defs>
                    <pattern id="w_01" width="10" height="10" patternUnits="userSpaceOnUse">
                        <rect width="10" height="10" fill="rgb(240,240,240)" />
                    </pattern>
                </defs>
                <path fill="url(#w_01)" d="M0,62.58L190.02,62.58L190.02,77.09L0,77.09L0,62.58Z "></path>
                <path fill="url(#w_00)" d="M0,77.09L48.69,77.09L48.69,89.09L0,89.09L0,77.09Z "></path>
                <path fill="url(#w_00)" d="M48.69,77.09L106.04,77.09L106.04,89.09L48.69,89.09L48.69,77.09Z "></path>
                <path fill="url(#w_00)" d="M106.04,77.09L136.32,77.09L136.32,89.09L106.04,89.09L106.04,77.09Z "></path>
                <path fill="url(#w_00)" d="M136.32,77.09L164.03,77.09L164.03,89.09L136.32,89.09L136.32,77.09Z "></path>
                <path fill="url(#w_00)" d="M164.03,77.09L190.02,77.09L190.02,89.09L164.03,89.09L164.03,77.09Z "></path>
                <path fill="url(#w_00)" d="M0,139.81L106.04,139.81L106.04,148.26L0,148.26L0,139.81Z "></path>
                <path d="M0,33.57 L0,247.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;"></path>
                <path d="M28.11,33.57 L28.11,62.59" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M48.69,77.09 L48.69,139.81" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M106.04,48.08 L106.04,62.59" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M106.04,77.09 L106.04,148.26" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M136.32,77.09 L136.32,139.81" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M140.04,48.08 L140.04,62.59" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M164.03,77.09 L164.03,139.81" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M190.02,33.57 L190.02,247.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.06,33.57 L190.08,33.57" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,48.08 L190.07,48.08" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,62.58 L190.07,62.58" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,77.09 L190.07,77.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,89.09 L190.07,89.09" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,97.54 L190.07,97.54" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,106 L190.07,106" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;"></path>
                <path d="M-0.05,114.45 L190.07,114.45" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,122.90 L190.07,122.90" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,131.35 L190.07,131.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,139.81 L190.07,139.81" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,148.26 L190.07,148.26" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,153.66 L190.07,153.66" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.05,247.35 L190.07,247.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M190.02,33.57 L190.02,247.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M0,33.57 L0,247.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;"></path>
                <path d="M-0.05,247.35 L190.07,247.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
                <path d="M-0.06,33.57 L190.08,33.57" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.10;">
                </path>
            </svg>
            <div class="hce" style="left:0mm;top:0mm;width:190.02mm;height:33.57mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI">
                        <div class="hls ps12"
                            style="line-height:21.29mm;white-space:nowrap;left:0mm;top:0mm;height:21.29mm;width:186.41mm;">
                            <span class="hrt cs5" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지 출 결 의 서
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <div class="htb"
                                style="left:0.50mm;width:88.34mm;top:0.50mm;height:21.29mm;display:inline-block;position:relative;vertical-align:middle;">
                                <svg class="hs" viewBox="-2.50 -2.50 93.33 26.29"
                                    style="left:-2.50mm;top:-2.50mm;width:93.33mm;height:26.29mm;">
                                    <path d="M0,0 L0,20.30"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M9.73,0 L9.73,20.30"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M29.13,0 L29.13,20.30"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M48.54,0 L48.54,20.30"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M67.94,0 L67.94,20.30"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M87.34,0 L87.34,20.30"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M-0.20,0 L87.55,0"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M9.67,6.52 L87.55,6.52"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M-0.20,20.29 L87.55,20.29"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M87.34,0 L87.34,20.30"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M0,0 L0,20.30"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M-0.20,20.29 L87.55,20.29"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M-0.20,0 L87.55,0"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                </svg>
                                <div class="hce" style="left:0mm;top:0mm;width:9.73mm;height:20.29mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:3.06mm;">
                                            <div class="hls ps19"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:8.73mm;">
                                                <span class="hrt cs10">결</span></div>
                                            <div class="hls ps19"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:4.46mm;height:3.88mm;width:8.73mm;">
                                            </div>
                                            <div class="hls ps19"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:9.12mm;height:3.88mm;width:8.73mm;">
                                                <span class="hrt cs10">재</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:9.73mm;top:0mm;width:19.40mm;height:6.52mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.83mm;">
                                            <div class="hls ps19"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">
                                                <input type="text" id="lineName0" name="lineName0" value="" style="width: 70px; border:0 solid black; font-size: 13px;" readonly="readonly">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:29.13mm;top:0mm;width:19.40mm;height:6.52mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.83mm;">
                                            <div class="hls ps19" 
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">
                                                <input type="text" id="lineName1" name="lineName1" value="" style="width: 70px;border:0 solid black; font-size: 13px;" readonly="readonly">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:48.54mm;top:0mm;width:19.40mm;height:6.52mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.83mm;">
                                            <div class="hls ps19" 
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">
                                                <input type="text" id="lineName2" name="lineName2" value="" style="width: 70px; border:0 solid black; font-size: 13px;" readonly="readonly">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:67.94mm;top:0mm;width:19.40mm;height:6.52mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.83mm;">
                                            <div class="hls ps19" 
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;" >
                                                <input type="text" id="lineName3" name="lineName3" value="" style="width: 70px; border:0 solid black; font-size: 13px;" readonly="readonly">
                                            	
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:9.73mm;top:6.52mm;width:19.40mm;height:13.77mm;" name="lineSign[0]" id="lineSign[0]" >
                                		<img width="71px" height="46px" style="margin-top: -24px;" src="/resources/profileSign/<sec:authentication property='principal.employeeVO.sign'/>">
                                </div>
                                <div class="hce" style="left:29.13mm;top:6.52mm;width:19.40mm;height:13.77mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:4.45mm;">
                                            <div class="hls ps19" name="lineSign[1]" id="lineSign[1]"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:48.54mm;top:6.52mm;width:19.40mm;height:13.77mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:4.45mm;">
                                            <div class="hls ps19" name="lineSign[2]" id="lineSign[2]"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:67.94mm;top:6.52mm;width:19.40mm;height:13.77mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:4.45mm;">
                                            <div class="hls ps19" name="lineSign[3]" id="lineSign[3]"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                               
                                <a class="btn ripple btn-primary" data-bs-target="#modaldemo1"  id="modal"
				data-bs-toggle="modal" href="">결재란</a>
                        </div>
                        <div class="hls ps12"
                            style="line-height:6.28mm;white-space:nowrap;left:0mm;top:25.17mm;height:7.06mm;width:186.41mm;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:33.57mm;width:28.11mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:24.51mm;">
                            <span class="hrt cs6">작 성 일 자</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:28.11mm;top:33.57mm;width:161.91mm;height:14.51mm;">
                <div class="col-lg">
                    <input type="date" style="margin-top: 15px; color: #000000; width: 150px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; "
                        name="regDt" id="regDt" readonly="readonly">
                </div>
            </div>
            <div class="hce" style="left:0mm;top:48.08mm;width:28.11mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:24.51mm;">
                            <span class="hrt cs6">부 서 명</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:28.11mm;top:48.08mm;width:77.93mm;height:14.51mm;">
                <div class="col-lg">
                    <input type="text" style="margin-top: 12px; color: #000000; width: 200px; height: 7.0mm; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; " name="depNm" id="depNm1" value="" readonly="readonly">
                
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:48.08mm;width:34mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps17"
                            style="line-height:3.43mm;white-space:nowrap;left:6.25mm;top:-0.21mm;height:4.23mm;width:24.14mm;">
                            <span class="hrt cs6">작 성 자</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:140.04mm;top:48.08mm;width:49.98mm;height:14.51mm;">
                <div class="col-lg">
                    <input type="text" value=""
                        style="margin-top: 12px; color: #000000; width: 170px; height: 7.0mm; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" name="lineName0" id="empNm1" readonly="readonly" />
                </div>																					
            </div>
            <div class="hce" style="left:0mm;top:62.58mm;width:190.02mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.76mm;">
                        <div class="hls ps15"
                            style="line-height:5.16mm;white-space:nowrap;left:6.25mm;top:-0.30mm;height:6mm;width:180.16mm;">
                            <span class="hrt cs7">지 출 내 역</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:77.09mm;width:48.69mm;height:12mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.39mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:45.08mm;">
                            <span>지출일자</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:48.69mm;top:77.09mm;width:57.35mm;height:12mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.39mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:53.75mm;">
                            <span>적 요</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:77.09mm;width:30.28mm;height:12mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.39mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:26.67mm;">
                            <span>금액</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:136.32mm;top:77.09mm;width:27.71mm;height:12mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.39mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:24.10mm;">
                            <span>거래처명</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:164.03mm;top:77.09mm;width:25.99mm;height:12mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:1.21mm;height:4.23mm;width:22.38mm;">
                            <span>결재방식</span></div>
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:6.56mm;height:4.23mm;width:22.38mm;">
                            <span>(현금/카드)</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:89.09mm;width:48.69mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="일자를적으세요" type="date"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="payDt[0]" id="payDt[0]" value="">
                </div>
            </div>
            <div class="hce" style="left:48.69mm;top:89.09mm;width:57.35mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="내역을 적으세요" type="text"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="paycon[0]" id="paycon[0]" value="">
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:89.09mm;width:30.28mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control amount" placeholder="숫자입력" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="amount[0]" id="amount[0]" value="">
                </div>
            </div>
            <div class="hce" style="left:136.32mm;top:89.09mm;width:27.71mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control" placeholder="거래처" type="text"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="account[0]" id="account[0]" value="">
                </div>
            </div>
            <div class="hce" style="left:164.03mm;top:89.09mm;width:25.99mm;height:8.45mm;">
                <div class="col-lg" >
                	<select id="cash[0]" name="cash[0]" style="margin-top: 5px;" value="">
                		<option value="" >사용선택</option>
                		<option value="현금" >현금</option>
                		<option value="카드">카드</option>
                	</select>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:97.54mm;width:48.69mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="일자를적으세요" type="date"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="payDt[1]" id="payDt[1]" value="">
                </div>
            </div>
            <div class="hce" style="left:48.69mm;top:97.54mm;width:57.35mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="내역을 적으세요" type="text"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="paycon[1]" id="paycon[1]" value="">
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:97.54mm;width:30.28mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control amount" placeholder="숫자입력" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="amount[1]" id="amount[1]" value="" >
                </div>
            </div>
            <div class="hce" style="left:136.32mm;top:97.54mm;width:27.71mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control" placeholder="거래처" type="text"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="account[1]" id="account[1]" value="">
                </div>
            </div>
            <div class="hce" style="left:164.03mm;top:97.54mm;width:25.99mm;height:8.45mm;">
                <div class="col-lg" >
						<select id="cash[1]" name="cash[1]" style="margin-top: 5px;" value="">
							<option value="">사용선택</option>
							<option value="현금">현금</option>
							<option value="카드">카드</option>
						</select>
					</div>
            </div>
            <div class="hce" style="left:0mm;top:106mm;width:48.69mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="일자를적으세요" type="date"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="payDt[2]" id="payDt[2]" value="">
                </div>
            </div>
            <div class="hce" style="left:48.69mm;top:106mm;width:57.35mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="내역을 적으세요" type="text"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="paycon[2]" id="paycon[2]" value="">
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:106mm;width:30.28mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control amount" placeholder="숫자입력" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="amount[2]" id="amount[2]" value="" >
                </div>
            </div>
            <div class="hce" style="left:136.32mm;top:106mm;width:27.71mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control" placeholder="거래처" type="text"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="account[2]" id="account[2]" value="">
                </div>
            </div>
            <div class="hce" style="left:164.03mm;top:106mm;width:25.99mm;height:8.45mm;">
                <div class="col-lg" >
						<select id="cash[2]" name="cash[2]" style="margin-top: 5px;" value="">
							<option value="">사용선택</option>
							<option value="현금">현금</option>
							<option value="카드">카드</option>
						</select>
					</div>
            </div>
            <div class="hce" style="left:0mm;top:114.45mm;width:48.69mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="일자를적으세요" type="date"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="payDt[3]" id="payDt" value="">
                </div>
            </div>
            <div class="hce" style="left:48.69mm;top:114.45mm;width:57.35mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="내역을 적으세요" type="text"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="paycon[3]" id="paycon[3]" value="">
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:114.45mm;width:30.28mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control amount" placeholder="숫자입력" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="amount[3]" id="amount[3]" value="" >
                </div>
            </div>
            <div class="hce" style="left:136.32mm;top:114.45mm;width:27.71mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control" placeholder="거래처" type="text"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="account[3]" id="account[3]" value="">
                </div>
            </div>
            <div class="hce" style="left:164.03mm;top:114.45mm;width:25.99mm;height:8.45mm;">
                <div class="col-lg" >
						<select id="cash[3]" name="cash[3]" style="margin-top: 5px;">
							<option value="">사용선택</option>
							<option value="현금">현금</option>
							<option value="카드">카드</option>
						</select>
					</div>
            </div>
            <div class="hce" style="left:0mm;top:122.90mm;width:48.69mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="일자를적으세요" type="date"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="payDt[4]" id="payDt[4]" value="">
                </div>
            </div>
            <div class="hce" style="left:48.69mm;top:122.90mm;width:57.35mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="내역을 적으세요" type="text"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="paycon[4]" id="paycon[4]" value="">
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:122.90mm;width:30.28mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control amount" placeholder="숫자입력" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="amount[4]" id="amount[4]" value="" >
                </div>
            </div>
            <div class="hce" style="left:136.32mm;top:122.90mm;width:27.71mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control" placeholder="거래처" type="text"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="account[4]" id="account[4]" value="">
                </div>
            </div>
            <div class="hce" style="left:164.03mm;top:122.90mm;width:25.99mm;height:8.45mm;">
                <div class="col-lg" >
						<select id="cash[4]" name="cash[4]" style="margin-top: 5px;" value="">
							<option value="">사용선택</option>
							<option value="현금">현금</option>
							<option value="카드">카드</option>
						</select>
					</div>
            </div>
            <div class="hce" style="left:0mm;top:131.35mm;width:48.69mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="일자를적으세요" type="date"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="payDt[5]" id="payDt[5]" value="">
                </div>
            </div>
            <div class="hce" style="left:48.69mm;top:131.35mm;width:57.35mm;height:8.45mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="내역을 적으세요" type="text"
                        style="margin-top: 2px; color: #000000; width: 170px; height: 7.0mm;" name="paycon[5]" id="paycon[5]" value="">
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:131.35mm;width:30.28mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control amount" placeholder="숫자입력" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="amount[5]" id="amount[5]" value="" >
                </div>
            </div>
            <div class="hce" style="left:136.32mm;top:131.35mm;width:27.71mm;height:8.45mm;">
                <div class="col-lg" >
                    <input class="form-control" placeholder="거래처" type="text"
                        style="margin-top: 2px; margin-left: 0px; color: #000000; width: 110px; height: 7.0mm;" name="account[5]" id="account[5]" value="">
                </div>
            </div>
            <div class="hce" style="left:164.03mm;top:131.35mm;width:25.99mm;height:8.45mm;">
                <div class="col-lg" >
						<select id="cash[5]" name="cash[5]" style="margin-top: 5px;" value="">
							<option value="">사용선택</option>
							<option value="현금">현금</option>
							<option value="카드">카드</option>
						</select>
					</div>
            </div>
            <div class="hce" style="left:0mm;top:139.81mm;width:106.04mm;height:8.45mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:1.61mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:102.43mm;">
                            <span class="hrt cs9">지 출 합 계</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:106.04mm;top:139.81mm;width:83.98mm;height:8.45mm;">
                <div class="col-lg" id="amountSum" ></div>
            </div>
            <div class="hce" style="left:0mm;top:148.26mm;width:190.02mm;height:5.40mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:0.08mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:186.41mm;">
                        </div>
                    </div>
                </div>
            </div>
            </form>
			<form name="payfrm" id="payfrm" action="/approval/payformInsertUpload?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
 				<div class="hce"
					style="left: 0mm; top: 155.88mm; width: 190.02mm; height: 83.47mm;">
					<div class="hcD" style="left: 1.80mm; top: 0.50mm;">
						<div style="width: 700px">
							<div>파일을 마우스로 끌어놓거나 클릭하여 영수증을 첨부하세요.</div>
							<input name="apprNo" id="apprNo2" type="hidden" value="${apprNo}">
							<input id="fileData" type="file" name="fileData"
								accept="image/jpeg, image/png, text/html, application/zip, text/css, text/js, .pdf, .xls, .xlsx,.hwp"
								multiple="" class="ff_fileupload_hidden">
							<div class="ff_fileupload_wrap ">
								<div class="ff_fileupload_dropzone_wrap" id="fileDrop"></div>
								<table class="ff_fileupload_uploads"></table>
							</div>
						</div>
					</div>
				</div>
				<sec:csrfInput/>
			</form>




			<button class="btn ripple btn-light"  id="payCreate" name="payCreate" type="button" style="position: absolute; top: 100%;" >등록하기</button>
            <button class="btn ripple btn-light"  id="payCancel" name="payCancel" type="button" style="position: absolute; top: 100%; left: 12%;">취소하기</button>
        </div>
    </div>
    	
	<sec:csrfInput/>


<!--  -->
</body>
<!--  모달관련  -->
<div class="modal" id="modaldemo1" style="display: none;" aria-modal="true" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content modal-content-demo">
			<div class="modal-header">
				<h6 class="modal-title">조직도</h6>
				<input type="hidden" id="nodeId2" value="<sec:authentication property="principal.employeeVO.empCd" />"/>
				<button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button"></button>
			</div>
				<input type="hidden" value="" name="line0" style="width: 100px" />
				<input type="hidden" value="" name="line1" style="width: 100px" />
				<input type="hidden" value="" name="line2" style="width: 100px" />
				<input type="hidden" value="" name="line3" style="width: 100px" />
			<div class="modal-body"  >
				<div style="text-align: right;">
					<input type="text" value="" style="box-shadow:inset 0 0 4px #eee; width:120px; border-radius:4px; border:1px solid silver; font-size:1.1em; color: black; " id="search" placeholder="Search">
				</div>
				<div class="row">
					<div id="tree1" class="col"  style=" overflow:auto; border: 1px solid silver;' height: 600px; ">
					</div>
					<div class="col appl" style=" height: 600px; border: 1px solid silver;">
						<p>결재자</p>
						<table  class="table text-nowrap text-md-nowrap table-bordered mg-b-0">
							<tr>
								<td style="width:100px ">작성자</td>
								<td>
									<input type="text" value="" name="lineName0" style="width: 100px; border: none;" readonly="readonly" >
								</td>
							</tr>
							<tr>
								<td style="width:100px ">처음 결재자</td>
								<td>
									<input type="text" value="" name="lineName1" style="width: 100px; border: none;" readonly="readonly" >
									<button class="btn ripple btn-main-primary" id="select1">선택</button>
								</td>
							</tr>
							
							<tr>
								<td>중간 결재자</td>
								<td><input type="text" value="" name="lineName2"
									style="width: 100px; border: none;" readonly="readonly">
									<button class="btn ripple btn-main-primary" id="select2">선택</button>
								</td>
							</tr>
							<tr>
							<td>마지막 결재자</td>
								<td><input type="text" value="" name="lineName3"
									style="width: 100px; border: none;" readonly="readonly">
									<button class="btn ripple btn-main-primary" id="select3">선택</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
				
			<div class="modal-footer">
				<button class="btn ripple btn-primary" type="button" id="btnSave">확인</button>
				<button class="btn ripple btn-secondary" data-bs-dismiss="modal" type="button" id="CloseBtn">취소</button>
			</div>
		</div>
	</div>
</div>



<!-- Basic modal//////end///// -->




<script type="text/javascript">   // 모달 관련....
////
	// 자기 자신 회원코드 부분
	let nodeId2 = $("#nodeId2").val();
	console.log("nodeId2" + nodeId2);
	
	
	var to = false;
	$(function() {
		/*  결재 금액 바로 보이게 하기*/
	  	$('.amount').keyup(function() {
	  		let sum = 0;
	  		for(let i=0; i<$('.amount').length; i++) {
				if($('.amount').eq(i).val() != '') {
					sum += parseInt($('.amount').eq(i).val());
				}
	  		}
	  		$('#amountSum').text(sum);
	  	});
		/*  */

		
/* 		$( document ).ready( function() {
		    $( '#amount[0], #amount[1], #amount[2], #amount[3], #amount[4], #amount[5]' ).change( function() {
		      var a = $( '#amount[0]' ).val();
		      var b = $( '#amount[1]' ).val();
		      var c = $( '#amount[2]' ).val();
		      var d = $( '#amount[3]' ).val();
		      var e = $( '#amount[4]' ).val();
		      var f = $( '#amount[5]' ).val();
		      var sum = a + b + c +d + e + f;
		      console.log("sum : " + sum);
		      $( '#amountSum' ).text( sum );
		    } );
		  } ); */
		
	
			$('#fileData').FancyFileUpload({
				params : {
					action : 'fileuploader'
				},
				maxfilesize : 1000000
			});
		
		
		
		$('#tree1').jstree(true);
		$('.btn-close').click(function() {
			$('input[name="lineName1"]').val('');
			$('input[name="line1"]').val('');
			$('input[name="lineName2"]').val('');
			$('input[name="line2"]').val('');
			$('input[name="lineName3"]').val('');
			$('input[name="line3"]').val('');
		});

		
		$('#tree1').jstree({
			'core' : {
				'data' : {
					"url" : "/tree/jsonData",
					"dataType" : "json"
				}
			},

			'types' : {
				'default' : {
					"icon" : "/resources/css/person.png"
				}
			},
			'plugins' : [ "types",, "wholerow", "search" ]
		}).on("ready.jstree", function(e, data) {
			$('#tree1').jstree('select_node', nodeId2);
			
			writerName = $(".jstree-clicked").text();
			$('input[name=lineName0]').val(writerName);
			
			
		});
		$("#search").on("keyup", function() {
			if (to) {
				clearTimeout(to);
			}
			to = setTimeout(function() {
				var v = $('#search').val();
				$('#tree1').jstree(true).search(v);
			}, 250);

		});
		
		// 작성자 사원번호
		let writerSubstringId = (nodeId2.substring(0,9));
		$('input[name=line0]').val(writerSubstringId);
			
		// 부서이름
		let writerDepNm = $(".jstree-wholerow-clicked").val();
		writerName = $(".jstree-wholerow-clicked").text();
		console.log("부서 " + $(".jstree-wholerow-clicked").val(writerName));
			
			
			
			//console.log("writerSubstringId" + writerSubstringId);
		
		
		console.log("이곳에 왓다.");
		
		
		// 결재자 추가하기
		// 처음 결재자
		$("#select1").on("click", function(e) {
			
			let Aline1 = $("input[name=line1]").val();
			let Aline2 = $("input[name=line2]").val();
			let Aline3 = $("input[name=line3]").val();
			
				let id = $(".jstree-clicked").attr("id");
				let substringId = (id.substring(0,9));
				console.log("substringId : " + substringId);
				let name = $(".jstree-clicked").text();
				console.log("name" + name);
				
				if($(".jstree-clicked").attr("aria-level") == 4){
					if(nodeId2 != substringId && Aline1 != substringId && Aline2 != substringId && Aline3 != substringId){
						console.log("여기다");
						let Aline1 = $('input[name=line1]').val(substringId);
						let AlineN1 =$('input[name=lineName1]').val(name);
					}else{
						if(nodeId2 == substringId){
							swal("결재문제 발생.","자기 자신은 선택할 수 없습니다.","warning");
						}else{
							swal("결재문제 발생.","이미 선택된 결재자가 존재합니다.","warning");
						}
					}
				}else{
					alert("잘못된 선택입니다.")
				}	
		});
		
		$("#select2").on("click", function() {
			let Aline1 = $("input[name=line1]").val();
			let Aline2 = $("input[name=line2]").val();
			let Aline3 = $("input[name=line3]").val();
			
			
			let id = $(".jstree-clicked").attr("id");
			//사원번호
			let substringId = (id.substring(0,9));
			console.log("substringId : " + substringId);
			//사원명
			let name = $(".jstree-clicked").text();
			console.log("name" + name);
			console.log("level : " + $(".jstree-clicked").attr("aria-level"));
			if($(".jstree-clicked").attr("aria-level") == 4){
				//nodeId2 : 로그인한 사원번호 
				//substringId : 선택한 사원번호
				if(nodeId2 != substringId && Aline1 != substringId && Aline2 != substringId && Aline3 != substringId){
					console.log("여기다");
					let Aline1 = $('input[name=line2]').val(substringId);
					let AlineN1 =$('input[name=lineName2]').val(name);
				}else{
					if(nodeId2 == substringId){
						alert("자기 자신은 선택할 수 없습니다.");
					}else{
						alert("이미 선택된 결재자가 존재합니다.")
					}
				}
			}else{
				alert("잘못된 선택입니다.")
			}
		
	});
		
		$("#select3").on("click", function() {
			
			let Aline1 = $("input[name=line1]").val();
			let Aline2 = $("input[name=line2]").val();
			let Aline3 = $("input[name=line3]").val();
			
			
			let id = $(".jstree-clicked").attr("id");
			//사원번호
			let substringId = (id.substring(0,9));
			console.log("substringId : " + substringId);
			//사원명
			let name = $(".jstree-clicked").text();
			console.log("name" + name);
			console.log("level : " + $(".jstree-clicked").attr("aria-level"));
			if($(".jstree-clicked").attr("aria-level") == 4){
				//nodeId2 : 로그인한 사원번호 
				//substringId : 선택한 사원번호
				if(nodeId2 != substringId && Aline1 != substringId && Aline2 != substringId && Aline3 != substringId){
					console.log("여기다");
					let Aline1 = $('input[name=line3]').val(substringId);
					let AlineN1 =$('input[name=lineName3]').val(name);
				}else{
					if(nodeId2 == substringId){
						alert("자기 자신은 선택할 수 없습니다.");
					}else{
						alert("이미 선택된 결재자가 존재합니다.")
					}
				}
			}else{
				alert("잘못된 선택입니다.")
			}
		});

		
		$("#btnSave").click(function(){
			let Aline0 = $("input[name=line0]").val();
			
			let Aline1 = $("input[name=line1]").val();
			let Aline2 = $("input[name=line2]").val();
			let Aline3 = $("input[name=line3]").val();
			//Aline0 : 220602003
			console.log("Aline0 : " + Aline0);
			console.log("Aline1 : " + Aline1);
			console.log("Aline2 : " + Aline2);
			console.log("Aline3 : " + Aline3);
			
			
			let AlineName0 = $("input[name=lineName0]").val();
			let AlineName1 = $("input[name=lineName1]").val();
			let AlineName2 = $("input[name=lineName2]").val();
			let AlineName3 = $("input[name=lineName3]").val();
			//AlineName0 : 과장 윤동기
			console.log("AlineName0 : " + AlineName0);
			console.log("AlineName1 : " + AlineName1);
			console.log("AlineName2 : " + AlineName2);
			console.log("AlineName3 : " + AlineName3);
			
			if(Aline1 == "" || Aline2 == "" || Aline3 == ""){
				swal("결재문제 발생.","선택되지 않은 결재자가 존재합니다.","warning");
				
			}else{
				$("#payCode0").val(Aline0);
// 				오냐? : 220602003
				console.log("오냐? : " + $("#payCode0").val(Aline0).val());
				//오냐? : 220602002
				console.log("오냐? : " + $("#payCode1").val(Aline1).val());
				$("#payCode1").val(Aline1);
				$("#payCode2").val(Aline2);
				$("#payCode3").val(Aline3);
				//두번째왓냐 :과장 윤동기
				console.log("두번째왓냐 :" + $("#empName0").val(AlineName0).val());
				
				$("#empName0").val(AlineName0);
				$("#empNm1").val(AlineName0);
				
				$("#empName1").val(AlineName1);
				$("#empName2").val(AlineName2);
				$("#empName3").val(AlineName3);
				
				console.log("dhfkrh");
				
				$("#lineP0").val(AlineName0);
				$("#lineP1").val(AlineName1);
				$("#lineP2").val(AlineName2);
				$("#lineP3").val(AlineName3);
				
				$("#modaldemo1").modal("hide");
			}
			

		});
		
		// 메인 스크립트 부분
		
			// 부서 이름 불러오기
			
			let depCd = $("#depNm1").val();
			let depNm = $("#writerDepNm").val();
			let empCd = $("#empCd").val();
			console.log("empCd " ,empCd);
			let data1 = {"empCd": empCd};
			
			
			// 스프링 시큐리티를 위한 토큰처리(csrf)
			let header = "${_csrf.headerName}";
			let token = "${_csrf.token}";
			
			$.ajax({
				url:"/tree/list",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(data1),
				type:"post",
				dataType: 'json',
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(data){
					console.log("success : " , data);
					console.log(data[0].empNm);
					console.log(data[0].depCd);
					
					$("#depNm1").val(data[0].depCd);
					$("#writerDepNm").val(data[0].depCd);
					
					
				},
				error: function() {
					console.log("에러");
				}
			});
			
			
			// 작성취소 이벤트
		 	$("#payCancel").click(function(){
				window.location.href = 'approvalMain';
			}) 
		
		////////////////////////////// submit 버튼 이벤트 조건주기
	$(document).ready(function() {
		
		$("#payCreate").click(function(e) {
			e.preventDefault();
			let me = $('input[name=line0]').val();
			let first = $("input[name=line1]").val();
			let second = $("input[name=line2]").val();
			let third = $("input[name=line3]").val();
			if(socket) {
				let socketMsg = "appr,"+me+","+first+","+second+","+third;
    			console.log(socketMsg);
    			socket.send(socketMsg);
			}
			let Aline1 = $("#lineP0").val();
					
			/* 		// payCon 조건 부분
					for(var i=0; i){
						
					} */
		 	let ApprCon0 = $("#payDt[0]").val(); 
			console.log("ApprCon0" + $("#payDt[0]").val());
			console.log("ApprCon0" + ApprCon0);
			let ApprCon1 = $("input[name='paycon[0]']").val();
			console.log("ApprCon1" , ApprCon1)
			let ApprCon2 = $("input[name='amount[0]']").val();
			let ApprCon3 = $("input[name='account[0]']").val();
			let ApprCon4 = $("#cash[0]").val();
					
			let amountSum = $("input[name='amountSum']").val(ApprCon2);
			console.log("amountSum + " + amountSum);
			
			if(ApprCon0 == null  || ApprCon1 == null && ApprCon2 == null && ApprCon3 == null && ApprCon4 == ""){
				console.log("여기에왓다.");
			}  
					
			if (Aline1 != null) {
				e.preventDefault();
				swal("결재성공.","결제에성공하였습니다.","success");
				$("#payfrm").submit();
				console.log("e등록에 왓다.");
				window.location.href = 'approvalMain';

			} 
			
			console.log("Aline1 : " + Aline1);
			
			if(Aline1 == null){
				swal("결재문제 발생.","결재란이 선택되지 않았습니다.","warning");
			}
			
			// payDt 값을 안골랏을때 
			
			
		});
});
		
		// 작성일자 자동 sydate
			window.onload = function() {
			today = new Date();
			today = today.toISOString().slice(0, 10);
			bir = $("input[name='regDt']").val(today);
			bir.value = today;
		}
		
	});//end main function
	
</script>
<script type="text/javascript" src="/resources/js/jquery.fileupload.js"></script>
<script type="text/javascript" src="/resources/js/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="/resources/js/jquery.fancy-fileupload.js"></script>

<!--  모달관련  끝 -->



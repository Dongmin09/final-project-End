<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap css-->
<link  id="style" href="/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<!-- Icons css-->
<link href="/resources/assets/plugins/web-fonts/icons.css" rel="stylesheet" />
<link href="/resources/assets/plugins/web-fonts/font-awesome/font-awesome.min.css" rel="stylesheet">
<link href="/resources/assets/plugins/web-fonts/plugin.css" rel="stylesheet" />
<!-- Style css-->
<link href="/resources/assets/css/style.css" rel="stylesheet">
<!--Bootstrap-datepicker css-->
<link rel="stylesheet" href="/resources/assets/plugins/bootstrap-datepicker/bootstrap-datepicker.css">
<!-- Internal Datetimepicker-slider css -->
<link href="/resources/assets/plugins/amazeui-datetimepicker/css/amazeui.datetimepicker.css" rel="stylesheet">
<!-- Internal Specturm-color picker css-->
<link href="/resources/assets/plugins/spectrum-colorpicker/spectrum.css" rel="stylesheet">
<!-- Jstree -->
<script src="/resources/js/jstree.min.js"></script>
<link rel="stylesheet" href="/resources/css/jstreeStyle.min.css" />

<head>
<title>vacationFormDetail</title>
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
.cs7 {font-size:11pt;color:#000000;font-family:"굴림";}
.cs8 {font-size:20pt;color:#000000;font-family:"굴림체";font-weight:bold;}
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
.ps13 {text-align:justify;}
.ps14 {text-align:center;}
@media print {
.hpa {margin:0;border:0 black none;box-shadow:none;}
body {padding:0;}

/* 달력 css */

}
    </style>
</head>

<body>

    <div class="hpa" style="width:210mm;height:297mm;">
                <input id="empCode1" type="hidden" value="<sec:authentication property="principal.employeeVO.empCd" />">
                <input id="empCode2" type="hidden" value="${vacList[0].empCd}">   <!-- 기안자 사원번호 -->
                <input id="apprNo" name="apprNo" type="hidden" value="${line1.apprNo}"> <!-- 결재문서번호 -->  
                <input id="vacDt" name="vacDt" type="hidden" value="${sdate}"> <!-- 사용연차시작일 -->  

        <div class="hcD" style="left:10mm;top:24.99mm;">
            <div class="hcI">
                <div class="hls ps0"
                    style="line-height:2.79mm;white-space:nowrap;left:0mm;top:-0.18mm;height:3.53mm;width:0mm;"></div>
            </div>
        </div>
        <div class="htb" style="left:11mm;width:190.02mm;top:25.99mm;height:252.12mm;"><svg class="hs"
                viewBox="-2.50 -2.50 195.02 257.11" style="left:-2.50mm;top:-2.50mm;width:195.02mm;height:257.11mm;">
                <defs>
                    <pattern id="w_00" width="10" height="10" patternUnits="userSpaceOnUse">
                        <rect width="10" height="10" fill="rgb(223,230,247)" />
                    </pattern>
                </defs>
                <path fill="url(#w_00)" d="M0,28.01L32.10,28.01L32.10,42.52L0,42.52L0,28.01Z "></path>
                <defs>
                    <pattern id="w_01" width="10" height="10" patternUnits="userSpaceOnUse">
                        <rect width="10" height="10" fill="rgb(223,230,247)" />
                    </pattern>
                </defs>
                <path fill="url(#w_01)" d="M91.06,28.01L129.06,28.01L129.06,42.52L91.06,42.52L91.06,28.01Z "></path>
                <path fill="url(#w_00)" d="M0,42.52L32.10,42.52L32.10,57.03L0,57.03L0,42.52Z "></path>
                <path fill="url(#w_01)" d="M91.06,42.52L129.06,42.52L129.06,57.03L91.06,57.03L91.06,42.52Z "></path>
                <path fill="url(#w_00)" d="M0,57.03L32.10,57.03L32.10,71.53L0,71.53L0,57.03Z "></path>
                <path fill="url(#w_00)" d="M0,71.53L32.10,71.53L32.10,86.04L0,86.04L0,71.53Z "></path>
                <path fill="url(#w_00)" d="M0,86.04L32.10,86.04L32.10,138.68L0,138.68L0,86.04Z "></path>
                <path d="M0,0 L0,28.02" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M0,28.01 L0,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                <path d="M32.10,28.01 L32.10,86.04" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M32.10,86.04 L32.10,138.68" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M91.06,28.01 L91.06,57.03" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M129.06,28.01 L129.06,57.03" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M188.02,0 L188.02,28.02" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M188.02,28.01 L188.02,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M-0.06,0 L188.08,0" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M-0.06,28.01 L188.22,28.01" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,42.52 L188.22,42.52" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,57.03 L188.22,57.03" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,71.53 L188.22,71.53" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,86.04 L188.22,86.04" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,138.68 L188.22,138.68" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M-0.20,250.12 L188.22,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M188.02,0 L188.02,28.02" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M188.02,28.01 L188.02,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M0,28.01 L0,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                <path d="M0,0 L0,28.02" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M-0.20,250.12 L188.22,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M-0.06,0 L188.08,0" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
            </svg>
            <div class="hce" style="left:0mm;top:0mm;width:188.02mm;height:28.01mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.79mm;">
                        <div class="hls ps12"
                            style="line-height:19.45mm;white-space:nowrap;left:0mm;top:0mm;height:19.45mm;width:184.42mm;">
                            <div class="htb"
                                style="left:0.49mm;width:169.46mm;top:0.49mm;height:19.45mm;display:inline-block;position:relative;vertical-align:middle;">
                                <svg class="hs" viewBox="-2.50 -2.50 174.46 24.44"
                                    style="left:-2.50mm;top:-2.50mm;width:174.46mm;height:24.44mm;">
                                    <path d="M93.05,0 L93.05,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M101.94,0 L101.94,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M118.56,0 L118.56,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M135.20,0 L135.20,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M151.84,0 L151.84,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M168.47,0 L168.47,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M92.85,0 L168.68,0"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M101.88,6.15 L168.68,6.15"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M92.85,18.46 L168.68,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M168.47,0 L168.47,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M93.05,0 L93.05,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M92.85,18.46 L168.68,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M92.85,0 L168.68,0"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                </svg>
                                <div class="hce" style="left:0mm;top:0mm;width:93.05mm;height:18.46mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:5.21mm;">
                                            <div class="hls ps14"
                                                style="line-height:6.28mm;white-space:nowrap;left:0mm;top:-0.35mm;height:7.06mm;width:92.06mm;">
                                                <span class="hrt cs8" id="tit">연차사용신청서</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:93.05mm;top:0mm;width:8.89mm;height:18.46mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:2.14mm;">
                                            <div class="hls ps14"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:7.90mm;">
                                                <span class="hrt cs7">결</span></div>
                                            <div class="hls ps14"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:4.46mm;height:3.88mm;width:7.90mm;">
                                            </div>
                                            <div class="hls ps14"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:9.12mm;height:3.88mm;width:7.90mm;">
                                                <span class="hrt cs7">재</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:101.94mm;top:0mm;width:16.62mm;height:6.15mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.64mm;">
                                            <div class="hls ps14" name="linePO1" id="linePO1"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.64mm;">
                                               
                                                <p style="font-size:12px; text-align: center;"> ${vacList[0].empVOList[0].posiCd} ${vacList[0].empVOList[0].empNm}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:118.56mm;top:0mm;width:16.64mm;height:6.15mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.64mm;">
                                            <div class="hls ps14" name="linePO2" id="linePO2"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
												<p style="font-size:12px; text-align: center;">${line1.empVOList[0].posiCd} ${line2.empVOList[0].empNm}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:135.20mm;top:0mm;width:16.64mm;height:6.15mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.64mm;">
                                            <div class="hls ps14" name="linePO3" id="linePO3"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
                                                <p style="font-size:12px; text-align: center;">${line2.empVOList[0].posiCd} ${line2.empVOList[0].empNm}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:151.84mm;top:0mm;width:16.64mm;height:6.15mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.64mm;">
                                            <div class="hls ps14" name="linePO4" id="linePO4"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
                                                <p style="font-size:12px; text-align: center;">${line3.empVOList[0].posiCd} ${line3.empVOList[0].empNm}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:101.94mm;top:6.15mm;width:16.62mm;height:12.30mm;">
									<div class="hls ps14" name="lineNm1" id="lineNm1"
									    style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.64mm;">
									    <img alt="" src="/resources/profileSign/${vacList[0].empVOList[0].sign}">
									</div>
                                </div>
                                <div class="hce" style="left:118.56mm;top:6.15mm;width:16.64mm;height:12.30mm; position: relative;" >
	                                <c:if test="${line1.apprSitCd == 'A02'}"><div class="mg-l-15 t-0" style="position: absolute;"><p class="">[전결]</p></div></c:if>
	                                <div class="hls ps14" name="lineNm2" id="lineNm2"
	                                    style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
	                                    <c:if test="${line1.apprSitCd == 'A02'}"><img alt="" src="/resources/profileSign/${line1.empVOList[0].sign}"></c:if>
	                                    <c:if test="${line1.apprSitCd == 'A03'}"><img alt="" src="/resources/profileSign/return.png"></c:if>
	                                </div>
                                </div>
                                <div class="hce" style="left:135.20mm;top:6.15mm;width:16.64mm;height:12.30mm;">
	                                <div class="hls ps14" name="lineNm3" id="lineNm3"
	                                    style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
	                                </div>
                                </div>
                                <div class="hce" style="left:151.84mm;top:6.15mm;width:16.64mm;height:12.30mm;">
	                                <div class="hls ps14" name="lineNm4" id="lineNm4"
	                                    style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
	                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:28.01mm;width:32.10mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">부 &nbsp;&nbsp;&nbsp;서</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:32.10mm;top:28.01mm;width:58.96mm;height:14.51mm;">
                <div class="col-lg mg-t-20" ><p style="text-align: center;" id="depNm">${vacList[0].depNm}</p>
                </div>
            </div>
            <div class="hce" style="left:91.06mm;top:28.01mm;width:37.99mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps13"
                            style="line-height:3.43mm;white-space:nowrap;left:6.25mm;top:-0.21mm;height:4.23mm;width:28.14mm;">
                            <span class="hrt cs6">직 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;급</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:129.06mm;top:28.01mm;width:58.96mm;height:14.51mm;">
                <div class="col-lg mg-t-20""><p style="text-align: center; ">${vacList[0].empVOList[0].posiCd}</p>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:42.52mm;width:32.10mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">성 &nbsp;&nbsp;&nbsp;명</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:32.10mm;top:42.52mm;width:58.96mm;height:14.51mm;">
                <div class="col-lg mg-t-20""><p style="text-align: center;">${vacList[0].empVOList[0].empNm}</p>
                </div>
            </div>
            <div class="hce" style="left:91.06mm;top:42.52mm;width:37.99mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps13"
                            style="line-height:3.43mm;white-space:nowrap;left:6.25mm;top:-0.21mm;height:4.23mm;width:28.14mm;">
                            <span class="hrt cs6">연 &nbsp;락 &nbsp;처</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:129.06mm;top:42.52mm;width:58.96mm;height:14.51mm;">
                <div class="col-lg mg-t-20""><p style="text-align: center;">${vacList[0].empVOList[0].empTel}</p>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:57.03mm;width:32.10mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">연차 유형</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:32.10mm;top:57.03mm;width:155.92mm;height:14.51mm; margin-top: 15px; margin-left: 10px;">
				<h5 id="vacDivCd">${type}</h5>
            </div>
            <div class="hce" style="left:0mm;top:71.53mm;width:32.10mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6 mg-t-3">기 &nbsp;&nbsp;간</span><span class="tx-danger"> *</span></div>
                    </div>
                </div>
            </div>
            <div class="hce row" style="left:32.10mm;top:71.53mm;width:155.92mm;height:14.51mm; margin-top: 15px; margin-left: 10px;">
				<h5>${sdate}부터 ${edate}까지</h5>
			</div>
            <div class="hce" style="left:0mm;top:86.04mm;width:32.10mm;height:52.64mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:23.71mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">사유</span><span class="tx-danger"> *</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:32.10mm;top:86.04mm;width:155.92mm;height:52.64mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="col-lg" style="margin-top: 12px;" id="vacUseRea">
                       ${reason}
                    </div>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:138.68mm;width:188.02mm;height:111.44mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:36.17mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:184.42mm;">
                            <span class="hrt cs6">위와 같이 휴가를 신청하오니 허락하여 주시기 바랍니다.</span></div>
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:6.56mm;height:4.23mm;width:184.42mm;">
                        </div>
                        <div class="hls ps12" style="line-height:3.43mm;white-space:nowrap;left:0mm;top:13.33mm;height:4.23mm;width:184.42mm;">
                            <input class="form-control" type="text"
                                style="color: #000000; width: 100px; position: absolute; margin-top: 12px; margin-left: 5px; left: 250px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"
                                value="작성일">
                            <input class="form-control" type="text"
                                style="color: #000000; width: 180px; position: absolute; left: 210px; margin-top: 12px; left: 320px; border:none;"
                                name="regDt" id="regDt" value="<fmt:formatDate value='${vacList[0].regDt}' pattern='yyyy년 MM월 dd일' />">
                        </div>
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:20.11mm;height:4.23mm;width:184.42mm;">
                        </div>
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:26.88mm;height:4.23mm;width:184.42mm;">
                            <input class="form-control" type="text"
                            style="color: #000000; width: 100px; position: absolute; margin-top: 12px; margin-left: 5px; left: 250px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"
                            value="작성자">
                        <input class="form-control" type="text"
                            style="color: #000000; width: 180px; position: absolute; left: 210px; margin-top: 12px; left: 320px; border: none;"
                            value="${vacList[0].empVOList[0].empNm}">
                        </div>
                    </div>
                </div>
            </div>
            <!-- 참고 -->
            <!-- 결재라인 직원만 버튼 보이게하기 -->
            	<div id="dispBtn" style="display: none;">
					<button class="btn ripple btn-light" id="btnVac" 
						type="button" style="position: absolute; top: 100%;">결재하기</button>
					<button class="btn ripple btn-light" id="vacCancle" 
						type="button" style="position: absolute; top: 100%; left: 12%;">취소하기</button>
					<a class="btn ripple btn-secondary" data-bs-target="#modaldemo2" data-bs-toggle="modal" href="" 
					style="position: absolute; top: 100%; left: 90%;">반려</a>
				</div>
		</div>
</div>

<!-- 반려사유 입력할 모달!! -->
<div class="modal " id="modaldemo2" style="display: none;" aria-modal="true" role="dialog">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title">반려사유</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button"></button>
			</div>
			<div class="modal-body">
				<textarea class="form-control" id="apprRea" placeholder="사유가 없을 시 반려되지 않습니다." rows="3"></textarea>
			</div>
			<div class="modal-footer justify-content-center">
				<button class="btn ripple btn-secondary" data-bs-dismiss="modal" type="button">반려사유 등록</button>
			</div>
		</div>
	</div>
</div>
<!-- 모달 end -->

</body>
<script type="text/javascript">  

$(function(){
	let apprNo = $("#apprNo").val();
	let empCd = $("#empCode1").val();
	let data = {"apprNo":apprNo};
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	// 아래 결재 버튼은 결재라인에 등록된 사람만 보게하기
	$.ajax({
		url:"./lineList",
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		type:"post",
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success:function(result){
			console.log(result);
			if(result[0].empCd == empCd || result[1].empCd == empCd || result[2].empCd == empCd){
				if(result[0].apprSitCd=='A01'||result[1].apprSitCd=='A01'||result[2].apprSitCd == 'A01'){				
					$("#dispBtn").css("display","block");
				}
			}
		}
	});
	
	$("#btnVac").on("click", function(){
		console.log("하하하하");
		let apprRea = $("#apprRea").val();
		let apprSitCd = "A02";
		if(apprRea != ""){
			apprSitCd = 'A03';
		}
		let empCode2 = $("#empCode2").val();
		// 휴가 사용 내역 테이블에 들어갈 정보
		let vacDt = $("#vacDt").val();
		let vacUseRea = $("#vacUseRea").text().trim();
		let vacDivCd = $("#vacDivCd").text().trim();
		
		let updateData = {"apprNo":apprNo,"apprSitCd":apprSitCd,"apprRea":apprRea,"empCd":empCd};
		let apprNoData = {"apprNo":apprNo,"vacDt":vacDt,"vacUseRea":vacUseRea,"vacDivCd":vacDivCd};
		let minusData = {"apprNo":apprNo,"empCd":empCode2,"yearCnt":3};
		console.log("asdasd"+vacDt+ vacUseRea+vacDivCd);
		
		// 결재라인 상태 변경해주기
		$.ajax({
			url:"./apprFinish",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(updateData),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result){
				console.log("result0",result);
			}
		});
		// 상신자 결재 상태 변경해주기
		$.ajax({
			url:"./reporterFinish",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(updateData),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result){
				console.log("result1",result);
			}
		});
		
		if(apprSitCd == 'A02'){
		// 결재가 승인되면 사용내역 테이블에도 등록하기
			$.ajax({
				url:"./vacationUse",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(apprNoData),
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(result){
					console.log("result2",result);
				}
			});		
			// 상신자 연차횟수 차감
			$.ajax({
				url:"./minusVacation",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(minusData),
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(result){
					console.log("result3", result);
					window.close();
				}
			});		
		}else{
			window.close();
			return
		}
		
		
	});  // click event end
	

});

</script>

<!-- Bootstrap js-->
<script src="/resources/assets/plugins/bootstrap/js/popper.min.js"></script>
<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- Internal Jquery-Ui js-->
<script src="/resources/assets/plugins/jquery-ui/ui/widgets/datepicker.js"></script>
<!-- Internal Jquery.maskedinput js-->
<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script>
<!-- Internal Specturm-colorpicker js-->
<script src="/resources/assets/plugins/spectrum-colorpicker/spectrum.js"></script>
<!--Bootstrap-datepicker js-->
<script src="/resources/assets/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
<!-- Color Theme js -->
<script src="/resources/assets/js/themeColors.js"></script>
<!-- Internal Sweet-Alert js -->
<script src="/resources/assets/plugins/sweet-alert/sweetalert.min.js"></script>
<script src="/resources/assets/plugins/sweet-alert/jquery.sweet-alert.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>




<head>
	<link rel="stylesheet" href="/resources/css/jstreeStyle.min.css" />
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script src="/resources/js/jstree.min.js"></script>	
    <title>기안서</title>
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
.cs5 {font-size:32pt;color:#000000;font-family:"함초롬바탕";font-weight:bold;}
.cs6 {font-size:11pt;color:#000000;font-family:"함초롬바탕";font-weight:bold;}
.cs7 {font-size:11pt;color:#000000;font-family:"굴림";font-weight:bold;}
.cs8 {font-size:11pt;color:#000000;font-family:"굴림";}
.cs9 {font-size:20pt;color:#000000;font-family:"함초롬바탕";font-weight:bold;}
.cs10 {font-size:10pt;color:#000000;font-family:"함초롬바탕";font-weight:bold;}
.ps0 {text-align:justify;}
.ps1 {text-align:justify;}
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
.ps12 {text-align:justify;}
.ps13 {text-align:center;}
.ps14 {text-align:center;}
.ps15 {text-align:center;}
@media print {
.hpa {margin:0;border:0 black none;box-shadow:none;}
body {padding:0;}

}

    </style>
</head>

<body>
    <div class="hpa" style="width:210mm;height:297mm;">
                <input id="empCode1" type="hidden" value="">
                <input id="empCode2" type="hidden" value="">
                <input id="empCode3" type="hidden" value="">
                <input id="empCode4" type="hidden" value="">
                <!-- 결재라인 -->
                <div class="htb"
                   style="left:460px;width:88.34mm;top:0.50mm;height:21.29mm;display:inline-block;position:relative;vertical-align:middle;">
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
                               <div class="hls ps14"
                                   style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:8.73mm; text-align: center;">
                                   <span class="hrt cs7">결</span></div>
                               <div class="hls ps14"
                                   style="line-height:3.10mm;white-space:nowrap;left:0mm;top:4.46mm;height:3.88mm;width:8.73mm;">
                               </div>
                               <div class="hls ps14"
                                   style="line-height:3.10mm;white-space:nowrap;left:0mm;top:9.12mm;height:3.88mm;width:8.73mm; text-align: center;">
                                   <span class="hrt cs7">재</span></div>
                           </div>
                       </div>
                   </div>
                   <div class="hce" style="left:9.73mm;top:0mm;width:19.40mm;height:6.52mm;">
                       <div class="hcD" style="left:0.49mm;top:0.49mm;">
                           <div class="hcI" style="top:0.83mm;">
                               <div class="hls ps14 lineNm"
                                   style="margin-top: 3px; line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;"></div>
                           </div>
                       </div>
                   </div>
                   <div class="hce" style="left:29.13mm;top:0mm;width:19.40mm;height:6.52mm;">
                       <div class="hcD" style="left:0.49mm;top:0.49mm;">
                           <div class="hcI" style="top:0.83mm;">
                               <div class="hls ps14 lineNm"
                                   style="margin-top: 3px; line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;"></div>
                           </div>
                       </div>
                   </div>
                   <div class="hce" style="left:48.54mm;top:0mm;width:19.40mm;height:6.52mm;">
                       <div class="hcD" style="left:0.49mm;top:0.49mm;">
                           <div class="hcI" style="top:0.83mm;">
                               <div class="hls ps14 lineNm"
                                   style="margin-top: 3px; line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;"></div>
                           </div>
                       </div>
                   </div>
                   <div class="hce" style="left:67.94mm;top:0mm;width:19.40mm;height:6.52mm;">
                       <div class="hcD" style="left:0.49mm;top:0.49mm;">
                           <div class="hcI" style="top:0.83mm;">
                               <div class="hls ps14 lineNm"
                                   style="margin-top: 3px; line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;"></div>
                           </div>
                       </div>
                   </div>
                   <div class="hce" style="left:9.73mm;top:6.52mm;width:19.40mm;height:13.77mm;">
   		      		<img src="/resources/profileSign/<sec:authentication property="principal.employeeVO.sign"/>">
                   </div>
                   <div class="hce" style="left:29.13mm;top:6.52mm;width:19.40mm;height:13.77mm;">
                       <div class="hcD" style="left:0.49mm;top:0.49mm;">
                           <div class="hcI" style="top:4.45mm;">
                               <div class="hls ps14" name="lineNm2" id="lineNm2"
                                   style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">2</div>
                           </div>
                       </div>
                   </div>
                   <div class="hce" style="left:48.54mm;top:6.52mm;width:19.40mm;height:13.77mm;">
                       <div class="hcD" style="left:0.49mm;top:0.49mm;">
                           <div class="hcI" style="top:4.45mm;">
                               <div class="hls ps14" name="lineNm3" id="lineNm3"
                                   style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">3</div>
                           </div>
                       </div>
                   </div>
                   <div class="hce" style="left:67.94mm;top:6.52mm;width:19.40mm;height:13.77mm;">
                       <div class="hcD" style="left:0.49mm;top:0.49mm;">
                           <div class="hcI" style="top:4.45mm;">
                               <div class="hls ps14" name="lineNm4" id="lineNm4"
                                   style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.41mm;">4</div>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- 결재라인 -->
               <a class="btn ripple btn-primary" data-bs-target="#modaldemo2"  id="modal"
				data-bs-toggle="modal" href="">결재란</a>
        <div class="htb" style="left:11mm;width:196.45mm;top:25.97mm;height:34.58mm;">
            <div class="hce" style="left:0mm;top:0mm;width:194.45mm;height:32.58mm;">
            
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI">
                        <div class="hls ps13"
                            style="line-height:21.29mm;white-space:nowrap;top:0mm;height:21.29mm;">
                            <span class="hrt cs9" style="font-size: 30pt; margin-left: 270px;">기 안 서</span>
                            
                        </div>
                        <div class="hls ps13"
                            style="line-height:2.79mm;white-space:nowrap;left:0mm;top:27.88mm;height:3.53mm;width:190.85mm;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="htb" style="left:11mm;width:190.88mm;top:60.55mm;height:212.35mm;"><svg class="hs"
                viewBox="-2.50 -2.50 195.88 217.35" style="left:-2.50mm;top:-2.50mm;width:195.88mm;height:217.35mm;">
                <defs>
                    <pattern id="w_00" width="10" height="10" patternUnits="userSpaceOnUse">
                        <rect width="10" height="10" fill="rgb(206,222,239)" />
                    </pattern>
                </defs>
                <path fill="url(#w_00)" d="M0,0L30.61,0L30.61,15.74L0,15.74L0,0Z "></path>
                <path fill="url(#w_00)" d="M30.61,0L52.24,0L52.24,7.87L30.61,7.87L30.61,0Z "></path>
                <path fill="url(#w_00)" d="M109.75,0L131.37,0L131.37,7.87L109.75,7.87L109.75,0Z "></path>
                <path fill="url(#w_00)" d="M30.61,7.87L52.24,7.87L52.24,15.74L30.61,15.74L30.61,7.87Z "></path>
                <path fill="url(#w_00)" d="M109.75,7.87L131.37,7.87L131.37,15.74L109.75,15.74L109.75,7.87Z "></path>
                <path fill="url(#w_00)" d="M0,15.74L30.61,15.74L30.61,28.60L0,28.60L0,15.74Z "></path>
                <path fill="url(#w_00)" d="M0,28.60L30.61,28.60L30.61,41.47L0,41.47L0,28.60Z "></path>
                <path fill="url(#w_00)" d="M0,41.47L30.61,41.47L30.61,166.14L0,166.14L0,41.47Z "></path>
                <path fill="url(#w_00)" d="M0,166.14L30.61,166.14L30.61,210.35L0,210.35L0,166.14Z "></path>
                <path d="M0,0 L0,210.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M30.61,0 L30.61,210.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M52.24,0 L52.24,15.74" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M109.75,0 L109.75,15.74" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M131.37,0 L131.37,15.74" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M188.88,0 L188.88,210.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M-0.06,0 L188.94,0" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M30.55,7.87 L188.94,7.87" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M-0.06,15.74 L188.94,15.74" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.06,28.60 L188.94,28.60" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.06,41.47 L188.94,41.47" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.06,166.14 L188.94,166.14" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.06,210.35 L188.94,210.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M188.88,0 L188.88,210.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M0,0 L0,210.36" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M-0.06,210.35 L188.94,210.35" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.06,0 L188.94,0" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
            </svg>
            <div class="hce" style="left:0mm;top:0mm;width:30.61mm;height:15.74mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:5.43mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:27.01mm; text-align: center;">
                            <span>기 &nbsp;안 &nbsp;자</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:30.61mm;top:0mm;width:21.63mm;height:7.87mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:1.50mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.02mm; text-align: center;">
                            <span class="hrt cs6">사 번</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:52.24mm;top:0mm;width:57.51mm;height:7.87mm;">
                <div class="col-lg" style="margin-top: 5px;" id="empCd">
                    <sec:authentication property="principal.employeeVO.empCd"/>
                </div>
            </div>
            <div class="hce" style="left:109.75mm;top:0mm;width:21.63mm;height:7.87mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:1.50mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.02mm; text-align: center;">
                            <span class="hrt cs6">소 속</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:131.37mm;top:0mm;width:57.51mm;height:7.87mm;">
                <div class="col-lg" style="margin-top: 5px;" id="depNm"></div>
            </div>
            <div class="hce" style="left:30.61mm;top:7.87mm;width:21.63mm;height:7.87mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:1.50mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.02mm; text-align: center;">
                            <span class="hrt cs6">직 급</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:52.24mm;top:7.87mm;width:57.51mm;height:7.87mm;">
                <div class="col-lg" style="margin-top: 5px;" id="posiCd"></div>
            </div>
            <div class="hce" style="left:109.75mm;top:7.87mm;width:21.63mm;height:7.87mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:1.50mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:18.02mm; text-align: center;">
                            <span class="hrt cs6">성 명</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:131.37mm;top:7.87mm;width:57.51mm;height:7.87mm;">
                <div class="col-lg" style="margin-top: 5px;" id="empNm"></div>
            </div>
            <div class="hce" style="left:0mm;top:15.74mm;width:30.61mm;height:12.86mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.99mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:27.01mm; text-align: center;">
                            <span class="hrt cs6">기 안 일 자</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:30.61mm;top:15.74mm;width:158.27mm;height:12.86mm;">
                <div class="col-lg">
                    <input class="form-control" type="date" style="margin-top: 5px; color: #000000; width: 150px;"
                        id="regDt">
                </div>
            </div>
            <div class="hce" style="left:0mm;top:28.60mm;width:30.61mm;height:12.86mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.99mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:27.01mm; text-align: center;">
                            <span class="hrt cs6">제 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:30.61mm;top:28.60mm;width:158.27mm;height:12.86mm;">
                <div class="col-lg">
                    <input class="form-control" placeholder="제목을 입력하세요" type="text"
                        style="margin-top: 5px; color: #000000;" id="title">
                </div>
            </div>
            <div class="hce" style="left:0mm;top:41.47mm;width:30.61mm;height:124.68mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:59.90mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:27.01mm; text-align: center;">
                            <span class="hrt cs6">상 세 내 용</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:30.61mm;top:41.47mm;width:158.27mm;height:124.68mm;">
                <div class="hcD" style="top:4mm;">
                    <div class="col-lg">
                        <textarea class="form-control" id="content" placeholder="내용을 입력하세요" rows="21" cols="78" ></textarea>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:166.14mm;width:30.61mm;height:44.21mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:19.67mm;">
                        <div class="hls ps13"
                            style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:27.01mm; text-align: center;">
                            <span class="hrt cs6">첨 부 목 록</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:30.61mm;top:166.14mm;width:158.27mm;height:44.21mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                   <div class="dropify-wrapper" style="width: 600px; height: 165px">
                        <div class="dropify-loader">
	                        <input type="file" class="dropify dropify1" data-height="160;" name="fileupLoad" id="draft-file">                        
                        </div>
                        <div class="dropify-errors-container">
                        </div>
                    </div> 
                </div>
            </div>
            <button class="btn ripple btn-primary"  id="draftCreate" type="button" style="position: absolute; top: 100%;">등록하기</button>
            <button class="btn ripple btn-light"  id="draftCancle" type="button" style="position: absolute; top: 100%; left: 12%;">취소하기</button>
        </div>
    </div>
    <div class="modal" id="modaldemo2" style="display: none;" aria-modal="true" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content modal-content-demo">
			<div class="modal-header">
				<h6 class="modal-title">조직도</h6>
				<input type="text" id="nodeId2" value="<sec:authentication property="principal.employeeVO.empCd" />"/>
				<button aria-label="Close" class="btn-close" data-bs-dismiss="modal" type="button"></button>
			</div>
				<input type="text" value="" name="line0" style="width: 100px" />작성자
				<input type="text" value="" name="line1" style="width: 100px" />처음결재자
				<input type="text" value="" name="line2" style="width: 100px" />중간결재자
				<input type="text" value="" name="line3" style="width: 100px" />마지막결재자
			<div class="modal-body"  >
				<div style="text-align: right;">
					<input type="text" value="" style="box-shadow:inset 0 0 4px #eee; width:120px; border-radius:4px; border:1px solid silver; font-size:1.1em; color: black; " id="searchd" placeholder="Search">
				</div>
				<div class="row">
					<div id="tree1" class="col"  style=" overflow:auto; border: 1px solid silver;' height: 600px; ">
					</div>
					<div class="col-1" style="display: table; ">
						<div style="display:table-cell; text-align: center; position: absolute; top: 40%">
							<button class="btn ripple btn-info btn-icon" id="btnAdd"><i class="fa fa-angle-double-right" ></i></button>
							<br>
							<button class="btn ripple btn-info btn-icon" id="btnOut"><i class="fa fa-angle-double-left" ></i></button>
						</div>
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
				<button class="btn ripple btn-primary" type="button" id="decide">확인</button>
				<button class="btn ripple btn-secondary" data-bs-dismiss="modal" type="button" id="CloseBtn">취소</button>
			</div>
		</div>
	</div>
</div>
</body>
<script>
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	let empCd = $('#empCd').text();
	let nodeId2 = $('#nodeId2').val();
	console.log('empCd : ', empCd);
	$(function() {
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
				$('#tree2').jstree(true).search(v);
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
							alert("자기 자신은 선택할 수 없습니다.");
						}else{
							alert("이미 선택된 결재자가 존재합니다.")
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
				//nodeId2d : 로그인한 사원번호 
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
				//nodeId2d : 로그인한 사원번호 
				//substringId : 선택한 사원번호
				if(nodeId2 != substringId && Aline1 != substringId && Aline2 != substringId && Aline3 != substringId){
					console.log("여기다");
					let Aline1 = $('input[name=line3]').val(substringId);
					let AlineN1 =$('input[name=lineName3]').val(name);
				}else{
					if(nodeId == substringId){
						alert("자기 자신은 선택할 수 없습니다.");
					}else{
						alert("이미 선택된 결재자가 존재합니다.")
					}
				}
			}else{
				alert("잘못된 선택입니다.")
			}
		});
		$.ajax({
			url:'/draft/info',
			type:'post',
			data:{empCd:empCd},
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result){
				$('.lineNm').eq(0).text(result.posiCd + ' ' + result.empNm);
				$('#depNm').text(result.depNm);
				$('#posiCd').text(result.posiCd);
				$('#empNm').text(result.empNm);
			}
		});
		
		$("#decide").click(function(){
			console.log("modal2");
			let Aline0 = $("input[name=line0]").val();
			
			let Aline1 = $("input[name=line1]").val();
			let Aline2 = $("input[name=line2]").val();
			let Aline3 = $("input[name=line3]").val();
			
			console.log("Aline0 : " + Aline0);
			console.log("Aline1 : " + Aline1);
			console.log("Aline2 : " + Aline2);
			console.log("Aline3 : " + Aline3);
			
			
			let AlineName0 = $("input[name=lineName0]").val();
			let AlineName1 = $("input[name=lineName1]").val();
			let AlineName2 = $("input[name=lineName2]").val();
			let AlineName3 = $("input[name=lineName3]").val();
			
			if(Aline1 == "" || Aline2 == "" || Aline3 == ""){
				alert("선택되지 않은 결재자가 존재합니다.");
				
			}else{
				$("#payCode0").val(Aline0);
				console.log("오냐? : " + $("#payCode0").val(Aline0).val());
				console.log("오냐? : " + $("#payCode1").val(Aline1).val());
				$("#payCode1").val(Aline1);
				$("#payCode2").val(Aline2);
				$("#payCode3").val(Aline3);
				
				console.log("두번째왓냐 :" + $("#empName0").val(AlineName0).val());
				
				$("#empName0").val(AlineName0);
				$("#empNm1").val(AlineName0);
				
				$("#empName1").val(AlineName1);
				$("#empName2").val(AlineName2);
				$("#empName3").val(AlineName3);
				
				console.log("dhfkrh");
				
				$(".lineNm").eq(1).text(AlineName1);
				$(".lineNm").eq(2).text(AlineName2);
				$(".lineNm").eq(3).text(AlineName3);
				
				$("#modaldemo2").modal("hide");
			}
			

		});
		
		$('#draftCreate').click(function() {
			let empCd = $('#empCd').text();
			let depNm = $('#depNm').text();
			let posiCd = $('#posiCd').text();
			let empNm = $('#empNm').text();
			let regDt = $('#regDt').val();
			let title = $('#title').val();
			let content = $('#content').val();
			// 넘길 데이터를 담아준다. 
			let data = {
				empCd : empCd,
				depNm : depNm,
				posiCd : posiCd,
				empNm : empNm,
				regDt : regDt,
				title : title,
				content : content
			};
			
			//FormData 새로운 객체 생성 
			var formData = new FormData();
			// input class 값 
			var fileInput = $('#draft-file');
			// fileInput 개수를 구한다.
			for (var i = 0; i < fileInput.length; i++) {
				if (fileInput[i].files.length > 0) {
					for (var j = 0; j < fileInput[i].files.length; j++) {
						console.log(" fileInput[i].files[j] :::"+ fileInput[i].files[j]);
						
						// formData에 'file'이라는 키값으로 fileInput 값을 append 시킨다.  
						formData.append('file', fileInput[i].files[j]);
					}
				}
			}

			// 'data'라는 이름으로 위에서 담은 data를 formData에 append한다. type은 json  
			formData.append('data', new Blob([ JSON.stringify(data) ], {type : "application/json"}));

			// ajax 처리 부분 * 
			$.ajax({
			      url: '/draft/insert',
			      data: formData,
			      contentType: false,               // * 중요 *
			      processData: false,               // * 중요 *
			      enctype : 'multipart/form-data',  // * 중요 *
			      success: function(data) {
			        if (result.SUCCESS == true) {
			         alert("성공");
			        } else {
			         alert("실패");
			         }
			      }
			});
		});
	});
</script>
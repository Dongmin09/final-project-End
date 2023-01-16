<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!-- Sidemenu Admin-->
<sec:authentication property='principal.employeeVO.payCd' var="payCd"/>
<sec:authorize access="hasRole('ROLE_A03')">
	<div class="sticky">
			<div class="main-menu main-sidebar main-sidebar-sticky side-menu">
				<div class="main-sidebar-header main-container-1 active">
					<div class="sidemenu-logo">
						<a class="main-logo" href="/main/main">
							<img src="/resources/assets/img/brand/logo-light.png" class="header-brand-img desktop-logo" alt="logo">
							<img src="/resources/assets/img/brand/icon-light.png" class="header-brand-img icon-logo" alt="logo">
							<img src="/resources/assets/img/brand/logo.png" class="header-brand-img desktop-logo theme-logo" alt="logo">
							<img src="/resources/assets/img/brand/icon.png" class="header-brand-img icon-logo theme-logo" alt="logo">
						</a>
					</div>
					<div class="main-sidebar-body main-body-1">
						<div class="slide-left disabled" id="slide-left"><i class="fe fe-chevron-left"></i></div>
						<ul class="menu-nav nav">
							<li class="nav-header"><span class="nav-label">관리자 : <sec:authentication property="principal.employeeVO.empNm"/></span></li>
							<li class="nav-item">
								<a class="nav-link" href="/main/main">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-home sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">홈</span>
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/subpay/subpay">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-credit-card sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">서비스 구매</span>
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link with-sub" href="javascript:void(0)">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-user sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">조직관리</span>
									<i class="angle fe fe-chevron-right"></i>
								</a>
								<ul class="nav-sub">
									<li class="side-menu-label1"><a href="javascript:void(0)">조직관리</a></li>
									<li class="nav-sub-item"><a class="nav-sub-link" href="/department/depAdmin">부서관리</a></li>
									<li class="nav-sub-item"><a class="nav-sub-link" href="/employee/position">인사관리</a></li>
								</ul>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/account/account">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-credit-card sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">계정관리</span>
								</a>
							</li>
							<c:if test="${payCd ge 2}">
							<li class="nav-item">
								<a class="nav-link" href="/mail/selectMailList">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-email sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">메일</span>
								</a>
							</li>
							</c:if>
							<c:if test="${payCd ge 1}">
							
							<!--  -->
							<li class="nav-item">
								<a class="nav-link with-sub" href="javascript:void(0)">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-folder sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">전자결재관리</span>
									<i class="angle fe fe-chevron-right"></i>
								</a>
								<ul class="nav-sub">
									<li class="side-menu-label1"><a href="javascript:void(0)">전자결재관리</a></li>
									<li class="nav-sub-item"><a class="nav-sub-link" href="/approval/approvalMain">보관함</a></li>
									<!-- <li class="nav-sub-item"><a class="nav-sub-link" href="/approval/approvalReceive">결재수신함</a></li> -->
								</ul>
							</li>
							<!--  -->
							</c:if>
							<c:if test="${payCd ge 1}">
							<li class="nav-item">
								<a class="nav-link with-sub" href="javascript:void(0)">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-clipboard sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">게시판 관리</span>
									<i class="angle fe fe-chevron-right"></i>
								</a>
								<ul class="nav-sub">
									<li class="side-menu-label1"><a href="javascript:void(0)">게시판 관리</a></li>
									<li class="nav-sub-item"><a class="nav-sub-link" href="/noti/selectNotiList">공지사항</a></li>
									<li class="nav-sub-item"><a class="nav-sub-link" href="/commu/selectCommuList">커뮤니티</a></li>
								</ul>
							</li>
							</c:if>
							<c:if test="${payCd ge 3}">
							<li class="nav-item">
								<a class="nav-link" href="/reference/companyAdmin">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-folder sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">전사 자료실</span>
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/meet/book">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-blackboard sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">회의실 관리</span>
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/chart/chartMulti">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-bar-chart-alt sidemenu-icon menu-icon"></i>
									<span class="sidemenu-label">통계</span>
								</a>
							</li>
							</c:if>
						</ul>
						<div class="slide-right" id="slide-right"><i class="fe fe-chevron-right"></i></div>
					</div>
				</div>
			</div>
		</div>
</sec:authorize>
<!-- End Sidemenu Admin-->

<!-- Sidemenu EMP -->
<sec:authorize access="hasAnyRole('ROLE_A01','ROLE_A02')">
	<div class="sticky">
		<div class="main-menu main-sidebar main-sidebar-sticky side-menu">
			<div class="main-sidebar-header main-container-1 active">
				<div class="sidemenu-logo">
					<a class="main-logo" href="/main/main">
						<img src="/resources/assets/img/brand/logo-light.png" class="header-brand-img desktop-logo" alt="logo">
						<img src="/resources/assets/img/brand/icon-light.png" class="header-brand-img icon-logo" alt="logo">
						<img src="/resources/assets/img/brand/logo.png" class="header-brand-img desktop-logo theme-logo" alt="logo">
						<img src="/resources/assets/img/brand/icon.png" class="header-brand-img icon-logo theme-logo" alt="logo">
					</a>
				</div>
				<div class="main-sidebar-body main-body-1">
					<div class="slide-left disabled" id="slide-left"><i class="fe fe-chevron-left"></i></div>
					<ul class="menu-nav nav">
						<li class="nav-header"><span class="nav-label">직원ID <sec:authentication property="principal.employeeVO.empId"/></span></li>

						
						<!-- 인증된 사용자(로그인) -->
						<li class="nav-item" style="margin-top: 20px;">
							<a class="d-flex" style="display: inline-block !important;" href="javascript:void(0)">
<!-- 								<span class="main-img-user"  style="display: inline-block;"> -->
<%-- 									<img alt="avatar" src="/resources/profileImg<sec:authentication property="principal.employeeVO.profile" />" > --%>
<!-- 								</span>&nbsp; -->
								<span style="display: inline-block;">
									<sec:authentication property="principal.employeeVO.empNm" />님 환영합니다. 
								</span>
							</a>
							
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/main/main">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-home sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">홈</span>
							</a>
						</li>
						<c:if test="${payCd ge 2}">
						<li class="nav-item">
							<a class="nav-link" href="/mail/selectMailList">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-email sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">메일</span>
							</a>
						</li>
						</c:if>
						<li class="nav-item">
							<a class="nav-link" href="/attendance/attendance">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-timer sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">근태관리</span>
							</a>
						</li>
						<c:if test="${payCd ge 1}">
						<li class="nav-item">
							<a class="nav-link" href="/calendar/calendar">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-calendar sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">일정관리</span>
							</a>
						</li>
						</c:if>
						<c:if test="${payCd ge 1}">
						<li class="nav-item">
							<a class="nav-link with-sub" href="javascript:void(0)">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-folder sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">전자결재</span>
								<i class="angle fe fe-chevron-right"></i>
							</a>
							<ul class="nav-sub">
								<li class="side-menu-label1"><a href="javascript:void(0)">전자결재</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/approval/payform">지출결의서</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/approval/vacation?empCd=<sec:authentication property="principal.employeeVO.empCd"/>">연차신청서</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/approval/draft">기안서</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/approval/approvalMain">보관함</a></li>
								<!-- <li class="nav-sub-item"><a class="nav-sub-link" href="/approval/approvalReceive">결재수신함</a></li> -->
							</ul>
						</li>
						</c:if>
						<c:if test="${payCd ge 2}">
						<li class="nav-item">
							<a class="nav-link" href="/todo/todo">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-pencil-alt sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">ToDO</span>
							</a>
						</li>
						</c:if>
						<c:if test="${payCd ge 1}">
						<li class="nav-item">
							<a class="nav-link with-sub" href="javascript:void(0)">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-clipboard sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">게시판</span>
								<i class="angle fe fe-chevron-right"></i>
							</a>
							<ul class="nav-sub">
								<li class="side-menu-label1"><a href="javascript:void(0)">게시판</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/noti/selectNotiList">공지사항</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/dep/selectDepBoardList">부서 게시판</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/commu/selectCommuList">커뮤니티</a></li>
							</ul>
						</li>
						</c:if>
						<c:if test="${payCd ge 3}">
						<li class="nav-item">
							<a class="nav-link with-sub" href="javascript:void(0)">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-clipboard sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">자료게시판</span>
								<i class="angle fe fe-chevron-right"></i>
							</a>
							<ul class="nav-sub">
								<li class="side-menu-label1"><a href="javascript:void(0)">자료게시판</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/reference/company">전사 자료게시판</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/reference/department">부서 자료게시판</a></li>
								<li class="nav-sub-item"><a class="nav-sub-link" href="/reference/personal">개인 자료게시판</a></li>
							</ul>
						</li>
						<li class="nav-item">
								<a class="nav-link" href="/meet/book">
									<span class="shape1"></span>
									<span class="shape2"></span>
									<i class="ti-blackboard sidemenu-icon menu-icon "></i>
									<span class="sidemenu-label">회의실 예약</span>
								</a>
						</li>
						</c:if>
						<li class="nav-item">
							<a class="nav-link" href="/tree/tree">
								<span class="shape1"></span>
								<span class="shape2"></span>
								<i class="ti-user sidemenu-icon menu-icon "></i>
								<span class="sidemenu-label">조직도</span>
							</a>
						</li>
					</ul>
					<div class="slide-right" id="slide-right"><i class="fe fe-chevron-right"></i></div>
				</div>
			</div>
		</div>
	</div>
</sec:authorize>
<!-- End Sidemenu EMP -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<div class="fixed-top bg-white"><!-- border border-warning border-top-0 border-left-0 border-right-0 -->
	<div class="container">
		<div class="row col-sm-12">
			<a class="col-sm-4 nav-link" href="/"><b style="font-size: 30px;">TT 렌터카</b></a>
	<nav class="navbar navbar-expand-sm justify-content-center" style="height: 90px">

			<ul class="navbar-nav">
			<%if(request.isUserInRole("admin")){ %>
			<li class="nav-item"><a class="nav-link" href="/admin/index">Index</a>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown1"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><spring:message code="message.admin.header.admin"/></a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
					<a class="dropdown-item" href="/admin/shortcar/register">
						<spring:message code="message.admin.header.registerSC"/>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="/admin/branch/list">
						<spring:message code="message.admin.header.branchList"/>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="/admin/branch/register">
						<spring:message code="message.admin.header.registerBranch"/>
					</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="/admin/ticket/list">
				<spring:message code="message.admin.header.ticketList"/>
			</a></li>
			<li class="nav-item${adminEmail==null ? '' : ' dropdown'}"><c:choose>
					<c:when test="${adminEmail==null}">
						<a class="nav-link" href="/admin/login">
							<spring:message code="message.admin.header.login"/>
						</a>
					</c:when>
					<c:otherwise>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown4"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 
								${adminName}<spring:message code="message.admin.header.adminId"/> 
							</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown4">
							<%-- <a class="dropdown-item" href="/user/update">
								<spring:message code="message.admin.header.adminUpdate"/>
							</a>
							<div class="dropdown-divider"></div> --%>
							<a class="dropdown-item" href="/admin/logout">
								<spring:message code="message.admin.header.logout"/>
							</a>
						</div>
					</c:otherwise>
				</c:choose></li>
			<!-- Nav Item - Language -->
						<li class="nav-item dropdown no-arrow mx-1">
							<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown">
								<i class="fas fa-globe fa-fw"></i>
							</a>
							<!-- Dropdown - Language -->
							<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown" id="langSelect">
								<a class="dropdown-item" href="?lang=ko">
									<i class="fas fa-sm fa-fw mr-2 text-gray-400"></i>
									<!-- <i class="fas fa-check fa-sm fa-fw mr-2 text-gray-400"></i> -->
										한국어
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="?lang=en">
									<i class="fas fa-sm fa-fw mr-2 text-gray-400"></i>
									English
								</a>
							</div>
						</li>
			<%}else{ %>
			<li class="nav-item"><a class="nav-link" href="/long/list">장기 렌터카</a></li>
			<li class="nav-item"><a class="nav-link" href="/short/listInland">단기 렌터카</a></li>
			<li class="nav-item${users_id == null ? '' : ' dropdown'}"><c:choose>
					<c:when test="${users_id == null}">
						<a class="nav-link" href="/user/login">로그인</a>
					</c:when>
					<c:otherwise>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown4" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> ${users_name}님 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown4">
							<a class="dropdown-item" href="/user/logout">로그아웃</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="/user/update">개인정보수정</a>
						</div>
					</c:otherwise>
				</c:choose></li>
			<li class="nav-item"><a class="nav-link" href="/user/myPage/general?inquiry_type=1">MY렌터카</a></li>
			<li class="nav-item"><a class="nav-link" href="/customer/notice/list">고객센터</a></li>
			<%} %>
		</ul>
	</nav>
		</div>
		</div>
		
	<div class="progress m-0 p-0" style="height:2px">
		 <div class="progress-bar" style="background: linear-gradient(to right, red, orange); width:100%;"></div>
	</div> 
</div>
<div style="height: 90px"></div>
<script>
	const $dropdown = $(".dropdown");
	const $dropdownToggle = $(".dropdown-toggle");
	const $dropdownMenu = $(".dropdown-menu");
	const showClass = "show";

	$(window).on("load resize", function() {
		if (this.matchMedia("(min-width: 768px)").matches) {
			$dropdown.hover(function() {
				const $this = $(this);
				$this.addClass(showClass);
				$this.find($dropdownToggle).attr("aria-expanded", "true");
				$this.find($dropdownMenu).addClass(showClass);
			}, function() {
				const $this = $(this);
				$this.removeClass(showClass);
				$this.find($dropdownToggle).attr("aria-expanded", "false");
				$this.find($dropdownMenu).removeClass(showClass);
			});
		} else {
			$dropdown.off("mouseenter mouseleave");
		}
	});
</script>
<div class="top-body" style="height: 50px;"></div>

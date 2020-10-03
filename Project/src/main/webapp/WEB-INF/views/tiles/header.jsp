<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<div
	class="fixed-top bg-white border border-warning border-top-0 border-left-0 border-right-0">
	<nav class="navbar navbar-expand-sm justify-content-center"
		style="height: 90px">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/long/list">장기 렌터카</a></li>
			<li class="nav-item"><a class="nav-link" href="/short/listInland">단기 렌터카</a></li>
			<li class="nav-item${users_id == null ? '' : ' dropdown'}"><c:choose>
					<c:when test="${users_id == null}">
						<a class="nav-link" href="/user/login">로그인</a>
					</c:when>
					<c:otherwise>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown4"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> ${users_name}님 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown4">
							<a class="dropdown-item" href="/user/logout">로그아웃</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="/user/update">개인정보수정</a>
						</div>
					</c:otherwise>
				</c:choose></li>
			<li class="nav-item"><a class="nav-link" href="/user/myPage">MY렌터카</a></li>
			<li class="nav-item"><a class="nav-link" href="/customer/notice/list">고객센터</a></li>
		</ul>
	</nav>
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
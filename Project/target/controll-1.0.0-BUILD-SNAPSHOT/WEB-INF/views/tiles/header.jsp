<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="fixed-top bg-white border border-warning border-top-0 border-left-0 border-right-0">
	<nav class="navbar navbar-expand-sm justify-content-center" style="height: 90px;">
		<ul class="navbar-nav">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">신차 장기</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
					<a class="dropdown-item" href="#">무엇으로</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">채우징</a>
				</div>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">중고 장기</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown2">
					<a class="dropdown-item" href="#">??</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">!!</a>
				</div>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">단기</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown3">
					<a class="dropdown-item" href="#">고민</a>
					<a class="dropdown-item" href="#">입니당~</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">!!</a>
				</div>
			</li>
		</ul>
	</nav>
</div>
<div style="height: 125px;"></div>
<script>
	const $dropdown = $('.dropdown');
	const $dropdownToggle = $('.dropdown-toggle');
	const $dropdownMenu = $('.dropdown-menu');
	const showClass = 'show';

	$(window).on('load resize', function() {
		if (this.matchMedia('(min-width: 768px)').matches) {
			$dropdown.hover(function() {
				const $this = $(this);
				$this.addClass(showClass);
				$this.find($dropdownToggle).attr('aria-expanded', 'true');
				$this.find($dropdownMenu).addClass(showClass);
			}, function() {
				const $this = $(this);
				$this.removeClass(showClass);
				$this.find($dropdownToggle).attr('aria-expanded', 'false');
				$this.find($dropdownMenu).removeClass(showClass);
			});
		} else {
			$dropdown.off('mouseenter mouseleave');
		}
	});
</script>
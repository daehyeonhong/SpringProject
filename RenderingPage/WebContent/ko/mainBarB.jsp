<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
<title>Insert title here</title>
<script>
	$().ready(function() {
		$("#long_term").mouseover(function() {
			$("#pp").slideDown("fast");
		});
		$("#pp").mouseleave(function() {
			$(this).slideUp("fast");
		});

		$("#short_term").mouseover(function() {
			$("#pp").slideDown("fast");
		});
		$("#pp").mouseleave(function() {
			$(this).slideUp("fast");
		});
	});
</script>
</head>
<body>
	<div class="jumbotron bg-white" style="margin: 0px;" id="menuBar">
		<div class="row">
			<div class="col-sm-3">
				<h1 style="color: orange;">TT렌터카</h1>
			</div>
			<div class="col-sm-2" id="long_term">
				<h3>장기렌터카</h3>
			</div>
			<div class="col-sm-2" id="short_term">
				<h3>단기렌터카</h3>
			</div>
			<div class="col-sm-2" id="used">
				<h3>중고렌터카</h3>
			</div>
			<div class="col-sm-3" style="color: silver;">
				<p>
					로그인 My렌터카 이벤트 <a href="notice.jsp" style="color: orange;">고객센터</a>
				</p>
			</div>
		</div>
	</div>
	<nav class="container" id="pp">
		<div class="row">
			<div class="col">
				<h4 id="long_list">개인장기렌터카</h4>
				<br>
				<ul style="list-style: none; padding: 0;">
					<li><a href="#">개인장기렌터카 안내</a></li>
					<li><a href="#">개인장기렌터카 혜택</a></li>
					<li><a href="#">장기렌터카 차량정보</a></li>
					<li><a href="#">스마트케어 서비스</a></li>
				</ul>
			</div>
			<div class="col" id="short_list1">
				<h4>단기렌터카 예약/확인</h4>
				<br>
				<ul style="list-style: none; padding: 0;">
					<li>실시간으로 빠르게 예약/확인!</li>
				</ul>
				<br> <br> <br> <img src="./resources/images/arrow.png" style="width: 70px;">
			</div>
			<div class="col bg-light">
				<h4 id="short_list1">단기렌터카</h4>
				<br>
				<ul style="list-style: none; padding: 0;">
					<li><a href="#">단기렌터카 안내</a></li>
					<li><a href="#">요금/할인 안내</a></li>
					<li><a href="#">전기차 안내</a></li>
					<li><a href="#">보험대차 안내</a></li>
				</ul>
			</div>
			<div class="col">
				<h4>중고차 장기렌터카</h4>
				<br>
				<ul style="list-style: none; padding: 0;">
					<li><a href="#">중고차 장기렌터카 안내</a></li>
					<li><a href="#">중고차 장기 상담신청</a></li>
				</ul>
			</div>

		</div>
	</nav>

</body>
</html>
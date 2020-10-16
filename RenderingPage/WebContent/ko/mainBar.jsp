<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<title>Insert title here</title>
<script>
	$(document).ready(function() {
		$("#long_term").mouseover(function() {
			$("#pp").slideDown("fast");
		});
		$("#pp").mouseleave(function() {
			$(this).slideUp("fast");
		});

		$("#short_term").mouseover(function() {
			$("#pp").slideDown("fast");
			/*  $("#short_list1").css("color","red");*/
		});
		$("#pp").mouseleave(function() {
			$(this).slideUp("fast");
		});
	});
</script>
</head>
<body>
	<div class="jumbotron bg-white" id="menuBar">
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
				<br> <br> <br> <img
					src="./resources/images/arrow.png" style="width: 70px;">
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
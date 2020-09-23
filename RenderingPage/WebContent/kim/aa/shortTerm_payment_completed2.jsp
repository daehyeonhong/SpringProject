<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제완료 창</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
#th_title {
	background-color: #FEFCF9;
	text-align: center;
}
</style>
</head>
<body>

	<!-- 단기렌트 제목틀-->
	<div class="jumbotron bg-white">
		<div class="container col-sm-6">
			<h1>결제완료</h1>
			<hr>
		</div>
	</div>
	<div class="container col-sm-6">
		<div class="container" align="center">
			<h2>
				<b style="color: orange;">예약 및 결제가</b><span>&nbsp;완료되었습니다.</span>
			</h2>
			<br>
			<p>셔틀버스 운행정보 및 바로출발 서비스를 확인하여 주시기 바랍니다.</p>
			<br> <br>
			<hr>
		</div>

		<div class="container">
			<br> <br> <br>
			<table class="table table-hover">
				<tbody>
					<tr>
						<td id="th_title">예약번호</td>
						<td>201910291099</td>
					</tr>
					<tr>
						<td id="th_title">차량번호</td>
					</tr>
					<tr>
						<td id="th_title">대여차량</td>
					</tr>
					<tr>
						<td id="th_title">계약 기간</td>
					</tr>
					<tr>
						<td id="th_title">대여지점</td>
						<td>
							<div class="row">
								<div class="col">지점</div>
								<div class="col">
									<button class="btn btn-sm border float-right">지도보기</button>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td id="th_title">차량 대여 서비스</td>
					</tr>
					<tr>
						<td id="th_title">월 렌탈료</td>
					</tr>
					<tr>
						<td id="th_title" style="border-bottom: 1px solid silver;">결제금액</td>
						<td style="color: red; border-bottom: 1px solid silver;">128,000&nbsp;(신용카드)</td>
					</tr>
				</tbody>
			</table>
			<div class="text-center">TT렌터카를 이용해주셔서 감사합니다.</div>
			<br> <br>
			<hr>
			<br> <br>
			<div class="row" align="center">
				<div class="col-sm-12" align="center">
					<div class="row" align="center">
						<button class="col btn  border btn-light">메인으로 가기</button>
						&nbsp;
						<button class="col btn  border bg-default"
							onclick="location.href='http://www.jeju-i.com/'">카시트/유모차
							예약</button>
						&nbsp;
						<button class="col btn  border bg-warning"
							onclick="location.href='../shortTerm/shortTerm_history.jsp'">예약내역
							확인</button>
					</div>
				</div>
			</div>
		</div>
		<!-- table container -->
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>
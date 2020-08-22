<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h2>검색</h2>
		<div class="btn-group">
			<button type="button" class="btn btn-primary">제조사 선택</button>
			<button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">현대자동차</a>
				<a class="dropdown-item" href="#">기아자동차</a>
				<a class="dropdown-item" href="#">한국GM</a>
			</div>
		</div>

		<div class="btn-group">
			<button type="button" class="btn btn-primary">차량 유형 선택</button>
			<button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">승합</a>
				<a class="dropdown-item" href="#">중형</a>
				<a class="dropdown-item" href="#">대형</a>
			</div>
		</div>

		<div class="btn-group">
			<button type="button" class="btn btn-primary">차량 선택</button>
			<button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">아반데</a>
				<a class="dropdown-item" href="#">그렌저</a>
				<a class="dropdown-item" href="#">제네시스</a>
 			</div>
		</div>

		<button type="button" class="btn btn-primary">검색</button>

		<table>
			<tr>
				<td>
					<img src="https://image.speedmate.com/speedimg/rentcar/687048/20200515/17/175355397mbl_41f63b7b95834433a740529d4de12a75.png" alt="현대자동차 G80 2.5T AWD">
					<ul>
						<li>월 렌탈료</li>
						<li>1,044,000</li>
						<li>원</li>
					</ul>
				</td>
				<td>
					<p>현대자동차</p>
					<p>G80 2.5T AWD</p>
					<ul>
						<li>소비자가</li>
						<li>55,270,000원</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td>
					<ul>
						<li>차량등록</li>
						<li>출고시확정</li>
						<li>주행거리</li>
						<li>선택가능 NNN원</li>
					</ul>
				</td>
				<td>
					<ul>
						<li>계약기간</li>
						<li>48개월</li>
						<li>지역</li>
						<li>선택가능</li>
					</ul>
				</td>
			</tr>
		</table>

	</div>

</body>
</html>
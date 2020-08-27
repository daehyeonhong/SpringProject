<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>



<body>
	<div class="container">

		<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
			<a class="navbar-brand" href="#">TT렌터카</a>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">신차 장기 렌터카</a></li>
				<li class="nav-item"><a class="nav-link" href="#">중고 장기 렌터카</a></li>
				<li class="nav-item"><a class="nav-link" href="#">단기 렌터카</a></li>
			</ul>
			<br>
		</nav>


		<div class="jumbotron">
			<h1>TT 중고차 장기 렌터카</h1>
		</div>

		<br>
		<br>
		<br>
		<br>

		<h3>검색 결과</h3>


		<div class="dropdown">
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">낮은 가격순</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">낮은 가격순</a> <a
					class="dropdown-item" href="#">높은 가격순</a> <a class="dropdown-item"
					href="#">짧은 주행거리 순</a> <a class="dropdown-item" href="#">최근 등록
					순</a> <a class="dropdown-item" href="#">인기순</a>
			</div>
		</div>

		<br>
		<br>
		<br>
		<br>
		<br>
		<h4>홈>중고차 장기 렌터카</h4>

		<div class="btn-group">
			<button type="button" class="btn btn-primary">제조사 선택</button>
			<button type="button"
				class="btn btn-primary dropdown-toggle dropdown-toggle-split"
				data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">현대자동차 </a> <a
					class="dropdown-item" href="#">기아자동차 </a> <a class="dropdown-item"
					href="#">한국GM </a>

			</div>
		</div>

		<div class="btn-group">
			<button type="button" class="btn btn-primary">차량 유형 선택</button>
			<button type="button"
				class="btn btn-primary dropdown-toggle dropdown-toggle-split"
				data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">승합 </a> <a class="dropdown-item"
					href="#">중형 </a> <a class="dropdown-item" href="#">대형</a>

			</div>
		</div>



		<div class="btn-group">
			<button type="button" class="btn btn-primary">차량 선택</button>
			<button type="button"
				class="btn btn-primary dropdown-toggle dropdown-toggle-split"
				data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">아반데 </a> <a class="dropdown-item"
					href="#">그렌저 </a> <a class="dropdown-item" href="#">제네시스 </a>

			</div>
		</div>

		<button type="button" class="btn btn-primary">검색</button>


		<br>
		<br>
		<br>
		<br>

		<div class="btn-group">
			<button type="button" class="btn btn-primary">대여기간</button>
			<button type="button"
				class="btn btn-primary dropdown-toggle dropdown-toggle-split"
				data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">현대자동차 </a> <a
					class="dropdown-item" href="#">기아자동차 </a> <a class="dropdown-item"
					href="#">한국GM </a>

			</div>
		</div>

		<div class="btn-group">
			<button type="button" class="btn btn-primary">월 렌탈료</button>
			<button type="button"
				class="btn btn-primary dropdown-toggle dropdown-toggle-split"
				data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">현대자동차 </a> <a
					class="dropdown-item" href="#">기아자동차 </a> <a class="dropdown-item"
					href="#">한국GM </a>

			</div>
		</div>

		<br>
		<br>
		<br>
		<br>


		<div class="btn-group">
			<button type="button" class="btn btn-primary">주행거리</button>
			<button type="button"
				class="btn btn-primary dropdown-toggle dropdown-toggle-split"
				data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">현대자동차 </a> <a
					class="dropdown-item" href="#">기아자동차 </a> <a class="dropdown-item"
					href="#">한국GM </a>

			</div>
		</div>

		<div class="btn-group">
			<button type="button" class="btn btn-primary">차량등록</button>
			<button type="button"
				class="btn btn-primary dropdown-toggle dropdown-toggle-split"
				data-toggle="dropdown"></button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">현대자동차 </a> <a
					class="dropdown-item" href="#">기아자동차 </a> <a class="dropdown-item"
					href="#">한국GM </a>

			</div>
		</div>

		<br>
		<br>
		<br>
		<br>

		<div>
			연료
			<button type="button" class="btn btn-primary">전체</button>
			<button type="button" class="btn btn-primary">휘발유</button>
			<button type="button" class="btn btn-primary">경유</button>
			<button type="button" class="btn btn-primary">LPG</button>
			<button type="button" class="btn btn-primary">하이브리드</button>
			<button type="button" class="btn btn-primary">전기</button>
		</div>

		<br>
		<br>

		<div>
			지역
			<button type="button" class="btn btn-primary">전체</button>
			<button type="button" class="btn btn-primary">서울</button>
			<button type="button" class="btn btn-primary">경기</button>
			<button type="button" class="btn btn-primary">충청</button>
			<button type="button" class="btn btn-primary">강원</button>
			<button type="button" class="btn btn-primary">경상</button>
			<button type="button" class="btn btn-primary">전라</button>
			<button type="button" class="btn btn-primary">제주</button>

			<br>
			<br>

			<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
				<form class="form-inline" action="/action_page.php">
					<input class="form-control mr-sm-2" type="text"
						placeholder="차량 번호로 검색">
					<button class="btn btn-success" type="submit">검색</button>
				</form>
			</nav>

		</div>

		<br>
		<br>
		<br>
		<br>


		<h1>검색 결과</h1>

		<div class="dropdown">
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">낮은 가격순</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">낮은 가격순</a> <a
					class="dropdown-item" href="#">높은 가격순</a> <a class="dropdown-item"
					href="#">짧은 주행거리 순</a> <a class="dropdown-item" href="#">최근 등록
					순</a> <a class="dropdown-item" href="#">인기순</a>
			</div>
		</div>


		<br>
		<br>
		<br>
		<br>



		<div class="col-md-4">
			<table>
				<tr>
					<td><img
						src="https://image.speedmate.com/speedimg/rentcar/687048/20200515/17/175355397mbl_41f63b7b95834433a740529d4de12a75.png"
						alt="현대자동차 G80 2.5T AWD"></td>
					<td>현대자동차<br>G2.5T AWD
					</td>
				</tr>
				<tr>
					<td>소비자 가<br>55,270,000원
					</td>
					<td>월 렌탈료 1,044,000원</td>
				</tr>
				<tr>
					<td>차량등록 출고시확정</td>
					<td>계약기간 48개월</td>
				</tr>
				<tr>
					<td>주행거리 선택가능</td>
					<td>지역 선택가능</td>
				</tr>
			</table>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div>
			<h3>이런차는 어떠세요</h3>
			<table>
				<tr>
					<th><img
						src="https://image.speedmate.com/speedimg/rentcar/687048/20200515/17/175355397mbl_41f63b7b95834433a740529d4de12a75.png"
						alt="현대자동차 G80 2.5T AWD"></th>
				</tr>
				<tr>
					<td>현대자동차<br>G2.5T AWD
					</td>
				</tr>
			</table>
			<button type="button" class="btn btn-primary">견적내기</button>
		</div>

		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<footer>
			<p>
				footer<br> <a href="mailto:hege@example.com">hege@example.com</a>
			</p>
		</footer>




	</div>
</body>
</html>
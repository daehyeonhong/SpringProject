<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주찾는 질문</title>
</head>
<!-- <link rel="stylesheet" href="./resources/css/bootstrap.min.css" /> -->
<body>
	<%@include file="mainBar.jsp"%>
	<%@include file="customerCenterBar.jsp"%>
	<br>
	<br>
	<div class="container">
		<h1>자주찾는 질문</h1>
		<br> <br>
		<nav class="navbar navbar-expand-md bg-light navbar-light"
			style="margin: 0;">
			<ul class="container navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">전체</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">다이렉트</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">개인장기</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">단기</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">중고차장기</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">전기차</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">긴급출동/사고</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">공통</a>
				</li>
			</ul>
		</nav>
		<hr style="margin: 0;">
		<br>
		<!-- <nav class="navbar navbar-expand-md bg-white navbar-light"> 
  		<a class="nav-link" href="customerCounseling.jsp">고객상담</a>
  		 <div class="input-group mb-1" align="right">
   		 <input type="text" class="form-control col-sm-3" placeholder="Search">
   		 <div class="input-group-append">
      		<button class="btn btn-success" type="submit">검색</button>  
   		 </div>
  		 </div>
 	</nav> -->

		<!-- <div class="navbar-nav">
</div>
 <div class="input-group-append float-right" >
  <input type="text" class="form-control" placeholder="지점명을 입력해주세요." />
  <button class="btn btn-success" type="submit" >검색</button>  
  </div>
  <br>
   -->

		<div class="container-fluid">
			<div class="row">
				<div class="col">
					<button class="btn btn-light" style="border: solid 1px silver">고객상담</button>
				</div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col input-group-append float-right">
					<input type="text" class="form-control" placeholder="검색어를 입력해주세요." />
					<button class="btn btn-warning" type="submit">검색</button>
				</div>
			</div>
		</div>
		<br>


		<!--페이지 쪽수  -->
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#pre"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#1">1</a></li>
				<li class="page-item"><a class="page-link" href="#2">2</a></li>
				<li class="page-item"><a class="page-link" href="#3">3</a></li>
				<li class="page-item"><a class="page-link" href="#4">4</a></li>
				<li class="page-item"><a class="page-link" href="#5">5</a></li>
				<li class="page-item"><a class="page-link" href="#6">6</a></li>
				<li class="page-item"><a class="page-link" href="#7">7</a></li>
				<li class="page-item"><a class="page-link" href="#8">8</a></li>
				<li class="page-item"><a class="page-link" href="#9">9</a></li>
				<li class="page-item"><a class="page-link" href="#10">10</a></li>
				<li class="page-item"><a class="page-link" href="#next"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
						class="sr-only">Next</span>
				</a></li>
			</ul>
		</nav>

	</div>
	<br>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>
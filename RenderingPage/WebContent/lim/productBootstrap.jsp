<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car_List</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>

	<hr style="border: 1px solid red;">
	<div class="container">
		<div class="col-sm-8 row">
			<span class="h1">SK장기 렌터카 다이렉트</span>
			<nav class="small" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="#"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" d="M8 3.293l6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
							<path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />
						</svg></a>
					</li>
					<li class="breadcrumb-item"><a href="#">장기렌터카</a></li>
					<li class="breadcrumb-item active" aria-current="page">SK장기렌터카 다이렉트</li>
				</ol>
			</nav>
		</div>
		<h3>다이렉트 견적 조회</h3>
		<table class="table">
			<tr>
				<td class="carImage"></td>
				<td>
					<p>차량 제조사 --> 차량 이름</p>
					<p>차량 설명 울라 불라</p>
				</td>
			</tr>
		</table>
		<div>
			<span class="h4">상세 차량 및 옵션 선택</span>
			<span>선구매 차량은 차종, 내/외부 색상, 옵션 선택이 불가할 수 있습니다.</span>
		</div>
		<form action="#">
			<table class="container">
				<tr>
					<td>
						<span>상세차량</span>
						<a id="tooltipIcon" data-toggle="tooltip" data-placement="bottom" title="~~!~~!"></a>
					<td>
						<label class="badge badge-pill badge-danger">Hot Deal</label>
						<span>차량 정보</span>
					<td>
						<span>차량 가격</span>
						<a class="btn btn-info btn-sm" data-toggle="collapse" href="#pop">변경</a>
					</td>
				</tr>
			</table>
			<div class="container"></div>
			<div id="accordion" class="table bg-light">
				<div id="pop" class="collapse" data-parent="#accordion">
					<table>
						<tr class="overflow-scroll">
							<td class="carImage" rowspan="2"></td>
							<td class="col-sm-9">
								<ul class="nav nav-tabs container row" role="tablist">
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#all">전체</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#gasoline">휘발유</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#diesel">경유</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#lpg">LPG</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#hybrid">하이브리드</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#electric">전기</a>
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<div class="tab-content container">
									<div id="all" class="container tab-pane active">
										<br>
										<h3>all</h3>
										<p>전체</p>
									</div>
									<div id="gasoline" class="container tab-pane fade">
										<br>
										<h3>gasoline</h3>
										<p>휘발유</p>
									</div>
									<div id="diesel" class="container tab-pane fade">
										<br>
										<h3>diesel</h3>
										<p>디젤</p>
									</div>
									<div id="lpg" class="container tab-pane fade">
										<br>
										<h3>lpg</h3>
										<p>lpg</p>
									</div>
									<div id="hybrid" class="container tab-pane fade">
										<br>
										<h3>hybrid</h3>
										<p>하이브리드</p>
									</div>
									<div id="electric" class="container tab-pane fade">
										<br>
										<h3>electric</h3>
										<p>전기</p>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</div><hr style="border: 1px solid red;">

	<div style="height: 80px"></div>
		<div id="nav" class="navbar bg-dark navbar-dark" style="position: sticky; bottom: 0; margin:0 auto; left: 0; right: 0;">
			<table>
				<tr>
					<td>
					</td>
					<td rowspan="2">
						<button class="btn btn-secondary btn-sm">
							<p>맞춤형 렌탈료</p>
							<p>상담신청</p>
						</button>
					</td>
					<td rowspan="2">
						<button class="btn btn-info btn-sm">
							<p>무방문/무서류</p>
							<p>다이렉트 계약</p>
						</button>
					</td>
				</tr>
			</table>
		</div>
	<jsp:include page="../ko/footer.jsp" />
	<script>
		$().ready(function() {
			$('.carImage').html('<img alt="CarImage" src="https://upload.wikimedia.org/wikipedia/commons/a/a4/Japan_road_sign_402.svg" width="150px" height="150px" />');
			$('#tooltipIcon').html('<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-question-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM6.57 6.033H5.25C5.22 4.147 6.68 3.5 8.006 3.5c1.397 0 2.673.73 2.673 2.24 0 1.08-.635 1.594-1.244 2.057-.737.559-1.01.768-1.01 1.486v.355H7.117l-.007-.463c-.038-.927.495-1.498 1.168-1.987.59-.444.965-.736.965-1.371 0-.825-.628-1.168-1.314-1.168-.901 0-1.358.603-1.358 1.384zm1.251 6.443c-.584 0-1.009-.394-1.009-.927 0-.552.425-.94 1.01-.94.609 0 1.028.388 1.028.94 0 .533-.42.927-1.029.927z"/></svg>');
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
</body>
</html>
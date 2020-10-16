<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

<title>중고차 장기 검색</title>
</head>
<body>
	<script>
		function goDate1() {
			let form = document.userinput;
			document.getElementById("sellist2").value = null;
			form.submit();

		}
	</script>

	<script>
		function goDate2() {
			let form = document.userinput;
			document.getElementById("sellist3").value = null;
			form.submit();

		}
	</script>



	<script>
		function optest() {
			if ((($('#sellist1').val() != '제조사 선택'))
					&& (($('#sellist2').val() == '차량 유형 선택'))
					&& ($("input:checkbox[name=example1]:checked").length != 0)) {
				alert('차량 유형을 먼저 선택하세요');
				$("input:checkbox[name=example1]").prop("checked", false);
			}

		}
	</script>



	<div class="jumbotron">
		<h2>중고차 장기 렌트</h2>
	</div>



	<div class="container">

		<div class="container" style="border: solid 2px;">

			<form method="post" action="#" name="userinput">
				<div class="row">
					<span class="col-sm-1">&nbsp;</span>
					<div class="col-sm-3">
						<select class="form-control" id="sellist1" name="sellist1"
							onchange="goDate1()">
							<option>제조사 선택</option>
						</select>
					</div>


					<div class="col-sm-3">

						<select class="form-control" id="sellist2" name="sellist2"
							onchange="goDate2()">
							<option>차량 유형 선택</option>
						</select>
					</div>

					<div class="col-sm-3">

						<select class="form-control" id="sellist3" name="sellist3">
							<option disabled>차량 선택</option>
						</select>
					</div>

					<input id="tess" type="submit" class="btn btn-primary col-sm-1"
						value="검색" onclick="optest()">


				</div>


				<br> <br>


				<div class="row">
					<span class="col-sm-1"> &nbsp;&nbsp;&nbsp;</span> <span
						class="col-sm-1"><strong>연료 :</strong></span>

					<div class="col-sm-8">
						<span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span>
						<div class="form-check-inline">
							<input <c:if test="${ff=='전체' or ff1=='전체'}">checked</c:if>
								type="checkbox" value="전체" name="example1"><strong>&nbsp;전체&nbsp;</strong>
						</div>
						<div class="form-check-inline">
							<input <c:if test="${ff=='휘발유' or ff1=='휘발유'}">checked</c:if>
								type="checkbox" value="휘발유" name="example1"><strong>&nbsp;휘발유&nbsp;</strong>
						</div>
						<div class="form-check-inline">
							<input <c:if test="${ff=='경유' or ff1=='경유'}">checked</c:if>
								type="checkbox" value="경유" name="example1"><strong>&nbsp;경유&nbsp;</strong>
						</div>
						<div class="form-check-inline">
							<input <c:if test="${ff=='LPG' or ff1=='LPG'}">checked</c:if>
								type="checkbox" value="LPG" name="example1"><strong>&nbsp;LPG&nbsp;</strong>
						</div>
						<div class="form-check-inline">
							<input <c:if test="${ff=='전기' or ff1=='전기'}">checked</c:if>
								type="checkbox" value="전기" name="example1"><strong>&nbsp;전기&nbsp;</strong>
						</div>
						<div class="form-check-inline">
							<input <c:if test="${ff=='하이브리드' or ff1=='하이브리드'}">checked</c:if>
								type="checkbox" value="하이브리드" name="example1"><strong>&nbsp;하이브리드&nbsp;</strong>
						</div>
					</div>



					<input id="tess1" type="submit" value="검색"
						class="btn btn-info col-sm-1" onclick="optest()">
				</div>





				<br>


				<div class="row">
					<span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> <span
						class="col-sm-1"><strong>지점 :</strong></span>

					<div class="col-sm-8">
						<span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span>
						<div class="form-check-inline">
							<input <c:if test="${dd=='전체' or dd1=='전체'}">checked</c:if>
								type="checkbox" value="전체" name="example2"><strong>&nbsp;전체&nbsp;</strong>
						</div>

						<div class="form-check-inline">
							<input <c:if test="${dd=='서울' or dd1=='서울'}">checked</c:if>
								type="checkbox" value="서울" name="example2"><strong>&nbsp;서울&nbsp;</strong>
						</div>

						<div class="form-check-inline">
							<input <c:if test="${dd=='경기' or dd1=='경기'}">checked</c:if>
								type="checkbox" value="경기" name="example2"><strong>&nbsp;경기&nbsp;</strong>
						</div>

						<div class="form-check-inline">
							<input <c:if test="${dd=='충청' or dd1=='충청'}">checked</c:if>
								type="checkbox" value="충청" name="example2"><strong>&nbsp;충청&nbsp;</strong>
						</div>

						<div class="form-check-inline">
							<input <c:if test="${dd=='강원' or dd1=='강원'}">checked</c:if>
								type="checkbox" value="강원" name="example2"><strong>&nbsp;강원&nbsp;</strong>
						</div>

						<div class="form-check-inline">
							<input <c:if test="${dd=='경상' or dd1=='경상'}">checked</c:if>
								type="checkbox" value="경상" name="example2"><strong>&nbsp;경상&nbsp;</strong>
						</div>

						<div class="form-check-inline">
							<input <c:if test="${dd=='제주' or dd1=='제주'}">checked</c:if>
								type="checkbox" value="제주" name="example2"><strong>&nbsp;제주&nbsp;</strong>
						</div>
					</div>
					<input id="tess2" type="submit" value="검색"
						class="btn btn-info col-sm-1" onclick="optest()">
				</div>
			</form>


		</div>
	</div>



	<div class="container">
		<br>
		<h3>검색결과</h3>
		<hr style="border: solid 1px black" />

		<div class="row"></div>

		<div class="container row">
			<div onclick="location.href='${url}'" class="card col-sm-6 ">
				<div class="row">
					<img class="card-img-top col-sm-7"
						src="../resources/images/${row.carname}.jpg" alt="Card image"
						width="150" height="150"> <span class="col-sm-5"><br>
						<br> <br> <strong> []</strong></span>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-sm-6">
							<button type="button" class="btn btn-outline-dark " disabled>소비자가</button>
							<strong></strong>
						</div>
						<div class="col-sm-6">
							<button type="button" class="btn btn-outline-danger">월
								렌탈료</button>
							<strong style="color: red"></strong>
						</div>
					</div>
					<hr style="border: 1px solid"></hr>
					<div class="row">
						<ul class="col-sm-6">
							<li>차량번호 <span>${row.id}</span></li>
							<li>차량유형 <span>${row.cartype}</span></li>

						</ul>
						<ul class="col-sm-6">
							<li>연료 <span>${row.fuel}</span></li>
							<li>지점 <span>${row.lentoffice }</span></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
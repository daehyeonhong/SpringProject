<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="/resources/js/car.js"></script>
<script type="text/javascript">
	$().ready(function() {
		carService.listCar({
			manufacturer_seq : 5,
			segment_seq : 1
		});
	});
</script>
<article>
	<div class="jumbotron">
		<h2>중고차 장기 렌트</h2>
	</div>

	<div class="container">
		<div class="container" style="border: solid 2px;">
			<div class="row">
				<div>
					<select class="form-control keyword" name="manufacturer">
						<c:forEach var="manufacturer" items="${manufacturerList}">
							<option value="${manufacturer.seq}">${manufacturer.name}</option>
						</c:forEach>
					</select>
				</div>

				<div>
					<select class="form-control keyword" name="segment">
						<c:forEach var="segment" items="${segmentList}">
							<option value="${segment.seq}">${segment.description}</option>
						</c:forEach>
					</select>
				</div>
			</div>
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
						width="150" height="150"> <span class="col-sm-5"><strong>
							[]</strong></span>
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
</article>
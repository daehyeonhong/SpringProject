<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<div class="jumbotron">
		<h2>장기 렌트</h2>
	</div>
	<div class="container">
		<div class="container">
			<div class="row">
				<div class="row col-sm-4">
					<select class="form-control keyword" id="mfgco_seq"
						name="mfgco_seq">
						<option value="99999">전체</option>
						<c:forEach var="mfgco" items="${mfgcoList}">
							<option value="${mfgco.mfgco_seq}">${mfgco.mfgco_name}</option>
						</c:forEach>
					</select>
				</div>

				<div class="row col-sm-4">
					<select class="form-control keyword" id="segment_seq"
						name="segment_seq">
						<option value="99999">전체</option>
						<c:forEach var="segment" items="${segmentList}">
							<option value="${segment.segment_seq}">${segment.segment_desc}</option>
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

		<div class="container row" id="list"></div>
	</div>
</article>
<script>
	$().ready(
			function() {
				list({
					'mfgco_seq' : '99999',
					'segment_seq' : '99999'
				});

				$('#segment_seq').on('change', function() {
					list({
						'mfgco_seq' : $('#mfgco_seq').val(),
						'segment_seq' : $(this).val()
					});
				});
				$('#mfgco_seq').on('change', function() {
					list({
						'mfgco_seq' : $(this).val(),
						'segment_seq' : $('#segment_seq').val()
					});
				});
				function list(parameter, callback) {
					let mfgco_seq = parameter.mfgco_seq;
					let segment_seq = parameter.segment_seq;

					$.getJSON('/car/carList/' + mfgco_seq + '/' + segment_seq
							+ '.json', function(data) {
						let html = '';
						$.each(data, function(carList, car) {
							html += '<a href="/long/detail?trim_seq='
									+ car.trim_seq + '"';
							html += '<div class="col-sm-6">';
							html += '<div class="row">'; html += '</div>'
							html += '<div class="card-body">';
							html +='<div class="row">';
							html +='<div class="col-sm-6">';
						    html +=' <button type="button" class="btn btn-outline-dark " disabled>소비자가</button>';
							html += '<strong name="car_seq">' + car.trim_price
							html += '</strong></div>';
							html += '<div class="col-sm-6">';
							html +='<button type="button" class="btn btn-outline-dark " disabled>모델명</button>';
							html += '<strong name="car_model">' + car.trim_name
									+ '</strong>'+'</div>'+'</div>';
							html += '<hr style="border:1px solid"></hr>';
							html +='<div class="row"><ul class="col-sm-6">';
							html += '<li>차량 연식<span name="car_year">' + car.car_year+ '</li>';
							html += '<li>차량 가격<span name="car_trim">' + car.fuel_name+ '</li></ul>';
							html += '<ul class="col-sm-6">';
							html += '<li>차량 연식<span name="car_year">' + car.car_model+ '</li>';
							html += '<li>차량 가격<span name="car_trim">' + car.segment_name+ '</li></ul></div>';
							
							html += '</div></a>';
						});
						console.log(html);
						$('#list').html(html);
					});
				}
				return false;
			});
</script>
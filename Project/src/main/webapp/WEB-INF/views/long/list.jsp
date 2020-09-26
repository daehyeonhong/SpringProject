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
							html += '<h3 name="car_seq">' + car.trim_name
									+ '</h3>';
							html += '<div name="car_model">' + car.car_model
									+ '</div>';
							html += '<div name="car_year">' + car.car_year
									+ '</div>';
							html += '</div></a>';
						});
						console.log(html);
						$('#list').html(html);
					});
				}
				return false;
			});
</script>
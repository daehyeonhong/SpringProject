<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$().ready(
			function() {
				list({
					'mfgco_seq' : '1',
					'segment_seq' : '5'
				});
				function list(parameter, callback) {
					let mfgco_seq = parameter.mfgco_seq;
					let segment_seq = parameter.segment_seq;

					$.getJSON('/car/carList/' + mfgco_seq + '/' + segment_seq
							+ '.json', function(data) {
						let html = '';
						$.each(data, function(carList, car) {
							html += '<div class="col-sm-6">';
							html += '<h3 class="car_seq">' + car.car_seq
									+ '</h3>';
							html += '<div class="model">' + car.car_model
									+ '</div>';
							html += '<div class="year">' + car.car_year
									+ '</div>';
							html += '</div>';
						});
						console.log(html);
						$('#list').html(html);
					});
				}
				return false;
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
					<select class="form-control keyword" name="mfgco">
						<option value="012345678">전체</option>
						<c:forEach var="mfgco" items="${mfgcoList}">
							<option value="${mfgco.mfgco_seq}">${mfgco.mfgco_name}</option>
						</c:forEach>
					</select>
				</div>

				<div>
					<select class="form-control keyword" name="segment">
						<option value="ABCDEFLS">전체</option>
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
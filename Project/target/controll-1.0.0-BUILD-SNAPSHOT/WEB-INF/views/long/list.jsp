<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatNumber pattern="#,### 원" var="price" value="${car.trim_price}"/>
<article>
	<div class="jumbotron">
		<h2>장기 렌트</h2>
	</div>
	
	
		<div class="container col-sm-8" style="border:solid 2px;">
		
		<br><br>
			<div class="row">
				<div class=" col-sm-6">
				<h4>제조사 선택</h4>
					<select class="form-control keyword" id="mfgco_seq"
						name="mfgco_seq">
						<option value="99999">전체</option>
						<c:forEach var="mfgco" items="${mfgcoList}">
							<option value="${mfgco.mfgco_seq}">${mfgco.mfgco_name}</option>
						</c:forEach>
					</select>
				</div>

				<div class="col-sm-6">
				<h4>차량 유행 선택</h4>
					<select class="form-control keyword" id="segment_seq" name="segment_seq">
						<option value="99999">전체</option>
						<c:forEach var="segment" items="${segmentList}">
							<option value="${segment.segment_seq}">${segment.segment_desc}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<br><br>
		</div>
	

	<div class="container col-sm-8">
		<br>
		<h3>검색결과</h3>
		<hr color="black" />
	<div class="row" id="list"></div>
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

							html += '<div class="card col-sm-6" onclick="location.href=location.href=\'/long/detail?trim_seq='
								+ car.trim_seq+ '\'">';
							
							html += '<div class="row"><img class="col-sm-6" src="../resources/images/'+car.img_seq+'.jpg">'; 
							html += '<span class="col-sm-6"><br><br><br><strong>'+car.trim_name+'</strong></span></div>'
							html += '<div class="card-body">';
							html +='<div class="row">';
							html +='<div class="col-sm-6">';
						    html +=' <button type="button" class="btn btn-outline-dark " disabled>소비자가</button>&nbsp';
							html += '<strong name="car_seq">' + car.trim_price+'원'
							html += '</strong></div>';
							html += '<div class="col-sm-6">';
							html +='<button type="button" class="btn btn-outline-dark " disabled>월 렌탈료</button>&nbsp';
							html += '<strong name="car_model">' + Math.round(car.trim_price/12)+'원'
									+ '</strong>'+'</div>'+'</div>';
							html += '<hr style="border:1px solid"></hr>';
							html +='<div class="row"><ul class="col-sm-5">';
							html += '<li>차량 연식 &nbsp&nbsp&nbsp<span name="car_year">' + car.car_year+ '</li>';
							html += '<li>차량 연료&nbsp&nbsp&nbsp <span name="car_trim">' + car.fuel_name+ '</li></ul>';
							html += '<ul class="col-sm-7">';
							html += '<li>모델 명  &nbsp&nbsp&nbsp&nbsp<span name="car_year">' + car.car_model+ '</li>';
							html += '<li>차량 등급&nbsp&nbsp&nbsp <span name="car_trim">' + car.segment_name+ '</li></ul></div>';
							
							html += '</div></div>';
						});
						console.log(html);
						$('#list').html(html);
					});
				}
				return false;
			});
</script>
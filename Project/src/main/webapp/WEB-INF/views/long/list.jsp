<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <fmt:formatNumber pattern="#,### 원" var="price" value="${car.trim_price}" />
<fmt:formatNumber pattern="#,### 원" var="price" value="${Math.round(car.trim_price/12)}" /> --%>
<style>
	#ulStyle1,#ulStyle2{list-style:none;}
</style>
<article class="container-fluid">
<div class="row">
		<br><br>
			<div class="row col-sm-12">
				<div class="col-sm-6">
				<h4>제조사 선택</h4>
					<select class="form-control keyword" id="mfgco_seq" name="mfgco_seq">
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
	

	
		<br>
		<div class="container-fluid">
		<h3 class="row">검색결과</h3>
		<hr class="row" color="black" />
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
	 
						html += '<div class="card col-sm-6" onclick="location.href=location.href=\'/long/detail?trim_seq= '
							+ car.trim_seq+ '\'">';
						
						html += '<div class="row"><img class="col-sm-6 p-2" src="../resources/images/'+car.img_seq+'.jpg">'; 
						html += '<span class="col-sm-6"><br><br><br><strong>'+car.trim_name+'</strong></span></div>'
						html += '<div class="card-body">';
						html += '<div class="row" style="height:30px;">';
						html += '<div class="col-sm-6">';
						html += '<div class="row">';
					    html += '<div class="p-1" style="border:1px solid silver;color:silver; height:100%;">소비자가</div>&nbsp';
						html += '<strong class="p-1" name="row car_seq" style="color:silver">'+ car.trim_price+'원';
						html += '</strong></div></div>';
						html += '<div class="col-sm-6">';
						html += '<div class="row">';
						html += '<div class="p-1"style="border:1px solid red; color:red; height:100%;">월 렌탈료</div>&nbsp';
						html += '<h4 class="m-0" name="car_model" style="color:red;">' + Math.round(car.trim_price/12)+'원' + '</h4>'+'</div>'+'</div></div>';
						html += '<hr class="row"/>';
						html += '<div class="row"><ul class="col-sm-5" id="ulStyle1">';
						html += '<li><b>차량 연식 &nbsp&nbsp&nbsp</b><span name="car_year">' + car.car_year+ '</li>';
						html += '<li><b>차량 연료 &nbsp&nbsp&nbsp</b><span name="car_trim">' + car.fuel_name+ '</li></ul>';
						html += '<ul class="col-sm-7" id="ulStyle2">';
						html += '<li><b>모&nbsp 델 &nbsp명&nbsp&nbsp&nbsp</b><span name="car_year">' + car.car_model+ '</li>';
						html += '<li><b>차량 등급&nbsp&nbsp&nbsp</b><span name="car_trim">' + car.segment_name+ '</li></ul></div>';
						
						html += '</div></div>';
 
					});
					console.log(html);
					$('#list').html(html);
				});
			}
			return false;
		});
</script>














































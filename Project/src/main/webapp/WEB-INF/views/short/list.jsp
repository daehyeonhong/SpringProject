<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
<article>
	<div class="container col-sm-8">
		<!-- 단기렌트 제목틀-->
		<div class="jumbotron bg-white">
			<div class="container col-sm-6">
				<h1>단기렌터카 예약/확인</h1>
			</div>
		</div>
		<div class="container">
			<table class="table">
				<tr class="row">
					<td class="col-sm-3">
						<div>
							<!-- class="col-md-6" -->
							<input type="hidden" id="startDate" />
						</div>
					</td>
					<td class="col-sm-3">
						<div>
							<input type="hidden" id="endDate" />
						</div>
					</td>
					<td class="col-sm-3">
						<div>
							<select class="form-control" name="branch_seq"
								onchange="targetBranch(this.options[this.selectedIndex].value)">
								<option value="99999">전체</option>
								<c:forEach var="branch" items="${branchList}">
									<option value="${branch.branch_seq}">${branch.branch_name}</option>
								</c:forEach>
							</select>
						</div> <span id="branchInfo"></span>
					</td>
				</tr>
			</table>
		</div>
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
		<div class="container row" id="list"></div>
	</div>
</article>
<script type="text/javascript">
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
	$(function() {
		$('#startDate').datetimepicker({
			inline : true,
			sideBySide : true,
			format : 'L',
			useCurrent : false
		});
		$('#endDate').datetimepicker({
			inline : true,
			sideBySide : true,
			format : 'L',
			useCurrent : false
		});
		$('#endDate').datetimepicker('minDate', new Date());
		$('#startDate').datetimepicker('minDate', new Date());
		$("#startDate").on("change.datetimepicker", function(event) {
			$('#endDate').datetimepicker('minDate', event.date);
		});
		$("#endDate").on("change.datetimepicker", function(event) {
			$('#startDate').datetimepicker('maxDate', event.date);
		});
	});
	function targetBranch(parameter, callback) {
		let branch_seq = parameter.branch_seq;
		let targetBranch = $('#branchInfo');
	}
</script>
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
							<select class="form-control" name="branch_seq" id="branch_seq">
								<c:forEach var="branch" items="${branchList}">
									<option value="${branch.branch_seq}">${branch.branch_name}</option>
								</c:forEach>
							</select>
						</div>
						<span id="branchInfo"></span>
					</td>
				</tr>
			</table>
			<button class="btn btn-outline-info" id="Btnsc">목록보기</button>
			<div id="list" align="center"></div>
		</div>
	</div>
</article>
<script type="text/javascript">
	$()
			.ready(
					function() {
						list({
							'mfgco_seq' : '99999',
							'segment_seq' : '99999',
							'start_date' : '2020-10-01',
							'end_date' : '2020-10-03',
							'branch_seq' : '2'
						});
						targetBranch({
							'branch_seq' : '1'
						});
						$('#branch_seq').on('change', function() {
							targetBranch({
								'branch_seq' : $(this).val()
							})
						})
						function list(parameter, callback) {
							let mfgco_seq = parameter.mfgco_seq;
							let segment_seq = parameter.segment_seq;
							let start_date = parameter.start_date;
							let end_date = parameter.end_date;
							let branch_seq = parameter.branch_seq;
							$.getJSON("/car/shortCarList/"
									+ start_date+ "/"
									+ end_date + "/"
									+ branch_seq + "/"
									+ mfgco_seq + "/"
									+ segment_seq + ".json",
										function(data) {
											let html = "";
												$.each(data, function(carList, car) {
													html += '<div class="card" onclick="location.href=location.href=\'/short/detail?sc_seq='
															+ car.sc_seq
															+ '\'">';
													html += '<img src="https://www.motorgraph.com/news/photo/202003/25398_80184_4550.jpg" class="card-img-top" alt="[' + car.license_plate + ']사진" />';
													html += '<div class="card-body">';
													html += "<table>";
													html += "<tr>";
													html += "<td>";
													html += "<span>[" + /* car.car_year */'2020' + "]년</span>";
													html += "<span>" + /* car.mfgco_name */'현대' + "</span>";
													html += "<span>" + /* car.car_model */'아반떼' + "</span>";
													html += "</td>";
													html += "</tr>";
													html += "<tr>";
													html += "<td><span>" + /* car.trim_name */'N Sports' + "</span></td>";
													html += "</tr>";
													html += "<tr>";
													html += "<td>";
													html += "<span>" + car.dash_cam + "</span>";
													html += "<span>" + car.back_camera + "</span>";
													html += "<span>" + car.navigation + "</span>";
													html += "<span>" + car.sunroof + "</span>";
													html += "<span>" + car.bluetooth + "</span>";
													html += "<span>" + car.aux + "</span>";
													html += "<span>" + car.smart_key + "</span>";
													html += "<span>" + car.nomal_price + "</span>";
													html += "<span>" + car.weekend_price + "</span>";
													html += "<span>" + car.branch_seq + "</span>";
													html += "</td>";
													html += "</tr>";
													html += "</table>";
													html += "</div>";
													html += "</div>";
												});
											console.log(html);
											$("#list").html(html);
										});
						}
						function targetBranch(parameter, callback) {
							let branch_seq = parameter.branch_seq;
							let targetBranch = $('#branchInfo');
							$
									.getJSON(
											'/car/branch/' + branch_seq
													+ '.json',
											function(branch) {
												let html = '';
												html += '<div class="col-sm-6">';
												html += '<h3 name="car_seq">'
														+ branch.branch_seq
														+ '</h3>';
												html += '<div name="car_model">'
														+ branch.branch_name
														+ '</div>';
												html += '<div name="car_year">'
														+ branch.branch_phone
														+ '</div>';
												html += '</div>';
												console.log(html);
												targetBranch.html(html);
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
</script>
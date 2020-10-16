<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article class="container-fluid">
	<div class="row">
		<table class="col-sm-12 m-0 p-0">
			<tr>
				<td class="text-center" style="background-color: #F6F6F6;">대여
					날짜</td>
				<td>&nbsp;</td>
				<td class="text-center" style="background-color: #F6F6F6;">반납
					날짜</td>
			</tr>
			<tr>
				<td><input type="hidden" id="startDate" /></td>
				<td>&nbsp;</td>
				<td><input type="hidden" id="endDate" /></td>
			</tr>
		</table>
	</div>
</article>
<br>
<div class="row text-center" style="background-color: #F6F6F6;">지점
	선택</div>
<div class="row">
	<select class="form-control" name="branch_seq" id="branch_seq">
		<c:forEach var="branch" items="${branchList}">
			<option value="${branch.branch_seq}">${branch.branch_name}</option>
		</c:forEach>
	</select>
</div>
<br>
<!-- <span id="branchInfo"></span> -->
<div id="list" class="row m-0 p-0" align="center"></div>
<script type="text/javascript">
	$()
			.ready(
					function() {
						list({
							'start_date' : moment(new Date()).format(
									'YYYY-MM-DD'),
							'end_date' : moment(new Date())
									.format('YYYY-MM-DD'),
							'branch_seq' : 99999
						});
						targetBranch({
							'branch_seq' : '1'
						});
						$('#branch_seq').on('change', function() {
							targetBranch({
								'branch_seq' : $(this).val()
							})
						})
						$('#btnSc')
								.on(
										'click',
										function() {
											let _startDate = $('#startDate')
													.val();
											let _endDate = $('#endDate').val();
											let branch_seq = $('#branch_seq')
													.val();
											let startDate = moment(
													new Date(_startDate))
													.format('YYYY-MM-DD');
											let endDate = moment(
													new Date(_endDate)).format(
													'YYYY-MM-DD');
											list({
												'start_date' : startDate,
												'end_date' : endDate,
												'branch_seq' : branch_seq
											});
										});
						function list(parameter, callback) {
							/* let mfgco_seq = parameter.mfgco_seq;
							let segment_seq = parameter.segment_seq; */
							let start_date = parameter.start_date;
							let end_date = parameter.end_date;
							let branch_seq = parameter.branch_seq;
							$
									.getJSON(
											"/car/shortCarList/" + start_date
													+ "/" + end_date + "/"
													+ branch_seq
													/* + mfgco_seq + "/"
													+ segment_seq */+ ".json",
											function(data) {
												let html = "";
												let start_date = moment(
														$('#startDate').val())
														.format('YYYY-MM-DD');
												let end_date = moment(
														$('#endDate').val())
														.format('YYYY-MM-DD');
												$
														.each(
																data,
																function(
																		carList,
																		car) {
																	html += '<div class="col-sm-6">';
																	html += '<a href="/short/detail?sc_seq='
																			+ car.sc_seq
																			+ '&start_date='
																			+ start_date
																			+ '&end_date='
																			+ end_date
																			+ '"';
																	html += '<div class="row">';
																	html += '<div class="col card p-2">';
																	html += '<img style="width:100%; height:300px; border:1px solid #F6F6F6;" src="/resources/images/'
																			+ car.img_seq
																			+ '.jpg" class="card-img-top" alt="['
																			+ car.license_plate
																			+ ']사진" />';
																	html += '<div class="card-body">';
																	html += "<table>";
																	html += "<tr>";
																	html += "<td>";
																	html += "<span>["
																			+ car.car_year
																			+ "]년</span>";
																	html += "<span>"
																			+ car.mfgco_name
																			+ "</span>";
																	html += "<span>"
																			+ car.car_model
																			+ "</span>";
																	html += "</td>";
																	html += "</tr>";
																	html += "<tr>";
																	html += "<td><span>"
																			+ car.trim_name
																			+ "</span></td>";
																	html += "</tr>";
																	/* 	html += "<tr>";
																		html += "<td>";
																		html += "</td>";
																		html += "</tr>"; */
																	html += "</table>";
																	html += "</div>";
																	html += "</div>";
																	html += "</div>";
																	html += '</a>';
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
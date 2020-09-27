<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous" />
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="card col-sm-4" onclick="location.href='#'">
			<img src="https://www.motorgraph.com/news/photo/202003/25398_80184_4550.jpg" class="card-img-top" alt="car.car_model'사진'" />
			<div class="card-body">
				<table>
					<tr>
						<td><span>[car.car_year]년</span><span>car.mfgco_name</span><span>car.car_model</span>
						</td>
					</tr>
					<tr>
						<td><span>car.trim_name</span></td>
					</tr>
					<tr>
						<td><span>car.dash_cam</span> <span>car.back_camera</span> <span>car.navigation</span>
							<span>car.sunroof</span> <span>car.bluetooth</span> <span>car.aux</span>
							<span>car.smart_key</span> <span>car.nomal_price</span> <span>car.weekend_price</span>
							<span>car.branch_seq</span></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<script>
		function list(parameter, callback) {
			let mfgco_seq = parameter.mfgco_seq;
			let segment_seq = parameter.segment_seq;
			let start_date = parameter.start_date;
			let end_date = parameter.end_date;
			let branch_seq = parameter.branch_seq;

			$.getJSON(
				"/car/shortCarList/" + start_date + "/" + end_date
					+ "/" + branch_seq + "/" + mfgco_seq + "/"
					+ segment_seq + ".json", function(data) {
								let html = "";
								$.each(data, function(carList, car) {
									html += '<div class="card col-sm-4" onclick="location.href="location.href=\'/short/detail?sc_seq='
											+ car.sc_seq
											+ '\">';
									html += '<img src="https://www.motorgraph.com/news/photo/202003/25398_80184_4550.jpg" class="card-img-top" alt="[' + car.car_model + ']사진" />';
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
									html += "<tr>";
									html += "<td>";
									html += "<span>"
											+ car.dash_cam
											+ "</span>";
									html += "<span>"
											+ car.back_camera
											+ "</span>";
									html += "<span>"
											+ car.navigation
											+ "</span>";
									html += "<span>"
											+ car.sunroof
											+ "</span>";
									html += "<span>"
											+ car.bluetooth
											+ "</span>";
									html += "<span>" + car.aux
											+ "</span>";
									html += "<span>"
											+ car.smart_key
											+ "</span>";
									html += "<span>"
											+ car.nomal_price
											+ "</span>";
									html += "<span>"
											+ car.weekend_price
											+ "</span>";
									html += "<span>"
											+ car.branch_seq
											+ "</span>";
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
	</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:formatNumber pattern="#,### 원" var="price"
	value="${car.trim_price}" />
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
<style>
.accordion {
	background-color: white;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.active, .accordion:hover {
	background-color: orange;
}

.accordion:after {
	content: '\002B';
	color: #777;
	font-weight: bold;
	float: right;
	margin-left: 5px;
}

.active:after {
	content: "\2212";
}

.panel {
	padding: 0 18px;
	max-height: 0;
	overflow: hidden;
	transition: max-height 0.2s ease-out;
}

div.f {
	border: 1px solid red;
}
</style>
<body>

	<div class="container">

		<div class="jumbotron">
			<h2>장기 렌트</h2>
		</div>
		<div class="container col-sm-8">
			<h4 style="border-bottom: 1px black solid; height: 50px;">다이렉트
				견적조회</h4>
			<div class="row" style="border: 1px solid #eeeeee">
				<div class="col-md-5" style="border-spacing: 5px;">
					<img src="../resources/images/${car.img_seq}.jpg"
						style="width: 100%;">
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-6">
					<br> <br>
					<h3>${car.car_model}</h3>
					<table class="table">
						<tr>
							<th><strong>모델명</strong></th>
							<td>${car.trim_name}</td>
						</tr>
						<tr>
							<td><span><strong>소비자 가</strong></span></td>
							<td>${price}</td>
						</tr>
					</table>
				</div>
			</div>

			<div>
				<br>
				<br>
				<h4>차량 정보</h4>
				<hr style="border: solid 1px black" />
				<div>
					<table class="table" id="table">
						<tr>
							<th class="bg-light text-dark">제조사</th>
							<td>${car.mfgco_name}</td>
							<th class="bg-light text-dark">차량등급</th>
							<td>${car.segment_name}</td>
						</tr>
						<tr>
							<th class="bg-light text-dark">연료</th>
							<td>${car.fuel_name}</td>
							<th class="bg-light text-dark">차량 연식</th>
							<td>${car.car_year}년</td>
						</tr>
						<tr>
							<th class="bg-light text-dark">차량 설명</th>
							<td colspan="3">${car.car_desc}</td>
						</tr>
						<tr>
					</table>
				</div>
			</div>
			<div class="container">
				<br>
				<br>
				<h4>장기 렌트 예약</h4>
				<hr style="border: solid 1px black" />
				<form action="/rental/appoint" method="post">
					<button type="button" class="accordion">
						<span class="col-sm-3"><strong>방문 일</strong></span>
					</button>
					<div class="panel bg-light ">
						<span class="col-sm-3"><br>지점 방문일: </span> <input
							type="hidden" id="appoint_date" name="appoint_date"> <br>
						<br>
					</div>

					<button type="button" class="accordion">
						<span class="col-sm-3"><strong>지점 선택</strong></span> <span
							class="col-sm-3" id="result2"></span>
					</button>
					<div class="panel bg-light">
						<span class="col-sm-4"><br>방문할 지점 선택: </span> <select
							name="branch_seq" class="form-control">
							<c:forEach var="branch" items="${branchList}">
								<option value="${branch.branch_seq}">${branch.branch_name}</option>
							</c:forEach>
						</select> <br>
						<br>
					</div>
					<%-- 
						<span class="form-control">
						<strong>사용자 아아디:</strong>${users_name}</span> --%>
					<input type="hidden" name="users_id" value="1<%-- ${users_id} --%>" />


					<span class="form-control"> <strong>차량 정보:
							&nbsp&nbsp&nbsp </strong>${car.car_year}년형&emsp;${car.mfgco_name}&emsp;${car.car_model}&emsp;${car.trim_name}
					</span> <input type="hidden" name="trim_seq" value="${car.trim_seq}" />
					<button class=" btn btn-warning" type="submit">상담 예약</button>
				</form>
			</div>



			<div class="f">
				<ul>
					<li>차량 이미지는 고객님의 이해를 돕기 위한 이미지로 실제 차량과 다를 수 있습니다.</li>
					<li>현재 재고 기준의 견적으로 바로 구매하시지 않는 경우 재고 소진으로 구매가 불가할 수 있습니다.</li>
					<li>상담신청 및 다이렉트 계약을 클릭하시면 <span class="cl-point2">MY렌터카
							&gt; 장기CAR &gt; 견적정보</span>에서 견적비교를 하실 수 있습니다.
					</li>
					<li>지역 이동이 필요할 경우 탁송료가 발생할 수 있습니다.</li>
					<li>약정 주행거리 초과 위약금: 1600CC미만(60원/km) , 2000CC미만(80원/km) ,
						2000CC이상(100원/km) , 수입차(200원/km)</li>
				</ul>

			</div>
		</div>
	</div>
	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.maxHeight) {
					panel.style.maxHeight = null;
				} else {
					panel.style.maxHeight = panel.scrollHeight + "px";
				}
			});
		}
		$(function() {
			$('#appoint_date').datetimepicker({
				inline : true,
				sideBySide : true,
				format : 'L',
				useCurrent : false
			});
			$('#appoint_date').datetimepicker('minDate', new Date());
		});
	</script>

</body>


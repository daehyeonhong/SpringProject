<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatNumber pattern="#,### 원" var="price" value="${car.nomal_price}" />
<fmt:formatDate var="regDate" value="${car.sc_reg_date}" />
<style>
	th {
		background-color: #eeeeee;
		text-align: center;
	}

	#table td,
	th {
		border: 1px solid #dddddd;
	}

	ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
	}

	li {
		float: left;
	}

	li a {
		display: block;
		text-align: left;
		padding: 2px;
		color: #bbbbbb;
		text-decoration: none;
	}

	li a:hover {
		background-color: #eeeeee;
		color: #aaaaaa;
		text-decoration: none;
	}
</style>
<script>
	function reser() {
		reserveForm2.submit();
		/* 		location.href='./shortTerm_payment2'; */
	}
</script>
<div class="container">
<div class="container">
		<div class="row">
			<table style="width: 100%">
				<tr>
					<td align="left"><h1>TT단기렌터카 다이렉트</h1></td>
					<td align="right">단기렌터카 > TT단기렌터카 다이렉트</td>
				</tr>
			</table>
		</div>
		<!-- title -->

		<div class="row" style="padding-top: 50px">
			<table style="width: 100%; padding-top: 50px">
				<tr>
					<td align="left"><h3>다이렉트 견적조회</h3></td>
				</tr>
			</table>
		</div>
</div>		
		<!-- title2 -->
	<div class="container">
		<div class="row" style="border: 1px solid #eeeeee; padding-top: 20px; padding-bottom: 20px">
			<div class="col-md-5" style="border-spacing: 5px">
				<img src="/resources/images/${car.img_seq}.jpg" style="width: 100%" />
			</div>
			<div class="col-md-7">
				<p>${car.mfgco_name}자동차${car.car_model}</p>
				<p>
					<small style="color: red">${car.car_desc}</small>
				</p>
				<hr />
				<table style="text-align: right">
					<tr>
						<th colspan="2">모델명</th>
						<td>${car.trim_name}</td>
					</tr>
					<tr>
						<th colspan="2">소비자 가격</th>
						<td>${price}</td>
					</tr>
					<!-- <tr>
						<td colspan="2">계약기간</td>
						<td>최대11개월</td>
					</tr> -->
				</table>
				<hr />
				<p>표준렌탈료<font size="5" color="red">${price}</font></p>
			</div>
		</div>
		</div>
	<br />
	<div style="padding-top: 30px; padding-bottom: 30px">
		<h4>차량 정보</h4>
		<div>
			<table class="table" id="table">
				<tr>
					<th>제조사</th>
					<td>${car.mfgco_name}자동차</td>
					<th>차량번호</th>
					<td>${car.license_plate}</td>
				</tr>
				<tr>
					<th>차종</th>
					<td>${car.car_model}</td>
					<th>최초 등록일</th>
					<td>${regDate}</td>
				</tr>
				<tr>
					<th>모델명</th>
					<td>${car.trim_name}</td>
					<th>연료</th>
					<td>${car.fuel_name}</td>
				</tr>
				<tr>
					<th>시작일</th>
					<td>${param.start_date}</td>
					<th>종료일</th>
					<td>${param.end_date}</td>
				</tr>
				<tr>
					<th>보험</th>
					<td>
						<select class="form-control" id="insurance">
							<c:forEach var="insurance" items="${insuranceList}">
								<option value="${insurance.insurance_seq}">
									${insurance.insurance_name}
								</option>
							</c:forEach>
						</select>
					</td>
					<th>이용일</th>
					<td>${period}일</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- product details -->
	<div class="row container" style="padding-top: 10px">
		<h4>옵션 정보</h4>
	</div>
	<hr />
	<div class="row container" style="padding-top: 5px; padding-bottom: 5px">
		<table class="text-center" style="width: 100%">
			<tr class="row">
				<td class="col">
					<i class="fas fa-video" style="font-size: 35px; color: silver"></i>
					<p></p>
					<p>블랙박스</p>
				</td>
				<!-- <span>블랙박스 ${car.dash_cam == 1 ? '있음' : '없음'}</span> -->
				<td class="col">
					<i class="fas fa-camera" style="font-size: 35px; color: silver"></i>
					<p></p>
					<p>후방 카메라</p>
				</td>
				<!-- <span>후방 카메라 ${car.back_camera == 1 ? '있음' : '없음'}</span> -->
				<td class="col">
					<i
						class="fas fa-map-marked-alt"
						style="font-size: 35px; color: silver"
					></i>
					<p></p>
					<p>네비게이션</p>
				</td>
				<!-- <span>내비게이션 ${car.navigation == 1 ? '있음' : '없음'}</span> -->
				<td class="col">
					<i
						class="fab fa-bluetooth-b"
						style="font-size: 35px; color: silver"
					></i>
					<p></p>
					<p>블루투스</p>
				</td>
				<!-- <span>블루투스 ${car.bluetooth == 1 ? '있음' : '없음'}</span> -->
				<td class="col">
					<i
						class="fas fa-code-branch"
						style="font-size: 35px; color: silver"
					></i>
					<p></p>
					<p>AUX</p>
				</td>
				<!-- <span>AUX ${car.aux == 1 ? '있음' : '없음'}</span> -->
				<td class="col">
					<i
						class="fas fa-power-off"
						style="font-size: 35px; color: silver"
					></i>
					<p></p>
					<p>스마트키</p>
				</td>
				<%--
				<td class="col">
					<span>스마트키 ${car.smart_key == 1 ? '있음' : '없음'}</span>
				</td>
			</tr>
			--%>
		</table>
	</div>
	<!-- product option pic -->
	<hr />
	<br />
	<br />
	<!-- 추가 예약정보 -->
	<div class="comment row col-sm-7">
		<h3>차량손해면책제도</h3>
		&nbsp;&nbsp;
		<svg
			id="insurance"
			onclick="insurance()"
			class="float-right"
			style="color: orange"
			width="1em"
			height="2em"
			viewBox="0 0 16 16"
			class="bi bi-question-circle"
			fill="currentColor"
			xmlns="http://www.w3.org/2000/svg"
		>
			<path
				fill-rule="evenodd"
				d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"
			/>
			<path
				d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"
			/>
		</svg>
	</div>
	<hr />
	<div class="card col-sm-12 b-0 p-3">
		<div class="form-group">
			<h5>내륙 지점</h5>
			<ul>
				<li>
					・단, 대여 차량 계약 시 선택한 차량손해면책제도 가입 종류에 따라 고객
					부담금(면책금)이 차등 적용됩니다.
				</li>
				<li>・수입차의 경우 일반자차만 선택 가능합니다.</li>
				<li>
					・공항지점 수입차의 면책금은 별도 규정이 적용됩니다.(PLUS자차 30만원,
					일반자차 50만원)
				</li>
			</ul>
			<br/>
		</div>
		<div class="form-group">
			<h5>제주 지점</h5>
			<ul>
				<li>
					・제주지점의 경우, 스마트폰 거치대를 무료로 대여해드립니다. (수량한정)
				</li>
				<li>
					・부가서비스 (카시트/유모차) 예약 및 문의는 TT렌터카
					제주지점&nbsp;064-111-1111 또는 홈페이지 www.TTrent.com 로
					문의바랍니다.
				</li>
			</ul>
		</div>
	</div>
	<br>
	<br>
	<div class="comment row col-sm-6">
		<h3>이용약관</h3>
	</div>
	<hr />
	<div class="form-group">
		<p style="font-size: 14px">
			TT렌터카㈜는 적법하고 공정한 방법으로 개인정보를 수집하며, 고객의
			개인정보를 최우선으로 생각하여 안전하게 보유·관리하고 있습니다.
		</p>
		<h5>개인정보 제공 활용 동의</h5>
		<%@include file="agreement.jsp"%>
	</div>
	<ul class="row container">
		<li>
			고객님께서는 동의를 거부할 권리가 있으나, 미 동의시 렌터카 서비스 이용이
			불가능합니다.
		</li>
	</ul>
	
	
	<div id="reserveAmount"></div>
	<div class="container row">
	<div class="container" align="center">
	<input type="button" class="col-sm-3 btn btn-outline-info m-2 p-2" onclick="resetR()" value="취소"/><input id='reserveBtn' class='col-sm-3 btn btn-outline-warning m-2 p-2' type='button' onclick='reserveConfirm()' value='예약' />
	</div>
	</div>
</div>
<script type="text/javascript">
	$().ready(function () {
		reserve({
			sc_seq: '${car.sc_seq}',
			insurance_seq: 1,
			period: '${period}',
		});

		function reserve(parameter, callback) {
			let sc_seq = parameter.sc_seq;
			let insurance_seq = parameter.insurance_seq;
			let period = parameter.period;

			$.getJSON(
				"/car/reserveAmount/" +
					sc_seq +
					"/" +
					insurance_seq +
					"/" +
					period +
					".json",
				function (reserve) {
					let html = "";
					html += '<div class="container">';
					html += '<form action="/short/detail" id="reserveForm" method="post">';
					html += '<input type="hidden" name="users_id" value="${users_id}" />';
					html += '<input type="hidden" name="sc_seq" value="' + reserve.sc_seq + '" />';
					html += '<input type="hidden" name="total_amount" value="' + reserve.total_amount + '" />';
					html += '<input type="hidden" name="period" value="' + "${period}" + '" />';
					html += '<input type="hidden" name="branch_seq" value="${car.branch_seq}" />';
					html += '<input type="hidden" name="start_date" value="${param.start_date}" />';
					html += '<input type="hidden" name="end_date" value="${param.end_date}" />';
					html += '<input type="hidden" name="end_date" value="${param.end_date}" />';
					html += '<input type="hidden" name="insurance_seq" value="' + insurance_seq + '" />';
					html += "</form>";
					/* html += '<div class="row">';
					html += "<input id='reserveBtn' class='btn btn-outline-warning float-right' type='button' onclick='reserveConfirm()' value='예약' /></div>"; */
					html += '</div>';
					$("#reserveAmount").html(html);
				}
			);
		}
		$("#insurance").on("change", function () {
			reserve({
				sc_seq: '${car.sc_seq}',
				insurance_seq: $(this).val(),
				period: '${period}'
			});
		});
	});
	function reserveConfirm() {
		let users_id = '${users_id}'.trim();
		if(users_id.length==0 || users_id==null){
				alert('로그인 후 다시 시도하세요.');
			} else {
				let yesNo = confirm('정말 예약하시겠습니까?');
				if(yesNo){
						alert('예약 진행');
						$('#reserveForm').submit();
					} else {
						alert('취소되었습니다.');
				}
			}
		}
</script>

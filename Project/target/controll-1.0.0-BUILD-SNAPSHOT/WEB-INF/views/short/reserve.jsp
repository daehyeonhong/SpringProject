<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:formatDate var="start_date" value="${reserve.start_date}" pattern="yyyy년 MM월 dd일"/>
<fmt:formatDate var="end_date" value="${reserve.end_date}" pattern="yyyy년 MM월 dd일"/>
<div class="jumbotron bg-white">
	<div class="container col-sm-6">
		<h1>예약완료</h1>
		<hr>
	</div>
</div>
<div class="container col-sm-6">
	<div class="container">
		<div class="container bg-light">
			<br>
			<div class="container text-center">
				<h3>예약정보</h3>
				<p>예약 일정 및 상세 정보를 확인하여 주시기 바랍니다.</p>
			</div>
			<br>
			<div class="card bg-white">
				<table class="table table-borderless">
					<tr>
						<th id="th_title">예약번호</th>
						<td>${reserve.reserve_seq}</td>
					</tr>
					<tr>
						<th>고객 아이디</th>
						<td>
							${reserve.users_id}
						</td>
					</tr>
					<tr>
						<th>대여기간</th>
						<td>
							<p>${start_date} ~ ${end_date}</p>
							<p>${reserve.period} 일</p>
						</td>
					</tr>
					<tr>
						<th>지점 (대여/반납)</th>
						<td> 
							${reserve.branch_name}
						</td>
					</tr>
					<tr>
						<th>차량</th>
						<td>[${reserve.mfgco_name}] ${reserve.car_model} ${reserve.trim_name}</td>
					</tr>
				</table>
				<hr>
				<table class="table table-borderless">
					<tr>
						<th rowspan="2">결제금액안내</th>
						<td style="border-bottom: 1px solid silver;">차량금액
							<span class="float-right"> ${reserve.total_amount}원</span>
						</td>
					</tr>
					<tr>
						<td>
							<span class="float-right"></span>
						</td>
					</tr>
					<tr style="color: red;">
						<th rowspan="2">최종결제 금액</th>
							<td>
								<b class="float-right" style="font-size:20px;"> ${reserve.total_amount}원</b>
							</td>
					</tr>
				</table>
			</div>
			<br>
			<br>
				<div class="container" align="center">
				<div class="row col-sm-12">
					<button class="col btn border btn-light">홈 화면으로 가기</button>
					<div>&nbsp;&nbsp;</div>
					<form action="/payment/reservePay" method="post">
						<input type="text" name="reserve_seq" value="${reserve.reserve_seq}" />
						<input type="text" name="sc_seq" value="${reserve.sc_seq}" />
						<input type="text" name="users_id" value="${reserve.users_id}" />
						<input type="text" name="insurance_name" value="${reserve.insurance_name}" />
						<input type="text" name="trim_name" value="${reserve.trim_name}" />
						<input type="text" name="car_model" value="${reserve.car_model}" />
						<input type="text" name="nomal_price" value="${reserve.nomal_price}" />
						<input type="text" name="fare" value="${reserve.fare}" />
						<input type="text" name="period" value="${reserve.period}" />
						<input type="text" name="total_amount" value="${reserve.total_amount}" />
					<button class="col btn border btn-light">결제</button>
					</form>
			</div>
			</div>
			<br>
			<br>
		</div>
	</div>
</div>

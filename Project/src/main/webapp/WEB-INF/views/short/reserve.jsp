<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<p>셔틀버스 운행정보 및 바로출발 서비스를 확인하여 주시기 바랍니다.</p>
			</div>
			<br>
			<div class="card bg-white">
				<table class="table table-borderless">
					<tr>
						<th id="th_title">예약번호</th>
						<td>${reserve.reserve_seq}</td>
					</tr>
					<tr>
						<th>대여기간</th>
						<td> </td>
					</tr>
					<tr>
						<th rowspan="2">지점 (대여/반납)</th>
						<td> 
							<button class="btn btn-sm border">&nbsp;지도보기</button>
						</td>
					</tr>
					<tr>
						<th>차량</th>
						<td></td>
					</tr>
				</table>
				<hr>
				<table class="table table-borderless">
					<tr>
						<th rowspan="2">결제금액안내</th>
						<td style="border-bottom: 1px solid silver;">차량금액
							<span class="float-right">value='${reserve.total_amount}'원</span>
						</td>
					</tr>
					<tr>
						<td style="border-bottom: 1px solid silver;">
							<span class="float-right"> </span>
						</td>
					</tr>
					<tr style="color: red;">
						<th>최종결제 금액</th>
							<td class="float-right">
								<h3>
									<span style="font-size: 15px;"> </span>
								</h3>
							</td>
					</tr>
				</table>
			</div>
			<div class="container" align="center">
				<div class="row" align="center">
					<button class="col btn border btn-light">확인</button>
					&nbsp;
					<!-- 메인페이지로 -->
				</div>
			</div>
			<br> <br>
		</div>
	</div>
</div>
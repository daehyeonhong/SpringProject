<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:formatNumber pattern="#,### 원" var="price" value="${car.trim_price}"/>
<article>
	<div class="jumbotron">
		<h2>장기 렌트</h2>
	</div>
	<div class="container col-sm-8">
		<h4 style="border-bottom: 1px black solid; height: 50px;">다이렉트 견적조회</h4>
		<div class="row" style="border: 1px solid #eeeeee">
			<div class="col-md-5" style="border-spacing: 5px;">
				<img src="../resources/images/${carInfo.image_seq}.jpg" style="width: 100%;">
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<br>
				<br>
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
			<br><br>
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
						<td>${car.car_year} 년</td>
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
			<br><br>
			<h4>장기 렌트 예약</h4>
			<hr style="border: solid 1px black" />
		<form action="/rental/appoint" method="post">
			<table class="col-sm-12">
				<tr>
					<td colspan="1">
						<select name="branch_seq" class="form-control">
							<c:forEach var="branch" items="${branchList}">
								<option value="${branch.branch_seq}">${branch.branch_name}</option>
							</c:forEach>
						</select>
					</td>
					<td colspan="1">
						<span class="form-control">예약일</span>
						<input type="hidden" name="appoint_date" value="2020/10/05">
					</td>
					<td colspan="1">
						<span class="form-control">${users_name}</span>
						<input type="hidden" name="users_id" value="${users_id}" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<span class="form-control">
							${car.car_year}년형&emsp;${car.mfgco_name}&emsp;${car.car_model}&emsp;${car.trim_name}
						</span>
						<input type="hidden" name="trim_seq" value="${car.trim_seq}" />
					</td>
				</tr>
			</table>
			<button type="submit">상담 예약</button>
		</form>
		</div>
	</div>
	
	<%-- ${car.car_seq} ${car.mfgco_name}
	<input name="seq" value='${AppointInfo.fuel_seq}'><br>
<input name="seq" value='${AppointInfo.manufacturer_seq}'><br>
<input name="seq" value='${AppointInfo.year}'><br>
<input name="seq" value='${AppointInfo.description}'><br>
<input name="seq" value='${AppointInfo.image_seq}'><br>
<input name="seq" value='${AppointInfo.price}'><br>
<input type="submit" value="등록"> --%>
</article>
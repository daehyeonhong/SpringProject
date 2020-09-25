<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-8">
		<br>
		<h4 style="border-bottom: 1px black solid; height: 50px;">다이렉트
			견적조회</h4>

		<div class="row" style="border: 1px solid #eeeeee">


			<div class="col-md-5" style="border-spacing: 5px;">

				<img src="../resources/images/${carInfo.image_seq}.jpg"
					style="width: 100%;">
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<br> <br>
				<h3>${carInfo.car_model }</h3>

				<hr>
				<table>
					<tr>
						<td colspan="2"><span><strong>모델명</strong></span></td>
						<td>${carInfo.car_decs }</td>
					</tr>
					<tr>
						<td colspan="2"><span><strong>소비자 가</strong></span> &nbsp;
							&nbsp; &nbsp;</td>
						<td></td>
					</tr>
					<tr>
						<td colspan="2"><span><strong>계약 기간</strong></span></td>
						<td></td>
					</tr>
				</table>
				<hr>
				<p>
					표준렌탈료 &nbsp; &nbsp; &nbsp; <font size="5" color="red"></font>원
				</p>

			</div>


		</div>


		<div>
			<br> <br>
			<h4>차량 정보</h4>
			<hr style="border: solid 1px black" />
			<div>


				<table class="table" id="table">
					<tr>
						<th class="bg-light text-dark">제조사</th>
						<td>\</td>
						<th class="bg-light text-dark">차량번호</th>
						<td>${carInfo.segment_seq }</td>
					</tr>
					<tr>
						<th class="bg-light text-dark">차종</th>
						<td>\</td>
						<th class="bg-light text-dark">최초 등록일</th>
						<td>${carInfo.car_year }</td>
					</tr>
					<tr>
						<th class="bg-light text-dark">모델명</th>
						<td colspan="3">${carInfo.car_desc }</td>
					</tr>

					<tr>
						<th class="bg-light text-dark">연료</th>
						<td>${carInfo.fuel_name }</td>
						<th class="bg-light text-dark">지점</th>
						<td>\</td>
					</tr>

				</table>

			</div>


		</div>

	</div>
	${carInfo.car_seq } ${carInfo.mfgco_seq }
	<%-- <input name="seq" value='${AppointInfo.fuel_seq }'><br>
<input name="seq" value='${AppointInfo.manufacturer_seq }'><br>
<input name="seq" value='${AppointInfo.year }'><br>
<input name="seq" value='${AppointInfo.description }'><br>
<input name="seq" value='${AppointInfo.image_seq }'><br>
<input name="seq" value='${AppointInfo.price }'><br>
<input type="submit" value="등록"> --%>
</article>
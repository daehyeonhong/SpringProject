<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>렌터카상담</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>

	<jsp:include page="../customerMenu.jsp" />
	<div class="container col-sm-6">
		<div class="container">
			<h1 class="display-5">고객상담</h1>
		</div>

		<!-- Nav tabs -->
		<nav class="navbar text-center">
				<a class="btn btn-light col-sm-4" href="${pageContext.request.contextPath}/board/consultation/customer.jsp">일반상담</a>
				<a class="btn btn-info col-sm-4" href="${pageContext.request.contextPath}/board/consultation/rent.jsp">렌터카상담</a>
				<a class="btn btn-light col-sm-4" href="${pageContext.request.contextPath}/board/consultation/info.jsp">상담안내</a>
		</nav>

		<div class="container">
			<span>중고차장기/개인장기/법인장기 상담신청 시 등록하신 유선 또는 이메일로만 답변을 받으실 수 있으며, 홈페이지에서는 답변 확인 불가능합니다.</span>
			<hr />
			<ul class="nav nav-tabs text-center" role="tablist">
				<li class="col-sm-2"><span>상담유형</span></li>
				<li class="col-sm-5"><a class="btn btn-light" data-toggle="tab" href="#usedCar">중고차 장기렌터카</a></li>
				<li class="col-sm-5"><a class="btn btn-light" data-toggle="tab" href="#personal">개인 장기렌터카</a></li>
			</ul>
			
			<div class="tab-content">
				<div id="usedCar" class="container tab-pane active">
					<br />
					<hr />
					<form action="#">
						<table class="col-sm-12">
							<tr>
								<td colspan="2"><span class="form-control">고객 이름</span></td>
								<td colspan="2">
									<select class="form-control" name="districtCode">
										<option>지역선택(시/도)</option>
										<option value="02">서울특별시</option>
										<option value="051">부산광역시</option>
										<option value="053">대구광역시</option>
										<option value="032">인천광역시</option>
										<option value="062">광주광역시</option>
										<option value="042">대전광역시</option>
										<option value="052">울산광역시</option>
										<option value="044">세종특별자치시</option>
										<option value="031">경기도</option>
										<option value="033">강원도</option>
										<option value="043">충청북도</option>
										<option value="041">충청남도</option>
										<option value="063">전라북도</option>
										<option value="061">전라남도</option>
										<option value="054">경상북도</option>
										<option value="055">경상남도</option>
										<option value="064">제주특별자치도</option>
									</select>
								</td>
								<td colspan="2">
									<select class="form-control" name="districtCode">
										<option>지역선택(구/군)</option>
										<option value="02">서울특별시</option>
										<option value="051">부산광역시</option>
										<option value="053">대구광역시</option>
										<option value="032">인천광역시</option>
										<option value="062">광주광역시</option>
										<option value="042">대전광역시</option>
										<option value="052">울산광역시</option>
										<option value="044">세종특별자치시</option>
										<option value="031">경기도</option>
										<option value="033">강원도</option>
										<option value="043">충청북도</option>
										<option value="041">충청남도</option>
										<option value="063">전라북도</option>
										<option value="061">전라남도</option>
										<option value="054">경상북도</option>
										<option value="055">경상남도</option>
										<option value="064">제주특별자치도</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2"><span class="form-control">고객 휴대폰 번호</span></td>
								<td colspan="2"><input type="text" class="form-control" name="email" placeholder="이메일 입력" /></td>
								<td colspan="2">
									<div class="input-group input-group-prepend">
										<span class="form-control col-sm-1">@</span>
										<input type="text" class="form-control" name="domain" placeholder="메일 주소 입력" />
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="6">
									<textarea class="form-control" rows="5" name="content" placeholder="문의 내용 입력" required="required"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="6"><br /><hr /></td>
							</tr>
							<tr>
								<td colspan="6"><h3 class="display-6">개인정보 제공 활용 동의</h3><hr /></td>
							</tr>
							<tr>
								<td colspan="6">
									<span>SK렌터카㈜는 적법하고 공정한 방법으로 개인정보를 수집하며, 고객의 개인정보를 최우선으로 생각하여 안전하게 보유·관리하고 있습니다.</span>
								</td>
							</tr>
							<tr>
								<td colspan="6">
									<div class="form-check-inline">
										<label class="form-check-label">
											<input type="checkbox" class="form-check-input" value="" required="required" />개인정보 수집 및 이용동의<span class="text-warning">(필수)</span>
										</label>
									</div>
									<div class="container">
										<table class="table table-bordered">
											<thead class="table-secondary">
												<tr>
													<th>활용항목</th>
													<th>이용목적</th>
													<th>보유 및 이용기간</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><p>휴대폰번호, 이메일</p></td>
													<td>
														<p>─ 렌터카 관련 프로모션 안내</p>
														<p>─ 렌터카 관련 신제품 및 신규서비스 안내</p>
														<p>─ 기타 광고성 정보 전송 </p>
													</td>
													<td>
														<p>회원 탈퇴</p>
														<p>또는</p>
														<p>동의 철회시까지</p>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<hr />
								</td>
							</tr>
							<tr>
								<td colspan="6">
									<div class="form-check-inline">
										<label class="form-check-label">
											<input type="checkbox" class="form-check-input" value="" required="required" />마케팅 활용동의<span class="text-black">(선택)</span>
										</label>
									</div>
									<div class="container">
										<table class="table table-bordered">
											<thead class="table-secondary">
												<tr>
													<th>활용항목</th>
													<th>이용목적</th>
													<th>보유 및 이용기간</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><p>휴대폰번호, 이메일</p></td>
													<td>
														<p>─ 렌터카 관련 프로모션 안내</p>
														<p>─ 렌터카 관련 신제품 및 신규서비스 안내</p>
														<p>─ 기타 광고성 정보 전송 </p>
													</td>
													<td>
														<p>회원 탈퇴</p>
														<p>또는</p>
														<p>동의 철회시까지</p>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<hr />
								</td>
							</tr>
						</table>
						<div align="center">
							<input type="submit" class="btn btn-warning" value="신청완료" />
						</div>
					</form>
				</div>
	
				<div id="personal" class="container tab-pane fade">
					<br />
					<hr />
					<form action="#">
						<span>차종선택</span>
						<div class="form-check-inline">
							<label class="form-check-label"><input type="radio" class="form-check-input" name="carType" value="a">경차</label>
							<label class="form-check-label"><input type="radio" class="form-check-input" name="carType" value="b">소형</label>
							<label class="form-check-label"><input type="radio" class="form-check-input" name="carType" value="d">중형</label>
							<label class="form-check-label"><input type="radio" class="form-check-input" name="carType" value="f">대형</label>
							<label class="form-check-label"><input type="radio" class="form-check-input" name="carType" value="m">승합</label>
							<label class="form-check-label"><input type="radio" class="form-check-input" name="carType" value="j">SUV</label>
							<label class="form-check-label"><input type="radio" class="form-check-input" name="carType" value="i">수입차</label>
							<label class="form-check-label"><input type="radio" class="form-check-input" name="carType" value="ev">전기차</label>
						</div>
						<hr />
						<table class="col-sm-12">
							<tr>
								<td colspan="2"><span class="form-control">고객 이름</span></td>
								<td colspan="2">
									<select class="form-control" name="districtCode">
										<option>지역선택(시/도)</option>
										<option value="02">서울특별시</option>
										<option value="051">부산광역시</option>
										<option value="053">대구광역시</option>
										<option value="032">인천광역시</option>
										<option value="062">광주광역시</option>
										<option value="042">대전광역시</option>
										<option value="052">울산광역시</option>
										<option value="044">세종특별자치시</option>
										<option value="031">경기도</option>
										<option value="033">강원도</option>
										<option value="043">충청북도</option>
										<option value="041">충청남도</option>
										<option value="063">전라북도</option>
										<option value="061">전라남도</option>
										<option value="054">경상북도</option>
										<option value="055">경상남도</option>
										<option value="064">제주특별자치도</option>
									</select>
								</td>
								<td colspan="2">
									<select class="form-control" name="districtCode">
										<option>지역선택(구/군)</option>
										<option value="02">서울특별시</option>
										<option value="051">부산광역시</option>
										<option value="053">대구광역시</option>
										<option value="032">인천광역시</option>
										<option value="062">광주광역시</option>
										<option value="042">대전광역시</option>
										<option value="052">울산광역시</option>
										<option value="044">세종특별자치시</option>
										<option value="031">경기도</option>
										<option value="033">강원도</option>
										<option value="043">충청북도</option>
										<option value="041">충청남도</option>
										<option value="063">전라북도</option>
										<option value="061">전라남도</option>
										<option value="054">경상북도</option>
										<option value="055">경상남도</option>
										<option value="064">제주특별자치도</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="3"><span class="form-control">고객 휴대폰 번호</span>
								<td colspan="3">
									<input type="text" class="form-control" name="carModel" placeholder="희망 차종 입력" required="required" />
								</td>
							</tr>
							<tr>
								<td colspan="3"><input type="text" class="form-control" name="email" placeholder="이메일 입력" /></td>
								<td colspan="3">
									<div class="input-group input-group-prepend">
										<span class="form-control col-sm-1">@</span>
										<input type="text" class="form-control" name="domain" placeholder="메일 주소 입력" />
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="6">
									<textarea class="form-control" rows="5" name="content" placeholder="문의 내용 입력" required="required"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="6"><br /><hr /></td>
							</tr>
							<tr>
								<td colspan="6"><h3 class="display-6">개인정보 제공 활용 동의</h3><hr /></td>
							</tr>
							<tr>
								<td colspan="6">
									<span>SK렌터카㈜는 적법하고 공정한 방법으로 개인정보를 수집하며, 고객의 개인정보를 최우선으로 생각하여 안전하게 보유·관리하고 있습니다.</span>
								</td>
							</tr>
							<tr>
								<td colspan="6">
									<div class="form-check-inline">
										<label class="form-check-label">
											<input type="checkbox" class="form-check-input" value="" required="required" />개인정보 수집 및 이용동의<span class="text-warning">(필수)</span>
										</label>
									</div>
									<div class="container">
										<table class="table table-bordered">
											<thead class="table-secondary">
												<tr>
													<th>활용항목</th>
													<th>이용목적</th>
													<th>보유 및 이용기간</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><p>휴대폰번호, 이메일</p></td>
													<td>
														<p>─ 렌터카 관련 프로모션 안내</p>
														<p>─ 렌터카 관련 신제품 및 신규서비스 안내</p>
														<p>─ 기타 광고성 정보 전송 </p>
													</td>
													<td>
														<p>회원 탈퇴</p>
														<p>또는</p>
														<p>동의 철회시까지</p>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<hr />
								</td>
							</tr>
							<tr>
								<td colspan="6">
									<div class="form-check-inline">
										<label class="form-check-label">
											<input type="checkbox" class="form-check-input" value="" required="required" />마케팅 활용동의<span class="text-black">(선택)</span>
										</label>
									</div>
									<div class="container">
										<table class="table table-bordered">
											<thead class="table-secondary">
												<tr>
													<th>활용항목</th>
													<th>이용목적</th>
													<th>보유 및 이용기간</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><p>휴대폰번호, 이메일</p></td>
													<td>
														<p>─ 렌터카 관련 프로모션 안내</p>
														<p>─ 렌터카 관련 신제품 및 신규서비스 안내</p>
														<p>─ 기타 광고성 정보 전송 </p>
													</td>
													<td>
														<p>회원 탈퇴</p>
														<p>또는</p>
														<p>동의 철회시까지</p>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<hr />
								</td>
							</tr>
						</table>
						<div align="center">
							<input type="submit" class="btn btn-warning" value="신청완료" />
						</div>
					</form>
				</div>
			</div>
			<hr />
		</div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<c:set var="term" value="${param.term}"/>
	<%@ include file="../customerMenu.jsp"%>
	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-10">고객상담</span>
			<span class="col-sm-2">breadcrumb</span>
		</div>

		<!-- Nav tabs -->
		<%@ include file="serviceNav.jsp"%>

		<div class="container">
			<span>중고차장기/개인장기/법인장기 상담신청 시 등록하신 유선 또는 이메일로만 답변을 받으실 수 있으며, 홈페이지에서는 답변 확인 불가능합니다.</span>
			<div>
				<div id="usedCar" class="container tab-pane active">
					<form action="/customer/service/inquiry" method="post">
						<table class="col-sm-12">
							<tr>
								<td colspan="2"><input type="text" class="form-control" name="inquiry_title" placeholder="제목" /></td>
								<td colspan="1">
									<span class="form-control">고객ID님</span>
									<input type="hidden" name="users_id" value="1" />
								</td>
							</tr>
							<tr>
								<td colspan="1">
									<select name="inquiry_type" class="form-control">
										<option value="1">장기</option>
										<option value="2">단기</option>
									</select>
								</td>
								<td colspan="1"><input type="text" class="form-control" name="email" placeholder="이메일 입력" /></td>
								<td colspan="1">
									<div class="input-group input-group-prepend">
										<span class="form-control col-sm-1">@</span>
										<input type="text" class="form-control" name="domain" placeholder="메일 주소 입력" />
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<textarea class="form-control" rows="5" name="inquiry_content" placeholder="문의 내용 입력" required="required"></textarea>
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
</article>
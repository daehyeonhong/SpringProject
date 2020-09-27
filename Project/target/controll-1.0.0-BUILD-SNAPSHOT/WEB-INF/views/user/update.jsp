<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="birth_date" value="${user.birth_date}" pattern="yyyy년 MM월 dd일" />
<article>
	<div class="container col-sm-4" align="center">
		<h1 class="display-6">개인정보수정</h1>
		<table class="col-sm-10">
			<tr>
				<td colspan="2">
			    	<span class="form-control">아이디</span>
					<span class="form-control">${users_id}</span>
				</td>
				<td>
					<button class="form-control btn btn-secondary" onclick="">아이디 변경</button>
				</td>
			</tr>
			<tr>
				<td>
			    	<span class="form-control">비밀번호</span>
					<span class="form-control">${password}</span>
				</td>
				<td>
					<button class="form-control btn btn-secondary" onclick="">비밀번호 변경</button>
				</td>
			</tr>
			<tr>
				<td>
				    <span class="form-control">이름</span>
					<span class="form-control">${users_name}</span>
				</td>
				
			</tr>
			<tr>
				<td>
				    <span class="form-control">닉네임</span>
					<span class="form-control">${users_nickname}</span>
				</td>
				<td>
					<button class="form-control btn btn-secondary" onclick="">닉네임 변경</button>
				</td>
			</tr>
			<tr>
				<td>
				    <span class="form-control">생일</span>
					<span class="form-control">${birth_date}</span>
				</td>
			</tr>
			<tr>
				<td>
				    <span class="form-control">핸드폰</span>
					<span class="form-control">${users_phone}</span>
				</td>
				<td>
					<button class="form-control btn btn-secondary" onclick="">휴대폰 인증</button>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-group">
	   				    <span class="form-control">이메일</span>
						<span class="form-control">${users_email}</span>
					</div>
				</td>
				<td>
					<button class="form-control btn btn-info" onclick="">이메일 인증</button>
				</td>
			</tr>
			
			<tr>
				<td>
					<div class="input-group">
	   				    <span class="form-control">운전면허증</span>
						<span class="form-control">${license}</span>
					</div>
				</td>
				<td>
					<button class="form-control btn btn-info" onclick="">면허증 변경</button>
				</td>
			</tr>
			
			
			
			<tr>
				<td colspan="2">
					<table class="table">
						<thead>
							<tr>
								<th>
									<div class="form-check-inline">
										<label class="form-check-label">
											<input type="checkbox" class="form-check-input" value="" />SK렌터카 이용 약관
										</label>
									</div>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="overflow-auto" style="max-height: 150px">
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
													<td>
														<p>휴대폰번호, 이메일</p>
													</td>
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
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</table>
		<table class="col-sm-10">
			<tr>
				<td>
					<button class="btn btn-danger btn-block" onclick="">수정완료</button>
				</td>
			</tr>
		</table>
	</div>
</article>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container col-sm-4" align="center">
		<h1 class="display-6">개인정보수정</h1>
		<form action="#" class="form-group">
		<table class="col-sm-10">
			<tr>
				<td colspan="2">
					<span class="form-control">이름</span>
					<input type="hidden" name="name" value="name" />
				</td>
			</tr>
			<tr>
				<td>
					<span class="form-control">ID</span>
				</td>
				<td>
					<input type="button" class="form-control btn btn-secondary" value="비밀번호 변경" />
				</td>
			</tr>
			<tr>
				<td>
					<span class="form-control">01010101010</span>
				</td>
				<td>
					<input type="button" class="form-control btn btn-secondary" value="휴대폰 인증" />
					<input type="hidden" name="phone" value="01010101010" />
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-group input-group-prepend">
						<input name="mail1" id="mail1" maxlength="50" class="form-control col-sm-6" placeholder="Your Email" required="required"/>
						<span class="form-control col-sm-1">@</span>
						<select class="form-control col-sm-5" name="mail2" id="mail2" required>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
						</select>
					</div>
				</td>
				<td>
					<input class="form-control btn btn-info" type="button" id="mailBtn" value="이메일 인증">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table class="table">
						<thead><tr><th>
							<div class="form-check-inline">
								<label class="form-check-label">
									<input type="checkbox" class="form-check-input" value="" />SK렌터카 이용 약관
								</label>
							</div>
						</th></tr></thead>
						<tbody><tr><td>
							<div class="overflow-auto" style="max-height: 100px">
								<table class="table table-bordered">
									<thead class="table-secondary"><tr>
											<th>활용항목</th>
											<th>이용목적</th>
											<th>보유 및 이용기간</th>
										</tr></thead>
									<tbody><tr>
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
									</tr></tbody>
								</table>
							</div>
						</td></tr></tbody>
					</table>
				</td>
			</tr>
		</table>
		<table class="col-sm-10">
			<tr>
				<td>
					<label class="form-check-inline">
						<input type="checkbox" class="form-check-input" value="" />SK렌터카 이용 약관
					</label>
				</td>
				<td>
					<label class="form-check-inline">
						<input type="checkbox" class="form-check-input" value="" />SK렌터카 이용 약관
					</label>
				</td>
			</tr>
			<tr>
				<td>
					<input class="btn btn-secondary btn-block" type="button" value="취소" />
				</td>
				<td>
					<input class="btn btn-danger btn-block" type="submit" value="가입완료" />
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>
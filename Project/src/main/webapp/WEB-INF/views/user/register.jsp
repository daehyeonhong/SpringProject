<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-4" align="center">
		<h1 class="display-6">개인정보수정</h1>
		<table class="col-sm-10">
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">아이디</span>
						</div>
						<input class="form-control" name="users_id" />
						<div class="input-group-append">
							<button class="btn btn-primary" id="idChkBtn" type="button">아이디 중복검사</button>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">이름</span>
						</div>
						<input class="form-control" name="users_name" />
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">비밀번호</span>
						</div>
						<input class="form-control" name="password" />
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">비밀번호 확인</span>
						</div>
						<input class="form-control" name="passwordConfirm" />
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">닉네임</span>
						</div>
						<span class="form-control">${users.users_nickname}</span>
						<div class="input-group-append">
							<button class="btn btn-primary" id="nicknameBtn" type="button">닉네임 중복검사</button>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">생일</span>
						</div>
						<span class="form-control">${birth_date}</span>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">연락처</span>
						</div>
						<span class="form-control">${users.users_phone}</span>
						<div class="input-group-append">
							<button class="btn btn-primary" id="phoneBtn" type="button">변경</button>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">이메일</span>
						</div>
						<span class="form-control">${users.users_email}</span>
						<div class="input-group-append">
							<button class="btn btn-primary" id="emailBtn" type="button">변경</button>
						</div>
					</div>
				</td>
			</tr>

			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">면허증</span>
						</div>
						<span class="form-control">${users.license}</span>
						<div class="input-group-append">
							<button class="btn btn-primary" id="licenseBtn" type="button">변경</button>
						</div>
					</div>
				</td>
			</tr>
		</table>
		<table class="col-sm-10">
			<tr>
				<td>
					<button class="btn btn-danger btn-block"
						onclick="location.href='/'">수정완료</button>
				</td>
			</tr>
		</table>
	</div>
	<div class="container col-sm-3" align="center">
		<h1 class="display-6">기본 정보 입력</h1>
		<form class="form-group" action="/user/register" method="POST">
			<table class="col-sm-10">
				<tr>
					<td>
					    <span class="form-control">아이디</span>
						<input type="text" class="form-control" id="users_id" name="users_id" placeholder="아이디 입력 (띄어쓰기 없이 영문 소문자, 숫자 포함 4 ~ 20자 이내)" required="required" autofocus="autofocus" />
					</td>
				</tr>
				<tr>
					<td>
						<span class="form-control">비밀번호</span>
						<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력 (띄어쓰기 없이 영문, 숫자 포함 10 ~ 20자 이내)" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" placeholder="비밀번호 재입력" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<!--기능구현할때  전에 입력한 이름,전화번호 같이 넘어와야함 -->
						<span class="form-control">이름</span>
						<input type="text" class="form-control" id="users_name" name="users_name" required="required" />
					</td>
				</tr>
				<tr>
					<td>
					    <span class="form-control">닉네임</span>
						<input type="text" class="form-control" id="users_nickname" name="users_nickname" placeholder="닉네임" required="required" />
					</td>
				</tr>
				<tr>
					<td>
					    <span class="form-control">생일</span>
						<input type="text" class="form-control" id="birth_date" name="birth_date" placeholder="yyyy-MM-dd" required="required" />
					</td>
				</tr>
				<tr>
					<td>
					    <span class="form-control">핸드폰</span>
						<input type="text" class="form-control" id="users_phone" name="users_phone" required="required" />
					</td>
				</tr>
				<tr>
					<td>
					    <span class="form-control">이메일</span>
						<input type="text" class="form-control" id="users_email" name="users_email" required="required" />
					</td>
				</tr>
				<tr>
					<td>
					    <span class="form-control">운전 면허증</span>
						<input type="text" class="form-control" id="license" name="license" required="required" />
					</td>
				</tr>
				
			</table>
			<input type="submit" class="btn btn-danger col-sm-6" value="가입완료" />
		</form>
		<div class="container">
			<ul style="text-align: left;">
				<li>회원가입이 어려우신 경우 SK렌터카 고객센터로 연락주시기 바랍니다.<br>
				<span class="text-warning">고객센터 1599-9111</span>
				(월 ~ 금 09:00 ~ 18:00/토요일 및 공휴일 휴무)
				</li>
			</ul>
		</div>
	</div>
</article>
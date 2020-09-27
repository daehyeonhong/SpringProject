<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-3" align="center">
		<h1 class="display-6">기본 정보 입력</h1>
		<form class="form-group" action="/user/register" method="POST">
			<table class="col-sm-10">
				<tr>
					<td>
						<input type="text" class="form-control" id="id" name="id" placeholder="아이디 입력 (띄어쓰기 없이 영문 소문자, 숫자 포함 4 ~ 20자 이내)" required="required" autofocus="autofocus" />
					</td>
				</tr>
				<tr>
					<td>
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
						<input type="text" class="form-control" id="nickname" name="nickname" placeholder="닉네임" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<!--기능구현할때  전에 입력한 이름,전화번호 같이 넘어와야함 -->
						<input type="text" class="form-control" id="name" name="name" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" class="form-control" id="phone" name="phone" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" class="form-control" id="email" name="email" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" class="form-control" id="birth_date" name="birth_date" placeholder="yyyy-MM-dd" required="required" />
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
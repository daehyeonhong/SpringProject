<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.chk_register{font-size: 10px; color: red;}
</style>
<article>
	<div class="container col-sm-4" align="center">
	</div> 
	<div class="container col-sm-3" align="center">
		<h1 class="display-6">기본 정보 입력</h1>
		<br>
		<form class="form-group" action="/user/register" method="post" name="userForm" id="userForm">
			<table class="col-sm-10">
				<tr>
					<td>
					    <!-- <span class="form-control"></span> -->
						<b>아이디</b>	
						<input type="text" class="form-control" id="users_id" name="users_id" placeholder="아이디" required="required" autofocus="autofocus" />
						<button onclick="chk_id()">아이디 중복확인</button>
						<div class="chk_register" id="chk_id"></div>
					</td>
				</tr>
				<tr>
					<td>
						<b>비밀번호</b>
						<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호" required="required" />
						<div class="chk_register" id="chk_pw1"></div>
					</td>
				</tr>
				<tr>
					<td>
						<b>비밀번호 확인</b>
						<input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" placeholder="비밀번호 재입력" required="required" />
						<div class="chk_register" id="chk_pw2"></div>
					</td>
				</tr>
				<tr>
					<td>
						<!--기능구현할때  전에 입력한 이름,전화번호 같이 넘어와야함 -->
						<b>이름</b>
						<input type="text" class="form-control" id="users_name" name="users_name" required="required" />
						<div class="chk_register" id="chk_name"></div>
					</td>
				</tr>
				<tr>
					<td>
					    <b>닉네임</b>
						<input type="text" class="form-control" id="users_nickname" name="users_nickname" placeholder="닉네임" required="required" />
						<div class="chk_register" id="chk_nickname"></div>
					</td>
				</tr>
				<tr>
					<td>
					   <b>생일</b>
						<input type="text" class="form-control" id="birth_date" name="birth_date" placeholder="yyyyMMdd" required="required" />
						<div class="chk_register" id="chk_birth"></div>
					</td>
				</tr>
				<tr>
					<td>
					    <b>핸드폰</b>
						<input type="text" class="form-control" id="users_phone" name="users_phone" required="required" />
						<div class="chk_register" id="chk_phone"></div>
					</td>
				</tr>
				<tr>
					<td>
					    <b>이메일</b>
						<input type="text" class="form-control" id="users_email" name="users_email" required="required" />
						<div class="chk_register" id="chk_email"></div>
					</td>
				</tr>
				<tr>
					<td>
					    <b>운전 면허증</b>
						<input type="text" class="form-control" id="license" name="license" required="required" />
						<div class="chk_register" id="chk_license"></div>
					</td>
				</tr>
				
			</table>
			<br>
			<input type="submit" class="btn btn-danger col-sm-6" value="가입완료" id="registerBtn" name="registerBtn"/>
		</form>
		<div class="container">
			<ul style="text-align: left;">
				<li>회원가입이 어려우신 경우 TT렌터카 고객센터로 연락주시기 바랍니다.<br>
				<span class="text-warning">고객센터 1599-9111</span>
				(월 ~ 금 09:00 ~ 18:00/토요일 및 공휴일 휴무)
				</li>
			</ul>
		</div>
	</div>
</article>

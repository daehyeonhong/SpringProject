<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-3 border" align="center">
	<br>
		<h2>로그인</h2>
		<br>
		${result == 'failure' ? "<div class='alert alert-danger'><strong>Please Id & Password check!</strong></div>" : ""}
		<form id="loginForm" action="/user/login" method="post">
			<div class="form-group">
				<input type="text" class="form-control" name="users_id" placeholder="아이디 입력" required="required" />
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="password" placeholder="비밀번호 입력" required="required" />
			</div>
			 <div class="g-recaptcha" data-sitekey=6LcN1sIZAAAAAAYYJlsLB4oC9wV2UV3udl-RmQF5></div>
			<br> 
			<button class="btn btn-danger btn-block" type="button" id="login">로그인</button>
		</form>
		<div class="row">
		<div class="col-sm-12">
			<table class="table">
				<tr class="list-group list-group-horizontal text-center">
					<td class="col-sm-4">
						<a class="text-secondary text-decoration-none" href="/user/agreement">회원 가입</a>
					</td>
					<td class="col-sm-4">
						<a class="text-secondary text-decoration-none" href="/user/idSearch">아이디 찾기</a>
					</td>
					<td class="col-sm-4">
						<a class="text-secondary text-decoration-none" href="pwdSearch.jsp">비밀번호 찾기</a>
					</td>
				</tr>
			</table>
		</div>
</div>	<br></div>
</article>
<script src="https://www.google.com/recaptcha/api.js"></script>
<script>
	$(function () {
		$('#login').on('click', function () {
			$.ajax({
				url: '/user/VerifyReCAPTCHA',
				type: 'POST',
				data: {
					recaptcha: $("#g-recaptcha-response").val()
				},
				success: function (data) {
					switch (data) {
						case 0: $('#loginForm').submit();
							break;
						case 1: alert("자동 로그인 방지 봇을 확인 한뒤 진행 해 주세요.");
							break;
						default: alert("자동 로그인 방지 봇을 실행 하던 중 오류가 발생 했습니다. [Error bot Code : " + Number(data) + "]");
							break;
					}
				}
			});
		});
	});
</script>
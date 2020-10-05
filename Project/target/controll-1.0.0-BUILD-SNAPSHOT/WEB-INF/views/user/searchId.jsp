<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container col-sm-3" align="center">
	<h1 class="display-5">이메일 인증</h1>
	<p align="center">
		회원가입 시 사용하신 이메일 정보를 <br>입력해주세요.
	</p>
	<div class="form-group">
		<div class="input-group-prepend mb-3">
			<input name="email" id="email" maxlength="50" class="form-control col-sm-3" placeholder="Your Email" required="required" />
			<div class="input-group-prepend">
				<span class="input-group-text">@</span>
			</div>
			<div class="input-group-append">
				<select class="input-group-append" name="domain" id="domain" required>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
				</select>
			</div>
		</div>
		<input class="btn btn-info" type="button" onclick="mailBtn()" value="이메일 전송">
	</div>
	<div class="col-sm-6">
		<input type="text" class="form-control" id="authenticode" /> <input
			type="hidden" class="form-control" id="authenticodeConfirm" />
		<form action="/user/searchId" id="emailForm" method="post">
			<input class="form-control" type="hidden" name="users_email" id="users_email" />
			<button class="btn btn-success" type="button" onclick="checkAuthenticode()">인증하기</button>
		</form>
	</div>
</div>
<script type="text/javascript">
	function mailBtn(){
		let authenticode = $('#authenticode').val();
		let authenticodeConfirm = $('#authenticodeConfirm').val();
		let email = $('#email').val();
		let domain = $('#domain').val();
		$('#users_email').val($('#email').val() + '@' + $('#domain').val());
		$.post('/mail/searchId/'+ domain + '/' + email, function(result){
			$('#authenticodeConfirm').val(result);
		});
	}

	function checkAuthenticode(){
		let authenticode = $('#authenticode').val();
		let authenticodeConfirm = $('#authenticodeConfirm').val();
		let emailForm = $('#emailForm');
		if(authenticode.trim() != '' & authenticode == authenticodeConfirm){
			alert('인증되었습니다.');
			emailForm.submit();
			} else {
				alert('확인 후 다시 이용해주세요');
				}
		}
</script>
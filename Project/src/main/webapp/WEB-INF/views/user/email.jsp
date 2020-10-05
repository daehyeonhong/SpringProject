<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-4 card" align="center">
		<br>
		<h3>이메일 인증</h3>
		<div class="container row" align="center">
			<div class="row form-group" align="center">
				<input name="email" id="email" maxlength="50"
					class="form-control col-sm-3" placeholder="Your Email"
					required="required" />
				<div class="input-group-prepend">
					<span class="input-group-text">@</span>
				</div>
				<div class="input-group-append">
					<select class="input-group-append" name="domain" id="domain"
						required>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
					</select> <input class="btn btn-info" type="button" onclick="mailBtn()"
						value="이메일 전송">
				</div>
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="authenticode" /> <input
					type="text" class="form-control" id="authenticodeConfirm" />
				<form action="/user/email" id="emailForm" method="post">
					<input class="form-control" type="text" name="users_email"
						id="users_email" /> <br>
					<button class="btn btn-success" type="button"
						onclick="checkAuthenticode()">인증하기</button>
					<br>
				</form>
			</div>
		</div>
	</div>
</article>
<script type="text/javascript">
	function mailBtn() {
		let authenticode = $('#authenticode').val();
		let authenticodeConfirm = $('#authenticodeConfirm').val();
		let email = $('#email').val();
		let domain = $('#domain').val();
		$('#users_email').val($('#email').val() + '@' + $('#domain').val());
		$.post('/mail/register/' + domain + '/' + email, function(result) {
			$('#authenticodeConfirm').val(result);
			var users_email = $('#users_email').val();
			$.get('/user/checkEmail/' + users_email, function(result) {
				alert(result);
				alert(users_email);

				if (result == "success") {
					$("#chk_emil").text("사용가능한 번호입니다.");
					$("#chk_emil").css("color", "green");
					$("#chk_emilD").val("success");
					$("#chk_emil").attr('readonly', true);
					$("#chk_emil").val(chk_emil);
				} else if (result == "failure") {
					$("#chk_emil").text("이미 사용중인 번호입니다.");
					$("#chk_emil").css("color", "red");
					$("#chk_emilD").val("failure");
				}
			});
		});
	};

	function checkAuthenticode() {
		let authenticode = $('#authenticode').val();
		let authenticodeConfirm = $('#authenticodeConfirm').val();
		let emailForm = $('#emailForm');
		if (authenticode.trim() != '' & authenticode == authenticodeConfirm) {
			alert('인증되었습니다.');
			emailForm.submit();
		} else {
			alert('확인 후 다시 이용해주세요');
		}
	}

	var mailV = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
</script>
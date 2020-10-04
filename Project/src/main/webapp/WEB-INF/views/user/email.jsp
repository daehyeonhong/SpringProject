<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-5" align="center">
		<h3>이메일 인증</h3>
		<div class="container" align="center">
			<div class="form-group">
				<div class="input-group mb-3">
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
						<div class="input-group-append">
						<input class="btn btn-info" type="button" onclick="mailBtn()" value="이메일 전송">
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<form action="/user/register" id="emailForm">
					<input type="text" name="users_email" id="users_email" />
					<input type="text" name="users_domain" id="users_domain" />
					<input type="text" class="form-control" id="authenticode" />
					<input type="text" class="form-control" id="authenticodeConfirm" />
					<button type="button" onclick="checkAuthenticode()">인증하기</button>
				</form>
			</div>
		</div>
	</div>
</article>
<script type="text/javascript">
	function mailBtn(){
		let authenticode = $('#authenticode').val();
		let authenticodeConfirm = $('#authenticodeConfirm').val();
		let email = $('#email').val();
		let domain = $('#domain').val();
		$('#users_domain').val($('#domain').val());
		$('#users_email').val($('#email').val());
		$.post('/mail/register/'+ domain + '/' + email, function(result){
			$('#authenticodeConfirm').val(result);
		});
	}

	function checkAuthenticode(){
		let emailForm = $('#emailForm');
		if(authenticode.trim() != '' & authenticode == authenticodeConfirm){
			emailForm.submit();
			} else {
				alert('확인 후 다시 이용해주세요');
				}
		}
</script>
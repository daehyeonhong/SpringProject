<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-4 card" align="center">
		<br>
		<h3>이메일 인증</h3>
		
			<div class="row form-group">
				
		<input type="text" class="col-sm-4 form-control" id="email" name="email" placeholder="이메일 입력" />
				    
          <span class="form-control col-sm-1">@</span>
                     <select class="col-sm-4 input-group-append" name="domain" id="domain"
						required>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
					</select> 
					<input class="col-sm-3 btn btn-info" type="button" onclick="mailBtn()"
						value="이메일 전송">
                                               
				
				</div>
				
				
			
			<div class="col-sm-8">
				<input type="text" class="form-control" id="authenticode" /> 
				<input type="text" class="form-control" id="authenticodeConfirm" />
				<form action="/user/email" id="emailForm" method="post">
					<input class="form-control" type="text" name="users_email"
						id="users_email" /> <br>
					<button class="btn btn-success" type="button"
						onclick="checkAuthenticode()">인증하기</button>
					<br>
				</form>
			</div>
		</div>
	
</article>
<script type="text/javascript">
	function mailBtn() {
		let authenticode = $('#authenticode').val();
		let authenticodeConfirm = $('#authenticodeConfirm').val();
		let email = $('#email').val();
		let domain = $('#domain').val();
		
		if(email==''){
			$('#email').focus();
			alert('Email정보를 입력하세요!!');
			}
		else{
		$('#users_email').val($('#email').val() + '@' + $('#domain').val());
		let users_email=$('#users_email').val();

		$.post('/mail/email/'+users_email+'/'+'ll',function(re){
			if(re=='success'){
			alert('사용 가능한 Email 입니다.');
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
			}else{
				alert('회원 정보에 있는 Email 입니다.');
				$('#email').val('');
				$('#users_email').val('');
				$('#authenticodeConfirm').val('');
				}
			


			});
		
		
		
		
	};
	}
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
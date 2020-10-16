<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container col-sm-3" align="center">
	<h1 class="display-5">이메일 인증</h1>
	<p align="center">
		회원가입 시 사용하신 이메일 정보를 <br>입력해주세요.
	</p>
		
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
				<br><br>
				
			
			<div class="row">
				<span class="col-sm-4">인증 번호  : </span><input type="text" class="col-sm-6 form-control" id="authenticode" /> <span class="col-sm-2"> </span>
				<span class="col-sm-4">인증 번호 : </span><input type="text" class="col-sm-6 form-control" id="authenticodeConfirm" /> <span class="col-sm-2"> </span>
				
				<form action="/user/searchPwd" id="emailForm" method="post" class="row col-sm-12">
					<span class="col-sm-4">이메일 :</span><input class="col-sm-7 form-control" type="text" name="users_email" id="users_email" /> <span class="col-sm-1"></span>
					<br><span class="col-sm-4"> </span><button class="col-sm-4 btn btn-success" type="button" onclick="checkAuthenticode()">인증하기</button>
					<br>
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
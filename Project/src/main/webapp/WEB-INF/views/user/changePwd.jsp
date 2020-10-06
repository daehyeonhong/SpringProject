<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<div class="container col-sm-3" align="center">
	<h2>신규 비밀번호 등록</h2>
		<p align="center">본인확인이 완료되었습니다.</p>
		<p align="center">신규 비밀번호를 등록 후 사용해주세요.</p>
		${users_id_result}님
		<br>

		<form action="/user/changePwd" id="changePwdForm" method="post">
			<div class="form-group">
				<input type="hidden" name="users_id" value="${users_id_result}" placeholder="비밀번호 입력(띄어쓰기 없이 영문,숫자 포함)">
				<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력(띄어쓰기 없이 영문,숫자 포함)">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" id="passwordConfirm" placeholder="비밀번호 재입력">
			</div>
			<div class="row container">
				<button type="button" class="btn btn-info" onclick="checkBtn()">비밀번호 변경</button>
			</div>
		</form>
	</div>
	<script type="text/javascript">
	function checkBtn(){
			let pwd = $('#password').val();
			let pwdC = $('#passwordConfirm').val();

			if(pwd.trim()==pwdC.trim()){
				if(confirm('정말 변경하시겠습니까?')){
						$('#changePwdForm').submit();
					}else{
						alert('취소');
						}
				}else{
					alert('입력 값이 서로 다릅니다');
					}
		}
</script>
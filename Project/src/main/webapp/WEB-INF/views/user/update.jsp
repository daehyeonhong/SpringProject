<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="birth_date" value="${users.birth_date}"
	pattern="yyyy년 MM월 dd일" />
<article>
	<div class="container col-sm-4" align="center">
		<h1 class="display-6">개인정보수정</h1>
		
		<form action="/user/update" method="post">
		<table class="col-sm-10" id="userUpdateTb">

			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">아이디</span>
						</div>
						<span class="form-control">${users.users_id}</span>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">이름</span>
						</div>
						<span class="form-control">${users.users_name}</span>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">닉네임</span>
						</div>
						<input class="form-control" name="users_nickname" id="users_nickname" value="${users.users_nickname}"readonly>
						<div class="input-group-append">
							<button class="btn btn-primary" id="nicknameBtn" type="button">변경</button>
						</div>
					</div>
					<div class="check_font" id="nickname_check"></div>
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
						<input class="form-control" name="users_phone" id="users_phone" value="${users.users_phone}"readonly>
						<div class="input-group-append">
							<button class="btn btn-primary" id="phoneBtn" type="button">변경</button>
						</div>
					</div>
					<div class="check_font" id="phone_check"></div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">이메일</span>
						</div>
						<input class="form-control" name="users_email" id="users_email" value="${users.users_email}"readonly>
						<div class="input-group-append">
							<button class="btn btn-primary" id="emailBtn" type="button">변경</button>
						</div>
					</div>
					<div class="check_font" id="email_check"></div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">면허증</span>
						</div>
						<input class="form-control" name="license" id="license" value="${users.license}"readonly>
						<div class="input-group-append">
							<button class="btn btn-primary" id="licenseBtn" type="button">변경</button>
						</div>
					</div>
					<div class="check_font" id="license_check"></div>
				</td>
			</tr>

		</table>
		
		<table class="col-sm-10">
			<tr>
				<td>
					<input class="btn btn-danger btn-block" type="submit" value="수정완료" id="reg_submit">
				</td>
			</tr>
		</table>
		</form>
	</div>
</article>


<script>

	$("#nicknameBtn").on("click",function(e){
		$("#users_nickname").val("");
		$("#users_nickname").removeAttr("readonly");
		$("#users_nickname").focus();

		// 닉네임 유효성 검사(1 = 중복 / 0 != 중복)
		$("#users_nickname").blur(function() {
			
			var v = "${users.users_nickname}";
			var user_nickname = $('#users_nickname').val();
			var idJ = /^[a-z0-9]{4,12}$/;
			$.ajax({
				url : '${pageContext.request.contextPath}/user/nicknameCheck?users_nickname='+ user_nickname,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1 && user_nickname != v) {
							
							$("#nickname_check").text("사용중인 닉네임입니다 :p");
							$("#nickname_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
						} else {
							
							if(idJ.test(user_nickname)){
								
								$("#nickname_check").text("");
								$("#reg_submit").attr("disabled", false);
					
							} else if(user_nickname == ""){
								
								$('#nickname_check').text('닉네임을 입력해주세요 :)');
								$('#nickname_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);				
								
							} else {
								
								$('#nickname_check').text("닉네임은 소문자와 숫자 4~12자리만 가능합니다 :) :)");
								$('#nickname_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			});
	});

	$("#phoneBtn").on("click",function(e){
		$("#users_phone").val("");
		$("#users_phone").removeAttr("readonly");
		$("#users_phone").focus();

		// 연락처 유효성 검사(1 = 중복 / 0 != 중복)
		$("#users_phone").blur(function() {
			
			var v = "${users.users_phone}";
			var user_phone = $('#users_phone').val();
			var idJ = /^\d{3}-\d{3,4}-\d{4}$/;
			$.ajax({
				url : '${pageContext.request.contextPath}/user/phoneCheck?users_phone='+ user_phone,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1 && user_phone != v) {
							
							$("#phone_check").text("사용중인 번호입니다 :p");
							$("#phone_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
					}
					else {
							
							if(idJ.test(user_phone)){
								
								$("#phone_check").text("");
								$("#reg_submit").attr("disabled", false);
					
							} else if(user_phone == ""){
								
								$('#phone_check').text('번호를 입력해주세요 :)');
								$('#phone_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);				
								
							} else {
								
								$('#phone_check').text("###-####-####에 맞게 번호를 넣으세요:) :)");
								$('#phone_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			});
	});

	$("#emailBtn").on("click",function(e){
		$("#users_email").val("");
		$("#users_email").removeAttr("readonly");
		$("#users_email").focus();

		// 이메일 유효성 검사(1 = 중복 / 0 != 중복)
		$("#users_email").blur(function() {
			
			var v = "${users.users_email}";
			var user_email = $('#users_email').val();
			var idJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

			$.ajax({
				url : '${pageContext.request.contextPath}/user/emailCheck?users_email='+ user_email,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1 && user_email != v) {
							
							$("#email_check").text("사용중인 이메일입니다 :p");
							$("#email_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
					}
					else {
							
							if(idJ.test(user_email)){
								
								$("#email_check").text("");
								$("#reg_submit").attr("disabled", false);
					
							} else if(user_email == ""){
								
								$('#email_check').text('이메일을 입력해주세요 :)');
								$('#email_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);				
								
							} else {
								
								$('#email_check').text("아이디@도메인에 맞게 넣으세요:) :)");
								$('#email_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			});
	});

	$("#licenseBtn").on("click",function(e){
		$("#license").val("");
		$("#license").removeAttr("readonly");
		$("#license").focus();

		// 면허 유효성 검사(1 = 중복 / 0 != 중복)
		$("#license").blur(function() {
			
			var v = "${users.license}";
			var user_license = $('#license').val();
			var idJ = /^(?<!\d)(?!0000)\d{4}(?!\d)/;

			$.ajax({
				url : '${pageContext.request.contextPath}/user/licenseCheck?license='+ user_license,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1 && user_license != v) {
							
							$("#license_check").text("사용중인 면허증입니다 :p");
							$("#license_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
					}
					else {
							
							if(idJ.test(user_license)){
								
								$("#license_check").text("");
								$("#reg_submit").attr("disabled", false);
					
							} else if(user_license == ""){
								
								$('#license_check').text('면허증을 입력해주세요 :)');
								$('#license_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);				
								
							} else {
								
								$('#license_check').text("####에 맞게 넣으세요:) :)");
								$('#license_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			});
	});
		
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container" align="center">
		<h1 class="display-6">개인정보수정</h1>
		<form action="#" class="form-group">
			<div class="form-group">
				<p class="form-control">이름</p>
				<input type="hidden" name="name" value="name" />
			</div>
			<div class="form-group">
				<p class="form-control">ID</p>
				<input type="button" value="비밀번호 변경" />
			</div>
			<div class="form-group">
				<p class="form-control">01010101010</p>
				<input type="hidden" name="phone" value="01010101010" />
				<input type="button" value="휴대폰 인증" />
			</div>
			<div class="form-group row">
				<div class="input-group mb-3">
		      <div class="input-group-prepend">
					<label class="col-sm-2">이메일</label>
					<input name="mail1" id="mail1" maxlength="50" class="form-control col-sm-3" placeholder="Your Email" required="required"/>
						<span class="form-control">@</span>
						<select class="form-control" name="mail2" id="mail2" required>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
						</select>
						<input class="form-control btn btn-info" type="button" id="mailBtn" value="이메일 인증">
						<input class="form-control btn btn-warning" style="color: #FFF;" type="hidden" id="updMailBtn" value="이메일 변경">
						</div>
						<input type="hidden" id="mailChecked" value="false" /> 
					</div>
				</div>
			</div>
			<div class="form-group">
				<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력 (띄어쓰기 없이 영문, 숫자 포함 10 ~ 20자 이내)" required="required" />
			</div>
			<div class="form-group">
				<input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" placeholder="비밀번호 재입력" required="required" />
			</div>
			<div class="form-group">
				<p class="form-control" align="left">이름</p>
				<input type="hidden" id="name" name="name" value="이름" required="required" />
			</div>
			<div class="form-group">
				<p class="form-control" align="left">전화번호</p>
				<input type="hidden" id="phone" name="phone" value="전화번호" required="required"  />
			</div>
			<input class="btn btn-danger btn-block col-sm-6" type="submit" value="가입완료" />
		</form>
	</div>
</body>
</html>
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
	<div class="container col-sm-3" align="center">
		<h1 class="display-6">기본 정보 입력</h1>
		<form action="#" class="form-group">
			<div class="form-group">
				<input type="text" class="form-control" id="id" name="id" placeholder="아이디 입력 (띄어쓰기 없이 영문 소문자, 숫자 포함 4 ~ 20자 이내)" required="required" />
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
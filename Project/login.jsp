<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
	<div class="container col-sm-4" align="center">
			<h3 class="display-4">로그인</h3>
			<form action="#" class="was-validated">
				<div class="form-group">
					<label>ID:</label> <input type="text" class="form-control" id="id" placeholder="Enter username" name="id" required="required" />
					<div class="valid-feedback">입력 확인</div>
					<div class="invalid-feedback">아이디를 입력하세요</div>
				</div>
				<div class="form-group">
					<label>Password:</label>
					<input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required="required" />
					<div class="valid-feedback">입력 확인</div>
					<div class="invalid-feedback">비밀번호를 입력하세요</div>
				</div>
				<input class="btn btn-primary btn-block" type="submit" value="로그인">
			</form>
			<table class="table table-boarded">
				<tr class="list-group list-group-horizontal col-sm-12">
					<td class="list-group-item"><a href="#">회원 가입</a></td>
					<td class="list-group-item"><a href="#">아이디 찾기</a></td>
					<td class="list-group-item"><a href="#">비밀번호 찾기</a></td>
				</tr>
			</table>
	</div>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<body>
	<div class="container col-sm-3" align="center">
			<h3 class="display-4">로그인</h3>
			<form action="#" class="was-validated">
				<div class="form-group">
					<input type="text" class="form-control" id="id" placeholder="Enter username" name="id" required="required" />
					<div class="valid-feedback">입력 확인</div>
					<div class="invalid-feedback">아이디를 입력하세요</div>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required="required" />
					<div class="valid-feedback">입력 확인</div>
					<div class="invalid-feedback">비밀번호를 입력하세요</div>
				</div>
				<input class="btn btn-danger btn-block" type="submit" value="로그인">
			</form>
			<table class="table table-boarded">
				<tr class="list-group list-group-horizontal text-center">
					<td class="col-sm-4"><a href="#">회원 가입</a></td>
					<td class="col-sm-4"><a href="#">아이디 찾기</a></td>
					<td class="col-sm-4"><a href="#">비밀번호 찾기</a></td>
				</tr>
			</table>
			<hr />
	</div>	
</body>
</html>
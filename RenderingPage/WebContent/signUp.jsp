<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container col-sm-3" align="center">
		<h1 class="display-6">기본 정보 입력</h1>
		<form action="#" class="form-group">
			<table class="col-sm-10">
				<tr>
					<td>
						<input type="text" class="form-control" id="id" name="id" placeholder="아이디 입력 (띄어쓰기 없이 영문 소문자, 숫자 포함 4 ~ 20자 이내)" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력 (띄어쓰기 없이 영문, 숫자 포함 10 ~ 20자 이내)" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" placeholder="비밀번호 재입력" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<p class="form-control" align="left">이름</p>
						<input type="hidden" id="name" name="name" value="이름" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<p class="form-control" align="left">전화번호</p>
						<input type="hidden" id="phone" name="phone" value="전화번호" required="required"  />
					</td>
				</tr>
			</table>
			<input class="btn btn-danger btn-block col-sm-6" type="submit" value="가입완료" />
		</form>
	</div>
</body>
</html>
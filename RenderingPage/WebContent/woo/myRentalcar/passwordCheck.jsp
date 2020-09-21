<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container col-sm-3" align="center">
		<div class="container">
			<h1 class="display-5">비밀번호 확인</h1>
			<p align="center">개인정보 보호를 위해 비밀번호를 다시 한번 입력해주세요.</p>
			<form action="../updateInfo/updateInfo.jsp">
				<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력"><br>
				<input type="submit" class="btn btn-danger col-sm-12" value="확인" />
			</form>
		</div>
	</div>

</body>
</html>
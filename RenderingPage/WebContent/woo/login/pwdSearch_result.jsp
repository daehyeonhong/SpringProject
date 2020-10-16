<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 결과</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container col-sm-3" align="center">
	<h2>신규 비밀번호 등록</h2>
		<p align="center">본인확인이 완료되었습니다.</p>
		<p align="center">신규 비밀번호를 등록 후 사용해주세요.</p>
		<br>

		<form action="./login.jsp">
			<div class="form-group">
				<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력(띄어쓰기 없이 영문,숫자 포함)">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" placeholder="비밀번호 재입력">
			</div>
			<div class="row container">
				<!-- 눌렀을시 로그인으로 되돌아오기 -->
				<button type="button" class="btn btn-secondary col-sm-6" onclick="location.href='./login.jsp'">취소</button>
				<!--눌렀을시 이벤트주기   -->
				<input type="submit" class="btn btn-danger col-sm-6" onclick="button1_click();" value="변경완료" />
			</div>
			<script>
				function button1_click() {
					alert("비밀번호가 새로 변경되었습니다.");
				}
			</script>
		</form>
	</div>
</body>
</html>
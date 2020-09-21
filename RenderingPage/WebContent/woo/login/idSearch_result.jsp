<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기 결과</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container col-sm-3" align="center">
	<h2>아이디 찾기 완료</h2>
		<p align="center">회원님이 입력하신 정보와 일치하는 아이디입니다.</p>
		<p align="center">개인정보보호를 위해 개인정보의 일부는 ***로 표시하였습니다.</p>
		<div class="divInfo">
			<p align="center">dnwjdal***&nbsp;&nbsp;&nbsp;가입일 : 2020.08.19</p>
			<p align="center">가입채널 : SK렌터카</p>
		</div>
		<hr />
				<button type="button" class="btn btn-secondary col-sm-5" onclick="location.href='./pwdSearch.jsp'">비밀번호 찾기</button>
				<button type="button" class="btn btn-danger col-sm-5" onclick="location.href='./login.jsp'">로그인</button>
	</div>

</body>
</html>
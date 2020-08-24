<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- css적용 -->
<style type="text/css">
.container {
	max-width: 700px;
	height: 200px;
	margin: 10px auto;
	padding: 5px;
	position: relative;
}

.container1 {
	width: 550px;
	border-radius: 5px;
	padding: 100px;
}

.btnCtl {
	text-align: center;
	margin-top: 20px;
}

.button4 {
	background-color: white;
	color: black;
	border: 2px solid #E7E7E7;
	width: 150px;
	height: 40px;
}

.button4:hover {
	background-color: #e7e7e7;
}

.divInfo {
	border-bottom: 2px solid #E7E7E7;
	margin-top: 50px;
}
</style>

</head>
<body>
	<div class="container">
		<div class="container1">
			<h1 align="center">아이디 찾기완료</h1>
			<p align="center">회원님이 입력하신 정보와 일치하는 아이디입니다.</p>
			<p align="center">개인정보보호를 위해 개인정보의 일부는 ***로 표시하였습니다.</p>

			<div class="divInfo">
				<p align="center">dnwjdal***&nbsp;&nbsp;&nbsp;가입일 : 2020.08.19</p>
				<p align="center">가입채널 : SK렌터카</p>
			</div>

			<div class="btnCtl">
				<button class="button4">비밀번호 찾기</button>
				<button class="button4">로그인</button>
			</div>
		</div>
	</div>

</body>
</html>

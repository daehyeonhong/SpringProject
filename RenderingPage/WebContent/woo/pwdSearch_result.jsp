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

.textDiv1 {
	padding: 10px;
	margin-bottom: 10px;
	text-align: center;
}

.textDiv2 {
	padding: 10px;
	margin-bottom: 10px;
	text-align: center;
}

.text {
	border-style: solid;
	border-width: 2px;
	padding: 12px;
	word-break: break-all;
	border-color: #EAEAEA;
	width: 450px;
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

.btnCtl {
	text-align: center;
}
</style>

</head>
<body>
	<div class="container">
		<div class="container1">
			<h1 align="center">신규 비밀번호 등록</h1>
			<p align="center">본인확인이 완료되었습니다. 신규 비밀번호를 등록 후 사용해주세요.</p>

			<div class="textDiv1">
				<input type="text" class="text"
					placeholder="비밀번호 입력(띄어쓰기 없이 영문,숫자 포함 10~20자 이내)" />
			</div>
			<div class="textDiv2">
				<input type="text" class="text" placeholder="비밀번호 재입력" />
			</div>

			<div class="btnCtl">
				<button class="button4">취소</button>
				<button class="button4">변경완료</button>
			</div>
		</div>
	</div>

</body>
</html>
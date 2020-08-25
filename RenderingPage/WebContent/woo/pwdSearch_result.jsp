<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css���� -->
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
			<h1 align="center">�ű� ��й�ȣ ���</h1>
			<p align="center">����Ȯ���� �Ϸ�Ǿ����ϴ�. �ű� ��й�ȣ�� ��� �� ������ּ���.</p>

			<div class="textDiv1">
				<input type="text" class="text"
					placeholder="��й�ȣ �Է�(���� ���� ����,���� ���� 10~20�� �̳�)" />
			</div>
			<div class="textDiv2">
				<input type="text" class="text" placeholder="��й�ȣ ���Է�" />
			</div>

			<div class="btnCtl">
				<button class="button4">���</button>
				<button class="button4">����Ϸ�</button>
			</div>
		</div>
	</div>

</body>
</html>
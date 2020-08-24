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
	/* 	background-color: #fff; */
	position: relative;
}

.container1 {
	width: 550px;
	/* 	background: #333; */
	border-radius: 5px;
	/* 	color: white; */
	padding: 100px;
}

.a {
	text-align: center;
}

.phone-btn {
	border: 1px solid #EAEAEA;
	background: url("../images/phone.png");
	width: 120px;
	height: 130px;
	float: left;
	margin-left: 150px;
}

.ipin-btn {
	border: 1px solid #EAEAEA;
	background: url("../images/ipin.png");
	width: 120px;
	height: 130px;
	float: right;
	margin-right: 150px;
}
</style>

</head>
<body>
	<div class="container">
		<div class="container1">
			<h1 align="center">아이디 찾기</h1>
			<p align="center">회원가입 시 사용하신 회원정보로 아이디를 찾을 수 있습니다.</p>

			<div class="a">
				<div class="phone-btn"></div>
				<div class="ipin-btn"></div>
			</div>

			<br> <br> <br> <br> <br> <br> <br>

			<ul>
				<li>고객님의 가입여부확인 및 개인정보보호를 위해 본인확인을 통한 회원인증 서비스를 시행하고 있습니다.</li>
				<li>본인명의의 휴대폰으로만 본인인증이 가능합니다. 아이핀 (i-PIN) ID가 없는 경우 한국신용정보㈜에서
					발급 후 사용 가능합니다.</li>
				<li>2012년 8월 18일부터 「정보통신망 이용 촉진 및 정보보호 등에 관한 법률」 제 23조의 2
					“주민등록번호의 사용제한”이 시행됨에 따라 본인인증기관을 통해 휴대폰/아이핀을 이용하여 본인확인서비스를 시행하고
					있습니다. 인증 시 제공되는 정보는 해당 인증기관에서 직접 수집하며, 인증 이외의 용도로 이용하거나 저장하지 않습니다.</li>
				<li>위 방법으로 아이디를 찾을 수 없는 경우 SK렌터카 고객센터로 연락주시기 바랍니다.<br>고객센터
					1599-9111 (월 ~ 금 09:00 ~ 18:00/토요일 및 공휴일 휴무)
				</li>
			</ul>
		</div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container col-sm-3">
		<div align="center">
			<h2 class="display-4">아이디 찾기</h2>

			<p align="center" style="font-size: 16px; line-height: 26px;"> 회원가입 시 사용하신 회원정보로 아이디를 <br>찾을 수 있습니다.
			</p>
			<img onclick="location.href='/user/emailAuthentication'" style="cursor: pointer" src="../images/e-mail_2.png" class="square" width="100" height="100" /><br>
			<br>


			<ul>
				<li>고객님의 가입여부확인 및 개인정보보호를 위해 본인확인을 통한 회원인증 서비스를 시행하고 있습니다.</li>
				<li>본인명의의 휴대폰으로만 본인인증이 가능합니다. 아이핀 (i-PIN) ID가 없는 경우 한국신용정보㈜에서
					발급 후 사용 가능합니다.</li>
				<li>2012년 8월 18일부터 「정보통신망 이용 촉진 및 정보보호 등에 관한 법률」 제 23조의 2
					“주민등록번호의 사용제한”이 시행됨에 따라 본인인증기관을 통해 휴대폰/아이핀을 이용하여 본인확인서비스를 시행하고
					있습니다. 인증 시 제공되는 정보는 해당 인증기관에서 직접 수집하며, 인증 이외의 용도로 이용하거나 저장하지 않습니다.</li>
				<li>위 방법으로 아이디를 찾을 수 없는 경우 SK렌터카 고객센터로 연락주시기 바랍니다.<br>
				<span class="text-warning">고객센터 1599-9111</span> (월 ~ 금 09:00 ~
					18:00/토요일 및 공휴일 휴무)
				</li>
			</ul>
		</div>
		<input type="hidden" id="sep" value="id" />
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%
	request.setCharacterEncoding("utf-8");
	String sep = request.getParameter("sep");
%>
<script>
function send_click() {
	var users_email = document.getElementById("users_email").value;

	if(users_email == "") {
		alert("이메일을 입력하세요.");
	} else {
		var result = confirm("이메일을 전송하시겠습니까?");

		if(result) {
			alert("이메일 전송을 완료하였습니다.");
			
		} else {
			alert("이메일 전송을 취소하였습니다.");
		}
	}
}

function finish_click() {
	var sep = document.getElementById("sep").value;
	
	if(sep == "id") { // 아이디찾기
		location.href = './idSearch_result'; 
	} else {
		location.href = './pwdSearch_result'; 
	}
}
</script>
</head>
<body>
	<div class="container col-sm-3" align="center">
		<h1 class="display-5">이메일 인증</h1>
	
		<p align="center">회원가입 시 사용하신 이메일 정보를 <br>입력해주세요.</p>
		<!--  <form action="#" class="was-validated"> -->
		<form id="emailForm" action="/user/emailAuthentication" class="was-validated" method="post" > 
			<div class="form-group">
				<input type="text" class="form-control" id="users_email" placeholder="이메일 입력" name="users_email" required="required" />
					<div class="valid-feedback">
						<button type="submit" class="btn btn-danger col-sm-3">전송</button>
					</div>
			</div>
			
			<!-- <div class="form-group">
				<input type="text" class="form-control" id="Authentication_number" placeholder="인증번호 입력"
					name="Authentication_number" required="required" />
				<div class="valid-feedback">
					<button type="button" onclick="finish_click();" class="btn btn-danger col-sm-3">완료</button>
				</div>
			</div> -->
			
			<input type="hidden" id="sep" value="<%=sep%>"/>
		</form>
	</div>
	
</body>
</html>
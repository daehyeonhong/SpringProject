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
		function finish_click() {
			var sep = document.getElementById("sep").value;
			
			if(sep == "id") { // 아이디찾기
				location.href = './idSearch_result.jsp'; 
			} else {
				location.href = './pwdSearch_result.jsp'; 
			}
			
		}
	</script>
</head>
<body>
	<div class="container col-sm-3" align="center">
		<h1 class="display-5">이메일 인증</h1>
		<p align="center">회원가입 시 사용하신 이메일 정보를 <br>입력해주세요.</p>
		<form action="#" class="was-validated">
			<div class="form-group">
				<input type="text" class="form-control" id="email" placeholder="이메일 입력"
					name="email" required="required" />
					<div class="valid-feedback">
						<button type="button" onclick="send_click();" class="btn btn-danger col-sm-2">전송</button>
					</div>
			</div>
			
			<div class="form-group">
				<input type="text" class="form-control" id="auth" placeholder="인증번호 입력"
					name="auth" required="required" />
				<div class="valid-feedback">
					<button type="button" onclick="finish_click();" class="btn btn-danger col-sm-2">완료</button>
				</div>
			</div>
			
			<input type="hidden" id="sep" value="<%=sep%>"/>
		</form>
	</div>
</body>
</html>
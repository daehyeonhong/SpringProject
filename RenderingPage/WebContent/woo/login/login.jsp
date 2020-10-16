<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<body>

	<div class="container col-sm-3" align="center">
		<h3 class="display-4">로그인</h3>
		
		<%
			String error = request.getParameter("error");
			if(error != null){
				out.print("<div class='alert alert-danger'><strong>");
				out.print("아이디와 비밀번호를 다시 입력해주세요.");
				out.print("</strong></div>");
			}
		%>
<script>
	$(document).ready(function() {
		$("#btn_login").click(function() {
			var id = $("id").val();
			var pw = $("password").val();
			
			if(id == "") {
				alert("아이디를 입력하세요.");
				return false;
			}
			
			if(pw == "") {
				alert("비밀번호를 입력하세요.");
				return false;
			}
		});
	});
</script>
		
		<form name="form1" method="post">
			<div class="form-group">
				<input type="text" class="form-control" name="id" id="id" placeholder="아이디 입력" required="required" />
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="password" id="password" placeholder="비밀번호 입력" required="required" />
			</div>
			<div class="form-group form-check" align="left">
				<label class="form-check-label">
					<input class="form-check-input" type="checkbox" name="remember"> 아이디 저장
				</label>
			</div>
			<!-- href 로그인후 메인화면으로  -->
			<input class="btn btn-danger btn-block" id="btn_login" type="submit"  value="로그인" >
		</form>
		<table class="table">
			<tr class="list-group list-group-horizontal text-center">
				<td class="col-sm-4">
					<a class="text-secondary" href="./signUp.jsp">회원 가입</a>
				</td>
				<td class="col-sm-4">
					<a class="text-secondary" href="./idSearch.jsp">아이디 찾기</a>
				</td>
				<td class="col-sm-4">
					<a class="text-secondary" href="./pwdSearch.jsp">비밀번호 찾기</a>
				</td>
			</tr>
		</table>
		<hr >
	</div>
</body>
</html>
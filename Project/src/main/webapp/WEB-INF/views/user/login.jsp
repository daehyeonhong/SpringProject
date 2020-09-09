<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-3" align="center">
		<h2>로그인</h2>
		<%
			String error = request.getParameter("error");
			if(error != null){
				out.print("<div class='alert alert-danger'><strong>");
				out.print("Please Id & Password check!");
				out.print("</strong></div>");
			}
		%>
		<form action="login" method="post">
			<div class="form-group">
				<input type="text" class="form-control" name="id" id="id" placeholder="아이디 입력" required="required" />
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="password" id="password" placeholder="비밀번호 입력" required="required" />
			</div>
			<div class="form-group form-check" align="left">
				<label class="form-check-label">
					<input class="form-check-input" type="checkbox" name="remember">아이디 저장
				</label>
			</div>
			<input class="btn btn-danger btn-block" type="submit" value="로그인">
		</form>
		<table class="table">
			<tr class="list-group list-group-horizontal text-center">
				<td class="col-sm-4">
					<a class="text-secondary text-decoration-none" href="signUp.jsp">회원 가입</a>
				</td>
				<td class="col-sm-4">
					<a class="text-secondary text-decoration-none" href="idSearch.jsp">아이디 찾기</a>
				</td>
				<td class="col-sm-4">
					<a class="text-secondary text-decoration-none" href="pwdSearch.jsp">비밀번호 찾기</a>
				</td>
			</tr>
		</table>
	</div>
</article>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-3" align="center">
		<h2>회원정보변경</h2>
		${result == "failure" ? "<div class='alert alert-danger'><strong>Please Id & Password check!</strong></div>" : ""}
		<form action="/user/confirm" method="post">
			<div class="form-group">
				<span class="form-control">${users_id}</span>
				<input type="hidden" name="users_id" value="${users_id}" />
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="password" placeholder="비밀번호 입력" required="required" />
			</div>
			<input class="btn btn-danger btn-block" type="submit" value="로그인" />
		</form>
	</div>
</article>
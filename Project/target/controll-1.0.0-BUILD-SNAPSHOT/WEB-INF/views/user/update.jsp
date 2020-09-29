<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="birth_date" value="${users.birth_date}"
	pattern="yyyy년 MM월 dd일" />
<article>
	<div class="container col-sm-4" align="center">
		<h1 class="display-6">개인정보수정</h1>
		<table class="col-sm-10">
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">아이디</span>
						</div>
						<span class="form-control">${users.users_id}</span>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">이름</span>
						</div>
						<span class="form-control">${users.users_name}</span>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">닉네임</span>
						</div>
						<span class="form-control">${users.users_nickname}</span>
						<div class="input-group-append">
							<button class="btn btn-primary" id="nicknameBtn" type="button">변경</button>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">생일</span>
						</div>
						<span class="form-control">${birth_date}</span>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">연락처</span>
						</div>
						<span class="form-control">${users.users_phone}</span>
						<div class="input-group-append">
							<button class="btn btn-primary" id="phoneBtn" type="button">변경</button>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">이메일</span>
						</div>
						<span class="form-control">${users.users_email}</span>
						<div class="input-group-append">
							<button class="btn btn-primary" id="emailBtn" type="button">변경</button>
						</div>
					</div>
				</td>
			</tr>

			<tr>
				<td colspan="2">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">면허증</span>
						</div>
						<span class="form-control">${users.license}</span>
						<div class="input-group-append">
							<button class="btn btn-primary" id="licenseBtn" type="button">변경</button>
						</div>
					</div>
				</td>
			</tr>
		</table>
		<table class="col-sm-10">
			<tr>
				<td>
					<button class="btn btn-danger btn-block"
						onclick="location.href='/'">수정완료</button>
				</td>
			</tr>
		</table>
	</div>
</article>

<script type="text/javascript">
	$('#nicknameBtn').on('click', function() {
		$.ajax({
			type:'POST',
			url:'/user/updateNickName/'+$()
			})
	});
</script>
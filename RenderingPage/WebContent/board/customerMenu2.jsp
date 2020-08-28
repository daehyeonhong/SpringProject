<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh5AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container" align="center">
		<nav class="navbar navbar-expand-sm bg-light navbar-light">
			<table class="navbar-nav">
				<tr>
					<td class="nav-item">
						<a class="nav-link h3 "style="border: 1px solid #000;" href="${pageContext.request.contextPath}/board/notice.jsp">고객센터</a>
					</td>
					<td class="nav-item">
						<a class="nav-link h5" href="${pageContext.request.contextPath}/board/notice.jsp">공지사항</a>
					</td>
					<td class="nav-item">
						<a class="nav-link h5" href="${pageContext.request.contextPath}/board/consultation/rent.jsp">고객상담</a>
					</td>
					<td class="nav-item">
						<a class="nav-link h5" href="${pageContext.request.contextPath}/board/faq.jsp">자주찾는질문</a>
					</td>
					<td class="nav-item">
						<a class="nav-link h5" href="${pageContext.request.contextPath}/board/branch.jsp">지점안내</a>
					</td>
					<td class="nav-item">
						<a class="nav-link h5" href="${pageContext.request.contextPath}/board/notice.jsp">양식다운로드</a>
					</td>
				</tr>
			</table>
		</nav>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="container" align="center">
		<nav class="navbar navbar-expand-sm navbar-light">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link h3 border border-secondary" href="${pageContext.request.contextPath}/board/notice.jsp">고객센터</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/notice.jsp">공지사항</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/service/rent.jsp">고객상담</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/faq.jsp?keyword=all">자주찾는질문</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/branch.jsp">지점안내</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/notice.jsp">양식다운로드</a>
				</li>
			</ul>
		</nav>
	</div>
</body>
</html>
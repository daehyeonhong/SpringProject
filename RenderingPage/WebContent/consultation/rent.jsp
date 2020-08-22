<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>렌터카상담</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container col-sm-6">
		<div class="container">
			<h1 class="display-5">고객상담</h1>
		</div>

		<!-- Nav tabs -->
		<nav class="navbar text-center">
				<a class="btn btn-light col-sm-4" href="${pageContext.request.contextPath}/consultation/customer.jsp">일반상담</a>
				<a class="btn btn-info col-sm-4" href="${pageContext.request.contextPath}/consultation/rent.jsp">렌터카상담</a>
				<a class="btn btn-light col-sm-4" href="${pageContext.request.contextPath}/consultation/info.jsp">상담안내</a>
		</nav>

		<div class="container">
			<span>대박! 상담안내잖아?</span>
		</div>
	</div>

</body>
</html>
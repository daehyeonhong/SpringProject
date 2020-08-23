<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객상담</title>
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
				<a class="btn btn-info col-sm-4" href="${pageContext.request.contextPath}/consultation/customer.jsp">일반상담</a>
				<a class="btn btn-light col-sm-4" href="${pageContext.request.contextPath}/consultation/rent.jsp">렌터카상담</a>
				<a class="btn btn-light col-sm-4" href="${pageContext.request.contextPath}/consultation/info.jsp">상담안내</a>
		</nav>

		<!-- Tab panes -->
		<div class="container">
			<br />
			<form action="#">
				<table class="col-sm-12">
					<tr>
						<td><input type="text" class="form-control" name="name" placeholder="이름 입력" /></td>
						<td><input type="text" class="form-control" name="phone" placeholder="휴대폰번호 (-없이) 입력" /></td>
					</tr>
					<tr>
						<td><input type="text" class="form-control" name="email" placeholder="이메일 입력" /></td>
						<td>
							<div class="input-group input-group-prepend">
								<span class="form-control col-sm-1">@</span>
								<input type="text" class="form-control" name="domain" placeholder="메일 주소 입력" />
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="text" class="form-control" name="title" placeholder="제목을 입력하해주세요." />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea class="form-control" rows="5" name="content" placeholder="내용 입력 (10자 이상 등록해주세요)"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">칭찬하기와 제안하기 및 관련 없는 내용 접수 시 별도의 답변을 드리지 않습니다.</li>
									<li class="list-group-item">상담신청내역 및 답변은 MY렌터카 > 상담내역 또는 이메일을 통해 확인이 가능합니다.</li>
									<li class="list-group-item">민원접수는 충분한 검토와 사실 관계 확인 후 빠른 시일내로 답변 드립니다.</li>
									<li id="collapseCustomer" class="collapse list-group-item">상담이 집중되거나 주말의 경우 답변이 지연될 수 있으니 이점 양지하여 주시기 바랍니다.</li>
								</ul>
							<a href="#collapseCustomer" class="btn btn-primary" data-toggle="collapse">더보기</a>
						</td>
					</tr>
				</table>
				<div align="center">
					<input type="submit" class="btn btn-warning" value="신청완료" />
				</div>
			</form>
		</div>
	</div>

</body>
</html>
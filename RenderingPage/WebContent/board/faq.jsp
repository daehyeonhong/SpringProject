<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<%
		String keyword = request.getParameter("keyword");
	%>
	<c:set var="keyword" value="<%=keyword%>"/>
	<jsp:include page="./customerMenu.jsp" />
	<article>
		<div class="container col-sm-6">

			<div class="row">
				<span class="h2 col-sm-10">자주 찾는 질문</span>
				<span class="col-sm-2">breadcrumb</span>
			</div>

			<div class="container col-sm-12 row">
				<div class="col-sm-4">
					<a class="btn h4 btn-outline-info" href="${pageContext.request.contextPath}/board/consultation/customer.jsp">고객상담</a>
				</div>
	
				<div class="col-sm-8">
					<div class="float-sm-right">
						<form class="form" action="#" method="post">
							<div class="input-group mt-3 mb-3 row">
								<input type="text" class="form-control" name="keyword" placeholder="검색어를 입력해주세요" />
								<div class="input-group-append">
									<button class="btn btn-secondary" type="submit">검색하기</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div align="center">

			<!-- Tag List -->
			<div class="container row">
					<a class="btn btn-<c:if test="${keyword != 'all'}">outline-</c:if>dark col-sm-2" href="?keyword=all">전체</a>
					<a class="btn btn-<c:if test="${keyword != 'direct'}">outline-</c:if>dark col-sm-2" href="?keyword=direct">다이렉트</a>
					<a class="btn btn-<c:if test="${keyword != 'newLongterm'}">outline-</c:if>dark col-sm-2" href="?keyword=newLongterm">신차장기</a>
					<a class="btn btn-<c:if test="${keyword != 'shortterm'}">outline-</c:if>dark col-sm-2" href="?keyword=shortterm">단기</a>
					<a class="btn btn-<c:if test="${keyword != 'usedLongterm'}">outline-</c:if>dark col-sm-2" href="?keyword=usedLongterm">중고차장기</a>
					<a class="btn btn-<c:if test="${keyword != 'electric'}">outline-</c:if>dark col-sm-2" href="?keyword=electric">전기차</a>
			</div>

			<!-- Content List -->
			<div class="accordion col-sm-11" id="accordiona">
			<hr />
				<c:forEach var="i" begin="0" end="14">
						<div class="card">
							<div class="card-header" id="heading${i}">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse${i}" aria-expanded="true" aria-controls="collapse${i}">
										<span>어쩌고 저쩌고${i}</span>
									</button>
								</h2>
							</div>
		
							<div id="collapse${i}" class="collapse" aria-labelledby="heading${i}" data-parent="#accordiona">
								<div class="card-body"><span>어쩌고 저쩌고 ${i}</span></div>
							</div>
						</div>
				</c:forEach>
			</div>

			<div align="center">
				<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span></a>
							</li>
							<li class="page-item"><a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&lt;</span>
								<span class="sr-only">Previous</span></a>
							</li>
						<c:forEach var="i" begin="1" end="10">
							<li class="page-item">
								<a class="page-link" href="#">${i}</a>
							</li>
						</c:forEach>
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&gt;</span>
							<span class="sr-only">Next</span></a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							<span class="sr-only">Next</span></a>
						</li>
					</ul>
				</nav>
			</div>
			</div>

		</div>
	</article>
</body>
</html>
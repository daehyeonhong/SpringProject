<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<jsp:include page="./customerMenu.jsp" />
	<article>
		<div class="container col-sm-6">
			<div class="container row">
				<span class="h2 col-sm-10">공지사항</span>
				<span class="col-sm-2">breadcrumb</span>
			</div>

			<div align="right">
				<form class="form col-sm-6" action="#" method="post">
					<div class="input-group">
						<div class="input-group-prepend">
							<select class="form-control dropdown-toggle" data-toggle="dropdown" name="items">
								<option value="all">전체</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select>
						</div>
						<input type="text" class="form-control" name="keyword" placeholder="검색어를 입력해주세요" />
						<div class="input-group-append">
							<button class="btn btn-secondary" type="submit">검색하기</button>
						</div>
					</div>
				</form>
			</div>

			<div class="container">
				<table class="table text-center">
					<thead>
						<tr>
							<th class="col-sm-1">번호</th>
							<th class="col-sm-2">구분</th>
							<th class="col-sm-7">제목</th>
							<th class="col-sm-2">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" begin="1" end="10">
							<tr>
								<td class="col-sm-1"><span>${row}</span></td>
								<td class="col-sm-2"><span>구분</span></td>
								<td class="col-sm-7"><a href="#">제목</a></td>
								<td class="col-sm-2"><span>등록일</span></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<%-- <nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<c:if test="${currentBlock <= 1}">
						<li class="page-item disabled"><a class="page-link" href="#"
							aria-label="Previous"><span aria-hidden="true">&laquo;</span><span
								class="sr-only">Previous</span></a></li>
					</c:if>
					<c:if test="${currentBlock > 1}">
						<li class="page-item"><a class="page-link"
							href="./BoardListAction.do?pageNum=${startPage - 1}&items=${items}&text=${text}"
							aria-label="Previous"><span aria-hidden="true">&laquo;</span><span
								class="sr-only">Previous</span></a></li>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<li class="page-item <c:if test="${pageNum == i}">active</c:if>">
							<a class="page-link"
							href="<c:url value="./BoardListAction.do?pageNum=${i}&items=${items}&text=${text}" />">
								<c:choose>
									<c:when test="${pageNum == i}">
										<span class="sr-only"></span>
										<font color="#FFF"><b>${i}</b></font>
									</c:when>
									<c:otherwise>
										<font color="#4C5317">${i}</font>
									</c:otherwise>
								</c:choose>
						</a>
						</li>
					</c:forEach>
					<c:if test="${currentBlock < total_segment}">
						<li class="page-item"><a class="page-link"
							href="<c:url value="./BoardListAction.do?pageNum=${endPage + 1}&items=${items}&text=${text}" />"
							aria-label="Next"><span aria-hidden="true">&raquo;</span><span
								class="sr-only">Next</span></a></li>
					</c:if>
					<c:if test="${currentBlock >= total_segment}">
						<li class="page-item disabled"><a class="page-link" href="#"
							aria-label="Next"><span aria-hidden="true">&raquo;</span><span
								class="sr-only">Next</span></a></li>
					</c:if>
				</ul>
			</nav> --%>
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
	</article>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="./customerMenu.jsp" />
	<article>
		<div class="container">
			<div class="col-sm-12 row">
				<span class="h2 col-sm-10">공지사항</span>
				<span class="col-sm-2">breadcrumb</span>
			</div>

			<div>
				<form class="form-inline my-2 my-lg-0" action="#" method="post">
					<div class="input-group mt-3 mb-3">
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
							<td><span>${row}</span></td>
							<td><span>구분</span></td>
							<td><a href="#">제목</a></td>
							<td><span>등록일</span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

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
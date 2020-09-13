<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<%@ include file="customerMenu.jsp"%>
	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-10">공지사항</span>
			<span class="col-sm-2">breadcrumb</span>
		</div>

		<%@ include file="noticeSearchNav.jsp"%>

		<div class="container">
			<table class="table text-center table-bordered">
				<thead>
					<tr>
						<th class="col-sm-1">번호</th>
						<th class="col-sm-2">구분</th>
						<th class="col-sm-7">제목</th>
						<th class="col-sm-2">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${searchResult}" >
						<c:set var="seq" value="${row.seq}" />
						<tr>
							<td class="col-sm-1"><span>${seq}</span></td>
							<td class="col-sm-2"><span>구분</span></td>
							<td class="col-sm-7 text-left"><a href="noticeDetail?seq=${seq}">${row.title}</a></td>
							<td class="col-sm-2"><span>${row.regDate}</span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div align="center">
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
						<li class="page-item<c:if test="${pageNumber <= 1}"> disabled</c:if>">
							<a class="page-link" href="?pageNumber=1" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">FirstPage</span>
							</a>
						</li>
						<li class="page-item<c:if test="${pageNumber <= 1}"> disabled</c:if>">
							<a class="page-link" href="?pageNumber=${pageNumber - 1}" aria-label="Previous">
							<span aria-hidden="true">&lt;</span>
							<span class="sr-only">Previous</span></a>
						</li>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<li class="page-item<c:if test="${pageNumber == i}"> active</c:if>">
							<a class="page-link" href="?pageNumber=${i}">${i}</a>
						</li>
					</c:forEach>
					<li class="page-item<c:if test="${pageNumber >= totalPage}"> disabled</c:if>">
						<a class="page-link" href="?pageNumber=${pageNumber + 1}" aria-label="Next">
						<span aria-hidden="true">&gt;</span>
						<span class="sr-only">Next</span></a>
					</li>
					<li class="page-item<c:if test="${pageNumber >= totalPage}"> disabled</c:if>">
						<a class="page-link" href="?pageNumber=${totalPage}" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
						<span class="sr-only">LastPage</span></a>
					</li>
				</ul>
			</nav>
		</div>

	</div>
</article>
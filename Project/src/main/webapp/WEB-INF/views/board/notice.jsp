<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<c:forEach var="row" items="${noticeList}" >
							<c:set var="seq" value="${row.seq}" />
							<tr>
								<td class="col-sm-1"><span>${seq}</span></td>
								<td class="col-sm-2"><span>구분</span></td>
								<td class="col-sm-7 text-left"><a href="noticeDetail?seq=${seq}">${row.content}</a></td>
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
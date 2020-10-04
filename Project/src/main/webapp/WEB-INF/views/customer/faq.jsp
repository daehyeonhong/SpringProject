<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="type" value="${param.type}"/>
<article>
	<%@ include file="customerMenu.jsp"%>
	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-10">자주 찾는 질문</span>
			<span class="col-sm-2">breadcrumb</span>
		</div>

		<!-- Tag List -->
		<div class="container">
			<div class="container">
				<div class="row">
						<%-- <a class="btn btn-${type != 'all' ? 'outline-' : ''}dark col-sm-2" href="?type=all">전체</a> --%>
						<a class="btn btn-${type != '장기' ? 'outline-' : ''}dark col-sm-2" href="?type=장기">장기</a>
						<a class="btn btn-${type != '단기' ? 'outline-' : ''}dark col-sm-2" href="?type=단기">단기</a>
						<a class="btn btn-${type != '전기차' ? 'outline-' : ''}dark col-sm-2" href="?type=전기차">전기차</a>
				</div>
			</div>
			<hr>
		</div>

		<div class="container">
			<div class="container">
				<div class="row">
					<a class="btn h4 btn-outline-info col-sm-2" href="${pageContext.request.contextPath}/customer/service/general">고객상담</a>
					<div class="col-sm-10" align="right">
						<form class="form col-sm-8" action="#" method="post">
							<div class="input-group row">
								<input type="text" class="form-control" name="type" placeholder="검색어를 입력해주세요" />
								<div class="input-group-append">
									<button class="btn btn-secondary" type="submit">검색하기</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div align="center">
			<hr />
		</div>

		<!-- Content List -->
		<div align="center">
			<div class="accordion col-sm-11" id="accordiona">
				<c:forEach var="faqList" items="${faqList}" varStatus="i">
						<div class="card">
							<div class="card-header" id="heading${i.index}">
								<h2 class="mb-0">
									<button class="btn btn-link card-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse${i.index}" aria-expanded="true" aria-controls="collapse${i.index}">
										<span>${faqList.faq_title}</span>
									</button>
								</h2>
							</div>

							<div id="collapse${i.index}" class="collapse" aria-labelledby="heading${i.index}" data-parent="#accordiona">
								<div class="card-body"><span>${faqList.faq_content}</span></div>
							</div>
						</div>
				</c:forEach>
			</div>
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
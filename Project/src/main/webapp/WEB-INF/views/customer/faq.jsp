<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="keyword" value="${param.keyword}"/>
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
						<a class="btn btn-<c:if test="${keyword != 'all'}">outline-</c:if>dark col-sm-2" href="?keyword=all">전체</a>
						<a class="btn btn-<c:if test="${keyword != 'direct'}">outline-</c:if>dark col-sm-2" href="?keyword=direct">다이렉트</a>
						<a class="btn btn-<c:if test="${keyword != 'newLongterm'}">outline-</c:if>dark col-sm-2" href="?keyword=newLongterm">신차장기</a>
						<a class="btn btn-<c:if test="${keyword != 'shortterm'}">outline-</c:if>dark col-sm-2" href="?keyword=shortterm">단기</a>
						<a class="btn btn-<c:if test="${keyword != 'usedLongterm'}">outline-</c:if>dark col-sm-2" href="?keyword=usedLongterm">중고차장기</a>
						<a class="btn btn-<c:if test="${keyword != 'electric'}">outline-</c:if>dark col-sm-2" href="?keyword=electric">전기차</a>
				</div>
			</div>
			<hr>
		</div>

		<div class="container">
			<div class="container">
				<div class="row">
					<a class="btn h4 btn-outline-info col-sm-2" href="${pageContext.request.contextPath}/customer/consultation/customer">고객상담</a>
					<div class="col-sm-10" align="right">
						<form class="form col-sm-8" action="#" method="post">
							<div class="input-group row">
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
			<hr />
		</div>

		<!-- Content List -->
		<div align="center">
			<div class="accordion col-sm-11" id="accordiona">
				<c:forEach var="i" begin="0" end="14">
						<div class="card">
							<div class="card-header" id="heading${i}">
								<h2 class="mb-0">
									<button class="btn btn-link card-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse${i}" aria-expanded="true" aria-controls="collapse${i}">
										<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit,${i}</span>
									</button>
								</h2>
							</div>

							<div id="collapse${i}" class="collapse" aria-labelledby="heading${i}" data-parent="#accordiona">
								<div class="card-body"><span>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra massa massa ultricies mi quis hendrerit dolor magna eget.${i}</span></div>
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
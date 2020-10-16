<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<%@ include file="customerMenu.jsp"%>
	<div class="container col-sm-6">
		<div class="col-sm-12 row">
			<span class="h2 col-sm-10">지점안내</span> <span class="col-sm-2">breadcrumb</span>
		</div>
	
		<div align="right">
				<form class="form col-sm-6" action="#" method="post">
					<div class="input-group">
						<input type="text" class="form-control" name="keyword" placeholder="검색어를 입력해주세요" />
						<div class="input-group-append">
							<button class="btn btn-secondary" type="submit">검색하기</button>
						</div>
					</div>
				</form>
				<hr />
			</div>
	
		<div align="center">
			<c:if test="${type == 'long'}">
				<c:forEach var="i" begin="0" end="29" step="2">
					<div class="row container">
						<div class="col-sm-6">
							<table class="table table-bordered container">
								<thead>
									<tr>
										<td><span>지점명: ${i}지점</span></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<p>주소: ${i}~${i}~${i}~${i}</p>
											<p>연락처: ${i}~${i}~${i}~${i}</p>
										</td>
								</tbody>
							</table>
						</div>
						<div class="col-sm-6">
							<table class="table table-bordered container">
								<thead>
									<tr>
										<td><span>지점명: 지점 ${i}</span></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<p>주소: ${i}~${i}~${i}~${i}</p>
											<p>연락처: ${i}~${i}~${i}~${i}</p>
										</td>
								</tbody>
							</table>
						</div>
					</div>
				</c:forEach>
			</c:if>

			<c:if test="${type != 'long'}">
				<div class="row container">
					<c:forEach var="i" begin="0" end="14">
							<div class="col-sm-6">
								<table class="table table-bordered container">
									<thead>
										<tr>
											<td><span>지점명: ${i}지점</span></td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<p>주소: ${i}~${i}~${i}~${i}</p>
												<p>연락처: ${i}~${i}~${i}~${i}</p>
											</td>
									</tbody>
								</table>
							</div>
					</c:forEach>
				</div>
			</c:if>
		</div>
	</div>
</article>
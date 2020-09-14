<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="searchBy" value="${pageMaker.criteria.searchBy}"/>
<c:set var="keyword" value="${pageMaker.criteria.keyword}"/>
<nav>
	<div align="right">
		<form id="searchForm" class="form col-sm-6" action="/customer/notice" method="get">
			<div class="input-group">
				<div class="input-group-prepend">
					<select class="form-control" name="searchBy">
						<option value="all" ${searchBy eq 'all' ? "selected":""}>전체</option>
						<option value="title" ${searchBy eq 'title' ? "selected":""}>제목</option>
						<option value="content" ${searchBy == 'content' ? "selected":""}>내용</option>
					</select>
				</div>
				<input type="text" class="form-control" name="keyword" placeholder="검색어를 입력해주세요" value="${keyword}" required="required" />
				<input type="hidden" name="pageNumber" value="${pageMaker.criteria.pageNumber}" />
				<div class="input-group-append">
					<button class="btn btn-secondary">검색하기</button>
				</div>
			</div>
		</form>
	</div>
</nav>
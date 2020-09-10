<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="searchBy" value="${param.searchBy}"/>
<c:set var="keyword" value="${param.keyword}"/>
<nav>
	<div align="right">
		<form class="form col-sm-6" action="/customer/noticeSearch" method="get">
			<div class="input-group">
				<div class="input-group-prepend">
					<select class="form-control" name="searchBy">
						<option value="all" ${searchBy == 'all' ? "selected":""}>전체</option>
						<option value="title" ${searchBy == 'title' ? "selected":""}>제목</option>
						<option value="content" ${searchBy == 'content' ? "selected":""}>내용</option>
					</select>
				</div>
				<input type="text" class="form-control" name="keyword" placeholder="검색어를 입력해주세요" value="${keyword}" required="required" />
				<div class="input-group-append">
					<input type="submit" class="btn btn-secondary" value="검색하기" />
				</div>
			</div>
		</form>
	</div>
</nav>
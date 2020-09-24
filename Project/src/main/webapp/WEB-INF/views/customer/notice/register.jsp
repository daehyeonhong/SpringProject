<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="register_date" value="${notice.register_date}" pattern="yyyy-MM-dd"/>
<article>
	<%@ include file="../customerMenu.jsp"%>
	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-10">공지사항</span>
			<span class="col-sm-2">breadcrumb</span>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<form action="/customer/notice/register" method="post">
						<select class="form-control" name="notice_type">
							<option value="0">공통</option>
							<option value="1">장기렌터카</option>
							<option value="2">단기렌터카</option>
						</select>
						<input class="form-control" type="text" name="notice_title" placeholder="title"/>
						<input class="form-control" type="text" name="notice_writer" placeholder="writer" />
						<textarea class="form-control" name="notice_content" rows="5"></textarea>
						<!-- <button data-operation="modify" class="btn btn-info">수정</button> -->
						<button type="submit" class="btn btn-outline-primary">등록</button>
						<button type="reset" class="btn btn-outline-warning">초기화</button>
					</form>
					<button data-operation="list" class="btn btn-outline-danger">글목록</button>
				</div>
			</div>
		</div>
		<form id="operationForm" action="/customer/noticeModify" method="get">
			<input type="hidden" id="notice_seq" name="notice_seq" value="${notice_seq}" />
			<input type="hidden" id="pageNumber" name="pageNumber" value="${pageMaker.criteria.pageNumber}" />
			<input type="hidden" id="searchBy" name="searchBy" value="${pageMaker.criteria.searchBy}" />
			<input type="hidden" id="keyword" name="keyword" value="${pageMaker.criteria.keyword}" />
		</form>

	</div>
</article>
<script type="text/javascript">
	$().ready(function(){
		let operationForm=$("#operationForm");

		$("button[data-operation='modify']").on("click",function(event){
			operationForm.attr("action","/customer/noticeModify").submit();
			});

		$("button[data-operation='list']").on("click",function(event){
			operationForm.find("#notice_seq").remove();
			operationForm.attr("action","/customer/notice/list").submit();
			});
		});
</script>
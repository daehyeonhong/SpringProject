<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="register_date" value="${notice.notice_reg_date}" pattern="yyyy/MM/dd"/>
<article>
	<%@ include file="../customerMenu.jsp"%>
	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-10">공지사항</span>
			<span class="col-sm-2">breadcrumb</span>
		</div>

		<div class="container">
			<table class="table text-center table-bordered">
				<tbody>
					<tr>
						<td><span class="text-warning">[${notice.notice_type}]</span></td>
						<td><span>${notice.notice_title}</span></td>
						<td><span>${register_date}</span></td>
					</tr>
					<tr>
						<td colspan="3">
							<span class="word-break m-5">${notice.notice_content}</span>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<span>${notice.notice_count}</span>
						</td>
						<td>
							<span class="text-primary">좋아요: ${notice.notice_good}</span>
							<span class="text-danger">싫어요: ${notice.notice_bad}</span>
						</td>
					</tr>
				</tbody>
			</table>
			
			<!-- <button data-operation="modify" class="btn btn-info">수정</button> -->
			<button data-operation="list" class="btn btn-outline-secondary">글목록</button>
			
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
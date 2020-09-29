<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
							<span class="text-primary"><i class='far fa-thumbs-up' style='font-size:15px' id='notice_good'>좋아요</i>&nbsp;</span>
							<span>&nbsp;&nbsp;&nbsp;</span>
							<span class="text-danger"><i class='far fa-thumbs-down' style='font-size:15px' id='notice_bad'>싫어요</i>&nbsp;</span>
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

		$("#notice_good,#notice_bad").mouseover(function(){
			$(this).css("cursor","pointer");
		});
		$("#notice_good").click(function(){
			if($(this).attr('class')=="far fa-thumbs-up"){
				$(this).attr("class","fas fa-thumbs-up");
				$("#notice_bad").attr("class","far fa-thumbs-down");
					${notice.notice_good}+1;
					alert(notice.notice_good);
			}else{
				$(this).attr("class","far fa-thumbs-up");
			}
			});
		$("#notice_bad").click(function(){
			if($(this).attr('class')=="far fa-thumbs-down"){
				$(this).attr("class","fas fa-thumbs-down");
				$("#notice_good").attr("class","far fa-thumbs-up");
			}else{
				$(this).attr("class","far fa-thumbs-down");
			}
		});	
	});
</script>
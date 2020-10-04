<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="register_date" value="${ticketPage.regDate}" pattern="yyyy/MM/dd"/>

<article>
	<div class="container col-sm-6">
		<div class="container text-center">
			<span class="h2">[${inquiry.inquiry_seq}]번 문의글</span>
		</div>

		<!-- Nav tabs -->

		<div class="container">
			<div>
				<table class="col-sm-12">
					<tr>
						<td colspan="2"><span class="form-control">제목: ${inquiry.inquiry_title}</span></td>
						<td colspan="1">
							<span class="form-control">날짜:${register_date}</span>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<c:set var="type" value="${inquiry.inquiry_type}" />
						<span class="form-control">${type==1?'장기':type==2?'단기':'일반'}문의</span>
						</td>
						<td colspan="1">
							<span class="form-control">${inquiry.users_id}님</span>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<span class="form-control" style="height: 300px">${inquiry.inquiry_content}</span>
						</td>
					</tr>
					<tr>
						<td colspan="6"><br /><hr /></td>
					</tr>
				</table>
				<div class="container text-center">
					<span class="h2">답변</span>
				</div>
				
				<form action="#" method="post">
					<table class="col-sm-12">
						<tr>
							<td>
								<input class="form-control" type="text" name="answer_title" autofocus="autofocus" required="required" placeholder="답변 제목을 입력하세요" />
							</td>
						</tr>
						<tr>
							<td>
								<span class="form-control">TT ${adminName}</span>
								<input type="hidden" name="answer_writer" value="답변잘해요" />
							</td>
						</tr>
						<tr>
							<td>
								<textarea class="form-control" rows="5" name="answer_content" placeholder="답변 내용 입력" required="required"></textarea>
							</td>
						</tr>
						<tr>
							<td><br /><hr /></td>
						</tr>
					</table>
					<div align="center">
						<input type="submit" class="btn btn-warning" value="신청완료" />
					</div>
				</form>
			</div>
			<hr />
		</div>
	</div>
</article>





<%-- <article>

	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-10">ticket page</span>
			<span class="col-sm-2">ticket page</span>
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
							<span class="word-break m-5"id="iframeContent">${notice.notice_content}asfasfasf</span>
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
			<input type="hidden" id="tno" name="tno" value="${ticketPage.tno}" />
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
			operationForm.find("#tno").remove();
			operationForm.attr("action","/admin/ticket/list").submit();
		});
		
		//////////////////////////////////////////////////
		var hmm = document.getElementById("iframeContent");
		console.log(hmm.innerHTML);
	});
</script> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="register_date" value="${ticketPage.inquiry_reg_date}" pattern="yyyy/MM/dd"/>

<article>
	<div class="container col-sm-6">
		<div class="container text-center">
			<span class="h2">[${ticketPage.inquiry_seq}]번 문의글</span>
		</div>

		<div align="right">
			<button data-operation="list" class="btn btn-outline-secondary">글목록</button>
		</div>

		<!-- Nav tabs -->

		<div class="container">
			<div>
				<table class="col-sm-12">
					<tr>
						<td colspan="2"><span class="form-control">제목: ${ticketPage.inquiry_title}</span></td>
						<td colspan="1">
							<span class="form-control">날짜: ${register_date}</span>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<c:set var="type" value="${ticketPage.inquiry_type}" />
						<span class="form-control">카테고리: ${type==1?'공통':type==2?'장기':'단기'}문의</span>
						</td>
						<td colspan="1">
							<span class="form-control">아이디: ${ticketPage.users_id}</span>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<span class="form-control" style="height: 300px">${ticketPage.inquiry_content}</span>
						</td>
					</tr>
					<tr>
						<td colspan="6"><br /><hr /></td>
					</tr>
				</table>
				<div class="container text-center">
					<span class="h2">답변</span>
				</div>
				
				<form id="answer" action="/admin/ticket/answer" method="post">
					<table class="col-sm-12">
						<tr>
							<td>
								<input class="form-control" type="text" name="answer_title" autofocus="autofocus" 
								required="required" placeholder="답변 제목을 입력하세요" />
							</td>
						</tr>
						<tr>
							<td>
								<span class="form-control">TT_${adminName}</span>
								<input type="hidden" name="answer_writer" value="${adminName}" />
							</td>
						</tr>
						<tr>
							<td>
								<textarea class="form-control" rows="5" name="answer_content" placeholder="답변 내용 입력" 
								required="required"></textarea>
							</td>
						</tr>
						<tr>
							<td><br />
							<hr /></td>
						</tr>	
					</table>
					<div align="center">
						<input type="submit" class="btn btn-warning" value="Send" />
					</div>
				</form>
			</div>
			<hr />
		</div>
	</div>
	
	<div class="container col-sm-6">
		<form id="operationForm" action="/customer/noticeModify" method="get">
			<%-- <input type="hidden" id="inquiry_seq" name="inquiry_seq" value="${ticketPage.inquiry_seq}" /> --%>
			<input type="hidden" id="pageNumber" name="pageNumber" value="${pageMaker.criteria.pageNumber}" />
			<input type="hidden" id="searchBy" name="searchBy" value="${pageMaker.criteria.searchBy}" />
			<input type="hidden" id="keyword" name="keyword" value="${pageMaker.criteria.keyword}" />
		</form>
	</div>
	
</article>

<script type="text/javascript">
	$().ready(function(){
		let operationForm = $("#operationForm");
		let answerForm = $("#answer");

		$("button[data-operation='modify']").on("click",function(event){
			operationForm.attr("action","/customer/noticeModify").submit();
		});

		$("button[data-operation='list']").on("click",function(event){
			operationForm.find("#inquiry_seq").remove();
			operationForm.attr("action","/admin/ticket/list").submit();
		});
		
		$("input[type='submit']").on("click",function(event){
			answerForm.append('<input type="hidden" name="inquiry_seq" value="' + ${ticketPage.inquiry_seq} + '">');
			answerForm.append('<input type="hidden" name="status" value="2">');
			answerForm.attr("method","post");
			answerForm.attr("action","/admin/ticket/answer").submit();
		});
		
		//////////////////////////////////////////////////
		var hmm = document.getElementById("iframeContent");
		console.log(hmm.innerHTML);
	});
</script>
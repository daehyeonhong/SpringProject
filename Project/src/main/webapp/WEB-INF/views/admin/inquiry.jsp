<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<td colspan="3"><span class="form-control">제목: ${inquiry.inquiry_title}</span></td>
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
								<span class="form-control">답변 작성자 ::추후 admin에서 받아와야 함</span>
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
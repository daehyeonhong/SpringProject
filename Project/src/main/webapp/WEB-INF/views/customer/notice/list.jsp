<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<article>
	<%@ include file="../customerMenu.jsp"%>
	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-10">공지사항</span>
			<span class="col-sm-2">breadcrumb</span>
		</div>

		<%@ include file="noticeSearchNav.jsp"%>

		<div class="container">
			<table class="table text-center table-bordered">
				<thead>
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>제목</th>
						<th>조회수</th>
						<th>좋아요:싫어요</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="notice" items="${noticeList}">
						<c:set var="seq" value="${notice.notice_seq}" />
						<fmt:formatDate var="reg_date" value="${notice.notice_reg_date}" pattern="yyyy/MM/dd" />
						<tr>
							<td><span>${seq}</span></td>
							<td><span>${notice.notice_type}</span></td>
							<td class="text-left"><a class="move" href="${seq}">${notice.notice_title}</a></td>
							<td><span>${notice.notice_count}</span></td>
							<td><span><i class='far fa-thumbs-up text-primary' style='font-size:15px'>&nbsp;${notice.notice_good}</i>&nbsp;&nbsp;&nbsp;&nbsp;<i class='far fa-thumbs-down text-danger' style='font-size:15px'>&nbsp;${notice.notice_bad}</i></span></td>
							<td><span>${reg_date}</span></td>
						</tr>	
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div align="center">
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<li class="page-item${pageMaker.criteria.pageNumber <= 1 ? ' disabled' : ''}">
						<a class="page-link" href="1" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
							<span class="sr-only">FirstPage</span>
						</a>
					</li>
					<li class="page-item${pageMaker.previous ? '' : ' disabled'}">
						<a class="page-link" href="${pageMaker.startPage - 1}" aria-label="Previous">
							<span aria-hidden="true">&lt;</span>
							<span class="sr-only">Previous</span></a>
					</li>
					<c:forEach var="number" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="page-item${pageMaker.criteria.pageNumber == number? ' active' : ''}">
							<a class="page-link" href="${number}">${number}</a>
						</li>
					</c:forEach>
					<li class="page-item${pageMaker.next ? '' : ' disabled'}">
						<a class="page-link" href="${pageMaker.endPage +1}" aria-label="Next">
							<span aria-hidden="true">&gt;</span>
							<span class="sr-only">Next</span></a>
					</li>
					<li class="page-item${pageMaker.realEnd == 0 || pageMaker.criteria.pageNumber == pageMaker.realEnd ? ' disabled' : ''}">
						<a class="page-link" href="${pageMaker.realEnd}" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							<span class="sr-only">LastPage</span></a>
					</li>
				</ul>
			</nav>
			<div>
				<button id="registerBtn" type="button" class="btn btn-xs btn-primary">새 글 동록</button>
			</div>
		</div>

		<form id="actionForm" action="/customer/notice/list" method="GET">
			<input type="hidden" name="pageNumber" value="${pageMaker.criteria.pageNumber}" />
			<input type="hidden" name="searchBy" value="${pageMaker.criteria.searchBy}" />
			<input type="hidden" name="keyword" value="${pageMaker.criteria.keyword}" />
		</form>

	</div>
</article>
<script type="text/javascript">
	$().ready(function () {
		let result = '${result}';
		let actionForm = $('#actionForm');

		$('.page-item a').on('click', function (event) {
			event.preventDefault();
			console.log('click');
			actionForm.find('input[name="pageNumber"]').val($(this).attr('href'));
			actionForm.submit();
		});

		$('.move').on('click', function (event) {
			event.preventDefault();
			actionForm.append('<input type="hidden" name="notice_seq" value="' + $(this).attr('href') + '">');
			actionForm.attr('action', '/customer/notice/page');
			actionForm.submit();
		});

		let searchForm = $('#searchForm');
		$('#searchForm button').on('click', function (event) {
			if (!searchForm.find('input[name="keyword"]').val().trim()) {
				alert('키워드를 입력하세요');
				return false;
			}
			searchForm.find('input[name="pageNumber"]').val('1');
			e.preventDefault();
			searchForm.submit();
		});
		

		$('#registerBtn').on('click', function() {
				self.location = '/customer/notice/register'
			});
	});
</script>
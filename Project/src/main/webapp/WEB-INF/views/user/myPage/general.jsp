<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="type" value="${param.inquiry_type}"/>
<article>
	<div class="container col-sm-6">
		<h2>상담내역</h2>
		<br>
		<div class="btn-group col-sm-12" id="serviceNav">
			<a type="button" href="/user/myPage/general?inquiry_type=1" class="btn btn-${type == 1 ? '' : 'outline-'}secondary">일반상담</a>
			<a type="button" href="/user/myPage/general?inquiry_type=2" class="btn btn-${type != 1 ? '' : 'outline-'}secondary">렌터카상담</a>
		</div>
		<div class="text-right">
			<a href="/customer/faq" class="btn btn-outline-dark">자주찾는질문</a>
			<a href="/customer/service/rental" class="btn btn-outline-dark">고객 상담</a>
		</div>
		<hr color="black">
		<div class="container">
		<div class="accordion col-sm-11" id="accordiona">
				<c:choose>
					<c:when test="${fn:length(generalList)==0}">
						문의 글이 없습니다
					</c:when>
					<c:otherwise>
						<c:forEach var="general" items="${generalList}" varStatus="i">
							<c:set var="seq" value="${general.inquiry_seq}" />
							<fmt:formatDate var="reg_date" value="${general.inquiry_reg_date}" pattern="yyyy-MM-dd" />
							<div>
							<div class="card-header" id="heading${i.index}">
								<h2 class="mb-0">
									<button class="btn btn-link card-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse${i.index}" aria-expanded="true" aria-controls="collapse${i.index}">
										문의 번호: <span>${seq}</span>문의글 제목: <span>${general.inquiry_title}</span> 등록일: <span>${reg_date}</span>
									</button>
								</h2>
							</div>

							<div id="collapse${i.index}" class="collapse" aria-labelledby="heading${i.index}" data-parent="#accordiona">
								<div class="card-body"><span>${general.inquiry_content}</span></div>
							</div>
						</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
		</div>
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
		</div>

		<form id="actionForm" action="/user/myPage/inquiry" method="GET">
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
			actionForm.append('<input type="hidden" name="inquiry_seq" value="' + $(this).attr('href') + '">');
			actionForm.attr('action', '/user/myPage/inquiry');
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
	});
</script>
<script type="text/javascript">
function serviceNav(parameter, callback) {
	let sc_seq = parameter.sc_seq;
	let insurance_seq = parameter.insurance_seq;
	let period = parameter.period;
	$.getJSON(
		"/car/reserveAmount/" + sc_seq + "/" + insurance_seq + "/" + period + ".json",
		function (reserve) {
			let html = "";
			html += '<div class="col-sm-6">';
			html += '<form action="/short/detail" id="reserveForm" method="post">';
			html += '<input type="text" name="users_id" value="${users_id}" />';
			html += '<input type="text" name="sc_seq" value="' + reserve.sc_seq + '" />';
			html += '<input type="text" name="total_amount" value="' + reserve.total_amount + '" />';
			html += '<input type="text" name="period" value="' + "${period}" + '" />';
			html += '<input type="text" name="branch_seq" value="${car.branch_seq}" />';
			html += '<input type="text" name="start_date" value="${param.start_date}" />';
			html += '<input type="text" name="end_date" value="${param.end_date}" />';
			html += '<input type="text" name="end_date" value="${param.end_date}" />';
			html += '<input type="text" name="insurance_seq" value="' + insurance_seq + '" />';
			html += "</form>";
			html += "<input id='reserveBtn' class='btn btn-outline-warning' type='button' onclick='reserveConfirm()' value='예약' /></div>";
			$("#reserveAmount").html(html);
		}
	);
}
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="searchBy" value="${pageMaker.criteria.searchBy}"/>
<c:set var="keyword" value="${pageMaker.criteria.keyword}"/>

<article>

	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-8">티켓</span>
			<span class="col-sm-4">
				<a href="/admin/index">Index</a> &raquo;
				<a href="/admin/ticket/list">Ticket List</a>
			</span>
		</div>

<nav>
	<div align="right">
		<form id="searchForm" class="form col-sm-6" action="/admin/ticket/list" method="get">
			<div class="input-group">
				<div class="input-group-prepend">
					<select class="form-control" name="searchBy">
						<option value="TC" ${searchBy eq 'TC' ? "selected":""}>전체</option>
						<option value="T" ${searchBy eq 'T' ? "selected":""}>제목</option>
						<option value="C" ${searchBy eq 'C' ? "selected":""}>내용</option>
					</select>
				</div>
				<input type="text" class="form-control" name="keyword" placeholder="검색어를 입력해주세요" value="${keyword}"/>
				<input type="hidden" name="pageNumber" value="${pageMaker.criteria.pageNumber}" />
				<div class="input-group-append">
					<button class="btn btn-outline-secondary">검색하기</button>
				</div>
			</div>
		</form>
	</div>
</nav>

		<div class="container">
			<table class="table text-center table-bordered">
				<thead>
                    <tr>
                      <th>Ticket Number</th>
                      <th>Category</th>
                      <th>Title</th>						<!-- hover content later if possible -->
                      <th>ID</th>
                      <th>Registered date</th>
                      <th>Status</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Ticket Number</th>
                      <th>Category</th>
                      <th>Title</th>
                      <th>ID</th>
                      <th>Registered date</th>
                      <th>Status</th>
                    </tr>
                  </tfoot>
				 <tbody>
                  	<c:forEach items="${ticketList}" var="ticket">
                  	<tr>
                      <td>${ticket.inquiry_seq}</td>
                      <td>
                      	<c:if test="${ticket.inquiry_type==1}">
                      		<c:out value="공통"/>
                      	</c:if>
                      	<c:if test="${ticket.inquiry_type==2}">
                      		<c:out value="장기"/>
                      	</c:if>
                      	<c:if test="${ticket.inquiry_type==3}">	
                      		<c:out value="단기"/>
                      	</c:if>
                      </td>
                      <td><a class="move" href="${ticket.inquiry_seq}">${ticket.inquiry_title}
                      	<%-- <iframe class="description"src="/admin/ticket/page?inquiry_seq=${ticket.inquiry_seq}"
                      	scrolling="no"id="pageIframe"></iframe> --%></a>
                      </td>
                      <td>${ticket.users_id}</td>
                      <td>${ticket.inquiry_update}</td>
                      <td>
                      	<c:if test="${ticket.status==1}">
                      		<font color="#e74a3b"><c:out value="Waiting"/></font>
                      	</c:if>
                      	<c:if test="${ticket.status==2}">
                      		<c:out value="Pending..."/>
                      	</c:if>
                      	<c:if test="${ticket.status==3}">	<!-- may not be needed cuz its solved aldy -->
                      		<c:out value="Solved"/>
                      	</c:if>
                      </td>
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
		</div>

		<form id="actionForm" action="/admin/ticket/list" method="GET">
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
			actionForm.attr('action', '/admin/ticket/page');
			actionForm.submit();
		});

		let searchForm = $('#searchForm');
		$('#searchForm button').on('click', function (event) {
			/* if (!searchForm.find('input[name="keyword"]').val().trim()) {
				alert('키워드를 입력하세요');
				return false;
			} */
			searchForm.find('input[name="pageNumber"]').val('1');
			e.preventDefault();
			searchForm.submit();
		});

		$('#registerBtn').on('click', function() {
				self.location = '/customer/notice/register'
			});

		//preview page
		var iframee = document.getElementById("pageIframe");
		var innerDoc = iframee.contentDocument || iframee.contentWindow.document;
		
		var hmm = innerDoc.getElementById("iframeContent");

		
		
		$(".move").mouseover(function(){
			$(this).children(".description").show();
			//$("#pageIframe").load("/admin/ticket/page?tno=${ticket.tno} #iframeContent").show();

			
		}).mouseout(function(){
			$(this).children(".description").hide();
		});
	});
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

	<!-- Main Content -->
	<div id="content">

		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<h1 class="h3 mb-2 text-gray-800">Tickets</h1>

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Ticket List</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Ticket Number</th>
									<th>Category</th>
									<th>Title</th>
									<!-- hover content later if possible -->
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
										<td>${ticket.tno}</td>
										<td>${ticket.category}</td>
										<td><a class="move" href="${ticket.tno}">${ticket.title}
												<iframe class="description"
													src="/admin/ticketPage?tno=${ticket.tno}"></iframe>
										</a></td>
										<td>${ticket.userId}</td>
										<td>${ticket.regDate}</td>
										<td><c:if test="${ticket.status==1}">
												<font color="#e74a3b"><c:out value="Waiting" /></font>
											</c:if> <c:if test="${ticket.status==2}">
												<c:out value="Pending..." />
											</c:if> <c:if test="${ticket.status==3}">
												<!-- may not be needed cuz its solved aldy -->
												<c:out value="Solved" />
											</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class='row'>
							<div class="col-lg-12">

								<form id='searchForm' action="/ticket/ticketList" method='get'>
									<select name='type'>
										<option value=""
											<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
										<option value="T"
											<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
										<option value="C"
											<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
										<option value="W"
											<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
										<option value="TC"
											<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목
											or 내용</option>
										<option value="TW"
											<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목
											or 작성자</option>
										<option value="TWC"
											<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목
											or 내용 or 작성자</option>
									</select> <input type='text' name='keyword'
										value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
										type='hidden' name='pageNum'
										value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
										type='hidden' name='amount'
										value='<c:out value="${pageMaker.cri.amount}"/>' />
									<button class='btn btn-default'>Search</button>
								</form>
							</div>
						</div>

						<!-- <div class="panel-body"></div> -->
						<!-- delete later if not used -->

						<div class='pull-right'>
							<ul class="pagination">

								<%-- 이전 페이지 표시 --%>
								<c:if test="${pageMaker.prev}">
									<li class="paginate_button previous"><a
										href="${pageMaker.startPage -1}">Previous</a></li>
								</c:if>

								<%-- 페이지 리스트 출력 --%>
								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
										<a href="${num}">${num}</a>
									</li>
								</c:forEach>

								<%-- 다음 페이지 표시  --%>
								<c:if test="${pageMaker.next}">
									<li class="paginate_button next"><a
										href="${pageMaker.endPage +1 }">Next</a></li>
								</c:if>

							</ul>
						</div>
						<!--  end Pagination -->

						<form id='actionForm' action="/ticket/ticketList" method='get'>
							<input type='hidden' name='pageNum'
								value='${pageMaker.cri.pageNum}'> <input type='hidden'
								name='amount' value='${pageMaker.cri.amount}'> <input
								type='hidden' name='type'
								value='<c:out value="${ pageMaker.cri.type }"/>'> <input
								type='hidden' name='keyword'
								value='<c:out value="${ pageMaker.cri.keyword }"/>'>
						</form>

					</div>
				</div>
			</div>

		</div>
		<!-- /.container-fluid -->

	</div>
	<!-- End of Main Content -->

</div>
<!-- End of Content Wrapper -->



<script type="text/javascript">
	$(document).ready(
			function() {

				var result = '<c:out value="${result}"/>';//입력,수정,삭제 결과 rttr.addFlashAttribute("result","success");

				checkModal(result);

				//html5에서 추가된 함수
				history.replaceState({}, null, null);//false

				function checkModal(result) {

					if (result === '' || history.state) {// 글목록으로 바로 진입했거나, history.back으로 이동시 모달창을 띄우지 않음.
						return;
					}

					//새글 입력후 결과값이 넘어오면 처리 
					if (parseInt(result) > 0) {
						$(".modal-body").html(
								"게시글 " + parseInt(result) + " 번이 등록되었습니다.");
					}

					$("#myModal").modal("show");
				}//

				$("#regBtn").on("click", function() {

					self.location = "/board/register";

				});

				var actionForm = $("#actionForm");

				$(".paginate_button a").on(
						"click",
						function(e) {

							e.preventDefault();// 페이지 이동 막기

							console.log('click');

							actionForm.find("input[name='pageNum']").val(
									$(this).attr("href"));//이동 페이지 설정
							actionForm.submit();
						});

				var searchForm = $("#searchForm");

				$("#searchForm button").on("click", function(e) {
					if (!searchForm.find("option:selected").val()) {
						alert("검색종류를 선택하세요");
						return false;
					}

					if (!searchForm.find("input[name='keyword']").val()) {
						alert("키워드를 입력하세요");
						return false;
					}

					searchForm.find("input[name='pageNum']").val("1");//pageNum에 값을 1로 세팅
					e.preventDefault();

					searchForm.submit();
				});

			});
</script>

<script>
	/* no longer used */
	var f = document.createElement("form");

	f.setAttribute("id", "tListForm");
	f.setAttribute("method", "get");
	f.setAttribute("action", "/admin/ticketPage");

	document.getElementsByTagName("body")[0].appendChild(f);
</script>

<script>
	$()
			.ready(
					function() {
						var actionForm = $("#actionForm");

						$(".move")
								.on(
										"click",
										function(e) {
											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='tno' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/admin/ticketPage");
											actionForm.submit();
										});

						//preview page
						$(".move").mouseover(function() {
							$(this).children(".description").show();
						}).mouseout(function() {
							$(this).children(".description").hide();
						});
					});
</script>
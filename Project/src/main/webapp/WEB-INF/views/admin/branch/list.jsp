<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
<br>
<br>
<br>
<br>
<div class="container col-sm-6">
<form>

<!--
<div class="container card  bg-light">
<br>

 <div class="row">
	<div class="col-sm-10">
		<div class="row">
				<div class="col">
      				<div class="container input-group">
        				<input type="text" class="row form-control" placeholder="Search" name="search">
      			</div>
			</div>
		</div>
	<br>
		<div class="row col-sm-12">
			<div class="col-sm-1" style="font-weight: bold;margin:0%;padding:0%;">지역</div>
			<div class="col-sm-1" style="margin:0%;padding:0%;font-weight: bold;">내륙 :</div>
			<div class="col-sm-10">
				<div class="row">
				<div class="col"><input type="checkbox" name="location0" value="seoul">서울</div>
				<div class="col"><input type="checkbox" name="location0" value="gyeonggi">경기</div>
				<div class="col"><input type="checkbox" name="location0" value="kangwon">강원</div>
				<div class="col"><input type="checkbox" name="location0" value="chungcheong ">충청</div>
				<div class="col"><input type="checkbox" name="location0" value="gyeongsang">경상</div>
				<div class="col"><input type="checkbox" name="location0" value="jeolla">전라</div>
				</div>
			</div>
		</div>
		<div class="row col-sm-12">
			<div class="col-sm-1" style="font-weight: bold;margin:0%;padding:0%;"></div>
			<div class="col-sm-1" style="margin:0%;padding:0%;font-weight: bold;">제주 :</div>
			<div class="col-sm-10">
				<div class="row">
				<div class="col"><input type="checkbox" name="location0" value="seoul">제주</div>
				</div>
			</div>
		</div>
		<hr>
		<div class="row col-sm-12" >
			<div class="col-sm-1" style="font-weight: bold;margin:0%;padding:0%;">정비</div>
				<div class="col-sm-1" style="margin:0%;padding:0%;font-weight: bold;"></div>
			<div class="col-sm-10">
				<div class="row">
				<div class="col-sm-2"><input type="checkbox" name="location1" value="yes1">유</div>
				<div class="col-sm-2"><input type="checkbox" name="location1" value="no1">무</div>
				</div>
			</div>
		</div>
		<hr>
		<div class="row col-sm-12" >
			<div class="col-sm-1" style="font-weight: bold;margin:0%;padding:0%;">전기차</div>
			<div class="col-sm-1" style="margin:0%;padding:0%;font-weight: bold;"></div>
			<div class="col-sm-10">
				<div class="row">
				<div class="col-sm-2"><input type="checkbox" name="location2" value="yes2">유</div>
				<div class="col-sm-2"><input type="checkbox" name="location3" value="no2">무</div>
				</div>
			</div>
		</div>
	</div>col-sm-10
	<div class="col-sm-2  bg-light">
					
         	         <button class="row col container btn btn-outline-warning bg-white" type="submit" style="height:45%">    	 
         				 검색
         			 </button>
         			 <div class="row"style="height:10%"></div> 
         			 <button class="row col container btn btn-outline-warning bg-white" type="submit" style="height:45%">    	 
         				 초기화 
         			 </button>
	</div>
</div> -->
<br>
</div>
</form>
<br>
<br>
  <table class="table table-striped">
    <thead>
      <tr class="text-center">
        <th>NO</th>
        <th>NAME</th>
        <th>PHONE</th>
        <th>ADDRESS</th>
        <th>GPS</th>
        <th>MAINTENANCE</th>
        <th>ELECTRIC</th>
        <th>TYPE</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${branchList}" var="branch">           
      <tr class="text-center">
        <td>${branch.branch_seq}</td>
   	    <td>${branch.branch_name}</td>
        <td>${branch.branch_phone}</td>
        <td>${branch.branch_address}</td>
        <td>${branch.gps} ${branch.gps2}</td>
        <td>
        	<c:if test="${branch.maintenance==0}">
        		<c:out value="무"/>
        	</c:if>
        	<c:if test="${branch.maintenance==1}">
        		<c:out value="유"/>
        	</c:if>  	
        </td>
        <td>
        	<c:if test="${branch.electric==0}">
        		<c:out value="무"/>
        	</c:if>
        	<c:if test="${branch.electric==1}">
        		<c:out value="유"/>
        	</c:if>         	
        </td>
        <td>
        	<c:if test="${branch.branch_type==0}">
        		<c:out value="내륙"/>
        	</c:if>
        	<c:if test="${branch.branch_type==1}">
        		<c:out value="제주"/>
        	</c:if> 
        </td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  
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
	
	<form id="actionForm" action="/admin/branch/list" method="GET">
			<input type="hidden" name="pageNumber" value="${pageMaker.criteria.pageNumber}" />
			<input type="hidden" name="searchBy" value="${pageMaker.criteria.searchBy}" />
			<input type="hidden" name="keyword" value="${pageMaker.criteria.keyword}" />
	</form>
  
</div>
</article>

<script>
$().ready(function () {
	let actionForm = $('#actionForm');

	$('.page-item a').on('click', function (event) {
		event.preventDefault();
		console.log('click');
		actionForm.find('input[name="pageNumber"]').val($(this).attr('href'));
		actionForm.submit();
	});

	//later for page
	$('.move').on('click', function (event) {
		event.preventDefault();
		actionForm.append('<input type="hidden" name="tno" value="' + $(this).attr('href') + '">');
		actionForm.attr('action', '/admin/ticket/page');
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

	//preview page
	var iframee = document.getElementById("pageIframe");
	var innerDoc = iframee.contentDocument || iframee.contentWindow.document;
	
	var hmm = innerDoc.getElementById("iframeContent");

	
	$(".move").mouseover(function(){
		$(this).children(".description").show();
		
	}).mouseout(function(){
		$(this).children(".description").hide();
	});
});
</script>
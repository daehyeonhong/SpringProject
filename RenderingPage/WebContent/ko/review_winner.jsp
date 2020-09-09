<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰(분기별)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.0/css/bootstrap.min.css">
</head>
<body>
<!--  홈바 -->
<%@ include file="z_home.jsp"%>
<div class="container col-sm-6">
<!--후기 가이드라인 -->
<div class="form-group border">
    	<fieldset>
    		<legend align="center"><h1>Review Winner</h1></legend>		 		
    			   	<br>
    			   	<div  style="text-align: center; color:#7A7A7A;">
    			   	<b>봄,여름,가을,겨울시즌마다 포토후기를 써주신 고객들 중 네분을 추첨하여 TT렌터카 적립금 30000만원을 드립니다.</b>
    			   	</div>
    	</fieldset>
    	</div>



<div class="container">
<!-- 리뷰메뉴바 -->
<nav class="navbar navbar-expand-sm bg-light navbar-light">
  <ul class="container navbar-nav">
    <li class="nav-item active">    
      <a class="nav-link" href="review_photo.jsp">포토리뷰</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="review_text.jsp">글리뷰</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="review_winner.jsp">리뷰위너</a>
    </li>
  </ul>
</nav>

<!-- 위너창  -->
	<c:forEach begin="0" end="2">
	<div class="nav navbar-secondary bg-secondary">2020년 Review Winner</div>
	<div class="row">
	<c:forEach begin="0" end="3">
		<table class="col-sm-3" style="width: 100%;">
			<tr>
				<td class="col-sm-12">
	 					<div class="card"><!-- style="border:1px solid red;" -->
	   				<img class="card-img-top" src="./resources/images/king.PNG " width="100%" onclick="location.href='./review_winnerDetail.jsp'">
	  					 <div class="card-body" align="center">
	    					 <p class="card-text">SUMMER WINNER</p>
	  					 </div>
					 </div>
					 <br>
	  			</td>
	  		</tr>
		</table>	
</c:forEach>
</div>
</c:forEach>
</div>
<!-- 페이지쪽수 -->
	<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" href="#pre"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
				</a></li>
				<c:forEach var="i" begin="1" end="10">
					<li class="page-item">
						<a class="page-link" href="#">${i}</a>
					</li>
				</c:forEach>
				<li class="page-item"><a class="page-link" href="#next"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
						class="sr-only">Next</span>
				</a></li>
			</ul>

</div>
</body>
</html>
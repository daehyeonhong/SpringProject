<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>올해의 리뷰</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.0/css/bootstrap.min.css">
</head>
<body>
<div class="container col-sm-8">
<!--후기 가이드라인 -->

<!-- 리뷰메뉴바 -->
<nav class="navbar navbar-expand-sm bg-light navbar-light">
  <ul class="container navbar-nav">
    <li class="nav-item active">    
      <a class="nav-link" href="review.jsp">포토리뷰</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="review_text.jsp">글리뷰</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="review_winner.jsp">리뷰위너</a>
    </li>
  </ul>
</nav>

<c:forEach var="i" begin="1" end="3">
<div class="shadow p-4 mb-4 bg-light">
<hr>
	<div class="row">
			<div class="col-sm-6">
			<span class="badge badge-warning" style="width:100%;">ID : IIII 님<br></span>
			<img src="./resources/images/car.jpg" width="100%;" height="90%"></div>
			
			
			<div class="col-sm-6">
			<table>
			<tr class="row">
			<td class="col"></td>
			<td>
			<div class="imageimage" onclick="location.href='./branch_product.jsp'" style="width:150px">
			<div class="top bg-info" align="center">자세히 보기
			<img src="./resources/images/car.jpg" width="150px">
			</div>
			</div>
			</td>
			</tr>
			<tr>
			<td class="col" colspan="2">
			<!-- <div class="row"> -->
			<br>
			<br>
			<br>
			<div class="bottom">			
			<h4>람보르기니</h4>
      			<p>너무 좋아요 너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요</p>
    		</div>
			</td>
			</tr>
			</table>
	</div>
 <br>
</div>
</div>

<!-- 반전효과주기 -->
<div class="shadow p-4 mb-4 bg-light">
<hr>
	<div class="row">
			<div class="col-sm-6">
			<table>
			<tr class="row">
			<td class="col">
			<div class="imageimage" onclick="location.href='./branch_product.jsp'" style="width:150px">
			<div class="top bg-info" align="center">자세히 보기
			<img src="./resources/images/car.jpg" width="150px">
			</div>
			</div>
			</td>
			<td>
			</td>
			</tr>
			<tr>
			<td class="col" colspan="2">
			<!-- <div class="row"> -->
			<br>
			<br>
			<br>
			<div class="bottom">			
			<h4>람보르기니</h4>
      			<p>너무 좋아요 너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요너무 좋아요</p>
    		</div>
			</td>
			</tr>
			</table>
			</div>
	
			<div class="col-sm-6">
			<span class="badge badge-warning" style="width:100%;">ID : IIII 님<br></span>
			<img src="./resources/images/car.jpg" width="100%;" height="90%"></div>
			
			
 <br>
</div>
</div>
</c:forEach>


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
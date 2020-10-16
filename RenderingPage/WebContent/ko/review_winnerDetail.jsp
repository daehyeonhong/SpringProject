<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.0/css/bootstrap.min.css">
</head>
<body>
<div class="container col-sm-6">
<div class="container">
<br>
<br>
<table style="width: 100%;">
<tr class="row" style="text-align: center;">
<td class="col-sm-4"></td>
<td class="col-sm-4 border" width="100%">
<img src="./resources/images/camera.PNG" width="50%">
		<div class="card" style="border: none;">
		<h1>REVIEW</h1>
		<h1>WINNER</h1>
		</div>
</td>
<td class="col-sm-4"></td> 
</tr>
<tr>
<td colspan="3" align="center">
<br>
<h4>TT렌터카 2020년 SUMMER 리뷰</h4>
</td>
</tr>
</table>

<br>
<c:forEach var="i" begin="1" end="2">
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
			<div class="imageimage" onclick="location.href='../lim/product.jsp'" style="width:150px">
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
			<div class="imageimage" onclick="location.href='../lim/product.jsp'" style="width:150px">
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
</div>
</div>
</body>
</html>
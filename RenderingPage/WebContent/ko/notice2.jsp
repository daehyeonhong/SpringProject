<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>공지사항</title>
</head>
<!-- <link rel="stylesheet" href="./resources/css/bootstrap.min.css" /> -->
<style>
	tr{
		height:50px;
	}
</style>
<body>
<%@include file="mainBar.jsp"%>	
<%@include file="customerCenterBar.jsp"%>	
<div class="container">
<br>
 <br>
<h1>공지사항</h1>
<br>

    <!-- <div class="dropdown-menu">
      <a class="dropdown-item" href="#">전체</a>
      <a class="dropdown-item" href="#">제목</a>
      <a class="dropdown-item" href="#">내용</a>
     </div> -->
 <div class="container mt-3">  
  <div class="input-group-append float-right" >
   <div class="dropdown">
    <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown">
     전체
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">전체</a>
      <a class="dropdown-item" href="#">제목</a>
      <a class="dropdown-item" href="#">내용</a>
    </div>
  </div>
  <input type="text"  class="radius" placeholder="검색어를 입력해주세요."/>
   <button class="btn btn-warning" >검색</button>
  </div>
  </div>
  <br>
  <br>
 
  <hr style="border: solid 1px light; ">
  <table cellspacing="0" cellpadding="0" style="width:100%; text-align:center;">
		<tr bgcolor="#FAFAFA"> <!-- style="height:50px; -->
			<th width="10%">번호</th>
		 	<th width="20%">구분</th>
		 	<th width="50%">제목</th>
		 	<th width="20%">등록일</th>
		</tr>
		<tr>
			<td>01</td>
			<td>장기렌터카</td>
			<td>20년 8월 2차 리콜 서비스 대상 차량 안내 N</td>
			<td>2020-08-20</td>
		</tr>
	</table>
<br>
<nav aria-label="Page navigation example" >
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#pre" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#1">1</a></li>
    <li class="page-item"><a class="page-link" href="#2">2</a></li>
    <li class="page-item"><a class="page-link" href="#3">3</a></li>
    <li class="page-item"><a class="page-link" href="#4">4</a></li>
    <li class="page-item"><a class="page-link" href="#5">5</a></li>
    <li class="page-item"><a class="page-link" href="#6">6</a></li>
    <li class="page-item"><a class="page-link" href="#7">7</a></li>
    <li class="page-item"><a class="page-link" href="#8">8</a></li>
    <li class="page-item"><a class="page-link" href="#9">9</a></li>
    <li class="page-item"><a class="page-link" href="#10">10</a></li>
    <li class="page-item">
      <a class="page-link" href="#next" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
<br>
  
 </div>
 <br>
 <br>
 <br>
<%@include file="footer.jsp"%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%@include file="mainBar.jsp"%>	
<%@include file="customerCenterBar.jsp"%>	
<br>
<br>
<div class="container">
<h1>지점안내</h1>
<br>
<br>
	<nav class="navbar navbar-expand-md bg-light navbar-light">
  <ul class="container navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">단기렌터카 지점안내</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">장기렌터카 상담센터</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">TT렌터카 정비매장</a>
    </li>

  </ul>
  </nav>
  
  <br>

 <div class="input-group-append float-right" >
  <input type="text" class="form-control" placeholder="지점명을 입력해주세요." />
  <button class="btn btn-success" type="submit" >검색</button>  
  </div> 
  
<br>
<br>
<br>

<nav class="navbar navbar-expand-md bg-white navbar-light"  style="margin:0;">
  <ul class="container navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">전체</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">서울</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">경기</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">충청</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">강원</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">경상</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">전라</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">제주</a>
    </li>
  </ul>
  </nav>
<hr style="margin:0;">
<br><br>

<!-- 지점리스트 -->
<!--  <div class="card">
  <img class="card-img-top" src="./resources/images/plusIcon.gif" style="width:20px;">
    <div class="card-body">
      
      <h4 class="card-title">강남지점</h4>
      <p class="card-text">서울시 강남구 역삼동 1-1</p>
    </div> -->
  
  <table style="width:100%;">
      	<tr>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
    		 <a href="#detail_branch"><span class="glyphicon glyphicon-new-window float-right"></span> </a>
      		 <h4 class="card-title">강남지점</h4>
     		<p class="card-text">서울시 강남구 역삼동 1-1</p>
    		</div>
    		</div>
      	</td>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
    		 <a href="#detail_branch"><span class="glyphicon glyphicon-new-window float-right"></span> </a>
      		 <h4 class="card-title">강남지점</h4>
     		<p class="card-text">서울시 강남구 역삼동 1-1</p>
    		</div>
    		</div>
      	</td>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
    		 <a href="#detail_branch"><span class="glyphicon glyphicon-new-window float-right"></span> </a>
      		 <h4 class="card-title">강남지점</h4>
     		<p class="card-text">서울시 강남구 역삼동 1-1</p>
    		</div>
    		</div>
      	</td>
 		</tr>
 		<tr>
 		<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
    		 <a href="#detail_branch"><span class="glyphicon glyphicon-new-window float-right"></span> </a>
      		 <h4 class="card-title">강남지점</h4>
     		<p class="card-text">서울시 강남구 역삼동 1-1</p>
    		</div>
    		</div>
      	</td>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
    		 <a href="#detail_branch"><span class="glyphicon glyphicon-new-window float-right"></span> </a>
      		 <h4 class="card-title">강남지점</h4>
     		<p class="card-text">서울시 강남구 역삼동 1-1</p>
    		</div>
    		</div>
      	</td>
      <td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
    		 <a href="#detail_branch"><span class="glyphicon glyphicon-new-window float-right"></span> </a>
      		 <h4 class="card-title">강남지점</h4>
     		<p class="card-text">서울시 강남구 역삼동 1-1</p>
    		</div>
    		</div>
      	</td>
 		</tr>
</table>
 
 <!-- 페이지 쪽수  -->
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

</div>
<br>
<%@include file="footer.jsp"%>
</body>
</html>
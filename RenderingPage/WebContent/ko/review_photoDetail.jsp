<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포토리뷰</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.0/css/bootstrap.min.css">
</head>
<body>
<br>
<br>
<div class="container col-sm-6">
<div class="row">
<!-- 포토리뷰창 -->
<div class="col-sm-12">
	<table style="width:100%;">
		<tr style="height: 100%">
			<td>
  					<div class="card">
    				<img class="card-img-top" src="./resources/images/car.jpg" alt="Card image" style="width:100%; height:50%;">
   					 <div class="card-body">
     					 <div class="float-right">평점 : 5</div>
     					  <span class="col-sm-3" style="font-size: 10px;">강남지점</span>
     					  <div class="row input-group-append">
     					 <h6 class="col-sm-9">람보르기니 좋아요</h6>
     					 </div>
     					 <hr>
     					 <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
      					<hr>
 				 <span id="id" style="width: 50%">
 				 ID:all1
 				 <p id="date1" class="float-right"></p>
 				 </span>
   					 </div>
 				 </div>
 				 <br>
  			</td>
  			<td>
	</table>	
</div>	
</div>
</div>
<script>
let d = new Date();
document.getElementById("date1").innerHTML = d.getFullYear()+'/'+d.getMonth()+'/'+d.getDate();
</script>
</body>
</html>
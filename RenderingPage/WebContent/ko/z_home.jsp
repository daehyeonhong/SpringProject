<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈바</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
	  $("#short_term").mouseover(function(){
		 $(this).css("cursor","pointer");
	   	 $("#pp").slideDown("fast");
	  });
	   $("#pp").mouseleave(function(){
	    $(this).slideUp("fast");
	  });
	  $("#myPage").mouseover(function(){
		 $(this).css("cursor","pointer");
	   	 $("#review").slideDown("fast");
	  });
	   $("#review").mouseleave(function(){
	    $(this).slideUp("fast");
	  });
	});

</script>
<style>
	#nav1{
		font-size: 14px;
	}
</style>
</head>
<body>
<div class="bg-white" align="center" style="margin:0px; height:80px; " id="menuBar">
<br>
  <div class="row container col-sm-8">
  <div class="col-sm-3"><h3 style="color:orange;">TT렌터카</h3></div>
  <div class="col-sm-2" id="long_term"><h5>장기렌터카</h5></div>
  <div class="col-sm-2" align="center">
  <div class="dropdown-toggle" id="short_term" onclick="location.href='shortTerm_jeju.jsp'"><h5>단기렌터카</h5></div>
  		<div class="container dropdown-menu" id="pp">
     		 <a class="dropdown-item" href="shortTerm_guideline1.jsp">단기렌터카 안내</a>
     		 <a class="dropdown-item" href="shortTerm_guideline2.jsp">요금/할인 안내</a>
     		 <a class="dropdown-item" href="shortTerm_guideline3.jsp">전기차 안내</a>
     		 <a class="dropdown-item" href="shortTerm_guideline4.jsp">보험대차 안내</a>
   	    </div>
  </div>
  <div class="col-sm-2" id="used"><h5>중고렌터카</h5></div>
  <div class="col-sm-3" style="color:silver;">
  	<div class="row">
  		<b id="nav1" class="col-sm-4">로그인</b>
		<b id="nav1" class="col-sm-4" style="text-align: center;"><span class="dropdown-toggle" id="myPage">마이페이지<br></span></b>
			<div class="container dropdown-menu" id="review">
     		 <a class="dropdown-item" href="review_photo.jsp" style="text-align: center;">리뷰</a>
   	 	   </div>
		<b id="nav1" class="col-sm-4">고객센터</b>
	</div>
  </div>
</div>
</div>
  <div class="progress" style="height: 2px;">
    <div class="progress-bar bg-danger" style="width:50%"></div>
    <div class="progress-bar bg-warning" style="width:50%"></div>
  </div><br>

</body>
</html>
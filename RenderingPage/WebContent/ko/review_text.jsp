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
<!--  홈바 -->
<%@ include file="z_home.jsp"%>
<div class="container col-sm-6">

<!--후기 가이드라인 -->
<div class="form-group" style="background-color: #FFF4F0;">
    	<fieldset>
    		<legend align="center"><h1>Review Guideline</h1></legend>
    		 		<div class="row">
    		 		<div class="col-sm-3"></div>
    		 			 <div class="card bg-light float-left col-sm-2">
     					 <div class="card-body text-center">
     					 <div class="image-top">
     					 <img src="./resources/images/pen.PNG" width="65%">
     					 </div>
     					   <h6 class="card-text"><br>글 후기</h6>
     					   	 <b>5000 won</b>
    					</div>
    					</div>
    		              <div class="card bg-light float-left col-sm-2">
     					 <div class="card-body text-center">
     					 <div class="image-top">
     					 <img src="./resources/images/camera.PNG" width="100%" >
     					 </div>
     					   <h6 class="card-text"><br>사진 후기</h6>
     					   	 <b>10000 won</b>
      					  </div>
    					</div>
    					 <div class="card bg-light float-left col-sm-2">
     					 <div class="card-body text-center">
     					 <div class="image-top">
     					 <img src="./resources/images/king.PNG" width="100%" >
     					 </div>
     					   <h6 class="card-text"><br>올해의 후기</h6>
     					   	 <b>30000 won</b>
      					  </div>
    			   		 </div>
    			   		 <div class="col-sm-3"></div>
    			   	</div>
    			   	<br>
    			   	<br>
    		 		<div class="row">
    		 	 <div class="col-sm-6" style="border-right: 2px solid white;">
     					 <div class="card-body col-sm-12" style="background-color: #FFF4F0; width:100%;">
     					 <h5 class="text-center">[적립금 지급 관련 공지사항]</h5>
     					   <ul class="card-text">
     					   	<li>300만원 이하 상품인 경우 최대 30000원지급</li>
    		 				<li>후기적립금은 상품 예약 수 당 1회로 지급</li>
    		 				<li>글자 수가 100자 이상 되어야 함</li>
    		 				<li>후기 적립금은 휴먼 적립금으로 전환시 소멸됩니다.</li>
     					   </ul> 
    					</div>
    					</div>
    
    					<div class="col-sm-6">
     					 <div class="card-body col-sm-12" style="background-color: #FFF4F0; width:100%;">
     					 <h5 class="text-center">[적립금 지급이 되지 않는 경우]</h5>
     					 <ul class="card-text">
     					   	<li>구매내역을 확인할 수 없는 경우</li>
    		 			<li>렌트 수령 후 7일이 지난 경우</li>
    		 			<li>할인 적용 상품후기는 적립금 지급 제외(쿠폰 포함)</li>
    		 			<li>운영자 판단으로 상품을 알아볼 수 없는 후기</li>
    		 			<li>성의 없는 후기는 적립금 지급 제외</li>
     					   </ul> 
    					</div>
    			 </div> 
    			 </div>
    	</fieldset>
    	</div>
    	
<!-- 리뷰 메뉴바-->
<div class="container">
<nav class="navbar navbar-expand-sm bg-light navbar-light"><!--  style="text-align: center;" --><!--  style="position:fixed;" -->
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
</div>

<div class="container col-sm-12">
<nav class="navbar navbar-inverse" style="border:1px solid orange">
  <div class="container-fluid row">
    <div class="navbar-header col-sm-2" style="font-size: 14px;">
             카테고리별 보기
    </div>
    <ul class="nav navbar-nav navbar-left col-sm-5">
    	<li><select class="form-control row" id="sel1" style="width: 100%;">
        <option>전체</option>
        <option>단기렌트</option>
        <option>중고장기</option>
        <option>신차장기</option>
      </select></li>
    </ul>
    <ul class="nav navbar-nav navbar-left col-sm-2">
    	<li><select class="form-control" id="sel2" style="width: 100%;">
        <option>최신순</option>
        <option>리뷰순</option>
        <option>평점순</option>
      </select></li>
     </ul>
    <form class="navbar-form navbar-left col-sm-3" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
       		 <div class="input-group-btn">
         	 <button class="btn btn-default" type="submit" style="border:solid 1px orange;">    	 
         	 검색
          </button>
        </div>
      </div>
    </form>
  </div>
</nav>
</div>
<br>
<br>

<!--글 테이블-->
<div class="container  col-sm-12">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>NO</th>
        <th>CATEGORY</th>
        <th>SUBJECT</th>
        <th>NAME</th>
        <th>DATE</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach begin="0" end="14"  step="1" varStatus="status">           
      <tr>
        <td>${status.count}</td>
        <td>[단기렌터카]</td>
        <td>8월 무이자 할부안내 </td>
        <td>TT렌터카</td>
        <td>20-08-27</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  <br>
  
  <!-- 페이지 쪽수  -->
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
 </div>
  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지점위치이미지</title>
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
</head>
<body>
<div class="container">
<div class="row">
  <!-- Modal -->
  <div class="modal fade" id="location_jeju" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="container modal-content">
        	<div class="row">
        	<h1 class="col-sm-11" align="center">지도보기</h1>
          <span><button type="button" class="close" data-dismiss="modal">&times;</button></span>&nbsp;
        	</div>
        	<table>
        	<tr><td><hr></td></tr>
        	<tr class="container">
        		<td><h3>제주지점</h3></td>
        	</tr>
        	<tr>
        		<td class="row">
        		<ul>
          		<li><b>주소</b><span>제주특별자치도 제주시 이호일동1898-5</span></li>
          		<li><b>전화번호</b><span>064-726-6460</span></li>
          		</ul>
          		</td>
        	</tr>
        	<tr>
        	<td>
       		<div class="row modal-body">
        	<div class="card" style="border:1px solid silver; width:440px; height:460px;">
        		<img src="./resources/images/jejulocation1.gif" width="100%">
        	</div>
        	</div>
        	</td>
        	</tr>
        	<tr>
        	<td>
        	<ul>
          		<li>지도보기는 NHN에서 제공하는 네이버 오픈 API 지도 서비스를 통해 제공됩니다.</li>
          	</ul>
          	</td>
          	</tr>
          	<tr>
          	<td><hr></td>
          	</tr>
          	<tr>
          	<td align="center">
          	<button class="btn btn-outline-dark" onclick="location.href='https://map.naver.com/v5/directions/-/14076368.279088016,3961033.2862763274,%EC%A0%9C%EC%A3%BC%ED%8A%B9%EB%B3%84%EC%9E%90%EC%B9%98%EB%8F%84%20%EC%A0%9C%EC%A3%BC%EC%8B%9C%20%EC%9D%B4%ED%98%B8%EC%9D%BC%EB%8F%99,,/-/transit?c=14076368.2790881,3961033.2862763,15,0,0,0,dh'">빠른 길찾기</button>
      	 	 </td>
      	 	 </tr>
      	 	 </table>
          	<br>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
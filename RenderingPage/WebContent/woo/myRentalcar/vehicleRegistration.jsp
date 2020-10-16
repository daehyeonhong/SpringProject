<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량등록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container col-sm-4" align="center">
  <h2>개인장기렌터카 차량등록</h2><br>
   <div class="btn-group col-sm-12">
    <button type="button" class="btn btn-outline-secondary">개인</button>
    <button type="button" class="btn btn-outline-secondary">개인사업자</button>
  </div>
   
	<hr color = "black">
	
<div class="container">
    <div class="form-group">
      <input type="text" class="form-control" id="name" name="name" placeholder="우정민" readonly>
    </div>
    <div class="form-group">
      <input type="text" class="form-control" id="phone" name="phone" placeholder="01011112222" readonly>
    </div>
        <div class="form-group">
      <input type="text" class="form-control" id="vehicle" name="vehicle" placeholder="차량번호 입력">
    </div>
			   <ul> 
			             <li>닷컴 회원 정보와 계약 시 정보가 일치해야 차량등록이 가능하며 다를 경우에는 고객센터로
                                                                 연락주시기 바랍니다. <br>(고객센터 1599-9111 월~금 09시~18시/토요일 및 공휴일 휴무)</li>
			   </ul>
    <button type="submit" class="btn btn-danger col-sm-12" onclick="button1_click();">차량등록</button>
 </div>

     <br><br><br><hr/>
				  
  </div>
  <script>
		function button1_click() {
			alert("등록이 완료 되었습니다.");
			 location.href = './myRentalcar.jsp'; 
		}
	</script>
</body>
</html>
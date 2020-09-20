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
<div class="container col-sm-5">
  <h2>개인장기렌터카 차량등록</h2><br>
   <div class="btn-group col-sm-12">
    <button type="button" class="btn btn-outline-secondary">개인</button>
    <button type="button" class="btn btn-outline-secondary">개인사업자</button>
  </div>
   
	<hr color = "black">
	
<div class="container">
    <div class="form-group">
      <input type="text" class="form-control" id="name" name="name">
    </div>
    <div class="form-group">
      <input type="text" class="form-control" id="phone" name="phone">
    </div>
        <div class="form-group">
      <input type="text" class="form-control" id="vehicle" name="vehicle">
    </div>
    <button type="submit" class="btn btn-primary">차량등록</button>
</div>

     <br><br><br><hr/>
				  
  </div>
  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과태료 발생내역</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container col-sm-5">
  <h2>과태료 발생내역</h2>
  <hr color = "black">
  <div class="btn-group">
    <h7>조회기간</h7>&nbsp;&nbsp;&nbsp;
    <button type="button" class="btn btn-outline-secondary">1개월</button>
    <button type="button" class="btn btn-outline-secondary">3개월</button>
    <button type="button" class="btn btn-outline-secondary">6개월</button>
  </div>
				<table class="col-sm-10">
            <tr>
               <td colspan="4">
                  <input type="date" class="form-control"> 
                  </td>
                  <td>
                      -
                  </td>
                   <td>   
                  <input type="date" class="form-control">
                  </td>
                  <td>
                  <button type="button"  class="btn btn-danger col-sm-12">조회하기</button>
                  </td>
            </tr>
            </table>
				<hr/><br><br><br><hr/>
				  
  </div>
  
</body>
</html>			
				  
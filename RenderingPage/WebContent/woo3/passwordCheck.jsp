<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container col-sm-4" align="center">
  <h3 class="display-4">비밀번호 확인</h3>
  <p align="center">개인정보 보호를 위해 비밀번호를 다시 한번 입력해주세요.</p><br>
  <form action="/action_page.php">
    <div class="form-group col-sm-11">
      <input type="text" class="form-control" id="usr" name="username" placeholder="비밀번호 입력"><br>
    </div>
    <button type="button" class="btn btn-danger col-sm-10">확인</button>
  </form>
</div>

</body>
</html>
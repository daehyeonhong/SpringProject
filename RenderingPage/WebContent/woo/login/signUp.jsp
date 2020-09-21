<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container col-sm-3" align="center">
		<h1 class="display-5">기본 정보 입력</h1>
		<form action="#" class="form-group">
			<table class="col-sm-10">
				<tr>
					<td>
						<input type="text" class="form-control" id="id" name="id" placeholder="아이디 입력 " required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" placeholder="비밀번호 재입력" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<!--기능구현할때  전에 입력한 이름,전화번호 같이 넘어와야함 -->
						<span class="form-control">이름</span>
						<input type="hidden" id="name" name="name" value="이름" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<span class="form-control">전화번호</span>
						<input type="hidden" id="phone" name="phone" value="전화번호" required="required" />
					</td>
				</tr>
			</table><br>
			<button type="button" onclick="button1_click();" class="btn btn-danger col-sm-10">
				가입완료
			</button>
		</form>
		<div class="container">
			<ul style="text-align: left;"> 
				<li>회원가입이 어려우신 경우 SK렌터카 고객센터로 연락주시기 바랍니다.<br>
				<span class="text-warning">고객센터 1599-9111</span>
				(월 ~ 금 09:00 ~ 18:00/토요일 및 공휴일 휴무)
				</li>
			</ul>
		</div>
	</div>
	<script>
		function button1_click() {
			alert("가입이 완료 되었습니다.");
			 location.href = './login.jsp'; 
		}
	</script>
</body>
</html>
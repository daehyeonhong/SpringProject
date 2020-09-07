<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	tr td{
		height: 50px;
	}
</style>
 <script>
	$(document).ready(function(){
		 $("#more").click(function(){ 
		
	});
	
	
</script>
</head>
<body>
<div class="container col-sm-6">
<div id="accordion">
    <div class="card">
        <!-- <a class="card-link" data-toggle="collapse" href="#collapsebar"> -->
       		   <nav class="container navbar navbar-expand-sm bg-warning navbar-dark bottom" style="height: 70px;"data-toggle="collapse">
  				<div class="col-sm-1">
					  <table id="more">
					 	<tr>
			 			 <td>
			  				<a class="row navbar-brand" href="#">
							<svg style="height: 50%;" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
							</svg>
							<br>
							<b style="font-size: 15px;">더보기</b>
			  				</a>
						</td>
					   </tr>
					</table>
				</div>
				<div class="col-sm-8" style="color: white;">
				<div class="row">
				<h4 class="col">총 결제금액</h4><h4 class="float-right">0원</h4>
				</div>
				</div>
				<div class="col-sm-3">
				<div class="row">
		  		 <div class="col-sm-2"></div>
		  		 &nbsp;&nbsp;
				<button type="button" class="row btn col-sm-5 border" id="reset" style="color: white;font-size: 15px;">초기화</button>
				 &nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn col-sm-5 border float-right" id="calc" style="color: white; font-size: 15px;">결제하기</button>
				</div>
				</div>
				</nav>
      </div>
      
      
      <div id="collapsebar" class="collapse_show" data-parent="#accordion">
        <div class="card-body">
           <!-- <div class="container col-sm-6"> -->
			<div class="row">
			<div class="col-sm-4">
			<table style="width: 90%;">
				<tr class="row" style="border-bottom: 1px solid black;"><td><h5>대여현황</h5></td></tr>
				<tr class="row border-bottom"><td>대여일시</td></tr>
				<tr class="row border-bottom"><td>반납일시</td></tr>
				<tr class="row border-bottom"><td class="col-sm-12">대여지점<span class="row float-right">제주지점</span></td></tr>
				<tr class="row border-bottom"><td class="col-sm-12">반납지점<span class="row float-right">제주지점</span></td></tr>		
				<tr class="row border-bottom"><td>대여차량</td></tr>
			</table>
			</div>
			<div class="col-sm-4">
			<table style="width: 90%;">
				<tr class="row" style="border-bottom: 1px solid black;"><td><h5>계약자 정보</h5></td></tr>
				<tr class="row border-bottom"><td>이름</td></tr>
				<tr class="row border-bottom"><td>휴대폰</td></tr>
				<tr class="row border-bottom"><td>생년월일</td></tr>
				<tr class="row border-bottom"><td>이메일</td></tr>
			</table>
			</div>
			<div class="col-sm-4">
			<table style="width: 90%;">
				<tr class="row" style="border-bottom: 1px solid black;"><td><h5>예약금액</h5></td></tr>
				<tr class="row border-bottom"><td>표준요금</td></tr>
				<tr class="row border-bottom"><td>편도수수료</td></tr>
				<tr class="row border-bottom"><td>차량손해면책제도</td></tr>
				<tr class="row border-bottom"><td>총 할인금액</td></tr>
				<tr class="row border-bottom"><td>이벤트추가할인</td></tr>
			</table>
			<p class="row">* 차량손해면책제도는 할인 적용 제외</p>
			</div>
		</div>
		</div>
        </div>
      </div>
    </div>

<!-- <div class="row">
<nav class="container navbar navbar-expand-sm bg-warning navbar-dark fixed-bottom" style="height: 70px;">
  	<div class="col-sm-1">
			  <table id="more">
			  <tr>
			  <td>
			  <a class="row navbar-brand" href="#">
					<svg style="height: 50%;" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
					</svg>
				<br>
				<b style="font-size: 15px;">더보기</b>
			  </a>
				</td>
				</tr>
				</table>
	</div>
	<div class="col-sm-8" style="color: white;">
		<div class="row">
		<h4 class="col">총 결제금액</h4><h4 class="float-right">0원</h4>
		</div>
	</div>
	<div class="col-sm-3">
		<div class="row">
		   <div class="col"></div>
			<button type="button" class="btn col-sm-5 border" id="reset" style="color: white;font-size: 15px;">초기화</button>
				&nbsp;&nbsp;
			<button type="button" class="btn col-sm-5 border" id="calc" style="color: white; font-size: 15px;">결제하기</button>
		</div>
	</div>
</nav>
</div>
<br>

<div class="container col-sm-6">
<div class="row">
	<div class="col-sm-4">
	<table style="width: 90%;">
		<tr class="row" style="border-bottom: 1px solid black;"><td><h5>대여현황</h5></td></tr>
		<tr class="row border-bottom"><td>대여일시</td></tr>
		<tr class="row border-bottom"><td>반납일시</td></tr>
		<tr class="row border-bottom"><td class="col-sm-12">대여지점<span class="row float-right">제주지점</span></td></tr>
		<tr class="row border-bottom"><td class="col-sm-12">반납지점<span class="row float-right">제주지점</span></td></tr>		
		<tr class="row border-bottom"><td>대여차량</td></tr>
	</table>
	</div>
	<div class="col-sm-4">
	<table style="width: 90%;">
		<tr class="row" style="border-bottom: 1px solid black;"><td><h5>계약자 정보</h5></td></tr>
		<tr class="row border-bottom"><td>이름</td></tr>
		<tr class="row border-bottom"><td>휴대폰</td></tr>
		<tr class="row border-bottom"><td>생년월일</td></tr>
		<tr class="row border-bottom"><td>이메일</td></tr>
	</table>
	</div>
	<div class="col-sm-4">
	<table style="width: 90%;">
		<tr class="row" style="border-bottom: 1px solid black;"><td><h5>예약금액</h5></td></tr>
		<tr class="row border-bottom"><td>표준요금</td></tr>
		<tr class="row border-bottom"><td>편도수수료</td></tr>
		<tr class="row border-bottom"><td>차량손해면책제도</td></tr>
		<tr class="row border-bottom"><td>총 할인금액</td></tr>
		<tr class="row border-bottom"><td>이벤트추가할인</td></tr>
	</table>
		<p class="row">* 차량손해면책제도는 할인 적용 제외</p>
	</div>
</div>
</div> -->

</body>
</html>


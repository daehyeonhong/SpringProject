<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰선택</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  	#th_title{background-color: #FEFCF9; text-align: center;}
  </style>
  
  <script>
/* var myWindow;

function open_coupon() {
  myWindow = window.open("", "myWindow", "width=200,height=100");
  myWindow.document.write("<p>This is 'myWindow'</p>");
}
 */
/* function close_coupon() {
  self.close();
} */
</script>
</head>
<body>

<br>
<br>
<br>
<br>

	<div class="container col-sm-10">
<form>
	<div class="row">
	<b class="col-sm-12">할인쿠폰 등록 (한 개의 쿠폰만 선택 가능합니다.)<button class="border float-right bg-default" type="button" data-toggle="modal" data-target="#myModal_coupon">할인쿠폰 등록</button></b>
	</div>
	<hr>
	
	<h5>쿠폰 선택(한 개의 쿠폰만 선택 가능합니다.)</h5>
	
	
    <div class="col-sm-12 form-group">
    <div class="row">
      <select class="col form-control" id="coupon_select" name="coupon_select">
        <option disabled="disabled">사용가능한 쿠폰이 없습니다.</option>
        <option>TT렌터카 welcome쿠폰 (3%할인)</option>
      </select>
    
    <button class="col btn btn-sm bg-light border">적용완료</button>
	</div>
	</div>
	<hr>
	<table class="card col-sm-12">
	<tr class="row">
	<td class="col">
	<h5>적립포인트 사용</h5>
	</td>
	<td class="col">
	<p>적립포인트 잔액 :</p>
	</td>
	<td class="col">
	<b class="text-right">2000원</b>
	</td>
	<td class="col"></td>
	</tr>
	
	<tr class="row">
	<td class="col"><p class="col-sm-12"></p></td>
	<td class="col">
	<div class="row">
	<p class="col-sm-3"></p>
		<p>사용 포인트 :</p>
	</div>
	</td>
	<td class="col">
	<div class="row">
	<input type="text" class="col-sm-4 text-borderless"><span>원</span>
	</div>
	</td>
	<td class="col">
		<button class="border float-right bg-default">전액사용</button>
	</td>
	</tr>
</table>
<br>
<br>
<br>
<br>
<div class="container" align="center">
  <div class="row" align="center">
  	<button class="col btn border btn-light">취소하기</button>&nbsp;<!-- 메인페이지로 -->
  	<button class="col btn border bg-warning" onclick="close_coupon()">적용하기</button>
  </div>
  </div>
</form><!-- form -->
</div>
<br>
<br>


<!-- The Modal -->
  			<div class="modal" id="myModal_coupon">
    			<div class="modal-dialog">
      				<div class="modal-content">
      
        	<!-- Modal Header -->
      		<div class="modal-header">
        		  <h4 class="modal-title">할인쿠폰 등록</h4>
         			 <button type="button" class="close" data-dismiss="modal">&times;</button>
      	    </div>
        
        	<!-- Modal body -->
        	<div class="container">
        	<div class="modal-body" style="text-align: center;">
        	<p style="font-size: 15px;">보유하고 계신 쿠폰 번호를 입력해주세요.<br>
        	(예약 일정과 쿠폰 사용 조건이 일치하는 쿠폰만 등록가능합니다.)</p>
        	<input class="col-sm-12 text-center" type="text" placeholder="쿠폰 번호를 입력해주세요."><br>
        	<br>
        	<button class="col-sm-12 btn btn-warning float-right">등록</button>
        	<br>
        	</div>
        	<!-- Modal footer -->
        	<div class="modal-footer">
        	<ul style="font-size: 13px;">
        		<li>반드시 쿠폰의 사용조건, 기간, 할인액 등을 확인해 주세요.</li>
        		<li>TT렌터카 쿠폰은 결제 시 현금처럼 바로 사용할 수 있는 쿠폰입니다.</li>
        	</ul>
        	</div>
        	</div>
        	
      			</div>
    		</div>
  		</div>
  



</body>
</html>
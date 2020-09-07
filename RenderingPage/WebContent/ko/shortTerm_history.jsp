<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여내역</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    $(function () {
    	
    	let date = new Date();
    	
    	$('#datetimepicker7').datetimepicker({
        	format: 'L'
        	});
        $('#datetimepicker8').datetimepicker({
        	format: 'L',
            useCurrent: false
        });
        	$('#datetimepicker7').datetimepicker('minDate',date);
        
        $("#datetimepicker7").on("change.datetimepicker", function (e) {
        	$('#datetimepicker8').datetimepicker('minDate', e.date);
           
            
        });
        $("#datetimepicker8").on("change.datetimepicker", function (e) {
            $('#datetimepicker7').datetimepicker('maxDate', e.date);
            
        });
    });
</script>

<script type="text/javascript">

		function checkTest() {

			let testValue11 = new Date(document.getElementById("datep7").value);
			let testValue22 = new Date(document.getElementById("datep8").value);
			
			var total_day=((testValue22-testValue11)/(24*60*60*1000));
			}
</script>

<style>
	span{color:orange;}
</style>
</head>
<body>

<!-- 단기렌트 제목틀-->
<div class="jumbotron bg-white">
  <div class="container col-sm-6">
  <h1>대여내역</h1>
  </div>
</div>

<div class="container col-sm-6">
<!--대여내역 메뉴바  -->
<nav class="navbar navbar-expand-sm navbar-light" style="height: 70px;">
      <button class="col-sm-6  btn btn-outline-secondary" type="button" style="height:100%;"><b>단기대여</b></button>
   	 <button class="col-sm-6  btn btn-outline-secondary float-right" type="button" style="height:100%;"><b>중고차 장기대여</b></button>
</nav>


<div class="container">
<br>
<hr>
<br>
<div class="row" style="width: 100%;">
	<div class="col-sm-5">
		<div class="row">
		<p class="col-sm-4">조회기간</p>
		<div class="col-sm-8 float-right">
			<div class="row">
				<button class="col btn btn-outline-secondary" >1개월</button>
				<button class="col btn btn-outline-secondary" >3개월</button>
				<button class="col btn btn-outline-secondary">6개월</button>
			</div>
			</div>
		</div>
		</div>
		
		<div class="col-sm-7">
			<div class="row">
			<div class="col-sm-9">
			
			<table style="width: 100%;">
			<tr class="row">
			<td class="col-sm-1"></td>
			<td class="col-sm-5">
		   	<div class="row input-group date" id="datetimepicker7" data-target-input="nearest">
             	   <input type="text" id="datep7" class="form-control datetimepicker-input" data-target="#datetimepicker7" />
            	    <div class="input-group-append" data-target="#datetimepicker7" data-toggle="datetimepicker">
             	       <div class="input-group-text row"><i class="fa fa-calendar"></i></div>
             	   </div>
          	</div>
          	</td>
          	<td class="col-sm-1">
        	  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-dash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
			  </svg>
		   </td>
		   <td class="col-sm-5">
           <div class="row input-group date" onchange="checkTest()" id="datetimepicker8" data-target-input="nearest">
                <input type="text" id="datep8" class="form-control datetimepicker-input" data-target="#datetimepicker8" />
                <div class="input-group-append" data-target="#datetimepicker8" data-toggle="datetimepicker">
                    <div class="input-group-text row"><i class="fa fa-calendar"></i></div>
                </div>
			</div>
			</td>
			</tr>
			</table>
		</div>
		<div class="col-sm-3">
		<button class="row btn btn-danger float-right">조회하기</button>
		</div>
          </div>
		</div>
	
	</div>
</div>
<br>

<div class="container" align="center">
 <hr>
<br>
	<svg style="color:silver; " width="5em" height="5em" viewBox="0 0 16 16" class="bi bi-x-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
 		 <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  		<path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
	</svg>
	<br>
	<br>
	<p>조회내역이 없습니다.</p>
	<br>
	<hr>
</div>

<div class="container">
<div class="card" style="border: 1px solid orange;">
	 <ul style="list-style-type: square;">
	 <br>
      			<li>고객님의 대여내역은 최근 12개월간의 정보만 보여집니다.</li>
         		<li><span>대여시간 24시간 전, 대여시간 이후(NO-Show) 취소 시 순수차량 대여요금의 10% 위약금이 발생합니다.</span></li>
         		<li><span>각종 할인혜택은 방문 시 반드시 할인카드(쿠폰)를 지참하셔야만 혜택을 받으실 수 있습니다.</span></li>
         		<li>대여 당일 차량인수 시 운전면허증 지참은 필수입니다.(도로교통법상 유효한 운전면허소지자)</li>
         		<li>외국인일 경우 국제운전 면허증 소지자(B등급 이상~9인승 이하 차랑만 대여가능)</li>
         		<li>결제 완료 후, 예약/결제취소 시 예약 및 결제가 자동적으로 취소되오니 참고하시기 바랍니다.</li>
         		<li>내륙/제주 온라인 선 결제를 하셔야 예약이 완료됩니다.</li>
         		<li>대여시간에서 2시간 경과 시 예약이 임의로 취소됩니다.</li>
         		<li>변동사항이나 문의사항은 TT렌터카 고객센터 <span>1599-9111</span>로 문의 주시기 바랍니다.</li>
     <br>
     </ul>
</div>
</div>
</div>
<br>
<br>

</body>
</html>
<!-- <div class="card">
      			 <ul>
      			 <li>고객님의 대여내역은 최근 12개월간의 정보만 보여집니다.</li>
         		<li>대여시간 24시간 전, 대여시간 이후(NO-Show) 취소 시 순수차량 대여요금의 10% 위약금이 발생합니다.</li>
         		<li>각종 할인혜택은 방문 시 반드시 할인카드(쿠폰)를 지참하셔야만 혜택을 받으실 수 있습니다.</li>
         		</ul>
      <div class="card-header">
      <a class="card-link" data-toggle="collapse" href="#collapse">
      	<b>더보기</b>
      	<svg style="height: 50%;" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
		</svg>
        </a>
      </div>
      <div id="collapse" class="collapse show" data-parent="#accordion">
        <div class="card-body">
         	<ul>
         		<li>대여 당일 차량인수 시 운전면허증 지참은 필수입니다.(도로교통법상 유효한 운전면허소지자)</li>
         		<li>외국인일 경우 국제운전 면허증 소지자(B등급 이상~9인승 이하 차랑만 대여가능)</li>
         		<li>결제 완료 후, 예약/결제취소 시 예약 및 결제가 자동적으로 취소되오니 참고하시기 바랍니다.</li>
         		<li>내륙/제주 온라인 선 결제를 하셔야 예약이 완료됩니다.</li>
         		<li>대여시간에서 2시간 경과 시 예약이 임의로 취소됩니다.</li>
         		<li>변동사항이나 문의사항은 TT렌터카 고객센터 1599-9111로 문의 주시기 바랍니다.</li>
         	</ul>
      </div>
    </div>
</div> -->

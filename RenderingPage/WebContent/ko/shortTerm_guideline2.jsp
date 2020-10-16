<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요금/할인 안내</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	tbody td{text-align: right;}
	#cardImage{max-width: 400px; height: 150px; margin-top: 20px;}
	#image1{align-self: center;}
</style>
</head>
<body>
<!--  홈바 -->
<%@ include file="z_home.jsp"%>

<!-- 단기렌트 제목틀-->
<div class="jumbotron bg-white">
  <div class="container col-sm-6">
  <h1>단기렌터카 안내</h1>
  </div>
</div>

<div class="container col-sm-6">


<!--안내 메뉴바  -->
<div class="col-sm-12">
<ul class="nav nav-pills" role="tablist">
    <li class="col nav-item"style="height: 70px;">
      <a class="row nav-link active bg-secondary" data-toggle="pill" href="#home" style="color: white; height: 100%; text-align: center;">
      <p></p><b>제주요금</b>
      </a>
    </li>
    <li class="col nav-item">
      <a class="row nav-link bg-secondary" data-toggle="pill" href="#menu1" style="color: white;height: 100%;text-align: center;"><p></p><b>내륙요금</b></a>
    </li>
    <li class="col nav-item">
      <a class="row nav-link bg-secondary" data-toggle="pill" href="#menu2" style="color: white;height: 100%;text-align: center;"><p></p><b>제휴/할인 안내</b></a>
    </li>
  </ul>
</div> 

  <!-- Tab panes -->
<div class="container">
<div class="tab-content">

<div id="home"  class="tab-pane active">
<br>
<br>
	   <h3>경차</h3>
		<br>
      <table class="table table-hover" style="text-align: center;">
    <thead style="background-color:#FEFCF9;">
      <tr style="border-top: 2px solid orange;">
        <th rowspan="2" style="border-right: 1px solid silver;">차종<p></p><p></p></th>
        <th style="border-right: 1px solid silver;">기본요금</th>
        <th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        <th colspan="2">1일 자차 보험료</th>
      </tr>
      <tr>
        <th style="border-right: 1px solid silver;">1일</th>
        <th style="border-right: 1px solid silver;">+6시간 이하</th>
        <th style="border-right: 1px solid silver;">+6~10시간</th>
        <th style="border-right: 1px solid silver;">+10~12시간</th>
        <th style="border-right: 1px solid silver;">일반 자차</th>
        <th>완전 자차</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver;text-align: left;">레이 1.0 [가솔린]</td>
        <td style="border-right: 1px solid silver;">97,000</td>
        <td style="border-right: 1px solid silver;">54,300</td>
        <td style="border-right: 1px solid silver;">69,800</td>
        <td style="border-right: 1px solid silver;">77,600</td>
        <td style="border-right: 1px solid silver;">8,500</td>
        <td>10,200</td>
      </tr>
    </tbody>
  </table>
      <br>
      
      <h3>소형</h3>
		<br>
		   <table class="table table-hover" style="text-align: center;">
   			 <thead style="background-color:#FEFCF9;">
     		 <tr style="border-top: 2px solid orange;">
       		 <th rowspan="2" style="border-right: 1px solid silver;">차종<p></p><p></p></th>
        	<th style="border-right: 1px solid silver;">기본요금</th>
        	<th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        	<th colspan="2">1일 자차 보험료</th>
      		</tr>
      		<tr>
        	<th style="border-right: 1px solid silver;">1일</th>
        	<th style="border-right: 1px solid silver;">+6시간 이하</th>
        	<th style="border-right: 1px solid silver;">+6~10시간</th>
        	<th style="border-right: 1px solid silver;">+10~12시간</th>
        	<th style="border-right: 1px solid silver;">일반 자차</th>
        	<th>완전 자차</th>
      		</tr>
    		</thead>
    		<tbody>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">아반떼AD 1.6 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">147,000</td>
        	<td style="border-right: 1px solid silver;">82,300</td>
        	<td style="border-right: 1px solid silver;">105,800</td>
        	<td style="border-right: 1px solid silver;">117,600</td>
        	<td style="border-right: 1px solid silver;">14,000</td>
        	<td>16,800</td>
      		</tr>
   			 </tbody>
  			</table>
  			<br>
  	
      <h3>중형</h3>
      	<br>
		   <table class="table table-hover" style="text-align: center;">
   			 <thead style="background-color:#FEFCF9;">
     		 <tr style="border-top: 2px solid orange;">
       		 <th rowspan="2" style="border-right: 1px solid silver;">차종<p></p><p></p></th>
        	<th style="border-right: 1px solid silver;">기본요금</th>
        	<th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        	<th colspan="2">1일 자차 보험료</th>
      		</tr>
      		<tr>
        	<th style="border-right: 1px solid silver;">1일</th>
        	<th style="border-right: 1px solid silver;">+6시간 이하</th>
        	<th style="border-right: 1px solid silver;">+6~10시간</th>
        	<th style="border-right: 1px solid silver;">+10~12시간</th>
        	<th style="border-right: 1px solid silver;">일반 자차</th>
        	<th>완전 자차</th>
      		</tr>
    		</thead>
    		<tbody>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver;text-align: left;">쏘나타 뉴 라이즈 2.0 [LPI]</td>
        	<td style="border-right: 1px solid silver;">160,000</td>
        	<td style="border-right: 1px solid silver;">89,600</td>
        	<td style="border-right: 1px solid silver;">115,200</td>
        	<td style="border-right: 1px solid silver;">128,000</td>
        	<td style="border-right: 1px solid silver;">22,400</td>
        	<td>26,900</td>
      		</tr>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver;text-align: left;">쏘나타 뉴 라이즈 2.0 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">160,000</td>
        	<td style="border-right: 1px solid silver;">89,600</td>
        	<td style="border-right: 1px solid silver;">115,200</td>
        	<td style="border-right: 1px solid silver;">128,000</td>
        	<td style="border-right: 1px solid silver;">22,400</td>
        	<td>26,900</td>
      		</tr>
   			 </tbody>
  			</table>
  			<br>
     
      <h3>대형</h3>
      		<br>
		   <table class="table table-hover" style="text-align: center;">
   			 <thead style="background-color:#FEFCF9;">
     		 <tr style="border-top: 2px solid orange;">
       		 <th rowspan="2" style="border-right: 1px solid silver;">차종<p></p><p></p></th>
        	<th style="border-right: 1px solid silver;">기본요금</th>
        	<th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        	<th colspan="2">1일 자차 보험료</th>
      		</tr>
      		<tr>
        	<th style="border-right: 1px solid silver;">1일</th>
        	<th style="border-right: 1px solid silver;">+6시간 이하</th>
        	<th style="border-right: 1px solid silver;">+6~10시간</th>
        	<th style="border-right: 1px solid silver;">+10~12시간</th>
        	<th style="border-right: 1px solid silver;">일반 자차</th>
        	<th>완전 자차</th>
      		</tr>
    		</thead>
    		<tbody>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver;text-align: left;">GENESIS G70 2.0 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">278,000</td>
        	<td style="border-right: 1px solid silver;">155,700</td>
        	<td style="border-right: 1px solid silver;">200,200</td>
        	<td style="border-right: 1px solid silver;">222,400</td>
        	<td style="border-right: 1px solid silver;">29,500</td>
        	<td>35,400</td>
      		</tr>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver;text-align: left;">그랜저IG 2.4 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">227,000</td>
        	<td style="border-right: 1px solid silver;">127,100</td>
        	<td style="border-right: 1px solid silver;">163,400</td>
        	<td style="border-right: 1px solid silver;">181,600</td>
        	<td style="border-right: 1px solid silver;">27,300</td>
        	<td>32,800</td>
      		</tr>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">그랜저IG 3.0 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">243,000</td>
        	<td style="border-right: 1px solid silver;">136,100</td>
        	<td style="border-right: 1px solid silver;">175,000</td>
        	<td style="border-right: 1px solid silver;">194,400</td>
        	<td style="border-right: 1px solid silver;">29,500</td>
        	<td>35,400</td>
      		</tr>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">EQ900 3.8 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">402,000</td>
        	<td style="border-right: 1px solid silver;">225,100</td>
        	<td style="border-right: 1px solid silver;">289,400</td>
        	<td style="border-right: 1px solid silver;">321,600</td>
        	<td style="border-right: 1px solid silver;">-</td>
        	<td>-</td>
      		</tr>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">GENESIS G80 3.3 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">308,000</td>
        	<td style="border-right: 1px solid silver;">172,500</td>
        	<td style="border-right: 1px solid silver;">221,800</td>
        	<td style="border-right: 1px solid silver;">246,400</td>
        	<td style="border-right: 1px solid silver;">39,000</td>
        	<td>46,800</td>
      		</tr>
   			 </tbody>
  			</table>
  			<br>
  	
      
      <h3>소형SUV</h3>
             <br>
		   <table class="table table-hover" style="text-align: center;">
   			 <thead style="background-color:#FEFCF9;">
     		 <tr style="border-top: 2px solid orange;">
       		 <th rowspan="2" style="border-right: 1px solid silver;">차종<p></p><p></p></th>
        	<th style="border-right: 1px solid silver;">기본요금</th>
        	<th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        	<th colspan="2">1일 자차 보험료</th>
      		</tr>
      		<tr>
        	<th style="border-right: 1px solid silver;">1일</th>
        	<th style="border-right: 1px solid silver;">+6시간 이하</th>
        	<th style="border-right: 1px solid silver;">+6~10시간</th>
        	<th style="border-right: 1px solid silver;">+10~12시간</th>
        	<th style="border-right: 1px solid silver;">일반 자차</th>
        	<th>완전 자차</th>
      		</tr>
    		</thead>
    		<tbody>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">셀토스 1.6 [디젤]</td>
        	<td style="border-right: 1px solid silver;">159,000</td>
        	<td style="border-right: 1px solid silver;">89,000</td>
        	<td style="border-right: 1px solid silver;">114,500</td>
        	<td style="border-right: 1px solid silver;">127,200</td>
        	<td style="border-right: 1px solid silver;">14,000</td>
        	<td>16,800</td>
      		</tr>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">셀토스 1.6 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">159,000</td>
        	<td style="border-right: 1px solid silver;">89,000</td>
        	<td style="border-right: 1px solid silver;">114,500</td>
        	<td style="border-right: 1px solid silver;">127,200</td>
        	<td style="border-right: 1px solid silver;">14,000</td>
        	<td>16,800</td>
      		</tr>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">투싼 1.7 [디젤] E-VG</td>
        	<td style="border-right: 1px solid silver;">185,000</td>
        	<td style="border-right: 1px solid silver;">103,600</td>
        	<td style="border-right: 1px solid silver;">133,200</td>
        	<td style="border-right: 1px solid silver;">148,000</td>
        	<td style="border-right: 1px solid silver;">23,700</td>
        	<td>28,500</td>
      		</tr>
   			 </tbody>
  			</table>
  			<br>
  	
      <h3>중형SUV </h3>
      		      <br>
		   <table class="table table-hover" style="text-align: center;">
   			 <thead style="background-color:#FEFCF9;">
     		 <tr style="border-top: 2px solid orange;">
       		 <th rowspan="2" style="border-right: 1px solid silver;">차종<p></p><p></p></th>
        	<th style="border-right: 1px solid silver;">기본요금</th>
        	<th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        	<th colspan="2">1일 자차 보험료</th>
      		</tr>
      		<tr>
        	<th style="border-right: 1px solid silver;">1일</th>
        	<th style="border-right: 1px solid silver;">+6시간 이하</th>
        	<th style="border-right: 1px solid silver;">+6~10시간</th>
        	<th style="border-right: 1px solid silver;">+10~12시간</th>
        	<th style="border-right: 1px solid silver;">일반 자차</th>
        	<th>완전 자차</th>
      		</tr>
    		</thead>
    		<tbody>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">QM6 2.0 [디젤]</td>
        	<td style="border-right: 1px solid silver;">206,000</td>
        	<td style="border-right: 1px solid silver;">115,400</td>
        	<td style="border-right: 1px solid silver;">148,300</td>
        	<td style="border-right: 1px solid silver;">164,800</td>
        	<td style="border-right: 1px solid silver;">28,500</td>
        	<td>34,200</td>
      		</tr>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">셀토스 1.6 [가솔린]</td>
        	<td style="border-right: 1px solid silver;">206,000</td>
        	<td style="border-right: 1px solid silver;">115,400</td>
        	<td style="border-right: 1px solid silver;">148,300</td>
        	<td style="border-right: 1px solid silver;">164,800</td>
        	<td style="border-right: 1px solid silver;">28,500</td>
        	<td>34,200</td>
      		</tr>
   			 </tbody>
  			</table>
  			<br>
      
      <h3>승합</h3>
      		      <br>
		   <table class="table table-hover" style="text-align: center;">
   			 <thead style="background-color:#FEFCF9;">
     		 <tr style="border-top: 2px solid orange;">
       		 <th rowspan="2" style="border-right: 1px solid silver;">차종<p></p><p></p></th>
        	<th style="border-right: 1px solid silver;">기본요금</th>
        	<th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        	<th colspan="2">1일 자차 보험료</th>
      		</tr>
      		<tr>
        	<th style="border-right: 1px solid silver;">1일</th>
        	<th style="border-right: 1px solid silver;">+6시간 이하</th>
        	<th style="border-right: 1px solid silver;">+6~10시간</th>
        	<th style="border-right: 1px solid silver;">+10~12시간</th>
        	<th style="border-right: 1px solid silver;">일반 자차</th>
        	<th>완전 자차</th>
      		</tr>
    		</thead>
    		<tbody>
      		<tr style="border-bottom: 1px solid silver;">
        	<td style="border-right: 1px solid silver; text-align: left;">카니발R 2.2[디젤] 9인승</td>
        	<td style="border-right: 1px solid silver;">236,000</td>
        	<td style="border-right: 1px solid silver;">132,200</td>
        	<td style="border-right: 1px solid silver;">169,900</td>
        	<td style="border-right: 1px solid silver;">188,800</td>
        	<td style="border-right: 1px solid silver;">29,100</td>
        	<td>35,000</td>
      		</tr>
   			 </tbody>
  			</table>
  			<br>
  			<br>
				<div class="row">
					<div class="col" align="center">
					<button class="border btn  btn-lg btn-light">제휴/할인 안내</button>
					<button class="btn btn-lg bg-warning" style="color: white;" onclick="location.href='shortTerm_jeju.jsp'">단기렌터카 예약</button>
					</div>
				</div>  			
  			<br>
  			<br>
      <div class="card" style="border:1px solid orange;">
      <br>
      	<ul>
      		<li>상기 요금은 내비게이션 등의 선택옵션 비용이 포함되어있지 않습니다.</li>
      		<li>모든 제휴 할인은 24시간 이상 대여 시 적용 됩니다.(차량손해면책보상 가입수수료는 할인대상에서 제외)</li>
      		<li>성수기 기간에는 대여료가 할증될 수 있습니다.</li>
      		<li>상기요금은 할인이 적용되지 않은 정상가격이며, TT렌터카에서 제공하는 다양한 카드로 할인 받으실 수 있습니다.</li>
      		<li>렌탈 요금 : 사용일수 x 기본요금 + 초과 시간당 요금, 단 초과 12시간일때는 1일 요금</li>
      		<li>총 면책금 : 사용일수 x 1일 자차 보험료</li>
      	</ul>
      <br>
      </div><!-- 승합card끝 -->
      
      <br>
      <br>
      <br>
      <br>
    </div><!-- id="home"끝-->
    

<div id="menu1" class="tab-pane fade"><br>
    <br>
<br>
	   <h3>경차</h3>
		<br>
      <table class="table table-hover" style="text-align: center;">
  	  <thead style="background-color:#FEFCF9;">
      <tr style="border-top: 2px solid orange;">
        <th rowspan="2" style="border-right: 1px solid silver;">차종<p><br></p></th>
        <th colspan="3" style="border-right: 1px solid silver;">기본요금</th>
        <th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        <th colspan="3">1일 자차 보험료</th>
      </tr>
      <tr>
        <th style="border-right: 1px solid silver;">~1일</th>
        <th style="border-right: 1px solid silver;">3~6일</th>
        <th style="border-right: 1px solid silver;">7일~</th>
        <th style="border-right: 1px solid silver;">+6시간이하</th>
        <th style="border-right: 1px solid silver;">+6~10시간</th>
        <th style="border-right: 1px solid silver;">+10~12시간</th>
        <th style="border-right: 1px solid silver;">일반 자차</th>
        <th style="border-right: 1px solid silver;">PLUS 자차</th>
        <th>SUPER 자차</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">레이 바이퓨얼[LPG]</td>
        <td style="border-right: 1px solid silver;">108,900</td>
        <td style="border-right: 1px solid silver;">98,000</td>
        <td style="border-right: 1px solid silver;">87,100</td>
        <td style="border-right: 1px solid silver;">61,000</td>
        <td style="border-right: 1px solid silver;">78,400</td>
        <td style="border-right: 1px solid silver;">87,100</td>
        <td style="border-right: 1px solid silver;">7,000</td>
        <td style="border-right: 1px solid silver;">8,500</td>
        <td>10,000</td>
      </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">레이[가솔린]</td>
        <td style="border-right: 1px solid silver;">108,900</td>
        <td style="border-right: 1px solid silver;">98,000</td>
        <td style="border-right: 1px solid silver;">87,100</td>
        <td style="border-right: 1px solid silver;">61,000</td>
        <td style="border-right: 1px solid silver;">78,400</td>
        <td style="border-right: 1px solid silver;">87,100</td>
        <td style="border-right: 1px solid silver;">7,000</td>
        <td style="border-right: 1px solid silver;">8,500</td>
        <td>10,000</td>
        </tr>
    </tbody>
  </table>
      <br>
      
      <h3>소형</h3>
		<br>
      <table class="table table-hover" style="text-align: center;">
  	  <thead style="background-color:#FEFCF9;">
      <tr style="border-top: 2px solid orange;">
        <th rowspan="2" style="border-right: 1px solid silver;">차종<p><br></p></th>
        <th colspan="3" style="border-right: 1px solid silver;">기본요금</th>
        <th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        <th colspan="3">1일 자차 보험료</th>
      </tr>
      <tr>
        <th style="border-right: 1px solid silver;">~1일</th>
        <th style="border-right: 1px solid silver;">3~6일</th>
        <th style="border-right: 1px solid silver;">7일~</th>
        <th style="border-right: 1px solid silver;">+6시간이하</th>
        <th style="border-right: 1px solid silver;">+6~10시간</th>
        <th style="border-right: 1px solid silver;">+10~12시간</th>
        <th style="border-right: 1px solid silver;">일반 자차</th>
        <th style="border-right: 1px solid silver;">PLUS 자차</th>
        <th>SUPER 자차</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">아반떼AD 1.6[디젤]</td>
        <td style="border-right: 1px solid silver;">119,900</td>
        <td style="border-right: 1px solid silver;">107,900</td>
        <td style="border-right: 1px solid silver;">95,900</td>
        <td style="border-right: 1px solid silver;">67,100</td>
        <td style="border-right: 1px solid silver;">86,300</td>
        <td style="border-right: 1px solid silver;">95,900</td>
        <td style="border-right: 1px solid silver;">8,500</td>
        <td style="border-right: 1px solid silver;">10,000</td>
        <td>12,000</td>
      </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">엑센트신형 1.4 5DR[가솔린]</td>
        <td style="border-right: 1px solid silver;">108,900</td>
        <td style="border-right: 1px solid silver;">98,000</td>
        <td style="border-right: 1px solid silver;">87,100</td>
        <td style="border-right: 1px solid silver;">61,000</td>
        <td style="border-right: 1px solid silver;">78,400</td>
        <td style="border-right: 1px solid silver;">87,100</td>
        <td style="border-right: 1px solid silver;">7,000</td>
        <td style="border-right: 1px solid silver;">8,500</td>
        <td>10,000</td>
        </tr>
    </tbody>
  </table>
      <br>
  	
      <h3>중형</h3>
      			<br>
      <table class="table table-hover" style="text-align: center;">
  	  <thead style="background-color:#FEFCF9;">
      <tr style="border-top: 2px solid orange;">
        <th rowspan="2" style="border-right: 1px solid silver;">차종<p><br></p></th>
        <th colspan="3" style="border-right: 1px solid silver;">기본요금</th>
        <th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        <th colspan="3">1일 자차 보험료</th>
      </tr>
      <tr>
        <th style="border-right: 1px solid silver;">~1일</th>
        <th style="border-right: 1px solid silver;">3~6일</th>
        <th style="border-right: 1px solid silver;">7일~</th>
        <th style="border-right: 1px solid silver;">+6시간이하</th>
        <th style="border-right: 1px solid silver;">+6~10시간</th>
        <th style="border-right: 1px solid silver;">+10~12시간</th>
        <th style="border-right: 1px solid silver;">일반 자차</th>
        <th style="border-right: 1px solid silver;">PLUS 자차</th>
        <th>SUPER 자차</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">STINGER 2.0 TURBO[가솔린]</td>
        <td style="border-right: 1px solid silver;">348,700</td>
        <td style="border-right: 1px solid silver;">313,800</td>
        <td style="border-right: 1px solid silver;">278,900</td>
        <td style="border-right: 1px solid silver;">195,300</td>
        <td style="border-right: 1px solid silver;">251,100</td>
        <td style="border-right: 1px solid silver;">279,000</td>
        <td style="border-right: 1px solid silver;">27,000</td>
        <td style="border-right: 1px solid silver;">32,000</td>
        <td>40,500</td>
      </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">쏘나타 뉴 라이즈 1.7 [디젤]</td>
        <td style="border-right: 1px solid silver;">181,500</td>
        <td style="border-right: 1px solid silver;">163,300</td>
        <td style="border-right: 1px solid silver;">145,200</td>
        <td style="border-right: 1px solid silver;">101,600</td>
        <td style="border-right: 1px solid silver;">130,700</td>
        <td style="border-right: 1px solid silver;">145,200</td>
        <td style="border-right: 1px solid silver;">14,500</td>
        <td style="border-right: 1px solid silver;">17,000</td>
        <td>22,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">쏘나타 뉴 라이즈 2.0 [LPI]</td>
        <td style="border-right: 1px solid silver;">181,500</td>
        <td style="border-right: 1px solid silver;">163,300</td>
        <td style="border-right: 1px solid silver;">145,200</td>
        <td style="border-right: 1px solid silver;">101,600</td>
        <td style="border-right: 1px solid silver;">130,700</td>
        <td style="border-right: 1px solid silver;">145,200</td>
        <td style="border-right: 1px solid silver;">14,500</td>
        <td style="border-right: 1px solid silver;">17,000</td>
        <td>22,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">쏘나타 뉴 라이즈 2.0 [가솔린]</td>
        <td style="border-right: 1px solid silver;">181,500</td>
        <td style="border-right: 1px solid silver;">163,300</td>
        <td style="border-right: 1px solid silver;">145,200</td>
        <td style="border-right: 1px solid silver;">101,600</td>
        <td style="border-right: 1px solid silver;">130,700</td>
        <td style="border-right: 1px solid silver;">145,200</td>
        <td style="border-right: 1px solid silver;">14,500</td>
        <td style="border-right: 1px solid silver;">17,000</td>
        <td>22,000</td>
        </tr>
    </tbody>
  </table>
      <br>
     
      <h3>대형</h3>
      <br>
      <table class="table table-hover" style="text-align: center;">
  	  <thead style="background-color:#FEFCF9;">
      <tr style="border-top: 2px solid orange;">
        <th rowspan="2" style="border-right: 1px solid silver;">차종<p><br></p></th>
        <th colspan="3" style="border-right: 1px solid silver;">기본요금</th>
        <th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        <th colspan="3">1일 자차 보험료</th>
      </tr>
      <tr>
        <th style="border-right: 1px solid silver;">~1일</th>
        <th style="border-right: 1px solid silver;">3~6일</th>
        <th style="border-right: 1px solid silver;">7일~</th>
        <th style="border-right: 1px solid silver;">+6시간이하</th>
        <th style="border-right: 1px solid silver;">+6~10시간</th>
        <th style="border-right: 1px solid silver;">+10~12시간</th>
        <th style="border-right: 1px solid silver;">일반 자차</th>
        <th style="border-right: 1px solid silver;">PLUS 자차</th>
        <th>SUPER 자차</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">2018 G70 2.0T [가솔린] 2WD</td>
        <td style="border-right: 1px solid silver;">348,700</td>
        <td style="border-right: 1px solid silver;">313,800</td>
        <td style="border-right: 1px solid silver;">278,900</td>
        <td style="border-right: 1px solid silver;">195,300</td>
        <td style="border-right: 1px solid silver;">251,100</td>
        <td style="border-right: 1px solid silver;">279,000</td>
        <td style="border-right: 1px solid silver;">27,000</td>
        <td style="border-right: 1px solid silver;">32,000</td>
        <td>40,500</td>
      </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">2018 G70 3.3T 스포츠 [가솔린] 2WD</td>
        <td style="border-right: 1px solid silver;">383,900</td>
        <td style="border-right: 1px solid silver;">345,500</td>
        <td style="border-right: 1px solid silver;">307,100</td>
        <td style="border-right: 1px solid silver;">215,000</td>
        <td style="border-right: 1px solid silver;">276,400</td>
        <td style="border-right: 1px solid silver;">307,100</td>
        <td style="border-right: 1px solid silver;">33,000</td>
        <td style="border-right: 1px solid silver;">39,000</td>
        <td>49,500</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">2018 K7 R2.2[디젤]</td>
        <td style="border-right: 1px solid silver;">321,200</td>
        <td style="border-right: 1px solid silver;">289,000</td>
        <td style="border-right: 1px solid silver;">256,900</td>
        <td style="border-right: 1px solid silver;">179,900</td>
        <td style="border-right: 1px solid silver;">231,300</td>
        <td style="border-right: 1px solid silver;">257,000</td>
        <td style="border-right: 1px solid silver;">25,000</td>
        <td style="border-right: 1px solid silver;">30,000</td>
        <td>37,500</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">STINGER 2.2[디젤]</td>
        <td style="border-right: 1px solid silver;">383,900</td>
        <td style="border-right: 1px solid silver;">345,500</td>
        <td style="border-right: 1px solid silver;">307,100</td>
        <td style="border-right: 1px solid silver;">215,000</td>
        <td style="border-right: 1px solid silver;">276,400</td>
        <td style="border-right: 1px solid silver;">307,100</td>
        <td style="border-right: 1px solid silver;">33,000</td>
        <td style="border-right: 1px solid silver;">39,000</td>
        <td>40,500</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">그랜저HG 300[LPG]</td>
        <td style="border-right: 1px solid silver;">286,000</td>
        <td style="border-right: 1px solid silver;">257,400</td>
        <td style="border-right: 1px solid silver;">228,800</td>
        <td style="border-right: 1px solid silver;">160,200</td>
        <td style="border-right: 1px solid silver;">205,900</td>
        <td style="border-right: 1px solid silver;">228,800</td>
        <td style="border-right: 1px solid silver;">28,600</td>
        <td style="border-right: 1px solid silver;">28,600</td>
        <td>28,600</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">그랜저IG 2.4[가솔린]</td>
        <td style="border-right: 1px solid silver;">308,000</td>
        <td style="border-right: 1px solid silver;">277,200</td>
        <td style="border-right: 1px solid silver;">246,400</td>
        <td style="border-right: 1px solid silver;">172,500</td>
        <td style="border-right: 1px solid silver;">221,800</td>
        <td style="border-right: 1px solid silver;">246,400</td>
        <td style="border-right: 1px solid silver;">25,000</td>
        <td style="border-right: 1px solid silver;">30,000</td>
        <td>37,500</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">그랜저IG 3.0[가솔린]</td>
        <td style="border-right: 1px solid silver;">337,700</td>
        <td style="border-right: 1px solid silver;">303,900</td>
        <td style="border-right: 1px solid silver;">270,100</td>
        <td style="border-right: 1px solid silver;">189,100</td>
        <td style="border-right: 1px solid silver;">243,100</td>
        <td style="border-right: 1px solid silver;">270,200</td>
        <td style="border-right: 1px solid silver;">27,000</td>
        <td style="border-right: 1px solid silver;">32,000</td>
        <td>40,500</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">그랜저IG 3.0렌터카/장애인[LPI]</td>
        <td style="border-right: 1px solid silver;">337,700</td>
        <td style="border-right: 1px solid silver;">303,900</td>
        <td style="border-right: 1px solid silver;">270,100</td>
        <td style="border-right: 1px solid silver;">189,100</td>
        <td style="border-right: 1px solid silver;">243,100</td>
        <td style="border-right: 1px solid silver;">270,200</td>
        <td style="border-right: 1px solid silver;">27,000</td>
        <td style="border-right: 1px solid silver;">32,000</td>
        <td>40,500</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">2018 GENESIS G80 2.2D 2WD</td>
        <td style="border-right: 1px solid silver;">451,000</td>
        <td style="border-right: 1px solid silver;">405,900</td>
        <td style="border-right: 1px solid silver;">360,800</td>
        <td style="border-right: 1px solid silver;">252,600</td>
        <td style="border-right: 1px solid silver;">324,700</td>
        <td style="border-right: 1px solid silver;">360,800</td>
        <td style="border-right: 1px solid silver;">42,000</td>
        <td style="border-right: 1px solid silver;">50,000</td>
        <td>63,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">GENESIS G80 3.3 GDI</td>
        <td style="border-right: 1px solid silver;">438,900</td>
        <td style="border-right: 1px solid silver;">395,000</td>
        <td style="border-right: 1px solid silver;">351,100</td>
        <td style="border-right: 1px solid silver;">245,800</td>
        <td style="border-right: 1px solid silver;">316,000</td>
        <td style="border-right: 1px solid silver;">351,100</td>
        <td style="border-right: 1px solid silver;">42,000</td>
        <td style="border-right: 1px solid silver;">50,000</td>
        <td>63,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">GENESIS G90 3.8[가솔린]2WD</td>
       <td style="border-right: 1px solid silver;">526,900</td>
        <td style="border-right: 1px solid silver;">474,200</td>
        <td style="border-right: 1px solid silver;">421,500</td>
        <td style="border-right: 1px solid silver;">295,100</td>
        <td style="border-right: 1px solid silver;">379,400</td>
        <td style="border-right: 1px solid silver;">421,500</td>
        <td style="border-right: 1px solid silver;">54,000</td>
        <td style="border-right: 1px solid silver;">64,800</td>
        <td>81,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">GENESIS G90 5.0[가솔린]AWD</td>
        <td style="border-right: 1px solid silver;">642,400</td>
        <td style="border-right: 1px solid silver;">578,100</td>
        <td style="border-right: 1px solid silver;">513,900</td>
        <td style="border-right: 1px solid silver;">359,700</td>
        <td style="border-right: 1px solid silver;">462,500</td>
        <td style="border-right: 1px solid silver;">513,900</td>
        <td style="border-right: 1px solid silver;">69,000</td>
        <td style="border-right: 1px solid silver;">82,800</td>
        <td>103,500</td>
        </tr>
    </tbody>
  </table>
  			<br>
  	
      
      <h3>소형SUV</h3>
                  			<br>
      <table class="table table-hover" style="text-align: center;">
  	  <thead style="background-color:#FEFCF9;">
      <tr style="border-top: 2px solid orange;">
        <th rowspan="2" style="border-right: 1px solid silver;">차종<p><br></p></th>
        <th colspan="3" style="border-right: 1px solid silver;">기본요금</th>
        <th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        <th colspan="3">1일 자차 보험료</th>
      </tr>
      <tr>
        <th style="border-right: 1px solid silver;">~1일</th>
        <th style="border-right: 1px solid silver;">3~6일</th>
        <th style="border-right: 1px solid silver;">7일~</th>
        <th style="border-right: 1px solid silver;">+6시간이하</th>
        <th style="border-right: 1px solid silver;">+6~10시간</th>
        <th style="border-right: 1px solid silver;">+10~12시간</th>
        <th style="border-right: 1px solid silver;">일반 자차</th>
        <th style="border-right: 1px solid silver;">PLUS 자차</th>
        <th>SUPER 자차</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">2019 스포티지 더 볼드 D1.6[디젤] 2WD</td>
        <td style="border-right: 1px solid silver;">209,000</td>
        <td style="border-right: 1px solid silver;">188,100</td>
        <td style="border-right: 1px solid silver;">167,200</td>
        <td style="border-right: 1px solid silver;">117,000</td>
        <td style="border-right: 1px solid silver;">150,500</td>
        <td style="border-right: 1px solid silver;">167,200</td>
        <td style="border-right: 1px solid silver;">15,000</td>
        <td style="border-right: 1px solid silver;">18,000</td>
        <td>22,500</td>
      </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">KONA 1.6[가솔린]TURBO 2WD</td>
        <td style="border-right: 1px solid silver;">176,000</td>
        <td style="border-right: 1px solid silver;">158,400</td>
        <td style="border-right: 1px solid silver;">140,800</td>
        <td style="border-right: 1px solid silver;">98,600</td>
        <td style="border-right: 1px solid silver;">126,700</td>
        <td style="border-right: 1px solid silver;">140,800</td>
        <td style="border-right: 1px solid silver;">14,500</td>
        <td style="border-right: 1px solid silver;">17,000</td>
        <td>22,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">KONA 1.6[디젤]ISG 2WD</td>
        <td style="border-right: 1px solid silver;">196,900</td>
        <td style="border-right: 1px solid silver;">177,200</td>
        <td style="border-right: 1px solid silver;">157,500</td>
        <td style="border-right: 1px solid silver;">110,300</td>
        <td style="border-right: 1px solid silver;">141,800</td>
        <td style="border-right: 1px solid silver;">157,500</td>
        <td style="border-right: 1px solid silver;">14,500</td>
        <td style="border-right: 1px solid silver;">17,000</td>
        <td>22,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">THE SMART SUV 니로 1.6[가솔린] 2WD</td>
        <td style="border-right: 1px solid silver;">181,500</td>
        <td style="border-right: 1px solid silver;">163,300</td>
        <td style="border-right: 1px solid silver;">145,200</td>
        <td style="border-right: 1px solid silver;">101,600</td>
        <td style="border-right: 1px solid silver;">130,700</td>
        <td style="border-right: 1px solid silver;">145,200</td>
        <td style="border-right: 1px solid silver;">14,500</td>
        <td style="border-right: 1px solid silver;">17,000</td>
        <td>22,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">THE SUV 스포티지U2 1.7[디젤] 2WD</td>
         <td style="border-right: 1px solid silver;">209,000</td>
        <td style="border-right: 1px solid silver;">188,100</td>
        <td style="border-right: 1px solid silver;">167,200</td>
        <td style="border-right: 1px solid silver;">117,000</td>
        <td style="border-right: 1px solid silver;">150,500</td>
        <td style="border-right: 1px solid silver;">167,200</td>
        <td style="border-right: 1px solid silver;">15,000</td>
        <td style="border-right: 1px solid silver;">18,000</td>
        <td>22,500</td>
        </tr>
    </tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">셀토스 1.6D[디젤]2WD</td>
       <td style="border-right: 1px solid silver;">196,900</td>
        <td style="border-right: 1px solid silver;">177,200</td>
        <td style="border-right: 1px solid silver;">157,500</td>
        <td style="border-right: 1px solid silver;">110,300</td>
        <td style="border-right: 1px solid silver;">141,800</td>
        <td style="border-right: 1px solid silver;">157,500</td>
        <td style="border-right: 1px solid silver;">14,500</td>
        <td style="border-right: 1px solid silver;">17,000</td>
        <td>22,000</td>
        </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">셀토스 1.6터보[가솔린]2WD</td>
        <td style="border-right: 1px solid silver;">196,900</td>
        <td style="border-right: 1px solid silver;">177,200</td>
        <td style="border-right: 1px solid silver;">157,500</td>
        <td style="border-right: 1px solid silver;">110,300</td>
        <td style="border-right: 1px solid silver;">141,800</td>
        <td style="border-right: 1px solid silver;">157,500</td>
        <td style="border-right: 1px solid silver;">14,500</td>
        <td style="border-right: 1px solid silver;">17,000</td>
        <td>22,000</td>
        </tr>
  </table>
  			<br>
  	
      <h3>중형SUV </h3>
      		         			<br>
      <table class="table table-hover" style="text-align: center;">
  	  <thead style="background-color:#FEFCF9;">
      <tr style="border-top: 2px solid orange;">
        <th rowspan="2" style="border-right: 1px solid silver;">차종<p><br></p></th>
        <th colspan="3" style="border-right: 1px solid silver;">기본요금</th>
        <th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        <th colspan="3">1일 자차 보험료</th>
      </tr>
      <tr>
        <th style="border-right: 1px solid silver;">~1일</th>
        <th style="border-right: 1px solid silver;">3~6일</th>
        <th style="border-right: 1px solid silver;">7일~</th>
        <th style="border-right: 1px solid silver;">+6시간이하</th>
        <th style="border-right: 1px solid silver;">+6~10시간</th>
        <th style="border-right: 1px solid silver;">+10~12시간</th>
        <th style="border-right: 1px solid silver;">일반 자차</th>
        <th style="border-right: 1px solid silver;">PLUS 자차</th>
        <th>SUPER 자차</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">2019 팰리세이드 2.2D[디젤]2WD</td>
        <td style="border-right: 1px solid silver;">383,900</td>
        <td style="border-right: 1px solid silver;">345,500</td>
        <td style="border-right: 1px solid silver;">307,100</td>
        <td style="border-right: 1px solid silver;">215,000</td>
        <td style="border-right: 1px solid silver;">276,400</td>
        <td style="border-right: 1px solid silver;">307,100</td>
        <td style="border-right: 1px solid silver;">33,000</td>
        <td style="border-right: 1px solid silver;">39,000</td>
        <td>49,500</td>
      </tr>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver;  text-align: left;">QM6 2.0 DCI[디젤] 2WD</td>
        <td style="border-right: 1px solid silver;">262,900</td>
        <td style="border-right: 1px solid silver;">236,600</td>
        <td style="border-right: 1px solid silver;">210,300</td>
        <td style="border-right: 1px solid silver;">147,200</td>
        <td style="border-right: 1px solid silver;">189,300</td>
        <td style="border-right: 1px solid silver;">210,300</td>
        <td style="border-right: 1px solid silver;">15,000</td>
        <td style="border-right: 1px solid silver;">18,000</td>
        <td>22,500</td>
        </tr>
    </tbody>
  </table>
  			<br>
      
      <h3>수입</h3>
      		        			<br>
      <table class="table table-hover" style="text-align: center;">
  	  <thead style="background-color:#FEFCF9;">
      <tr style="border-top: 2px solid orange;">
        <th rowspan="2" style="border-right: 1px solid silver;">차종<p><br></p></th>
        <th colspan="3" style="border-right: 1px solid silver;">기본요금</th>
        <th colspan="3" style="border-right: 1px solid silver;">초과 시간당 요금</th>
        <th colspan="3">1일 자차 보험료</th>
      </tr>
      <tr>
        <th style="border-right: 1px solid silver;">~1일</th>
        <th style="border-right: 1px solid silver;">3~6일</th>
        <th style="border-right: 1px solid silver;">7일~</th>
        <th style="border-right: 1px solid silver;">+6시간이하</th>
        <th style="border-right: 1px solid silver;">+6~10시간</th>
        <th style="border-right: 1px solid silver;">+10~12시간</th>
        <th style="border-right: 1px solid silver;">일반 자차</th>
        <th style="border-right: 1px solid silver;">PLUS 자차</th>
        <th>SUPER 자차</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border-bottom: 1px solid silver;">
        <td style="border-right: 1px solid silver; text-align: left;">BENZ E300[가솔린]4M</td>
        <td style="border-right: 1px solid silver;">561,000</td>
        <td style="border-right: 1px solid silver;">504,900</td>
        <td style="border-right: 1px solid silver;">448,800</td>
        <td style="border-right: 1px solid silver;">314,200</td>
        <td style="border-right: 1px solid silver;">403,900</td>
        <td style="border-right: 1px solid silver;">448,800</td>
        <td style="border-right: 1px solid silver;">46,000</td>
        <td style="border-right: 1px solid silver;">0</td>
        <td>0</td>
      </tr>
    </tbody>
  </table>
  			<br>
  			<br>
				<div class="row">
					<div class="col" align="center">
					<button class="border btn  btn-lg btn-light">제휴/할인 안내</button>
					<button class="btn btn-lg bg-warning" style="color: white;" onclick="location.href='shortTerm_jeju.jsp'">단기렌터카 예약</button>
					</div>
				</div>  			
  			<br>
  			<br>
      <div class="card" style="border:1px solid orange;">
      <br>
      	<ul>
      		<li>상기 요금은 내비게이션 등의 선택옵션 비용이 포함되어있지 않습니다.</li>
      		<li>모든 제휴 할인은 24시간 이상 대여 시 적용 됩니다.(차량손해면책보상 가입수수료는 할인대상에서 제외)</li>
      		<li>상기요금은 할인이 적용되지 않은 정상가격이며, TT렌터카에서 제공하는 다양한 카드로 할인 받으실 수 있습니다.</li>
      		<li>렌탈 요금 : 사용일수 x 해당 기본요금 + 초과 시간당 요금, 단 초과 12시간일때는 1일 요금</li>
      		<li>총 면책금 : 사용일수 x 1일 자차 보험료</li>
      	</ul>
      <br>
      </div><!-- 승합card끝 -->
      
      <br>
      <br>
      <br>
      <br>
    </div><!-- id="menu1"끝-->
    
    
    
    
 <div id="menu2" class="tab-pane fade"><br>
<br>
<br>
		<div class="container">
		<div class="row">
  		<div class="card"  style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top"  src="./resources/images/card1.gif" id="cardImage" style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
		<div class="row" id="image1">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		<div class="card" style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top" src="./resources/images/card2.gif"  id="cardImage" style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
		<div class="row" id="image1">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		</div>
		<div class="row">
  		<div class="card"  style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top" src="./resources/images/card3.gif" id="cardImage"  style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
		<div class="row" align="center">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		<div class="card" style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top" src="./resources/images/card4.gif"  id="cardImage" style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
		<div class="row" align="center">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		</div>
		<div class="row">
  		<div class="card"  style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top" src="./resources/images/card5.gif" id="cardImage" style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
		<div class="row" align="center">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		<div class="card" style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top" src="./resources/images/card6.gif"  id="cardImage" style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
	<div class="row" align="center">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		</div>
  				<div class="row">
  		<div class="card"  style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top" src="./resources/images/card7.gif"  id="cardImage" style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
		<div class="row" align="center">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		<div class="card" style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top" src="./resources/images/card8.gif" id="cardImage" style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
		<div class="row" align="center">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		</div>
		<div class="row">
  		<div class="card"  style="width:50%;">
  		<div class="row" id="image1">
		<div class="col">
    	<img class="card-img-top" src="./resources/images/card9.gif" id="cardImage" style="width:100%">
    	</div>
    	</div>
    	<div class="card-body">
      	<h4 class="card-title">T 멤버십 (일반/실버/골드/VIP 등급)</h4>
      	<div class="card-text">
				<p>제주 이용 시 할인혜택</p>
  				<h5>[비수기] 주중 80%할인 / 주말 75%할인</h5>
  				<hr>
  				<p>T 멤버십 일반/Silver/Gold/VIP등급 고객 해당</p>
  				<p>T 멤버십 內 VIP 라운지 > 생활/레저 예약가능(VIP등급 고객 해당) </p>
		</div>
		<div class="row" align="center">
		<div class="col">
      	<a href="#" class="border btn btn-lg stretched-link">카드신청</a>
    	</div>
    	</div>
    	</div>
  		</div>
  		</div>
  		<br>
  		<br>
  			<ul class="container">
  				<li>무료이용권 및 제휴 할인카드의 경우 직접 인증 후 예약 신청 가능</li>
  				<li>무료이용권(쿠폰) 사용시 초과 시간에 대한 기준 할인율은 제주 75%(비수기 주중 기준) 할인율 적용</li>
  				<li style="color:orange;">성수기(준성수기, 극성수기 포함), 비수기 시즌에 따라 제주 할인율이 다르게 적용됩니다.</li>
  				<li>주중 : 일~목, 주말 : 금~토, 공휴일 (대여 개시일 기준 적용) </li>
  			</ul>
  			<br>
  			<br>
  		<div class="row card">
  			<br>
  			<br>
 				<ul>
 					<li>모든 제휴할인은 24시간 이상 대여시 적용되며, 차량손해면책상 가입수수료는 할인대상에서 제외 됩니다.</li>
 					<li>엔크린 플래티넘카드는 주유사용실적에 따라 등급이 나뉘어지며, 자세한 사항은 엔크린닷컴(www.enclean.com)을 참고하시길 바랍니다.</li>
 					
 				</ul>
  			<br>
  			</div>
  			<br>
		</div><!-- menu2 container -->


      
    </div><!-- id="menu2끝 -->
  </div><!-- tab-content끝 -->
</div><!-- container 끝 -->
</div><!-- container col-sm-6끝 -->
<br>
<br>
<br>
</body>
</html>
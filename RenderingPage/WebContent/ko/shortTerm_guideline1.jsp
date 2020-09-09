<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단기렌터카 안내</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
<ul class="container nav nav-pills" role="tablist">
    <li class="col nav-item"style="height: 70px;">
      <a class="row nav-link active bg-secondary" data-toggle="pill" href="#home" style="color: white; height: 100%; text-align: center;">
      <p></p>
      <b>대여 안내</b>
      </a>
    </li>
    <li class="col nav-item">
      <a class="row nav-link bg-secondary" data-toggle="pill" href="#menu1" style="color: white;height: 100%;text-align: center;"><p></p><b>제주지점 안내</b></a>
    </li>
    <li class="col nav-item">
      <a class="row nav-link bg-secondary" data-toggle="pill" href="#menu2" style="color: white;height: 100%;text-align: center;"><p></p><b>내륙지점 안내</b></a>
    </li>
  </ul>
</div> 

  <!-- Tab panes -->
<div class="container">
<div class="tab-content">
<div id="home"  class="tab-pane active">
<br>
<div class="row">
	<h3 class="col">대여방법 및 절차&nbsp;</h3>
	<span class="float-right" style="font-size: 12px;">TT렌터카 사용예약을 위해 고객님께서는 아래 절차대로 진행해 주세요.</span>
    <button class="btn btn-secondary float-right">차량 사용법 안내</button>
    </div>
    <hr class="container">
    <br>
    <br>
    <div class="container">
    <table style="width: 100%; height: 260px;">
    	<tr class="row border" >
    		<td class="col border">
    			<br>
    			<div class="container"><h5>STEP.01</h5></div>
    			<div class="container">
    			<svg style="color:orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-calendar2-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
  				<path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
  				<path fill-rule="evenodd" d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
				</svg>
				&nbsp;
    			<b style="font-size: 7px;">대여기간 선택</b>
    			</div>
    			<br>
    		</td>
    		<td class="col border">
    		<br>
    			<div class="container"><h5>STEP.02</h5></div>
    			<div class="container">
    			<svg style="color:orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
				</svg>
				&nbsp;
    			<b style="font-size: 7px;">대여차량 선택</b>
    			</div>
    			<br>
    		</td>
    		<td class="col border">
    		<br>
    			<div class="container"><h5>STEP.03</h5></div>
    			<div class="container">
    			<svg style="color:orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-cone-striped" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path d="M9.97 4.88l.953 3.811C10.159 8.878 9.14 9 8 9c-1.14 0-2.158-.122-2.923-.309L6.03 4.88C6.635 4.957 7.3 5 8 5s1.365-.043 1.97-.12zm-.245-.978L8.97.88C8.718-.13 7.282-.13 7.03.88L6.275 3.9C6.8 3.965 7.382 4 8 4c.618 0 1.2-.036 1.725-.098zm4.396 8.613a.5.5 0 0 1 .037.96l-6 2a.5.5 0 0 1-.316 0l-6-2a.5.5 0 0 1 .037-.96l2.391-.598.565-2.257c.862.212 1.964.339 3.165.339s2.303-.127 3.165-.339l.565 2.257 2.391.598z"/>
				</svg>
				&nbsp;
    			<b style="font-size: 7px;">차량손해면책제도 선택</b>
    			</div>
    			<br>
    		</td>
    		<td class="col border">
    		<br>
    			<div class="container"><h5>STEP.04</h5></div>
    			<div class="container">
    			<svg style="color:orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-vector-pen" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M10.646.646a.5.5 0 0 1 .708 0l4 4a.5.5 0 0 1 0 .708l-1.902 1.902-.829 3.313a1.5 1.5 0 0 1-1.024 1.073L1.254 14.746 4.358 4.4A1.5 1.5 0 0 1 5.43 3.377l3.313-.828L10.646.646zm-1.8 2.908l-3.173.793a.5.5 0 0 0-.358.342l-2.57 8.565 8.567-2.57a.5.5 0 0 0 .34-.357l.794-3.174-3.6-3.6z"/>
  				<path fill-rule="evenodd" d="M2.832 13.228L8 9a1 1 0 1 0-1-1l-4.228 5.168-.026.086.086-.026z"/>
				</svg>
				&nbsp;
    			<b style="font-size: 7px;">대여고객정보 입력</b>
    			</div>
    			<br>
    		</td>
    	</tr>
    	<tr class="row border">
    		<td class="col border">
    			<br>
    			<div class="container"><h5>STEP.05</h5></div>
    			<div class="container">
    			<table>
    			<tr>
    				<td>
    					<svg style="color:orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  						<path fill-rule="evenodd" d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
						</svg>
    				</td>
    				<td>
    					<b class="col-sm-8" style="font-size: 7px;">개인정보수집<br>&nbsp;&nbsp;&nbsp;/대여약관 동의</b>
    				</td>
    			</tr>
    			</table>
    			</div>
    			<br>
    		</td>
    		<td class="col border">
    			<br>
    			<div class="container"><h5>STEP.06</h5></div>
    			<div class="container">
    			<svg style="color:orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-tags" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M3 2v4.586l7 7L14.586 9l-7-7H3zM2 2a1 1 0 0 1 1-1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 2 6.586V2z"/>
  				<path fill-rule="evenodd" d="M5.5 5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1zm0 1a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
  				<path d="M1 7.086a1 1 0 0 0 .293.707L8.75 15.25l-.043.043a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 0 7.586V3a1 1 0 0 1 1-1v5.086z"/>
				</svg>
				&nbsp;
    			<b style="font-size: 7px;">할인 카드 or 쿠폰 선택</b>
    			</div>
    			<br>
    		</td>
    		<td class="col border">
    			<br>
    			<div class="container"><h5>STEP.07</h5></div>
    			<div class="container">
    			<svg style="color:orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-credit-card" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v1h14V4a1 1 0 0 0-1-1H2zm13 4H1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V7z"/>
  				<path d="M2 10a1 1 0 0 1 1-1h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1z"/>
				</svg>
				&nbsp;
    			<b style="font-size: 7px;">결제방법 선택</b>
    			</div>
    			<br>
    		</td>
    		<td class="col border">
    			<br>
    			<div class="container"><h5>STEP.08</h5></div>
    				<div class="container">
    			<svg style="color: orange;"width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  				<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
				</svg>
				&nbsp;
    			<b style="font-size: 7px;">예약완료</b>
    			</div>
    			<br>
    		</td>
    	</tr>
    </table>
    </div>
    <br>
    <ul class="row">
    	<li>온라인으로 예약이 어려우신 경우 지점을 방문하시거나 전화로 예약이 가능합니다. ( 고객센터 : 1599-9111 )</li>
    </ul>
    <br>
    <br>
    
<div class="container">
<div class="row"><h3>대여자격</h3><span class="col float-right" style="font-size: 12px;">도로교통법상 유효한 운전면허증 소지자</span></div>
<hr class="row">
  
  <div class="row">          
  <b>제주예약 시</b>  
  <br>          
  <br>
  <table class="table table-hover">
    <thead>
      <tr style="background-color: #FEFCF9;">
        <th>구분</th>
        <th>연령</th>
        <th>면허증/운전경력</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>승용차, 9인승 이하</td>
        <td>만21세 이상</td>
        <td>2종 보통면허 이상, 운전경력 1년이상</td>
      </tr>
      <tr>
        <td>11인승 이상</td>
        <td>만26세 이상</td>
        <td>1종 보통면허 이상, 운전경력 3년이상</td>
      </tr>
      <tr>
        <td>수입차</td>
        <td>만26세 이상</td>
        <td>운전경력 3년 이상</td>
      </tr>
    </tbody>
  </table>
  <br>
    <b>내륙예약 시</b>       
    <br>     
    <br>     
  <table class="table table-hover">
    <thead>
      <tr style="background-color: #FEFCF9;">
        <th>구분</th>
        <th>연령</th>
        <th>면허증/운전경력</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>경, 소, 중형 이하</td>
        <td>만21세 이상</td>
        <td>2종 보통면허 이상, 운전경력 1년이상</td>
      </tr>
      <tr>
        <td>대형, SUV</td>
        <td>만26세 이상</td>
        <td>2종 보통면허 이상, 운전경력 3년이상</td>
      </tr>
      <tr>
        <td>11인승 이상</td>
        <td>만26세 이상</td>
        <td>1종 보통면허 이상, 운전경력 3년이상</td>
      </tr>
      <tr>
        <td>수입차</td>
        <td>만26세 이상</td>
        <td>2종 보통 면허, 운전경력 3년 이상</td>
      </tr>
    </tbody>
  </table>
  <ul class="row">
  	<li>대여자격 기준에 적합하지 않은 면허증을 소지하신 경우 대여가 취소 될 수 있으니 이점 유념하여 주시기 바랍니다.</li>
  	<li>대여 당일 운전면허증 미 지참 시 차량 대여가 불가하오니, 꼭 지참 후 방문부탁드립니다.</li>
  	<li>외국인의 경우, 국제운전면허증(B등급이상) 소지자에 한해 9인승 이하 차량만 대여 가능합니다.(지점 동행방문시 가능)</li>
  </ul>
  </div>
  
 <br>
 <br> 
 <div class="row"><h3>대여 중 사고 시 보상범위</h3></div>
<hr class="row">
 <table class="row table table-hover" style="width: 100%;">
      <tr>
        <td style="background-color: #FEFCF9;">대인</td>
        <td>무한</td>
        <td style="background-color: #FEFCF9;">대물</td>
        <td>사고 건당 2천만 원 한도</td>
      </tr>
      <tr>
        <td style="background-color: #FEFCF9;"><br><br>자손</td>
        <td colspan="3">
        	<br>
        	<p></p>
			<p>인당 1천5백만 원 한도 / 사고 건당 1억5천만 원 한도 </p>
			<p>·계약서상 등록되지 않은 운전자는 종합보험혜택을 받으실수 없습니다</p>
			<p></p>
        	<br>
		</td>
      </tr>
  </table>
 <br>
 <br>
 
 <div class="row"><h3>차량손해면책제도</h3><span class="col float-right" style="font-size: 11px;">차량손해면책제도 가입 시 고객님의 귀책으로 인한 자차사고에 대해 보상을 받을 수 있는 제도 입니다.</span></div>
 <hr class="row">
</div>
<b>제주</b>
<div class="container">
<br>
	<table style="width: 100%">
		<tr class="border row">
			<td class="border col">
				<div class="row">
				<b><svg style="color:orange;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
				</svg></b>
				<p>&nbsp;완전자차</p>
				</div>
				<div class="row float-right">
					<h3 style="color: orange;">0<sub style="font-size: 7px; color:black;">원</sub></h3>
				</div>
			</td>
			<td class="border col">
				<div class="row">
				<b><svg style="color:orange;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
				</svg></b>
				<p>&nbsp;일반자차</p>
				</div>
				<div class="row float-right">
					<h3 style="color: orange;">50<sub style="font-size: 7px; color:black;">만원</sub></h3>
				</div>
			</td>
			<td class="border col">
				<div class="row">
				<b><svg style="color:orange;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
				</svg></b>
				<p>&nbsp;자차미가입</p>
				</div>
				<div class="row float-right">
					<h5 style="color: orange;">고객 전액<sub style="font-size: 7px; color:black;">부담</sub></h5>
				</div>
			</td>
		</tr>
	</table>
	<br>
	
<b class="row">내륙</b>
<br>
	<table style="width: 100%">
		<tr class="border row">
			<td class="border col">
				<div class="row">
				<b><svg style="color:orange;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
				</svg></b>
				<p>&nbsp;SUPER 자차</p>
				</div>
				<div class="row float-right">
					<h3 style="color: orange;">5<sub style="font-size: 7px; color:black;">만원</sub></h3>
				</div>
			</td>
			<td class="border col">
				<div class="row">
				<b><svg style="color:orange;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
				</svg></b>
				<p>&nbsp;PLUS 자차</p>
				</div>
				<div class="row float-right">
					<h3 style="color: orange;">10<sub style="font-size: 7px; color:black;">만원</sub></h3>
				</div>
			</td>
			<td class="border col">
				<div class="row">
				<b><svg style="color:orange;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
				</svg></b>
				<p>&nbsp;일반자차</p>
				</div>
				<div class="row float-right">
					<h3 style="color: orange;">30<sub style="font-size: 7px; color:black;">만원</sub></h3>
				</div>
			</td>
			<td class="border col">
				<div class="row">
				<b><svg style="color:orange;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
				</svg></b>
				<p>&nbsp;자차미가입</p>
				</div>
				<div class="row float-right">
					<h5 style="color: orange;">고객 전액<sub style="font-size: 7px; color:black;">부담</sub></h5>
				</div>
			</td>
		</tr>
	</table>
 </div>  
<ul class="row">
<li>단, 대여 차량 계약 시 선택한 차량손해면책제도 가입 종류에 따라 고객 부담금(면책금)이 차등 적용됩니다.</li>
<li>수입차의 경우 일반자차만 선택 가능합니다.</li>
<li>공항지점 수입차의 면책금은 별도 규정이 적용됩니다.(PLUS자차 30만원, 일반자차 50만원)</li>
</ul>
<br> 
<br> 
 
 <div class="container">
 <div class="row"><h3>사고처리</h3></div>
 <hr class="row">

<div class="container" align="center">
 <table style="width: 100%;">
 	<tr class="row" style="height: 110px;">
 		<td class="col-sm-3 card bg-light" style="height:80%;text-align: center; border-radius: 50px;" ><p></p><p></p><p>ONE STOP 서비스</p></td>
 		<td class="col-sm-1"><br><hr style="border: 1px solid silver;"></td>
 		<td class="col-sm-3 card" style="background-color: orange; color: white;font-size: 20px;height: 100%;border-radius: 60px;">
 			<div class="body" align="center">
 			<p></p>
 			<p>사고처리 접수</p>
 			<h3>1599-9111</h3>
 			</div>
 		</td>
 		<td class="col-sm-1"><br><hr style="border: 1px solid silver;"></td>
 		<td class="col-sm-3 card bg-light"style="height: 80%;text-align: center;border-radius: 50px;" ><p></p><p></p><p>긴급출동 서비스</p></td>
 	</tr>
 </table>
 </div>
</div>    
<br>

 <div class="card">
 <br>
 <div class="card-body">
 	<p><b>“예기치 못한 사고발생! 당황하지 마세요.”</b></p>
 	<p style="color:orange;">고객님의 안전을 위해 사고처리 전문가가 신속하게 상담해드립니다. </p>
 	<p>(단 교통법규 위반, 음주운전 등으로 인해 사고발생 시 보상의 범위가 좁혀질 수 있습니다.)</p>
<br>
</div>
</div>
<br>
<br>


<div class="container">
<div class="row"><h3>대여 시 유의사항</h3></div>
<hr class="row">
<table style="width: 100%; height: 150px;">
	<tr class="row bg-light" height="100%">
		<td class="col border" align="center"><p></p><img src="./resources/images/danger1.gif"></td>
		<td class="col border" align="center"><p></p><img src="./resources/images/danger2.gif"></td>
		<td class="col border" align="center"><p></p><img src="./resources/images/danger3.gif"></td>
		<td class="col border" align="center"><p></p><img src="./resources/images/danger4.gif"></td>
		<td class="col border" align="center"><p></p><img src="./resources/images/danger5.gif"></td>
	</tr>
</table>

<br>
<div class="row card" style="border:1px solid orange;">
		<br>
	<ul>
		<li>대여기간이 24시간 미만인 경우 할인혜택이 적용되지 않습니다.</li>
		<li>예약자 본인 명의 제휴카드로만 할인 가능하며, 차량 예약 및 인수 시 제휴카드를 반드시 지참해 주시기 바랍니다.</li>
		<li>대여 당일 차량인수 시 운전면허증 지참은 필수입니다.(도로교통법상 유효한 운전면허소지자)</li>
		<li>외국인의 경우, 국제운전면허증(B등급이상) 소지자에 한해 9인승 이하 차량만 대여 가능합니다.</li>
		<li>반드시 예약자와 운전자가 동일해야하며, 제2운전자 등록은 예약자 외 1인에 한해 추가 등록 가능합니다.</li>
		<li>취소 및 위약규정</li>
			<li style="list-style:none;">대여시간 24시간 이내 취소 시 순수차량 대여요금의 10% 위약금이 발생합니다.</p>
			<li style="list-style:none;">대여시간 이후(NO-Show) 취소시 순수차량 대여요금의 10% 위약금이 발생합니다.</p>
			<li style="list-style:none;">대여시간에서 2시간 경과시 예약이 임의로 취소됩니다.</p>
		<li>사전 동의 없이 임의로 연장해 사용하실 경우 차량 손해에 대해 보상 및 면책을 받지 못할 수 있으니, 이용 연장 시 반드시 약속된 반납 시간 이전에 대여지점으로
연락바랍니다.</li>
		<li>금지행위(음주/무면허운전 등)으로 인한 사고 발생 시 보험 혜택 적용이 불가합니다.</li>
		<li>반려동물 동반 탑승은 불가합니다. (케이지 포함)</li>
		<li style="list-style:none;">(*다음 이용 고객에 알레르기 등 불편을 줄 수 있어, 동반 탑승 시 클리닝 비용(10만원 이상)이 추가 발생할 수 있습니다.) </li>
	</ul>
	<br>
</div>
 </div>
</div><!-- id="home"끝 -->    

    <div id="menu1" class="container tab-pane fade"><br>
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
 </div>
 
 
 </div><!-- content끝 -->
</div><!--container끝  -->
</div> <!-- container col-sm-6끝 -->
</body>
</html>
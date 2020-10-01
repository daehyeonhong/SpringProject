<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
	#city{color:orange; border-right: 1px solid silver;}
	#tab1{color: white; height: 100%; text-align: center;color: black;}
</style>
</head>
<body>
<!-- 단기렌트 제목틀-->
<div class="jumbotron bg-white">
  <div class="container col-sm-6">
  <h1>단기렌터카 안내</h1>
  </div>
</div><!-- 제목틀 끝 -->

<div class="container col-sm-6">



<div class="col-sm-12">
  <ul class="nav border bg-light" role="tablist">
    <li class="col nav-item" style="height: 60px;">
      <a class="row nav-link active" data-toggle="pill" href="#home33" id="tab1">
    	<p></p>
      <b>대여 안내</b>
      </a>
    </li>
    <li class="col nav-item">
      <a class="row nav-link" data-toggle="pill" href="#menu111" id="tab1">
    	<p></p>
      <b>제주지점 안내</b>
      </a>
    </li>
    <li class="col nav-item">
      <a class="row nav-link" data-toggle="pill" href="#menu222" id="tab1">
    <p></p>
      <b>내륙지점 안내</b>
    </a>
    </li>
  </ul>
  </div>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home33" class="container tab-pane active"><br>
     <br>
<br>

<div class="row">
	<h3 class="col  container">대여방법 및 절차&nbsp;
	<span style="font-size: 12px;">TT렌터카 사용예약을 위해 고객님께서는 아래 절차대로 진행해 주세요.</span>
	<button class="btn btn-sm border bg-light float-right" onclick="location.href='shortTerm_carUser_method.jsp'">차량 사용법 안내</button>
	</h3>
    </div>
    <hr>
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
<div class="row"><h3>대여자격<span style="font-size: 12px;">도로교통법상 유효한 운전면허증 소지자</span></h3></div>
<hr class="row">
  
  <div class="row">          
  <b>제주예약 시</b>  
  <br>          
  <br>
  <table class="table table-hover" >
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
<div class="row">
 <div class="container">
 <table class="col-sm-12 table table-hover">
      <tr class="row" style="text-align: center;">
        <td style="background-color: #FEFCF9;" class="col-sm-2">대인</td>
        <td class="col-sm-4">무한</td>
        <td style="background-color: #FEFCF9;" class="col-sm-2">대물</td>
        <td class="col-sm-4">사고 건당 2천만 원 한도</td>
      </tr>
      <tr class="row" style="border-top: 1px silver solid; border-bottom: 1px solid silver;">
        <td style="background-color: #FEFCF9;"class="col-sm-2"><br><br>자손</td>
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
  </div>
  </div>
 <br>
 <br>
 
 <div class="row"><h3>차량손해면책제도<span style="font-size: 11px;">차량손해면책제도 가입 시 고객님의 귀책으로 인한 자차사고에 대해 보상을 받을 수 있는 제도 입니다.</span></h3></div>
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
<br>
  	<div class="row">
	  			<div class="col">
	  			<div class="row">
	  			</div>
	  			<br>
	  			<div class="card" style="border-radius:30%;width:100%; height: 100px;">
	  				<div class="text-center">
	  				<p></p>
	  				<p><br>ONE STOP 서비스</p>
					 </div>
					 <br>
				</div>
	  			</div>
	  			<div class="col"></div>
	  			<div class="col card bg-warning" style="border-radius: 30%;width: 150px; height: 150px;">
	  				<div class="text-center">
	  				<br>
	  				<p style="color:white;"><br>사고처리 접수<br>
					       <b style="font-size: 20px;">1599-9111</b></p>
					 </div>
					 <br>
	  			</div>
	  			<div class="col"></div>	  	
	  			<div class="col">
	  			<div class="row">
	  			</div>
	  			<br>
	  			<div class="card" style="border-radius:30%;width:100%; height: 100px;">
	  				<div class="text-center">
	  				<p></p>
	  				<p><br>긴급출동 서비스</p>
					 </div>
					 <br>
				</div>
	  			</div>
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
		<td class="col border" align="center"><p></p><img src="../resources/images/danger1.gif"></td>
		<td class="col border" align="center"><p></p><img src="../resources/images/danger2.gif"></td>
		<td class="col border" align="center"><p></p><img src="../resources/images/danger3.gif"></td>
		<td class="col border" align="center"><p></p><img src="../resources/images/danger4.gif"></td>
		<td class="col border" align="center"><p></p><img src="../resources/images/danger5.gif"></td>
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
     
     
     
     
     
     
     
 </div>
    <div id="menu111" class="container tab-pane fade"><br>
       <br>
      <h3>제주지점 안내</h3>
      <hr>
      <br>
      <div class="card">
      <br>
      	<ul>
      	<li>
      	<b>제주특별자치도 제주시 이호일동 1898-5 (Tel : 064-726-6460)</b>
      	<b>예약/반납 가능 시간 06:00 ~ 22: 00</b>
      	</li>
      	</ul>
      <br>
      </div>
      <br>
      <br>
	  <h3>제주지점 차량 대여 / 반납 안내</h3>      
	  <hr>
	         <br>
       <div class="container row">
      <h6 style="font-weight: bold;">대여 절차 안내<span style="font-size: 7px;">차량 대여 및 반납 시 계약서 작성 및 차량 체크로 인하여, 예약된 시간보다 조금 일찍 지점에 방문해 주세요.</span></h6>
      </div>
      <div class="container">
      <div class="row">
      	<div class="col card">
      		<table style="height: 70px;">
      			<tr>
      				<td colspan="2"><h5>STEP.01</h5></td>
      			</tr>
      			<tr style="height: 50%;">
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-geo-alt" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M12.166 8.94C12.696 7.867 13 6.862 13 6A5 5 0 0 0 3 6c0 .862.305 1.867.834 2.94.524 1.062 1.234 2.12 1.96 3.07A31.481 31.481 0 0 0 8 14.58l.208-.22a31.493 31.493 0 0 0 1.998-2.35c.726-.95 1.436-2.008 1.96-3.07zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
  							<path fill-rule="evenodd" d="M8 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">
      					셔틀 버스 하차 후 사전 안내 된 배차존 주차구역으로 이동 (예: A-0구역)
      				</p></td>      				
      			</tr>
      		</table>
      	 	<br>
      	 	<br>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.02</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  							<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">
      					차량 번호 및 출발 전 체크 사항 확인 후 배차존 출구로 이동
      				</p></td>      				
      			</tr>
      		</table>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.03</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-vector-pen" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M10.646.646a.5.5 0 0 1 .708 0l4 4a.5.5 0 0 1 0 .708l-1.902 1.902-.829 3.313a1.5 1.5 0 0 1-1.024 1.073L1.254 14.746 4.358 4.4A1.5 1.5 0 0 1 5.43 3.377l3.313-.828L10.646.646zm-1.8 2.908l-3.173.793a.5.5 0 0 0-.358.342l-2.57 8.565 8.567-2.57a.5.5 0 0 0 .34-.357l.794-3.174-3.6-3.6z"/>
  							<path fill-rule="evenodd" d="M2.832 13.228L8 9a1 1 0 1 0-1-1l-4.228 5.168-.026.086.086-.026z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">면허증 및 차량 상태 확인 후 계약서 자필 서명</p></td>      				
      			</tr>
      		</table>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.04</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  							<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">차량 대여 시작~! TT렌터카와 함께 즐거운 여행 ~ 제주 여행~</p></td>      				
      			</tr>
      		</table>
      	</div>
      </div>
      </div>
      
      <br>
       <h6 style="font-weight: bold;">반납 절차 안내</h6>
        <div class="container">
      <div class="row">
      	<div class="col card">
      		<table>
      			<tr>
      				<td colspan="2"><h5>STEP.01</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-house-door" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z"/>
  							<path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">반납존에 차량 주차</p><p style="font-size: 7px;">(커브길 주의)</p></td>      				
      			</tr>
      		</table>
      	<br>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.02</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  							<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">차량 외관 확인</p><p style="font-size: 7px;">※ 외관 손상 확인 및 손상시 보험 처리(차량손해면책제도)</p></td>      				
      			</tr>
      		</table>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.03</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-calculator" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M12 1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4z"/>
  							<path d="M4 2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-2zm0 4a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3-6a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3-6a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-4z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">추가 결제 사항 및</p><p style="font-size: 7px;">환불 유/무 체크</p></td>      				
      			</tr>
      		</table>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.04</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  							<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">차량 반납 완료~!</p><p style="font-size: 7px;">※ 유류량 정산 TIP 참조</p></td>      				
      			</tr>
      		</table>
      	</div>
      </div>
      </div>
	  <br>
	  <br>
	  
	  <div class="card">
	  	<div class="body">
	  	<br>
	  		<ul style="font-size: 15px;">
	  			<li>예약 1일전 발송되는 ‘알림톡으로 제2운전자를 등록’하시면 지점 도착 후 <span style="color: orange;">‘바로 출발 서비스’</span> 이용이 가능합니다.</li>
	  			<li>휴차 보상료 : 차량손해면책제도 가입 유/무에 관계없이 차량 손해 발생시, 수리 기간 동안 표준 대여요금의 50%에 해당하는 금액 청구
	  					<p>(휴차보상료 청구 여부는 지점 정책에 따라 변동될 수 있으므로 확인 필수)</p>
	  			</li>
	  			<li>유류량 규정 : 배차 시 체크한 유류량보다 적은양으로 차량 반납 시 추가요금 발생</li>
	  			<li>
	  				<span style="color: orange;">
	  				유류량 정산 TIP )
	  					<ol>
	  						<li>리터 환산 기준 : 차종별 제원표의 표준 연료량 기준으로 산정 (단, LPG 차량은 탱크용량의 85% 까지만 충전)</li>
	  						<li>환불, 추가요금 산정 기준 : 오피넷 기준으로 해당일자, 지역별 평균 단가로 산정</li>
	  					</ol>
	  				</span>
	  			</li>
	  		</ul>
	  		<br>
	  	</div>
	  </div>
	  <br>
	  <br>
	  <br>
	  <h3>셔틀버스 탑승장소<span style="font-size: 10px;">&nbsp;(공항 → 제주지점)</span></h3>
	  <hr>
	  <div class="container">
	  <div class="row">
	  <div class="col card">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">STEP 01.</h4>
      <p class="card-text">공항 5번 Gate를 나오셔서 횡단보도를 건너세요.</p>
    </div>
    </div>
	  <div class="col card">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">STEP 02.</h4>
      <p class="card-text">공항 5번 Gate를 나오셔서 횡단보도를 건너세요.</p>
    </div>
    </div>
	  <div class="col card">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">STEP 03.</h4>
      <p class="card-text">렌터카 하우스 화장실 측 출입구를 통해 내부로 들어가세요.</p>
    </div>
    </div>
  </div>
  <!-- 2번째 행 -->
  <div class="row ">
	  <div class="col card">
    <img class="card-img-top" src="" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">STEP 04.</h4>
      <p class="card-text">렌터카 하우스를 통과해 맞은편 출입구로 나가세요.</p>
    </div>
    </div>
	  <div class="col card">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">STEP 05.</h4>
      <p class="card-text">TT렌터카 셔틀버스를 타고 제주지점으로 이동하세요. 1구역 2승차장 (8~10분 간격)</p>
    </div>
    </div>
	  <div class="col card">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">STEP 06.</h4>
      <p class="card-text">제주지점 도착 후 차량을 수령하고 즐겁게 제주도를 여행하세요.</p>
    </div>
    </div>
  </div>
  
  </div><!-- container -->
  <br>
  <br>
	  
	  <h3>셔틀버스 운행시간<span style="font-size: 10px;">&nbsp;(공항 ↔ 제주지점)</span></h3>
	  <hr>
	  <br>
	  	<div class="row">
	  			<div class="col">
	  			<div class="row">
	  			</div>
	  			<br>
	  			<div class="card" style="border-radius:30%;width:100%; height: 100px;">
	  				<div class="text-center">
	  				<p style="color:orange;">제주항공</p>
	  				<p>첫차 07:30<br>
					        막차 22:30</p>
					 </div>
					 <br>
				</div>
	  			</div>
	  			<div class="col"></div>
	  			<div class="col card bg-warning" style="border-radius: 30%;width: 150px; height: 150px;">
	  				<div class="text-center">
	  				<br>
	  				<svg style="color:white;" width="4em" height="3em" viewBox="0 0 16 16" class="bi bi-truck" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  					<path fill-rule="evenodd" d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
					</svg>
	  				<p style="color:white;">8~10분 간격 배차<br>
					       15분 소요</p>
					 </div>
					 <br>
	  			</div>
	  			<div class="col"></div>	  	
	  			<div class="col">
	  			<div class="row">
	  			</div>
	  			<br>
	  			<div class="card" style="border-radius:30%;width:100%; height: 100px;">
	  				<div class="text-center">
	  				<p style="color:orange;">TT렌터카 제주</p>
	  				<p>첫차 06:00<br>
					        막차 21:30</p>
					 </div>
					 <br>
				</div>
	  			</div>
	  	</div>
	  	<br>
	  	<br>
	  	<div class="card">
	  		<br>
	  		<ul>
	  			<li>비행기 지연으로 늦어지는 고객님을 위하여 <span style="color:orange;">22:30까지 탄력적으로 운행되며 미 탑승 시 당일 인수 불가</span>합니다.</li>
	  			<li>셔틀버스 탑승 시 <span style="color:orange;">최소 출발 5분 전 탑승</span>바랍니다.</li>
	  			<li>셔틀버스 배차 및 소요시간은 교통 상황에 따라 변동될 수 있습니다.
	  					<p>(성수기, 주말, 5일장에는 교통 혼잡 발생)</p>
	  			</li>
	  			<li>일정에 차질이 없도록 반납 시 <span style="color:orange;">최소 비행기 출발 1시간 30분 전 지점에 도착</span>바랍니다.</li>
	  		</ul>
	  		<br>
	  	</div>
	  	<br>
	  	<br>
	  	
	  	<h3>제주지점 차량 관리 시스템</h3>
	  	<hr>
	  	 <div class="container">
	  <div class="row">
	  <div class="col card">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body">
      <h5>STEP 01.&nbsp;<span class="card-text">차량 반납 후 세차</span></h5>
    </div>
    </div>
	  <div class="col card">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body">
      <h5>STEP 02.&nbsp;<span class="card-text">안전 정비 점검</span></h5>
    </div>
    </div>
	  <div class="col card">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body">
     <h5>STEP 03.&nbsp;<span class="card-text">대차 준비 완료</span></h5>
    </div>
    </div>
    </div>
    </div>
	  
      
      
      
      
      
      
      
      
    </div>
    <div id="menu222" class="container tab-pane fade"><br>
      <br>
      <h3>내륙지점 안내</h3>
      <hr>
      <br>
      <div class="container">
      <table class="table table-striped">
      <thead>
      	<tr class="row" style="text-align: center;"><th class="col" colspan="2">지점</th></tr>
      </thead>
      <tbody style="height: 30px;text-align: center">
      	<tr class="row">
      		<td class="col" id="city">서울</td>
      		<td class="col">25지점</td>
      	</tr>
      	<tr class="row">
      		<td class="col" id="city">경기</td>
      		<td class="col">30지점</td>
      	</tr>
      	<tr class="row">
      		<td class="col" id="city">강원</td>
      		<td class="col">7지점</td>
      	</tr>
      	<tr class="row">
      		<td class="col" id="city">충청</td>
      		<td class="col">18지점</td>
      	</tr>
      	<tr class="row">
      		<td class="col" id="city">경상</td>
      		<td class="col">18지점</td>
      	</tr>
      	<tr class="row">
      		<td class="col" id="city">전라</td>
      		<td class="col">13지점</td>
      	</tr>
      	</tbody>
      </table>     
      </div>
      <br>
      	<div class="card">
      		<br>
      		<ul>
      			<li>각 지점별로 예약 가능 시간대가 다릅니다.</li>
      			<li>지점 안내를 통해 지점별 정보를 확인 하세요.</li>
      			<li>대여지점과 반납지점이 다를 경우, 편도 수수료가 발생할 수 있습니다.</li>
      		</ul>
      	</div>
      <br>
      <br>
      <br>
      <h3>내륙지점 차량 대여/반납 안내</h3>
      <hr>
       <br>
       <div class="container row">
      <h6 style="font-weight: bold;">대여 절차 안내<span style="font-size: 7px;">차량 대여 및 반납 시 계약서 작성 및 차량 체크로 인하여, 예약된 시간보다 조금 일찍 지점에 방문해 주세요.</span></h6>
      </div>
      <div class="container">
      <div class="row">
      	<div class="col card">
      		<table style="height: 70px;">
      			<tr>
      				<td colspan="2"><h5>STEP.01</h5></td>
      			</tr>
      			<tr style="height: 50%;">
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zm4.854-7.85a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">예약번호/ 예약자명</p><p style="font-size: 7px;">확인하기</p></td>      				
      			</tr>
      		</table>
      	 	<br>
      	 	<br>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.02</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  							<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">면허증 제시 및</p><p style="font-size: 7px;">계약서 작성</p></td>      				
      			</tr>
      		</table>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.03</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-vector-pen" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M10.646.646a.5.5 0 0 1 .708 0l4 4a.5.5 0 0 1 0 .708l-1.902 1.902-.829 3.313a1.5 1.5 0 0 1-1.024 1.073L1.254 14.746 4.358 4.4A1.5 1.5 0 0 1 5.43 3.377l3.313-.828L10.646.646zm-1.8 2.908l-3.173.793a.5.5 0 0 0-.358.342l-2.57 8.565 8.567-2.57a.5.5 0 0 0 .34-.357l.794-3.174-3.6-3.6z"/>
  							<path fill-rule="evenodd" d="M2.832 13.228L8 9a1 1 0 1 0-1-1l-4.228 5.168-.026.086.086-.026z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">차량번호 및</p><p style="font-size: 7px;">출발 전 체크 사항 확인</p></td>      				
      			</tr>
      		</table>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.04</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  							<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">차량 대여 시작~!</p><p style="font-size: 7px;">TT렌터카와 함께 즐거운 여행 ~</td>      				
      			</tr>
      		</table>
      	</div>
      </div>
      </div>
      
      <br>
       <h6 style="font-weight: bold;">반납 절차 안내</h6>
        <div class="container">
      <div class="row">
      	<div class="col card">
      		<table>
      			<tr>
      				<td colspan="2"><h5>STEP.01</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-house-door" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z"/>
  							<path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">반납 지점에</p><p style="font-size: 7px;">차량 주차</p></td>      				
      			</tr>
      		</table>
      	<br>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.02</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  							<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">차량 외관 확인</p><p style="font-size: 7px;">※ 외관 손상 확인 및 손상시 보험 처리(차량손해면책제도)</p></td>      				
      			</tr>
      		</table>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.03</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-calculator" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M12 1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4z"/>
  							<path d="M4 2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-2zm0 4a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3-6a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3-6a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm0 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-4z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">추가 결제 사항 및</p><p style="font-size: 7px;">환불 유/무 체크</p></td>      				
      			</tr>
      		</table>
      	</div>
      	<div class="col card">
      			<table>
      			<tr>
      				<td colspan="2"><h5>STEP.04</h5></td>
      			</tr>
      			<tr>
      				<td>
      						<svg style="color: orange;" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-clipboard-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  							<path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
  							<path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3zm4.354 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
							</svg>
      				</td>
      				<td style="text-align: center;"><p style="font-size: 7px;">차량 반납 완료~!</p><p style="font-size: 7px;">※ 유류량 정산 TIP 참조</p></td>      				
      			</tr>
      		</table>
      	</div>
      </div>
      </div>
      <br>
      <br>
      <br>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    </div>
  </div>
</div>
<br>
<br>
<br>
<br>
<br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전기차 안내</title>
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
  <h1 style="border-bottom: 1px solid black;">전기차 안내<br><br></h1>
  </div>
</div>

<div class="container col-sm-6">
<div class="row container">
	<div class="container"  style="width: 100%;" >
		<div class="card-body">
		<br>
		<div class="row">
		<br>
			<div class="col">
				<br>
				<h4>전기차를 선택하신 고객님은 이미</h4>
				<h4 style="color:orange;">앞서가는 Eco Leader!</h4>
				<p>배기가스, CO2가 배출되지 않은 최고의 친환경 자동차! </p>
				<br>
				<button class="btn btn-md border" style="background-color: silver; color: white;"onclick="location.href='shortTerm_jeju.jsp'">제주 전기차 단기렌터카 예약</button>
				<br>
			</div>
		<img class="col" class="img" src="./resources/images/car_elec.gif">
		<p><br></p>
		</div>
		<br>
	</div>
	</div>
	</div>
	
	<br>
	<div class="row">
	<div class="container">
	<h3>전기차란?</h3>
	<br>
	<p>전기자동차 (EV, Electric Vehicle) 는 일반 차량의 엔진 대신 배터리와 모터가 장착되어, 배터리에 저장된 전기를 사용하여 모터를 구동시켜 주행하는 자동차입니다.</p>
	
  <table class="table border">
    <tbody>
      <tr>
        <td style="color:orange; border-right:1px silver solid;" rowspan="9">전기자동차 특징</td>
        <td rowspan="2" style="border-right:1px silver solid; ">・(친환경적)</td>
        <td>-주행시 화석연료를 사용하지 않아 CO2나 NOx를 배출하지 않습니다.</td>
      </tr>
      <tr>
        <td>-엔진이 없어 소음이 없고, 진동이 적습니다.</td>
      </tr>
      <tr>
        <td rowspan="2" style="border-right:1px silver solid; ">・(경제적)</td>
        <td>-운행비용이 내연기관차 대비 10%대로 저렴하고, 엔진오일 교환 등 유지 관리비가 들지 않습니다.</td>
      </tr>
      <tr>
        <td>- 내연기관차량 대비 보험료와 자동차세가 저렴합니다.</td>
      </tr>
      <tr>
        <td style="border-right:1px silver solid; ">・(편의성)</td>
        <td>-주유소를 찾을 필요가 없이 자택에서 충전 가능합니다.(충전시설 설치시)</td>
      </tr>
      <tr>
     	 <td rowspan="4" style="border-right:1px silver solid; ">・(구매시 혜택)</td>
        <td>-정부 보조금 및 지방정부 보조금 수령</td>
      </tr>
      <tr>
        <td>-개인충전기 설치 지원(EV 구매자 대상)</td>
      </tr>
      <tr>
        <td>-취등록세 등 세금 감면</td>
      </tr>
      <tr>
        <td>-주차료, 고속도로 통행료 등 감면혜택</td>
      </tr>
    </tbody>
  </table>
 	<br>
 	<br>
 	
 	<div class="row"><h3 class="col-sm-3">상황별 안내사항</h3><span style="font-size: 12px;">&nbsp;운행 중 문제 발생 시, 다음과 같은 절차에 의해 24시간 365일 최상의 긴급출동서비스를 제공하고 있습니다.</span></div>
	<br>
	<div class="card">
		<img src="./resources/images/section1.gif">
	</div>
	<br>
	<br>
	
	<!-- 급속/완속 충전기 -->
	<ul class="container nav nav-pills" role="tablist" style="border-bottom: 1px solid black;">
    <li class="col nav-item">
      <a class="row nav-link active bg-white" data-toggle="pill" href="#home" style="color:black;height: 100%; text-align: center;">
      <b>급속충전기</b>
      </a>
    </li>
    <li class="col nav-item">
      <a class="row nav-link bg-white" data-toggle="pill" href="#menu1" style="color:black;height: 100%;text-align: center;"><b>완속충전기</b></a>
    </li>
  </ul>
	<br>
	<br>

	<div class="container"  style="width: 100%;" >
		<div class="container card">
		<br>
		<div class="row">
		<br>
			<div class="col">
				<br>
				<h3>급속충전기</h3>
				<p>급속충전기는 고압의 전기를 사용하여 빠르게 충전하는 기기로</p>
				<p>환경부, 한전, 민간사업자의 충전기의 종류에 따라 사용법과 요금이 다를 수 있습니다.</p>
				<p style="color:orange;">SK 렌터카는 충전요금이 포함되어 있어 별도의 연료비가 들지 않습니다. (제주도렌터카)</p>
				<br>
				<button class="btn btn-md border" style="background-color: silver; color: white;"onclick="location.href='https://www.ev.or.kr/evmonitor;jsessionid=mQUkvclfQPQi8a8nz6RqaJwcNInXiprC65bMuxmdAzvwOFucVYMk11zHDgXwqikK.evciswas01_servlet_engine5'">가까운 충전소 찾기</button>
				<br>
		<br>
		<br>
			</div>
		<img class="col" class="img" src="./resources/images/section2.gif">
		</div>
	</div>
		<ul class="row">
			<li>급속충전기 이용시간은 24시간입니다. 단, 일부 대형 할인점에 위치한 급속충전기는 영업시간에만 이용 가능합니다.</li>
		</ul>
		<br>
		<br>
		
		<div class="row"><h3 class="col-sm-6">급속 충전기 이용방법</h3></div>
		<hr>
	<br>
		
	<div class="row container">
		<div class="col card">
			<div class="row">
			<img src="./resources/images/use_charge1.gif">
		</div>
		</div>
		<div class="col-sm-1">
		<p><br></p>
		<p><br></p>
		<p><br><br></p>
			&nbsp;	
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
			</svg>
		</div>
		<div class="col card">
			<div class="row">
			<img src="./resources/images/use_charge2.gif">
			</div>
		</div>
		<div class="col-sm-1">
		<p><br></p>
		<p><br></p>
		<p><br><br></p>
			&nbsp;	
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
			</svg>
		</div>
		<div class="col card">
			<div class="row">
			<img src="./resources/images/use_charge3.gif">
		</div>
		</div>
		<div class="col-sm-1">
		<p><br></p>
		<p><br></p>
		<p><br><br></p>
			&nbsp;	
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
			</svg>
		</div>
		<div class="col card">
			<div class="row">
			<img src="./resources/images/use_charge4.gif">
		</div>
		</div>
	</div>	
	</div>
	
	<!-- 2번째행 -->
		<div class="container"  style="width: 100%;" >
		<br>
	<br>
	<div class="row container">
		<div class="col card">
			<div class="row">
			<img src="./resources/images/use_charge5.gif">
		</div>
		</div>
		<div class="col-sm-1">
		<p><br></p>
		<p><br></p>
		<p><br><br></p>
			&nbsp;	
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
			</svg>
		</div>
		<div class="col card">
			<div class="row">
			<img src="./resources/images/use_charge6.gif">
			</div>
		</div>
		<div class="col-sm-1">
		<p><br></p>
		<p><br></p>
		<p><br><br></p>
			&nbsp;	
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
			</svg>
		</div>
		<div class="col card">
			<div class="row">
			<img src="./resources/images/use_charge7.gif">
		</div>
		</div>
		<div class="col-sm-1">
		<p><br></p>
		<p><br></p>
		<p><br><br></p>
			&nbsp;	
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
			</svg>
		</div>
		<div class="col card">
			<div class="row">
			<img src="./resources/images/use_charge8.gif">
		</div>
		</div>
	</div>	
		<br>
		<br>
		
		<div class="card" style="border:1px solid orange;">
		<br>
			<ul>
				<li><b style="color:orange;">급속충전기 사용 전 주의사항</b>
					<p>-반드시 시동을 끄고, 충전을 시작해야합니다.</p>
					<p>-자동차 기어가 'PARKING'에 있는지 확인하세요. 'PARKING'에 있을 때만 충전이 가능합니다.</p>
					<p>-충전기 비상정지 버튼을 눌렸는지 확인하세요, 눌려져 있다면 오른쪽으로 돌려 해제 해야합니다.</p>
				<br>
				</li>
				<li><b style="color:orange;">급속충전기 이용 시 주의사항</b>
					<p>-충전 개시 40분 이후엔 충전이 자동 종료됩니다. 이때 대기차량이 있으면 재충전이 불가능합니다.</p>
					<p>-충전이 종료된 후 차량 주차를 해놓을 수 없습니다.</p>
					<p>-충전기에 이상이 발생하면 충전기에 있는 고객센터로 전화하여 도움을 받으시기 바랍니다.</p>
				</li>
			</ul>
			<br>
		</div>
		<br>
		<br>
		
		<div class="row"><h3 class="col-sm-6">급속충전기 형태 및 구성</h3></div>
		<hr>
			<div class="card">
				<img src="./resources/images/composition_charge.gif">
			</div>
		<br>
		<br>
		<div class="row"><h3 class="col-sm-6">급속충전기 형태 및 구성</h3></div>
		<hr>
	<div class="row container">
		<div class="col card">
			<div class="row">
			<img src="./resources/images/howtouse_charge1.gif">
		</div>
		</div>
		<div class="col-sm-1">
		<p><br></p>
		<p><br></p>
		<p><br><br></p>
			&nbsp;	
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
			</svg>
		</div>
		<div class="col card">
			<div class="row">
			<img src="./resources/images/howtouse_charge2.gif">
			</div>
		</div>
		<hr>
		
	</div>
		<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-3"></div>
			<div class="col-sm-5" align="right">※ 급속 충전구 오픈 버튼과 충전구의 위치는
				차량의 종류에 따라 다를 수 있습니다.</div>
		</div>
		<br>
		<hr>
		<br>
		<br>
		<div class="row"><h3 class="col-sm-6">전기차 이용 시 주의사항</h3></div>
		<div class="container">
		<hr class="container row">
	
	<div class="row">
	<div class="container" id="accordion">
    <div class="row card">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" href="#collapseOne">
          충전기 오작동, 불량일 경우에는 충전기에 안내된 전화번호로 문의
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-parent="#accordion">
        <div class="card-body">
          <ul>
          	<li>부득이하게 즉시 조치가 안될 경우에는 근처 다른 충전소로 이동하시길 권유드립니다.</li>
          	<li>연료 부족으로 이동이 불가할 경우에는 견인 조치 해드립니다.</li>
          	<li><span style="color: orange;">필히 견인서비스를 이용할 경우 견인차가 도착하기전에는 시동,전조등,실내등등 전기장치를 끄고 대기 해주세요.</span>
<p style="color: orange;">(보조배터리가 방전되면 견인을 하더라도 충전이 안됩니다.)</p></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="row card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
       충전시 주의사항
      </a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <ul>
         	<li>차량 충전 시에는 반드시 시동을 끄고 진행해주시기 바랍니다.</li>
         	<li>급속 충전은 충전기에 비치된 케이블, 완속 충전은 차량에 비치된 케이블을 이용바랍니다. 다음 일정이 급하신 분들께는 급속 충전을 추천해드립니다.</li>
         	<li>SM3 Z.E 경우 충전 완료 후 케이블 해제 (차체와 케이블 분리)시 차량 키에 있는 플러그 모양 버튼을 눌러주시기 바랍니다.</li>
         	<li>차량별 연료게이지가 최소일 경우, 즉시 충전소로 이동하시길 바라며 이 외의 주행을 삼가해주시기 바랍니다.</li>
         	<li>냉난방기 사용에 따라 20~30km 주행 가능 거리가 감소됩니다.</li>
         	<li>SK 렌터카는 반납시 충전하지 않으셔도 됩니다. (제주도렌터카)</li>
         </ul>
        </div>
      </div>
    </div>
    <div class="row card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
         충전기 사용안내
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
        	<ul>
        		<li>
        			<p>환경부 홈페이지 (www.ev.or.kr), 및 충전사업자의 홈페이지에서 충전기 위치 등 자세한 내용을 확인하실 수 있습니다.</p>
					<p>(충전기 위치 안내앱: 핸드폰에 EVwhere 혹은 EVinfra 설치를 권장합니다.)</p>
        		</li>
        		<li>반드시 제휴된 충전소만 이용하셔야 합니다. 이 외 충전소에서는 이용에 제한을 받으실 수 있습니다.</li>
        		<li>충전기 고장 또는 사용 중일 때에는, 이용에 제한이 있거나 대기 시간이 발생할 수 있습니다. 충전소 상태는 앱에서 확인 가능합니다.</li>
        		<li><span style="color:orange;">제주도에서 렌트 시, 1100도로, 5.16도로 등 오르막의 경우는 연료 소모량이 많은 점 주행 시 참고바랍니다.</span></li>
        	</ul>
        </div>
      </div>
    </div>
  </div>
	</div>
		</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	</div><!-- container -->
	</div><!-- row -->
	</div><!-- container col-sm-6 -->
<div class="jumbotron" style="text-align: center;background-color: #F5F5F5;" ><!--   -->
	<b>SK렌터카만의 차별화 서비스!</b>
	<h3>SK 전기차<b style="color: orange;">장기렌터카 토탈 솔루션</b></h3>
	<img src="./resources/images/solution_charge2.gif">
	<br>
	<div class="row" style="align-self: center;">
	<div class="col"></div>
	<button class="col btn btn-md border">전기차 장기렌터카 상담신청</button>
	<div class="col"></div>
	</div>
</div>
</body>
</html>
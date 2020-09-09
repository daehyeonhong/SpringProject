<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>자주찾는 질문</title>
</head>
<body>
<%@include file="mainBar.jsp"%>
<%@include file="customerCenterBar.jsp"%>
<br>
<br>
<div class="container">
<h1>자주찾는 질문</h1>
<br>
<br>
	<nav class="navbar navbar-expand-md bg-light navbar-light" style="margin:0;">
  <ul class="container navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#all1">전체</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#all2">다이렉트</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#all3">개인장기</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#all4">단기</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#all5">중고차장기</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#all6">전기차</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#all7">긴급출동/사고</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#all8">공통</a>
    </li>
  </ul>
  </nav>
  <hr style="margin:0;">
  <br>

   <div class="container-fluid">
    <div class="row">
      <div class="col">
		<button class="btn btn-light" style="border: solid 1px silver">고객상담</button>
	  </div>
      <div class="col"></div>
      <div class="col"></div>
      <div class="col input-group-append float-right">
  			<input type="text" class="form-control" placeholder="검색어를 입력해주세요." />
 			<button class="btn btn-warning" type="submit" >검색</button>  
      </div>
    </div>  
  </div>
  <br>
  
  <!-- Tab panes -->
  <div class="tab-content">
    <div id="all1" class="container tab-pane active"><br>
			<!-- collapse -->
<div class="container">
  <div id="accordion">
    <div class="card">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" href="#collapseOne">
          <span><b style="color: orange;">[준장기]</b> 중고 렌터카의 장점은 무엇인가요? </span>
        </a>
      </div>
      <div id="collapseOne" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <p>- 합리적인 렌탈 가격 제시</p>
         <p>- 사용 목적에 따라 다양한 차종 선택 가능</p>
         <p>- 차량 구매 및 등록/정비/사고처리/보험/대차/차량매각까지 SK렌터카에서 관리</p>
         <p>- 전국 어디서나 고객을 찾아가는 차량점검 서비스</p>
         <p>- 필요 시 언제든지 찾아 갈 수 있는 전국 670여개 Speedmate 정비 네트워크를 통한 안전한 차량 이용 </p>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
        <span><b style="color: orange;">[개인장기]</b> 계약 시 필요서류는 어떻게 되나요? </span>
      </a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
        <div class="card-body">
        	<ul>
        		<li>개인 : 신청서(인감직인), 인감증명서, 통장사본, 운전면허증사본,  의료보험득실확인서, 원천징수영수증 </li>
        		<li>개인사업자 : 신청서(인감직인), 인감증명서, 통장사본, 운전면허증사본, 부가세표준증명, 사업자등록증사본 </li>
        		<li>법인 : 신청서(인감직인), 법인인감증명서, 통장사본, 법인등기부등본, 사업자등록증사본, (대표이사 공동 임차 및 연대보증 시 대표이사 인감증명서, 대표이사 운전면허증사본) </li>
        	</ul>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
         <span><b style="color: orange;">[단기]</b> 분실물(유실물) 발생 시 어떻게 해야 하죠? </span>
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
          <b>[분실물 확인 요청 방법]</b>
          <br>
          	<p>단기렌터카를 대여한 지점으로 즉시 연락하여 확인 요청</p>
			<p>* 예약자명, 반납일자, 차종, 차량번호를 확인해주시면 빠른 확인이 가능합니다.</p>
          <br>
          <p>※ 분실 시 책임 및 보상이 불가하니,  반드시 차량 반납 전 두고내리시는 물건이 없는 지 꼭! 확인 부탁드립니다. </p>
          
        </div>
      </div>
    </div>
  </div>
</div>
</div>
    <div id="all2" class="container tab-pane fade"><br>
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="all3" class="container tab-pane fade"><br>
      
<div class="container">
  <div id="accordion">
    <div class="card">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" href="#collapseOne">
          0
        </a>
      </div>
      <div id="collapseOne" class="collapse" data-parent="#accordion">
        <div class="card-body">
          0
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
        1
      </a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
        <div class="card-body">
          1
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
         3
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
         3
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</div>



  
  <!--페이지 쪽수  -->
  <nav aria-label="Page navigation example" >
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#pre" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#1">1</a></li>
    <li class="page-item"><a class="page-link" href="#2">2</a></li>
    <li class="page-item"><a class="page-link" href="#3">3</a></li>
    <li class="page-item"><a class="page-link" href="#4">4</a></li>
    <li class="page-item"><a class="page-link" href="#5">5</a></li>
    <li class="page-item"><a class="page-link" href="#6">6</a></li>
    <li class="page-item"><a class="page-link" href="#7">7</a></li>
    <li class="page-item"><a class="page-link" href="#8">8</a></li>
    <li class="page-item"><a class="page-link" href="#9">9</a></li>
    <li class="page-item"><a class="page-link" href="#10">10</a></li>
    <li class="page-item">
      <a class="page-link" href="#next" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
  
</div>
<br>
<br>
<%@include file="footer.jsp"%>
</body>
</html>
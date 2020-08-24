<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ccc;
}

.accordion:after {
  content: '\002B';
  color: #777;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2212";
}

.panel {
  padding: 0 18px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
}

div.f{
border: 1px solid red;}
</style>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8" />
<title>장기 중고</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
<script type="text/javascript">

		function checkTest1() {

			let testValue = document.getElementById("cntrTermMm1").value;

			document.getElementById("result1").innerHTML = testValue;

		}
</script>

<script type="text/javascript">

		function checkTest2() {

			let testValue = document.getElementById("cntrTermMm2").value;

			document.getElementById("result2").innerHTML = testValue;

		}
</script>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장기 중고 렌트</h1>
		</div>
	</div>	
<div class="container">




<button class="accordion">계약 기간: &nbsp&nbsp&nbsp <span id="result1"></span></button>
<div class="panel"><span>차량 운행할수 있는 총 대여기간: &nbsp &nbsp &nbsp &nbsp</span>
<select name="cntrTermMm" id="cntrTermMm1" class="option01" onchange="checkTest1()" >
<option value="1개월">1개월</option>	
<option value="2개월">2개월</option>	
<option value="3개월">3개월</option>
<option value="4개월">4개월</option>
<option value="5개월">5개월</option></select>
</div>

<button class="accordion">약정 주행거리  <span id="result2"></span></button> 
<div class="panel"><span>계약기간 총 주행거리 초과 시 위약금 발생   </span>
<select  name="cntrTermMm" id="cntrTermMm2" class="option01" onchange="checkTest2()" >
<option value="월 2천 Km이하">월 2천 Km이하</option>	
<option value="월 3천 Km이하">월 3천 Km이하</option>	
<option value="월 4천 Km이하">월 4천 Km이하</option>
</select>
</div>

<table class="table talbe-hover">
<tr><td>보험 조건</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>운전자 범위</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>사고 시 차량 대여</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>정비 서비스</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>초기 납부 조건</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
</table>

<div class="f">
<ul>
<li>차량 이미지는 고객님의 이해를 돕기 위한 이미지로 실제 차량과 다를 수 있습니다.</li>
<li>현재 재고 기준의 견적으로 바로 구매하시지 않는 경우 재고 소진으로 구매가 불가할 수 있습니다.</li>
<li>상담신청 및 다이렉트 계약을 클릭하시면 <span class="cl-point2">MY렌터카 &gt; 장기CAR &gt; 견적정보</span>에서 견적비교를 하실 수 있습니다.</li>
<li>지역 이동이 필요할 경우 탁송료가 발생할 수 있습니다.</li>
<li>약정 주행거리 초과 위약금: 1600CC미만(60원/km) , 2000CC미만(80원/km) , 2000CC이상(100원/km) , 수입차(200원/km)</li>
</ul>

</div>

</div>










<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>

</body>
</html>

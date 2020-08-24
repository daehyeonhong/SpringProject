
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
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

div.fixed {
  position: fixed;
  bottom: 0;
  /* text-align: center; */
  width: 1000px;
 /*  border: 3px solid black; */
  background-color: orange;
}
div.f{
border: 1px solid red;}
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


</style>

<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>장기 신차 렌트</title>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<script type="text/javascript">

		function checkTest1() {

			let testValue = document.getElementById("cntrTermMm1").value;

			document.getElementById("result1").innerHTML = testValue;

		}
		
		function msg1(){
			let testValue = document.getElementById("a").value;
			document.getElementById("result2").innerHTML = testValue;

		}
		
		function msg2(){
			let testValue = document.getElementById("b").value;
			document.getElementById("result2").innerHTML = testValue;

		}
		
		function msg4(){
			let testValue = document.getElementById("a1").value;
			document.getElementById("result3").innerHTML = testValue;

		}
		
		function msg5(){
			let testValue = document.getElementById("b1").value;
			document.getElementById("result3").innerHTML = testValue;

		}
		
		function msg6(){
			let testValue = document.getElementById("c1").value;
			document.getElementById("result3").innerHTML = testValue;

		}
		function msg7(){
			let testValue = document.getElementById("a2").value;
			document.getElementById("result4").innerHTML = testValue;

		}
		function msg8(){
			let testValue = document.getElementById("b2").value;
			document.getElementById("result4").innerHTML = testValue;

		}
		function msg9(){
			let testValue = document.getElementById("a3").value;
			document.getElementById("result5").innerHTML = testValue;

		}
		function msg10(){
			let testValue = document.getElementById("b3").value;
			document.getElementById("result5").innerHTML = testValue;

		}
		
		
		
</script>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장기 신차 렌트</h1>
		</div>
	</div>
	
<div class="container">
 <table class="table talbe-hover">
<tr><td><strong>상세 차량 및 옵션 선택</strong></td><td>선 구매 차량은 옵션 불가능 </td></tr>
<tr><td>상세 차량</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>외부 색상</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>내부 색상</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>차량 옵션</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td><strong>랜트 조건 선택</strong></td><td></td></tr>
</table>

<button class="accordion">계약 기간  <span id="result1"></span></button>
<div class="panel"><span>차량 운행할수 있는 총 대여기간: </span>
<select name="cntrTermMm" id="cntrTermMm1" class="option01" onchange="checkTest1()" >
<option value="1개월">1개월</option>	
<option value="2개월">2개월</option>	
<option value="3개월">3개월</option>
<option value="4개월">4개월</option>
<option value="5개월">5개월</option></select>
</div>


<button class="accordion">약정 주행거리 <span id="result2"></span></button>
<div class="panel"><span>계약 기간 총 주행거리 초과 시 위약금 발생 </span>

<input id="a" type="button" value="2만 Km 이하" onclick="msg1()">	
<input id="b" type="button" value="3만 Km 이하" onclick="msg2()">	
</div>


<button class="accordion">운전자 범위<span id="result3"></span></button>
<div class="panel"><span>계약자의 직계 가족만 운전가능 </span>

<input id="a1" type="button" value="가족 한정" onclick="msg4()">	
<input id="b1" type="button" value="1인 지정" onclick="msg5()">	
<input id="c1" type="button" value="누구나" onclick="msg6()">	
</div>
	
<button class="accordion">사고 시 차량 대여 <span id="result4"></span></button>
<div class="panel"><span>사고 발생시 대차 서비스 미제공 </span>

<input id="a2" type="button" value="포함"  onclick="msg7()">	
<input id="b2" type="button" value="불포함" onclick="msg8()">	
</div>

<button class="accordion">정비 서비스 <span id="result5"></span></button>
<div class="panel"><span>대여기간 동안 정비 서비스 이용 </span>

<input id="a3" type="button" value="미포함" onclick="msg9()">	
<input id="b3" type="button" value="기본 정비 상품" onclick="msg10()">	
</div>	
	
	
	
		<!-- <div>
		<form action="#">
			<table class="table talbe-hover">
				
				
				
				<tr><td>약정 주행거리</td>
				<td><div><span class="select-box"><select name="cntrTermMm" id="cntrTermMm2" class="option01" >
				<option value="1">3만 Km 이하/년</option> <option value="2">5만 Km 이하/년</option></select></span></div></td></tr>
				<tr><td>보험 조건</td>
				<td><button class="btn btn-danger" value="만 21세 이하">만 21세 이하</button>
				<button class="btn btn-danger" value="만 26세 이상">만 21세 이하</button></td></tr>
				<tr><td>운전자 범위</td>
				<td><div><span class="select-box"><select name="cntrTermMm" id="cntrTermMm3" class="option01" >
				<option value="1">가족 한정</option> <option value="2">1인 지정</option> <option value="2">누구나</option></select></span></div></td></tr>
				<tr><td>사고시 차량 대여</td>
				<td><button class="btn btn-danger" value="포함">포함</button>
				<button class="btn btn-danger" value="불포함">불포함</button></td></tr>
				<tr><td>사고시 차량 대여</td>
				<td><button class="btn btn-danger" value="포함">포함</button>
				<button class="btn btn-danger" value="불포함">불포함</button></td></tr>
				<tr><td>사고시 차량 대여</td>
				<td><button class="btn btn-danger" value="포함">포함</button>
				<button class="btn btn-danger" value="불포함">불포함</button></td></tr>
				<tr><td>사고시 차량 대여</td>
				<td><button class="btn btn-danger" value="포함">포함</button>
				<button class="btn btn-danger" value="불포함">불포함</button></td></tr>
				<tr><td>사고시 차량 대여</td>
				<td><button class="btn btn-danger" value="포함">포함</button>
				<button class="btn btn-danger" value="불포함">불포함</button></td></tr>
				<tr><td>사고시 차량 대여</td>
				<td><button class="btn btn-danger" value="포함">포함</button>
				<button class="btn btn-danger" value="불포함">불포함</button></td></tr>
				<tr><td>사고시 차량 대여</td>
				<td><button class="btn btn-danger" value="포함">포함</button>
				<button class="btn btn-danger" value="불포함">불포함</button></td></tr>
				
				
			</table>
		</form>
	</div> -->
	
	<div class="f">
			<ul>
			<li><span class="cl-point2">계약 종료 후 차량의 소유/반납 여부를 선택하실 수 있습니다</span></li>
			<li>월 렌탈료는 신용심사 결과, 담보조건, 담보율에 따라 변경될 수 있습니다.</li>
			<li>차량 이미지는 고객님의 이해를 돕기 위한 이미지로 실제 차량과 다를 수 있습니다.</li>
			<li>현재 재고 기준의 견적으로 바로 구매하시지 않는 경우 재고 소진으로 구매가 불가할 수 있습니다.</li>
			<li>견적을 저장하시면 <span class="cl-point2">MY렌터카 &gt; 장기CAR &gt; 견적정보</span>에서 견적비교를 하실 수 있습니다.</li>
			<li>차량 옵션은 제조사의 사정에 따라 변경될 수 있으며, 변경시 별도 연락을 드리겠습니다.</li>
			<li>SK렌터카 서비스 중 '용품' 혜택은 다이렉트 전용 제공 상품입니다.</li>		
			<li>약정 주행거리 초과 위약금: 1600CC미만(60원/km) , 2000CC미만(80원/km) , 2000CC이상(100원/km) , 수입차(200원/km) , 테슬라(450원/km)</li>					
			</ul>
	</div>
	 


	</div>		
			
			<!-- 
				<div class="fixed">
					
					<div class="ticker-info ticker-info--direct">
							<dl class="dl-horizontal">
								<dt>월 렌탈료</dt>
								<dd class="text-r"><strong id="totalRental"></strong>원</dd>
								<dt class="fs-default">(총 차량 소비자가)</dt>
								<dd class="fs-default text-r">(<strong class="fs-default" id="totAmt"></strong>원)</dd>
							</dl>
		
					</div>
						</div> 
 -->



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
	}</script>
	
	
</body>
</html>
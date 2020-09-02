<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	/*   text-align: center; */
	width: 65%;
	/* margin-right: 150px;
  margin-left: 150px; */
	/*  border: 3px solid black; */
	background-color: orange;
}

div.f {
	border: 1px solid #eeeeee;
}

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

dt {
	text-align: left;
}

dd {
	text-align: right;
}
</style>
<title>신차 장기 렌트</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>
<body>

	<div class="content">
		<div class="container">



			<!--  -->
			<div class="jumbotron">
				<h1 class="display-3">신차 장기 렌트</h1>
			</div>

			<!--  -->


			<!--  -->
			<div class="row">
				<table style="width: 100%">
					<tr>
						<td align="left"><h2>TT장기렌터카 다이렉트</h2></td>
						<td align="right">? > 장기렌터카 > TT장기렌터카 다이렉트</td>
					</tr>
				</table>
			</div>

			<br> <br> <br> <br>

			
			<div class="row">
				<table style="width: 100%">
					<tr>
						<td align="left"><h3>다이렉트 견적 조회</h3></td>
						<td align="right"><button  type="button" class="btn btn-primary btn-lg" >목록</button></td>
					</tr>
				</table>
			</div>
			<hr>

			<div class="row" style="border: 1px solid #eeeeee;">
				<table border="1" class="col-md-12" style="height: 200px;">

					<tr>
						<td rowspan="6" style="width: 35%"><img
							src="https://image.speedmate.com/speedimg/rentcar/687048/20200515/17/175355397mbl_41f63b7b95834433a740529d4de12a75.png"
							alt="현대자동차 G80 2.5T AWD" width="100%" height="100%"></td>
					</tr>
					<tr height="50%">

						<td align="center">벤츠 GLC-CLASS</td>
					</tr>

					<tr height="50%">

						<td align="center">프리미엄 준중형 SUV의 정석, 메르세데스 벤츠 GLC 250</td>
					</tr>
				</table>
			</div>


			<br> <br> <br> <br>




			<div class="row">
				<table style="width: 100%">
					<tr>
						<td align="left"><h4>상세 차량 및 옵션 선택</h4></td>
						<td align="right">선구매 차량은 차종,내/외부 색상,옵션 선택이 불가할 수 있습니다.</td>
					</tr>
				</table>
			</div>
			<br>

			<table class="table talbe-hover">

				<tr>
					<td>상세 차량<a data-toggle="tooltip" data-placement="bottom"
						title="차량의 상세 모델/트림입니다."><img alt="물음표"
							src="question mark.png" width="20px" height="20px"></a></td>
					<td>2019 BENZ GLC 300 4M AMG LINE</td>
					<td>82,900,000원</td>
				</tr>
				<tr>
					<td>외부 색상<a data-toggle="tooltip" data-placement="bottom"
						title="차량 외부(보닛, 도어, 트렁크 등)의 색상입니다."><img alt="물음표"
							src="question mark.png" width="20px" height="20px"></a></td>
					<td>(197)obsidian black</td>
					<td>0원</td>
				</tr>
				<tr>
					<td>내부 색상<a data-toggle="tooltip" data-placement="bottom"
						title="차량 내부(시트/마감재 등)의 색상입니다."><img alt="물음표"
							src="question mark.png" width="20px" height="20px"></a></td>
					<td>(651)DINAMICA/ARTICO man-made</td>
					<td>0원</td>
				</tr>



				<tr>
					<td>차량 옵션<a data-toggle="tooltip" data-placement="bottom"
						title="차량에 추가할 수 있는 편의/안전사양 등 입니다.(제조사 제공)"><img alt="물음표"
							src="question mark.png" width="20px" height="20px"></a></td>
					<td>(옵션없음)</td>
					<td>0원</td>
				</tr>
			</table>
			<hr>


			<br> <br> <br> <br>

			<!--  -->

			<h4>렌트 조건 선택</h4>
			<hr>


			<button class="accordion">
				계약 기간 <span id="result1"><a data-toggle="tooltip"
					data-placement="bottom" title="차량 대여 기간입니다."><img alt="물음표"
						src="question mark.png" width="20px" height="20px"></a></span>
			</button>

			<div class="panel">
				<span>차량 운행할수 있는 총 대여기간: </span> <select name="cntrTermMm"
					id="cntrTermMm1" class="option01" onchange="checkTest1()">
					<option value="36 개월">36 개월</option>
					<option value="48 개월">48 개월</option>
					<option value="60 개월">60 개월</option>
				</select>
			</div>


			<button class="accordion">
				약정 주행거리 <span id="result2"><a data-toggle="tooltip"
					data-placement="bottom"
					title="계약기간 총 주행거리 초과 시 위약금발생(총 주행거리 = 계약기간 x 약정 주행거리)* 위약금은 하단 안내 참조"><img
						alt="물음표" src="question mark.png" width="20px" height="20px"></a></span>
			</button>
			<div class="panel">
				<span>계약 기간 총 주행거리 초과 시 위약금 발생 </span> <input id="a" type="button"
					value="2만 Km 이하" onclick="msg1()"> <input id="b"
					type="button" value="3만 Km 이하" onclick="msg2()">
			</div>


			<button class="accordion">
				운전자 범위<span id="result3"><a data-toggle="tooltip"
					data-placement="bottom" title="차량 운전을 누가하는지 운전 대상자의 범위입니다."><img
						alt="물음표" src="question mark.png" width="20px" height="20px"></a></span>
			</button>
			<div class="panel">
				<span>계약자의 직계 가족만 운전가능 </span> <input id="a1" type="button"
					value="가족 한정" onclick="msg4()"> <input id="b1"
					type="button" value="1인 지정" onclick="msg5()"> <input
					id="c1" type="button" value="누구나" onclick="msg6()">
			</div>

			<button class="accordion">
				사고 시 차량 대여 <span id="result4"><a data-toggle="tooltip"
					data-placement="bottom"
					title="사고로 차량 수리 시 수리기간동안 다른 차량을 대여하실 수 있는 서비스입니다."><img
						alt="물음표" src="question mark.png" width="20px" height="20px"></a></span>
			</button>
			<div class="panel">
				<span>사고 발생시 대차 서비스 미제공 </span> <input id="a2" type="button"
					value="포함" onclick="msg7()"> <input id="b2" type="button"
					value="불포함" onclick="msg8()">
			</div>

			<button class="accordion">
				정비 서비스 <span id="result5"><a data-toggle="tooltip"
					data-placement="bottom"
					title="차량 대여기간 동안 정기적으로 차량 정비를 받을 수 있는 서비스입니다."><img alt="물음표"
						src="question mark.png" width="20px" height="20px"></a></span>
			</button>
			<div class="panel">
				<span>대여기간 동안 정비 서비스 이용 </span> <input id="a3" type="button"
					value="미포함" onclick="msg9()"> <input id="b3" type="button"
					value="기본 정비 상품" onclick="msg10()">
			</div>
			<table class="table talbe-hover">
				<tr>
					<td>차계약 종료 후 차량 소유</td>
					<td>계약 종료 시 차량 소유/반납 여부를 선택하실 수 있습니다.</td>
					<td>(차량 인수가: 32,331,000원)</td>
				</tr>
			</table>

			<br> <br>
			<hr>


			<!--  -->

			<div class="f">
				<ul>
					<li><span class="cl-point2">계약 종료 후 차량의 소유/반납 여부를 선택하실
							수 있습니다</span></li>
					<li>월 렌탈료는 신용심사 결과, 담보조건, 담보율에 따라 변경될 수 있습니다.</li>
					<li>차량 이미지는 고객님의 이해를 돕기 위한 이미지로 실제 차량과 다를 수 있습니다.</li>
					<li>현재 재고 기준의 견적으로 바로 구매하시지 않는 경우 재고 소진으로 구매가 불가할 수 있습니다.</li>
					<li>견적을 저장하시면 <span class="cl-point2">MY렌터카 &gt; 장기CAR
							&gt; 견적정보</span>에서 견적비교를 하실 수 있습니다.
					</li>
					<li>차량 옵션은 제조사의 사정에 따라 변경될 수 있으며, 변경시 별도 연락을 드리겠습니다.</li>
					<li>SK렌터카 서비스 중 '용품' 혜택은 다이렉트 전용 제공 상품입니다.</li>
					<li>약정 주행거리 초과 위약금: 1600CC미만(60원/km) , 2000CC미만(80원/km) ,
						2000CC이상(100원/km) , 수입차(200원/km) , 테슬라(450원/km)</li>
				</ul>
			</div>


			<br> <br>
			<hr>

			<!--  -->

			<div class="jumbotron">
				<h1 class="display-3">신차 장기 렌트</h1>
			</div>

			<!--  -->

		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
	<script type="text/javascript">
		function checkTest1() {

			let testValue = document.getElementById("cntrTermMm1").value;

			document.getElementById("result1").innerHTML = testValue;

		}

		function msg1() {
			let testValue = document.getElementById("a").value;
			document.getElementById("result2").innerHTML = testValue;

		}

		function msg2() {
			let testValue = document.getElementById("b").value;
			document.getElementById("result2").innerHTML = testValue;

		}

		function msg4() {
			let testValue = document.getElementById("a1").value;
			document.getElementById("result3").innerHTML = testValue;

		}

		function msg5() {
			let testValue = document.getElementById("b1").value;
			document.getElementById("result3").innerHTML = testValue;

		}

		function msg6() {
			let testValue = document.getElementById("c1").value;
			document.getElementById("result3").innerHTML = testValue;

		}
		function msg7() {
			let testValue = document.getElementById("a2").value;
			document.getElementById("result4").innerHTML = testValue;

		}
		function msg8() {
			let testValue = document.getElementById("b2").value;
			document.getElementById("result4").innerHTML = testValue;

		}
		function msg9() {
			let testValue = document.getElementById("a3").value;
			document.getElementById("result5").innerHTML = testValue;

		}
		function msg10() {
			let testValue = document.getElementById("b3").value;
			document.getElementById("result5").innerHTML = testValue;

		}
	</script>

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
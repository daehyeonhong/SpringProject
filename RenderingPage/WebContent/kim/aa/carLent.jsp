<%@page import="java.net.URLDecoder"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>
<% request.setCharacterEncoding("utf-8"); 
//URLEncoder.encode

String carname=request.getParameter("carname"); 
/* String carname = new String(request.getParameter("carname").getBytes("8859_1"), "EUC-KR"); */

%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.accordion {
  background-color: white;
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
  background-color: orange;
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
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
}

div.f{
border: 1px solid red;}
</style>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<meta charset="UTF-8" />
<title>장기 중고 상세</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<body>
<script type="text/javascript">

		function checkTest1() {

			let testValue = document.getElementById("cntrTermMm1").value;

			document.getElementById("result1").innerHTML = testValue;
			
			

		}
</script>

<script type="text/javascript">

		function termtest(cmd) {

			let testValue = document.getElementById(cmd).value;

			document.getElementById("result2").innerHTML = testValue;
			
			document.getElementById("parpa2").value=testValue;

		}
</script>

<script type="text/javascript">

		function servicetest(cmd) {

			let testValue = document.getElementById(cmd).value;

			document.getElementById("result3").innerHTML = testValue;
			
			document.getElementById("result3_1").innerHTML = testValue;
			
			document.getElementById("parpa3").value=testValue;

		}
</script>

<script type="text/javascript">

		function drivertest(cmd) {

			let testValue = document.getElementById(cmd).value;

			document.getElementById("result4").innerHTML = testValue;
			
			document.getElementById("result4_1").innerHTML = '<span>계약자를 포함한 '+ testValue + '  운전가능</span>';
			
			document.getElementById("parpa4").value=testValue;

		}
</script>


<script type="text/javascript">

		function deposittest(cmd) {
			let testValue = document.getElementById(cmd).value;
			 alert(testValue);
			
			let a = document.getElementById("price").value;
			
			alert(a);
			
			let d= a-(a* testValue);
			
			
			alert(d);
			
			document.getElementById("parpa5").value = d;
			
			document.getElementById("result5").innerHTML=d+'원';
			
			document.getElementById("result5_1").innerHTML = '<span>보증금을  '+ testValue + '  으로 납부</span>';
			let o=document.getElementById("parpa5").value;
			
			alert(o);
			
		}
</script>	
	
<script>
function go(){
	let form= document.userinput;
	form.submit();
	
}
</script>
	
	
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장기 중고 렌트</h1>
		</div>
	</div>	
	
<div class="container col-sm-8">
<h4>다이렉트 견적조회</h4>
<hr style="border: solid 1px black " /> 

	<div class="row" style="border: 1px solid #eeeeee">
		<sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.driver.OracleDriver"
			user="hr" password="hr"/>
			<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where id=?
			 <sql:param value="${param.carname}"/>
			</sql:query>
			<c:forEach var="row" items="${resultSet.rows}">
			<div class="col-md-5" style="border-spacing: 5px;">
		
				<img src="../resources/images/${row.carname}.jpg" style="width: 100%;">
			</div>
			<div class="col-md-1">
			
			</div>
			<div class="col-md-6">
				<br><br>
			
				
				<h3>
				<c:out value="${row.carname}"/>
				</h3>
				
				<hr>
				<table>
					<tr>
						<td colspan="2"><span><strong>모델명</strong></span></td>
						<td><c:out value="${row.carname}"/></td>
					</tr>
					<tr>
						<td colspan="2"><span><strong>소비자 가</strong></span>  &nbsp; &nbsp; &nbsp;</td>
						<td><c:out value="${row.carprice}"/></td>
					</tr>
					<tr>
						<td colspan="2"><span><strong>계약 기간</strong></span></td>
						<td>최대<c:out value="${row.lent}"/>개월</td>
					</tr>
				</table>
				<hr>
				<p>
					표준렌탈료 &nbsp; &nbsp; &nbsp; <font size="5" color="red"> <c:out value="${row.monthprice }" /></font>원
				</p>
				
			</div>
			<c:set var="lentt" value="${row.lent}"/>
			
			</c:forEach>
		</div>



		<div>
		<br><br>
			<h4>차량 정보</h4>
			<hr style="border: solid 1px black " /> 
			<div>
			<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where id=?
			 <sql:param value="${param.carname}"/>
			</sql:query>
			<c:forEach var="row" items="${resultSet.rows}">
				<table class="table" id="table">
					<tr>
						<th class="bg-light text-dark">제조사</th>
						<td><c:out value="${row.facname}"></c:out></td>
						<th class="bg-light text-dark">차량번호</th>
						<td><c:out value="${row.id}"></c:out></td>
					</tr>
					<tr>
						<th class="bg-light text-dark">차종</th>
						<td><c:out value="${row.carnum}"></c:out></td>
						<th class="bg-light text-dark">최초 등록일</th>
						<td>2017-10-18</td>
					</tr>
					<tr>
						<th class="bg-light text-dark">모델명</th>
						<td colspan="3"><c:out value="${row.carname}"></c:out></td>
					</tr>
					<tr>
						<th class="bg-light text-dark">제조사차량옵션</th>
						<td colspan="3">4단자동변속기</td>
					</tr>
					<tr>
						<th class="bg-light text-dark" >제조사차량옵션2</th>
						<td colspan="3">-</td>
					</tr>
					<tr>
						<th class="bg-light text-dark">연료</th>
						<td><c:out value="${row.fuel}"/></td>
						<th class="bg-light text-dark">지점</th>
						<td><c:out value="${row.lentoffice}"/></td>
					</tr>
				
				</table>
				<c:set var="car_price" value="${row.monthprice }"> </c:set>
				<c:set var="car_name" value="${row.carname }"> </c:set>
				<c:set var="lent_office" value="${row.lentoffice }"> </c:set>
				<c:set var="prices" value="${row.carprice }"> </c:set>
				</c:forEach>
			</div> 
			
			
		</div>

<div>
<h4> 렌트 조건 선택 </h4>
<hr style="border: solid 1px black " /> 


<form method="post" action="shortTerm_payment_completed.jsp" name="userinput" >

<input type="hidden" id="car" name="car" value="${param.carname}">
<input type="hidden" id="carn" name="carn" value="${car_name}">
<input type="hidden" id="carof" name="carof" value="${lent_office}">

<button type="button" class="accordion"><span class="col-sm-3"><strong>계약 기간</strong></span><span id="result1"></span></button>
<div class="panel bg-light "><span class="col-sm-3"><br>차량 운행할수 있는 총 대여기간:</span>
<select name="cntrTermMm1" id="cntrTermMm1" class="option01 col-sm-3" onchange="checkTest1()" >
<c:forEach var="i" begin="1" end="${lentt}">
<option value="<c:out value="${i}"/>개월"><c:out value="${i}"/>개월</option>	</c:forEach>
</select>
<br><br>
</div>

<button type="button" class="accordion"><span class="col-sm-3"><strong>약정 주행거리</strong></span> <span class="col-sm-3" id="result2" ></span></button> 
<div class="panel bg-light">
<span class="col-sm-4"><br>계약기간 총 주행거리 초과 시 위약금 발생</span>
<span class="col-sm-2"></span>
<input class =" col-sm-3 btn btn-outline-warning" type="button" id="lent_term1" name="lent_term1" value="2만  Km 이하" onclick="termtest('lent_term1')">
<input class ="col-sm-3 btn btn-outline-warning" type="button" id="lent_term2" name="lent_term2" value="3만  Km 이하" onclick="termtest('lent_term2')">
<input  id="parpa2" name="parpa2" type="hidden" value=" ">

<br><br>

</div>

<button type="button" class="accordion"><span class="col-sm-3"><strong>사고시 차량 대여</strong></span> <span class="col-sm-3" id="result3"></span></button> 
<div class="panel bg-light">
<span class="col-sm-2"><br>사고 발생시 대차 서비스  </span><span class="col-sm-2" id="result3_1"></span>
 <span class="col-sm-2"></span> 
<input class =" col-sm-3 btn btn-outline-warning" type="button" id="lent_service1" name="lent_service1" value="포함" onclick="servicetest('lent_service1')">
<input class ="col-sm-3 btn btn-outline-warning" type="button" id="lent_service2" name="lent_service2" value="불포함" onclick="servicetest('lent_service2')">
<input  id="parpa3" name="parpa3" type="hidden" value=" ">
<br><br>
</div>

<button type="button" class="accordion"><span class="col-sm-3"><strong>운전자 범위</strong></span> <span class="col-sm-3" id="result4"></span></button> 
<div class="panel bg-light">
<span class="col-sm-4"><br><span class="col-sm-2" id="result4_1"></span> </span>
<span class="col-sm-2"></span>
<input class =" col-sm-2 btn btn-outline-warning" type="button" id="lent_driver1" name="lent_driver1" value="가족 한정" onclick="drivertest('lent_driver1')">
<input class ="col-sm-2 btn btn-outline-warning" type="button" id="lent_driver2" name="lent_driver2" value="1인지정" onclick="drivertest('lent_driver2')">
<input class ="col-sm-2 btn btn-outline-warning" type="button" id="lent_driver3" name="lent_driver3" value="누구나" onclick="drivertest('lent_driver3')">
<input  id="parpa4" name="parpa4" type="hidden" value=" ">
<br><br>
</div>



<button type="button" class="accordion"><span class="col-sm-3"><strong>초기 납부 조건</strong></span> <span class="col-sm-3" ></span> </button> 
<div class="panel bg-light">
<span class="col-sm-4"><br><span class="col-sm-2" id="result5_1"></span>  </span>
<span class="col-sm-2"></span>
<button class =" btn btn-outline-warning" type="button" id="lent_deposit1" name="lent_deposit1" value="0" onclick="deposittest('lent_deposit1')">보증 보험</button>
<button class =" btn btn-outline-warning" type="button" id="lent_deposit2" name="lent_deposit2" value="0.1" onclick="deposittest('lent_deposit2')">보증금 10%</button>
<button class =" btn btn-outline-warning" type="button" id="lent_deposit3" name="lent_deposit3" value="0.2" onclick="deposittest('lent_deposit3')">보증금 20%</button>
<button class =" btn btn-outline-warning" type="button" id="lent_deposit4" name="lent_deposit4" value="0.3" onclick="deposittest('lent_deposit4')">보증금 30%</button>

<input  id="parpa5" name="parpa5" type="hidden" value=" ">
<br><br>
</div>

<input type="hidden" id="price" name="price" value="${car_price}">




</form>

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



 <br><br><br><br><br>
<div class="container col-sm-8 fixed-bottom "  style="border:1px solid orange;">

  <div class="row d-flex p-3 bg-warning text-white ">  
    <div class="col-sm-4 p-2 bg-warning"><h5>월 렌탈료<br>(총 차량 구매가)</h5></div>
    <div class="col-sm-3 p-2 bg-warning"><br></div>
    <div class="col-sm-2 p-2 bg-warning"><h5><span id="result5"><c:out value="${car_price}" />원</span><br><c:out value="${prices}" /></h5></div>
    <div class="col-sm-1 p-2 bg-warning"><br></div>
    <div class="col-sm-2 p-2 bg-warning"><button style="color: white;" class="btn  border" onclick="go()">지점방문<br>예약하기</button></div>
  </div>
  
  
  <c:remove var="car_price"/>
<c:remove var="lentt"/>
<c:remove var="car_name"/>
<c:remove var="lent_office"/>
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

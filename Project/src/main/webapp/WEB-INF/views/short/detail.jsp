<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
th {
	background-color: #eeeeee;
	text-align: center;
}

#table td, th {
	border: 1px solid #dddddd;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
}

li a {
	display: block;
	text-align: left;
	padding: 2px;
	color: #bbbbbb;
	text-decoration: none;
}

li a:hover {
	background-color: #eeeeee;
	color: #aaaaaa;
	text-decoration: none;
}
</style>
<script>
	function reser(){
		reserveForm2.submit();
/* 		location.href='./shortTerm_payment2'; */
	}
</script>
<form name="reserveForm2" action='shortTerm_payment2'>
<div class="container col-sm-6">
	<hr style="border: 1px solid red;">
	<div class="container">
		<div class="row">
			<table style="width: 100%">
				<tr>
					<td align="left"><h2>SK장기렌터카 다이렉트</h2></td>
					<td align="right">? > 장기렌터카 > SK장기렌터카 다이렉트</td>
				</tr>
			</table>
		</div>
		<!-- title -->

		<div class="row" style="padding-top: 30px;">
			<table style="width: 100%">
				<tr>
					<td align="left"><h3>다이렉트 견적조회</h3></td>
					<td align="right"><input type="button" value="목록" onclick="#"></td>
				</tr>
			</table>
		</div>
		<!-- title2 -->

		<div class="row" style="border: 1px solid #eeeeee">
			<div class="col-md-5" style="border-spacing: 5px;">
				<img src="resources/images/sample_car.jpg" style="width: 100%;">
			</div>
			<div class="col-md-7">
				<p>기아자동차 모닝</p>
				<p>
					<small style="color: red;">작은 차 큰 기쁨을 느끼고 싶다면, 기아 모닝</small>
				</p>
				<hr>
				<table>
					<tr>
						<td colspan="2">모델명</td>
						<td>올 뉴모닝 1.0[가솔린]VAN</td>
					</tr>
					<tr>
						<td colspan="2">소비자 가격</td>
						<td>10,700,000 원</td>
					</tr>
					<tr>
						<td colspan="2">계약기간</td>
						<td>최대11개월</td>
					</tr>
				</table>
				<hr>
				<p>
					표준렌탈료<font size="5" color="red">280,000</font>원
				</p>
			</div>
		</div>
		<!-- product pic -->

		<div style="border: 1px solid #eeeeee">
			<ul>
				<li class="col-md-6"><a href="#">차량선호도</a></li>
				<li class="col-md-6"><a href="#">상품 문의</a></li>
			</ul>
		</div>

		<div style="padding-top: 30px;">
			<h4>차량 정보</h4>
			<div>
				<table class="table" id="table">
					<tr style="border-top-color: #aaaaaa;">
						<th>제조사</th>
						<td>기아자동차</td>
						<th>차량번호</th>
						<td>18호5047</td>
					</tr>
					<tr>
						<th>차종</th>
						<td>모닝</td>
						<th>최초 등록일</th>
						<td>2017-10-18</td>
					</tr>
					<tr>
						<th>모델명</th>
						<td colspan="3">올 뉴모닝 1.0[가솔린]VAN</td>
					</tr>
					<tr>
						<th>제조사차량옵션</th>
						<td colspan="3">4단자동변속기</td>
					</tr>
					<tr>
						<th>제조사차량옵션2</th>
						<td colspan="3">-</td>
					</tr>
					<tr>
						<th>주행거리</th>
						<td>62,256 km</td>
						<th>연료</th>
						<td>휘발유</td>
					</tr>
					<tr>
						<th>배기량</th>
						<td>1,000 cc</td>
						<th>색상</th>
						<td>스파클링실버</td>
					</tr>
					<tr>
						<th>지역</th>
						<td colspan="3"></td>
					</tr>
				</table>
			</div>
		</div>
		<!-- product details -->

		<div class="row" style="padding-top: 30px;">
			<h4>옵션 정보</h4>
		</div>
		<hr>
		<div class="row" style="padding-top: 10px;">
			<table style="width: 100%">
				<tr>
					<td><img src="resources/images/icon_sun_off.png"></td>
					<td><img src="resources/images/icon_navi_off.png"></td>
					<td><img src="resources/images/icon_smart_off.png"></td>
					<td><img src="resources/images/icon_ecm_off.png"></td>
					<td><img src="resources/images/icon_wind_off.png"></td>
					<td><img src="resources/images/icon_camera_off.png"></td>
					<td><img src="resources/images/icon_wave_off.png"></td>
					<td><img src="resources/images/icon_seat_off.png"></td>
				</tr>
			</table>
		</div>
		<!-- product option pic -->
		<hr>
		<!-- 추가 예약정보 -->
		<div  class="comment row col-sm-7"><h3>차량손해면책제도 선택</h3>&nbsp;&nbsp;
 <svg id="insurance" onclick="insurance()" class="float-right" style="color:orange;" width="1em" height="2em" viewBox="0 0 16 16" class="bi bi-question-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path  fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  <path  d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
</svg>
</div>
  <hr>
  <div class="col-sm-12">
  <table style="width: 100%">
  	<tr class="border row">
  		<td class="col"style=" margin:0%; padding:0%;"><button type="button" class="col-sm-12 btn btn-outline-warning" id="addoption1" name="addoption1" value="선택안함" onclick="addop('addoption1')" style="height:100%;">선택안함</button></td>
  		<td class="col"style=" margin:0%; padding:0%;"><button type="button" class="col-sm-12 btn btn-outline-warning" id="addoption2" name="addoption2" value="완전 자차-면책금 0원" onclick="addop('addoption2')" style="height:100%;">완전 자차<p>면책금 0원</p></button></td>
  		<td class="col "style=" margin:0%; padding:0%"><button type="button" class="col-sm-12 btn btn-outline-warning" id="addoption3" name="addoption3" value="일반 자차-면책금 50만원" onclick="addop('addoption3')" style="height:100%;">일반 자차<p>면책금 50만원</p></button></td>
  		
  	</tr>
	<tr class="row"><td colspan="3"height="20px;"></td></tr>
  	<tr class="border row">
  		<td colspan="3">
  	<div class="form-group">
  			<br>
  			<ul>
  				<li>제주지점에서는 스마트폰 거치대를 무료로 대여해드립니다. (수량한정)</li>
  				<li>부가서비스 (카시트/유모차) 예약 및 문의는 TT렌터카 제주지점&nbsp;064-111-1111 또는 홈페이지 www.TTrent.com 로 문의바랍니다.
  						<p>(* 지정 업체인 ‘제주아이’ 외 타 업체 이용 시 분실 우려가 있어, SK렌터카 제주지점을 통한 인수/반납 및 사전 장착 서비스 이용이 불가합니다.)</p>
  				</li>
  			</ul>
  		</div>
  		</td>
  	</tr>
  </table>
  </div>
  <br>
  <br>
  
<div class="comment row col-sm-6"><h3>계약자 정보입력 (제1운전자)</h3></div>
<hr>
<div class="col-sm-12">
<p class="row">여객자동차운수사업법 제34조 2항 개정에 따른 대여자동차 운전자의 자격 확인
  <b>&nbsp;<svg id="driver_qualification" data-toggle="modal" data-target="#myModal" onclick="confirm0()" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-question-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
</svg></b>
</p>
<p class="row" style="color: orange;">※ 실제 운전자 정보를 입력해주세요! 입력한 제1운전자와 예약자가 상이할 경우 대여가 제한될 수 있습니다.</p>
<div class="row">
<input type="text" class="col form-control"  id="name" name="name" placeholder="이름 입력" disabled="disabled">
<input class="col form-control" type="text" id="birth" name="birth" placeholder="생년월일 (20170101)입력" disabled="disabled">
<input class="col form-control" type="text" id="phone" name="phone" placeholder="휴대폰번호 (-없이)입력">
</div>
<br>
  <div class="row">
  <input type="text" class="col form-control" placeholder="이메일 입력" id="email1" name="email1">
    <span class="input-group-text">@</span>
 <input type="text" class="col form-control" placeholder="직접 입력" id="email2" name="email2">
  </div>
<br>  
  <div class="row">
<input class="col-sm-2 form-control" type="text" id="name" name="name" placeholder="우편번호 검색" disabled="disabled">
<input class="col-sm-4 form-control" type="text" id="birth" name="birth" placeholder="주소 입력" disabled="disabled">
<input class="col-sm-4 form-control" type="text" id="phone" name="phone" placeholder="나머지 주소 입력" disabled="disabled">
<button class="col-sm-2 btn btn-dark" disabled="disabled">우편번호 검색</button>
</div>
<br>
 <div class="row">
<select class="col form-control" id="license_type" name="license_type" disabled="disabled">
	<option>면허종류 선택</option>
</select>
<input class="col form-control" type="text" id="birth" name="birth" placeholder="면허번호 (-없이) 입력" disabled="disabled">
</div>
<br>
 <div class="row">
<input class="col form-control" type="text" id="name" name="name" placeholder="적성검사 만료일 (20170101) 입력" >
<input class="col form-control" type="text" id="birth" name="birth" placeholder="운전면허 발급일 (20170101) 입력">
</div>
<br>
</div>
<ul class="row">
	<li>면허번호 입력 예) (구)면허번호 : 서울-01-123456-00 (신)면허번호 : 11-01-123456-00</li>
	<li><p style="color: orange;">면허정보 입력 시 아래 ‘대여자격 확인 동의’를 꼭 확인하세요!</p></li>
</ul>
<br>
<br>

<div class="comment row col-sm-6"><h3>이용약관</h3></div>
<hr>
<div class="form-group">
	<p style="font-size: 14px;">TT렌터카㈜는 적법하고 공정한 방법으로 개인정보를 수집하며, 고객의 개인정보를 최우선으로 생각하여 안전하게 보유·관리하고 있습니다.</p>
	<h5>개인정보 제공 활용 동의</h5>
	
<%@include file="z_agreement_collpase.jsp" %>

</div>	
	<ul class="row">
		<li>고객님께서는 동의를 거부할 권리가 있으나, 미 동의시 렌터카 서비스 이용이 불가능합니다.</li>
	</ul>
<br>
<br>
<!-- 
<input type="hidden" id="date7777h" value="" name="date7777h"/>
<input type="hidden" id="date8888h" value="" name="date8888h"/> -->
<input type="hidden" id="addoptionh" value="" name="addoptionh"/>
<input type="hidden" id="addselech" value="" name="addselech"/>

</div>
<br>
<br>

<br>
<br>
<br>
<%@ include  file="z_shortTerm_show.jsp"%>
</div>

<div class="container col-sm-6 fixed-bottom" style="border:1px solid orange;">
    <div class="row card" style="background-color: orange;">
        <!-- <a class="card-link" data-toggle="collapse" href="#collapsebar"> -->
       		   <nav class="container navbar navbar-expand-sm navbar-dark bottom" style="height: 70px;">
  			<!-- 	<div class="col-sm-1">
					  <table id="more">
					 	<tr>
			 			 <td id="more_more">
			  				<a class="row navbar-brand" href="#">
							<svg style="height: 50%;" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
							</svg>
							<br>
							<b style="font-size: 15px;">더보기</b>
			  				</a>
						</td>
					   </tr>
					</table>
				</div> -->
				<div class="col-sm-9" style="color: white;">
				<div class="row">
				<h4 class="col">총 결제금액</h4><h4 class="float-right">0원</h4>
				</div>
				</div>
				<div class="col-sm-3">
				<div class="row">
		  		 <div class="col-sm-2"></div>
		  		 &nbsp;&nbsp;
				<button type="reset" class="row btn col-sm-5 border" style="color: white;font-size: 15px;" onclick="reset()">초기화</button>
				 &nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn col-sm-5 border float-right" id="calc" style="color: white; font-size: 15px;" onclick="reser()" >예약하기</button>
				</div>
				</div>
				</nav>
      </div>
  </div>



<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</form>
	<!-- Main container end -->
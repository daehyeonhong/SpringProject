<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body style="background-image: url('/resources/images/back.jpg');   background-size: 100% 100%;">
	<div class="container col-sm-8">
	
		<br><br>
			<p style="color:white; font-size:50px; font-family:verdana; text-align: center;" ><strong>똑똑한 선택! 즐거운 여행!</strong></p>
		<br><br>
		
		
		
		
	<div id="demo" class="container  carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
     <li data-target="#demo" data-slide-to="3"></li>
 <li data-target="#demo" data-slide-to="4"></li>  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/resources/images/현대자동차.jpg"  width="1100" height="500">
      <div class="carousel-caption">
       <h3>현대 자동차</h3>
        <h5>더 오래 머물수록 빛나는 가치, 9/15 TUCSON & TUCSON HyBrid 공개 </h5>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/resources/images/기아자동차.jpg" width="1100" height="500">
      <div class="carousel-caption">
        <h3>기아 자동차</h3>
        <h5>정교하게 완성된 프리미엄 퍼포먼스 세단, Stinger Meister</h5>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/resources/images/르노자동차.jpg"  width="1100" height="500">
      <div class="carousel-caption">
        <h3>르노삼성 자동차</h3>
        <h5>당신의 이성과 감성을 자극하는 새로운 드라이빙, 새로운 SM6</h5>
      </div>   
    </div>
     <div class="carousel-item">
      <img src="/resources/images/쉐보레자동차.jpg"  width="1100" height="500">
      <div class="carousel-caption">
        <h3>쉐보레 자동차</h3>
        <h5>첫눈에 빠져드는 임팩트 THE IMPACT SUV, TRAILBLAZER</h5>
      </div>   
    </div>
     <div class="carousel-item">
      <img src="/resources/images/쌍용자동차.jpg" width="1100" height="500">
      <div class="carousel-caption">
        <h3>쌍용 자동차</h3>
        <h5>언제 어디서나 STAY CONNECTED, 첫 차부터 엣지있게 TIVOLI</h5>
      </div>   
    </div>
    
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
		
		

		
		<div class="container"> 
		<br><br><br>
		<table>
			<tr class="row">
				<td class="col-sm-3">
					<button onclick="location.href='/long/list'"   class="bg-light text-dark">
						<div>
							<p class="h3">신차 다이렉트</p>
							<p class="text-warning">───</p>
							<p class="text-warning">경제적인 신차 구매</p>
							<p>더 좋은 차를 가지는 합리적인 방법!</p>
							<p><img alt="haha" src="/resources/images/img_car_icon.png"></p>
							<p>신차 견적 검색 --></p>
						</div>
					</button>
				</td>
				
				<td class="col-sm-3">
					<button  class="bg-light text-dark">
						<div>
							<p class="h3">제주 단기</p>
							<p class="text-warning">───</p>
							<p class="text-warning">바로 출발 서비스로</p>
							<p>기다림 없이! 빠른 렌터카 대여</p>
							<p><img alt="haha" src="/resources/images/img_short_icon.png"></p>
							<p>제주 빠른 예약 --></p>
						</div>
					</button>
				</td>
				
				<td class="col-sm-3">
					<button class="bg-light text-dark" onclick="location.href='/short/listInland'" >
						<div>
							<p class="h3">내륙 단기</p>
							<p class="text-warning">───</p>
							<p class="text-warning">제휴 할인 혜택으로</p>
							<p>더욱 가볍게!빠른 실시간 예약</p>
							<p><img alt="haha" src="/resources/images/img_short_icon.png"></p>
							<p>내륙 빠른 예약 --></p>
						</div>
					</button>
				</td>
				
				<td class="col-sm-3">
					<button class="bg-light text-dark" onclick="location.href='/customer/notice/list'" >
						<div>
							<p class="h3">게시판 보기</p>
							<p class="text-warning">───</p>
							<p class="text-warning">믿을 수 있는 중고차 렌트</p>
							<p>이젠 사지말고 가성비 좋은 렌터카로!</p>
							<p><img alt="haha" src="/resources/images/img_car_icon.png"></p>
							<p>이벤트 확인 --></p>
						</div>
					</button>
				</td>
			</tr>
		</table>
		</div>
	</div>
</body>
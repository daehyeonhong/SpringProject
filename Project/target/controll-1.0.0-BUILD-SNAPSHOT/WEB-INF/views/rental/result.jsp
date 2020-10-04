<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<article>

<div class="jumbotron bg-white">
  <div class="container col-sm-6">
  <h1>예약  완료 </h1>
  <hr>
  </div>
</div>
<div class="container col-sm-6">


	<div class="container" align="center">
		<h2><b style="color: orange;">예약이</b><span>&nbsp;완료되었습니다.</span></h2><br>

	<br>
	<br>
	<hr>
	</div>
	
	<div class="container">
	<br>
	<br>
	<br>
	<table class="table table-hover">
    <tbody>
      <tr>
        <td id="th_title">예약번호</td>
        <td>${appointInfo.appoint_seq }</td>
      </tr>
         <tr>
        <td id="th_title">차량 정보</td>
        <td>${appointInfo.car_model} / ${appointInfo.trim_name} / ${appointInfo.car_year}</td>
      </tr>
      <tr>
        <td id="th_title">방문 예정일</td>
        <td><fmt:formatDate value="${appointInfo.appoint_date }" pattern="yyyy년  MM월 dd일"/></td>
      </tr>
     <tr>
        <td id="th_title">지점 주소</td>
        <td>${appointInfo.branch_address}</td>
      </tr>
        <tr>
        <td id="th_title">지점 전화 번호</td>
        <td>${appointInfo.branch_phone}</td>
      </tr>
 
      
    <tr>
        <td id="th_title">대여지점</td>
       	 <td>
       	 	<div class="row">
  			<div class="col"><strong>${appointInfo.branch_name } 지점 </strong><br><br></div>
  			 <div  id="map" style="width:100%; height:350px;"></div>
  			<div class="col">

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=834ff064d4a4d81480636adebb63bc32"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng( ${appointInfo.gps}, ${appointInfo.gps2}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${appointInfo.gps}, ${appointInfo.gps2}); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

/* var iwContent = '<div style="padding:5px;"> <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwPosition = new kakao.maps.LatLng( ${appointInfo.gps}, ${appointInfo.gps2}); //인포윈도우 표시 위치입니다

//인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
position : iwPosition, 
content : iwContent 
});
 */
//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    


</script>
       
   
        
 
        
      </div>
    </div>
 
       	 </td>
      </tr>

     
     <!--  <tr>
        <td id="th_title" style="border-bottom: 1px solid silver;">결제금액</td>
        <td style="color: red;border-bottom: 1px solid silver;">128,000&nbsp;(신용카드)</td>
      </tr> -->
    </tbody>
  </table>
  
  <div class="text-center"><br><br>TT렌터카를 이용해주셔서 감사합니다.</div>
  <br>
  <br>
  <hr>
  <br>
  <br>
  <div class="row" align="center">
  <div class="col-sm-12" align="center">
  <div class="row" align="center">
  	<button class="col btn  border btn-light" onclick="location.href='/'">메인으로 가기</button>&nbsp;
  	<button class="col btn  border bg-default" onclick="location.href='http://www.jeju-i.com/'">카시트/유모차 예약</button>&nbsp;
  	<button class="col btn  border bg-warning" onclick="location.href='../shortTerm/shortTerm_history.jsp'">예약내역 확인</button>
  </div>
  </div>
  </div>
  </div><!-- table container -->
</div>


</article>
<!-- LongTerm -->
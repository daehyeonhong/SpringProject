<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script>
	function reser0(){
		reserveForm3.submit();
	}
</script>
<style>
  	#th_title{background-color: #FEFCF9; text-align: center;}
  </style>
<!-- 단기렌트 제목틀-->
<div class="jumbotron bg-white">
  <div class="container col-sm-6">
  <h1>결제완료</h1>
  <hr>
  </div>
</div>
<form name="reserveForm3" action="/short/payComplete" method="post">
<div class="container col-sm-6">
	<div class="container" align="center">
		<h2><b style="color: orange;">결제가</b><span>&nbsp;완료되었습니다.</span></h2><br>
		<p>예약한 내용을 확인해주세요.</p>
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
     <th>예약번호</th>
        <td style="color: red;">결제 완료 후 예약이 확정됩니다.</td>
      </tr>
      <tr>
        <th id="th_title">대여일</th>
        <td>${reserve.start_date}</td>
      </tr>
      <tr>
        <th id="th_title">반납일</th>
        <td>${param.end_date}</td>
      </tr>
      <tr>
        <th id="th_title">대여지점</th>
       	 <td>
       	 	<div class="row">
  			<div class="col">제주지점</div>
  			<div class="col"><button class="btn btn-sm border float-right">지도보기</button></div>
       	 	</div>
       	 </td>
      </tr>
      <tr>
        <th id="th_title">반납지점</th>
        <td>
			<div class="row">
  			<div class="col">제주지점</div>
  			<div class="col"><button class="btn btn-sm border float-right">지도보기</button></div>
       	 	</div>
		</td>
      </tr>
      <tr>
        <th id="th_title">대여차량</th>
        <td>${reserve.short_car_seq}</td>
      </tr>
      <tr>
        <th id="th_title">계약자명</th>
        <td>홍길동</td>
      </tr>
      <tr>
        <th id="th_title">차량손해면책제도</th>
        <td>51,300원</td>
      </tr>
      <tr>
        <th id="th_title" style="border-bottom: 1px solid silver;">결제금액</th>
        <td style="color: red;border-bottom: 1px solid silver;">128,000&nbsp;(신용카드)</td>
      </tr>
    </tbody>
  </table>
  <div class="text-center">TT렌터카를 이용해주셔서 감사합니다.</div>
  <br>
  <br>
  <hr>
  <br>
  <br>
  <div class="row" align="center">
  <div class="col-sm-12" align="center">
  <div class="row" align="center">
  	<button class="col btn  border btn-light">메인으로 가기</button>&nbsp;
  	<button class="col btn  border bg-default" onclick="location.href='http://www.jeju-i.com/'">카시트/유모차 예약</button>&nbsp;
  	<button class="col btn  border bg-warning" onclick="reser0()">예약정보확인</button>
  </div>
  </div>
  </div>
  </div><!-- table container -->
</div>
<br>
<br>
<br>
<br>
<br>
</form>
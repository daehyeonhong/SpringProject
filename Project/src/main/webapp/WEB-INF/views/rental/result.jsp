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
        <td id="th_title">대여 지점</td>
        <td>${appointInfo.branch_name }지점</td>
      </tr>
      <tr>
        <td id="th_title">지점 번호</td>
        <td>${appointInfo.branch_phone}</td>
      </tr>
      <tr>
        <td id="th_title">방문 예정일</td>
        <td><fmt:formatDate value="${appointInfo.appoint_date }" pattern="yyyy년  MM월 dd일"/></td>
      </tr>
   <!--    <tr>
        <td id="th_title">대여지점</td>
       	 <td>
       	 	<div class="row">
  			<div class="col">지점</div>
  			<div class="col"><button class="btn btn-sm border float-right">지도보기</button></div>
       	 	</div>
       	 </td>
      </tr> -->

     
     <!--  <tr>
        <td id="th_title" style="border-bottom: 1px solid silver;">결제금액</td>
        <td style="color: red;border-bottom: 1px solid silver;">128,000&nbsp;(신용카드)</td>
      </tr> -->
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
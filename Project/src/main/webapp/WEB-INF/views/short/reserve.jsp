<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- 단기렌트 제목틀-->
<div class="jumbotron bg-white">
  <div class="container col-sm-6">
  <h1>예약완료</h1>
  <hr>
  </div>
</div>

<div class="container col-sm-6">
<div class="container">
<div class="container bg-light">
<br>
<div class="container text-center">
<h3>예약정보</h3>
<p>셔틀버스 운행정보 및 바로출발 서비스를 확인하여 주시기 바랍니다.</p>
</div>
<br>
<div class="card bg-white">
  <table class="table table-borderless">
      <tr>
        <th id="th_title">예약번호</th>
        <td>${reserve.seq}</td>
      </tr>
      <tr>
        <th>대여기간</th>
        <td>value='${reserve.start_date}' ~ value='${reserve.end_date}'</td>
      </tr>
      <tr>
        <th rowspan="2">지점 (대여/반납)</th>
        <td>대여: [value='${reserve. branch_name}']<button class="btn btn-sm border">&nbsp;지도보기</button></td>
      </tr>
      <tr>
        <td>반납: [value='${reserve. branch_name}']<button class="btn btn-sm border">&nbsp;지도보기</button></td>
      </tr>
      <tr>
      <th>차량</th>
        <td></td>
      </tr>
  </table>
  <hr>
  <table class="table table-borderless">
      <tr>
        <th rowspan="2">결제금액안내</th>
        <td style="border-bottom: 1px solid silver;">차량금액<span class="float-right">value='${reserve.total_amount}'원</span></td>
      </tr>
      <tr>
        <td style="border-bottom: 1px solid silver;">value='${insurance_name}'<span class="float-right">value='${fare}'원</span></td>
        <!-- <td style="border-bottom: 1px solid silver;">자차손해면책제도<br>슈퍼자차<span class="float-right">12,000원</span></td> -->
      </tr>
      <tr style="color: red;">
    	 <th>최종결제 금액</th>
        <td class="float-right"><h3>${reserve.payment_seq}<span style="font-size: 15px;">value='${result.total_amount}'원</span></h3></td>
      </tr>
  </table>
  <br>
  <br>
  </div>
  <br>
  <br>
  <div class="container" align="center">
  <div class="row" align="center">
  	<button class="col btn border btn-light">확인</button>&nbsp;<!-- 메인페이지로 -->
  </div>
  </div>
  <br>
  <br>
  </div>
  </div><!-- table container -->
  
  <div>
<!--   <form>
     <input name="seq" data-seq="1">1<br>
     <inout name="users_id" data-user_id='hong'>hong<br>
     <inout name="branch_seq" data-branch_seq="77">77<br>
     <input type="button" value="전송" onclick="register()">
  </form> -->
  
  
  </div>
  </div>
 <script>
function register(){
	var seq=$('input[name=seq]').val();
	alert(seq);
	
}

 </script> 
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
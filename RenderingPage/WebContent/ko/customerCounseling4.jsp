<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>고객상담</title>
<style>
	span{font-weight:bold; }
</style>
<script>
/* 	$(document).ready(function(){
			$(".btn btn-light col").click(function(){				
				$(this).css("background-color","orange");	
				});
		}); */
</script>
</head>
<body>
<%@include file="mainBar.jsp"%>	
<%@include file="customerCenterBar.jsp"%>	
<br> <br>
<div class="container">
<h1>고객상담</h1>
<br> <br>
<div class="row">
   <!--  <div class="col" style="background-color:lavender;">.col</div>
    <div class="col" style="background-color:orange;">.col</div>
    <div class="col" style="background-color:lavender;">.col</div>
  </div> -->
<!-- <div class="btn-group btn-group-lg btn-block" style="margin:0px; "> -->
  <button type="button" class="btn btn-light col" data-toggle="tab" href="#1" >일반상담</button>
  <button type="button" class="btn btn-light col" data-toggle="tab" href="#2" >렌터카상담</button>
  <button type="button" class="btn btn-light col" data-toggle="tab" href="#3" >상담안내</button>
</div>
<hr style="border: solid 0.5px silver; margin:0px; ">
<br><br>
</div>

<div class="container tab-content">
 	<div id="1" class="tab-pane active">
			<table>
				<tr class="row">
					<td class="col"><input type="text"  placeholder="이름입력"/></td>
					<td class="col"><input type="text"  placeholder="휴대폰번호(-없이) 입력"/></td>
				</tr>
				
				<tr>
					<td></td>
					<td></td>
				</tr>
				
				<tr>
					<td></td>
					<td></td>
				</tr>
				
				<tr>
					<td></td>
					<td></td>
				</tr>
				
				<tr>
					<td></td>
					<td></td>
				</tr>
			</table>
			
	</div>
 	
 	<div id="2" class="tab-pane active">
		<form action="#">
			<p style="color:red;">*상담신청 시 등록하신 유선 또는 이메일로만 답변을 받으실 수 있으며, 홈페이지에서는 답변 확인 불가능합니다.</p>
			<hr>
			<div class="row">
			<span class="col-2">상담유형</span> 
  			<button type="button" class="col-3 btn bg-white">중고차 렌터카</button>
  			<button type="button" class="col-3 btn bg-white">개인 장기렌터카</button>
  			<button type="button" class="col-3 btn bg-white">개인 단기렌터카</button>
			</div>
			<hr>

			<div class="container">
			<span>차종 선택</span>
    		<div class="form-check-inline">
     	 	<label class="form-check-label" for="radio1">
        	<input type="radio" class="form-check-input" id="radio" name="optradio" value="option1" checked>경차
      		</label>
    		</div>
    		<div class="form-check-inline">
      		<label class="form-check-label" for="radio2">
        	<input type="radio" class="form-check-input" id="radio" name="optradio" value="option2" >소형
      		</label>
    		</div>
    		<div class="form-check-inline">
     		 <label class="form-check-label">
       		 <input type="radio" class="form-check-input" id="radio" name="optradio" value="option3" >중형
      		</label>
   			</div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" id="radio" name="optradio" value="option4" >대형
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" id="radio" name="optradio" value="option5" >승합
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" id="radio" name="optradio" value="option6" >SUV
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" id="radio" name="optradio" value="option7" >수입차
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" id="radio" name="optradio" value="option8" >전기차
      </label>
    </div>
</div>
<hr>
<div class="container">
 <div class="form-group">
<div class="row">
	<input type="text" class="col" name="name" placeholder="이름 입력"/>
	<input type="text" class="col" name="name1" placeholder="지역선택"/>
	<input type="text" class="col" name="name2" placeholder="지역선택(구/군)"/>
</div>
<br>
<div class="row">
	<input type="text" class="col" name="phone" placeholder="휴대폰 번호(-없이) 입력"/>
	<input type="email" class="col" name="email"  placeholder="이메일 입력"/>
</div>
<br>
<!-- <div class="row">
	<textarea class="col"></textarea>
</div> -->
 
   <textarea class="form-control" rows="8" id="comment" name="text" placeholder="문의내용입력"></textarea>
 
</div>
<br>

<!-- <button type="submit" class="btn btn-primary" disabled>
  <span class="spinner-borderspinner-border-lg"></span>
  Loading..
</button> -->
<%@include file="agreement.jsp"%>
<br>
<br>
<center>
<button type="submit" class="btn btn-lg btn-warning" style="width:200px;">신청완료</button>
</center>
</div>
</form>
</div>


 <div id="3" class="tab-pane active">

 </div>
 
 
</div>

<%@include file="footer.jsp"%>
</body>
</html>
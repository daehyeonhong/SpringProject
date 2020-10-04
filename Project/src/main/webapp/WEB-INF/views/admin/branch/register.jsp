<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<article>
<br>
<br>
<br>
<br>
<div class="container col-sm-4" >
	<div class="card bg-light">
	<br>
	<div class="row container">
	<h3 class="text-center col-sm-12">지점 정보 입력<hr class="col-sm-12"></h3>
	</div>
	
		<form action="/admin/branch/register" method="post"> 
		
		<div class="row container">
		
		<div class="col-sm-1"></div>
		<div class="col-sm-11">
				<div class="row col-sm-12">
					<b class="col-sm-4">지점명 : </b>
					<input type="text" class="col-sm-8 btn btn-outline-default border" id="name" name="branch_name"required>
				</div><br>
				<div class="row col-sm-12">
					<b class="col-sm-4">연락처 :  </b>
					<input type="tel"class="col-sm-8 btn btn-outline-default border" id="phone" name="branch_phone" placeholder="-없이 입력해주세요."required>
				</div><br>
				<div class="row col-sm-12">
					<b class="col-sm-4">주소 :  </b><input type="text" class="col-sm-8 btn btn-outline-default border" id="address"name="branch_address"required>
				</div><br>
				<div class="row col-sm-12">
					<b class="col-sm-4">위도 :  </b><input type="text" name="gps" class="col-sm-8 btn btn-outline-default border"  id="gps1"required>
				</div><br>
				<div class="row col-sm-12">
					<b class="col-sm-4">경도 :  </b><input type="text"  name="gps2" class="col-sm-8 btn btn-outline-default border"  id="gps2"required>
				</div><br>
				<div class="row col-sm-12">
					<b class="col-sm-4">수리 :  </b>
					<input type="radio" class="col-sm-1"name="maintenance" value="1"required>가능
			        <input type="radio" class="col-sm-1"name="maintenance" value="0">불가능
			    </div><br>
				<div class="row col-sm-12">
					<b class="col-sm-4">전기차 : </b>
					<input type="radio" class="col-sm-1"name="electric"value="1"required>있음
			        <input type="radio" class="col-sm-1"name="electric"value="0">없음
			    </div><br>
				<div class="row col-sm-12">
					<b class="col-sm-4">지역분류 :  </b>
					<input type="radio" class="col-sm-1"name="branch_type"value="0"required>내륙
			        <input type="radio" class="col-sm-1"name="branch_type"value="1">제주
			    </div><br>
		
			<br>
			<br>
			<div class="container" align="center">
			
  <div class="row container" align="center">
  	<button type="reset" class="col btn border  btn-outline-default" 
  		onclick="reset_register()" style="color: black;">취소하기</button>&nbsp;&nbsp;
  	<button type="submit" class="col btn border btn-outline-warning">등록하기</button>
  	
  </div>
  </div>
  <br>
  <br>
  </div>
  </div>
		</form>
	</div>
</div>
<br>
<br>
<br>
<br>
</article>

<script>
	function reset_register(){
		window.location.href="/admin/index";
	}
</script>